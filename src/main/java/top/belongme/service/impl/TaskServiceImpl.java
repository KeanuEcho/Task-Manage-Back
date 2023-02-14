package top.belongme.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import net.lingala.zip4j.ZipFile;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.util.Zip4jUtil;
import org.apache.commons.io.FileUtils;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;
import top.belongme.exception.GlobalBusinessException;
import top.belongme.mapper.BatchMapper;
import top.belongme.mapper.CourseMapper;
import top.belongme.mapper.TaskMapper;
import top.belongme.model.pojo.Batch;
import top.belongme.model.pojo.Course;
import top.belongme.model.pojo.task.Task;
import top.belongme.model.pojo.user.LoginUser;
import top.belongme.model.result.Result;
import top.belongme.service.CourseService;
import top.belongme.service.TaskService;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URLEncoder;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Objects;

/**
 * @Title: TaskServiceImpl
 * @ProjectName JobManage-Back
 * @Description: TODO
 * @Author DengChao
 * @Date 2023/2/1018:18
 */
@Service
public class TaskServiceImpl extends ServiceImpl<TaskMapper, Task> implements TaskService {
    @Resource
    private BatchMapper batchMapper;

    @Resource
    private TaskMapper taskMapper;

    @Resource
    private CourseMapper courseMapper;

    @Resource
    private Date GMTDate;

    @Resource
    private String filePathBySystem;


    /**
     * TODO 提交作业
     *
     * @Author DengChao
     * @Date 2023/2/10 20:46
     */
    @Override
    public Result commitTask(MultipartFile uploadTaskFile, String belongBatchId) {
        Batch belongBatch = batchMapper.selectById(belongBatchId);
        if (Objects.isNull(belongBatch)) {
            throw new GlobalBusinessException(800, "该批次不存在，提交失败");
        }

        // 判断所属批次是否为格林威治时间，如果是则说明该批次没有设置截止时间，为永不截止，直接做提交操作
        if (!Objects.equals(belongBatch.getEndTime(), GMTDate)) {
            // 判断当前批次是否已截止
            int compare = belongBatch.getEndTime().compareTo(new Date());
            if (compare <= 0) {
                throw new GlobalBusinessException(800, "该批次已经截止，无法提交");
            }
        }

        // 获取当前登陆用户
        LoginUser loginUser = (LoginUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        // 在作业表中查询该批次下该用户是否已经提交过作业
        QueryWrapper<Task> taskQueryWrapper = new QueryWrapper<>();
        taskQueryWrapper.eq("belong_batch_id", belongBatchId);
        taskQueryWrapper.eq("uploader_id", loginUser.getUser().getId());
        Task oldTask = taskMapper.selectOne(taskQueryWrapper);
        if (Objects.nonNull(oldTask)) {
            throw new GlobalBusinessException(800, "该批次您已经提交过了");
        }

        // 将上传的文件重命名为当前登陆用户的学号+姓名
        // 获取提交的作业文件名
        String originalFileName = uploadTaskFile.getOriginalFilename();
        if (Objects.isNull(originalFileName)) {
            throw new GlobalBusinessException(800, "获取上传的文件名失败");
        }
        StringBuilder originalFileNameBuilder = new StringBuilder(originalFileName);
        // 获取文件扩展名
        String fileExtension = originalFileNameBuilder.substring(originalFileNameBuilder.lastIndexOf("."));
        // 根据学号和姓名拼接文件名
        StringBuilder finalFileName = new StringBuilder();
        finalFileName.append(loginUser.getUser().getStudentNumber())
                .append(" ")
                .append(loginUser.getUser().getName())
                .append(fileExtension);

        try {
            // 获取提交的作业文件输入流
            InputStream taskFileInputStream = uploadTaskFile.getInputStream();
            // 拼接作业文件路径，所属批次的文件夹路径 + 作业文件名
            String taskFilePath = belongBatch.getFolderPath() + File.separator + finalFileName;
            // 将作业文件输入流复制到所属批次文件夹
            FileUtils.copyInputStreamToFile(taskFileInputStream, new File(taskFilePath));
            // 拼接提交的作业文件路径
            Task task = new Task();
            // 设置作业所属批次id
            task.setBelongBatchId(belongBatchId);
            // 设置作业文件路径
            task.setFilePath(taskFilePath);
            // 设置作业文件名
            task.setFileName(finalFileName.toString());
            // 设置提交人id为当前登陆的用户id
            task.setUploaderId(loginUser.getUser().getId());
            baseMapper.insert(task);
            return new Result(200, "作业提交成功");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * TODO 取消提交作业
     *
     * @Author DengChao
     * @Date 2023/2/11 19:08
     */
    @Override
    public Result cancelCommitTask(String batchId) {
        Batch belongBatch = batchMapper.selectById(batchId);
        // 判断所属批次是否存在
        if (Objects.isNull(belongBatch)) {
            throw new GlobalBusinessException(800, "该批次不存在");
        }

        // 判断所属批次是否已截止
        if (!belongBatch.getEndTime().equals(GMTDate)) {
            if (belongBatch.getEndTime().compareTo(new Date()) <= 0) {
                throw new GlobalBusinessException(800, "该批次已截止，无法取消提交");
            }
        }

        // 获取当前登陆的用户
        LoginUser loginUser = (LoginUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        QueryWrapper<Task> taskQueryWrapper = new QueryWrapper<>();
        taskQueryWrapper.eq("belong_batch_id", batchId);
        taskQueryWrapper.eq("uploader_id", loginUser.getUser().getId());
        // 查询作业表中是否有该用户，该批次的作业
        Task task = taskMapper.selectOne(taskQueryWrapper);
        if (Objects.isNull(task)) {
            throw new GlobalBusinessException(800, "您还没有提交过该批次呢");
        }

        // 删除作业文件
        File taskFile = new File(task.getFilePath());
        if (taskFile.exists()) {
            boolean delete = taskFile.delete();
            if (delete) {
                taskMapper.deleteById(task.getId());
                return new Result(200, "取消提交成功");
            } else {
                throw new GlobalBusinessException(800, "删除作业文件失败");
            }
        }
        throw new GlobalBusinessException(800, "该作业文件不存在");
    }

    @Override
    public void getTaskFile(String taskId, HttpServletResponse response) throws IOException {
        Task task = taskMapper.selectById(taskId);
        if (Objects.isNull(task)) {
            throw new GlobalBusinessException(800, "该作业不存在");
        }
        // 查询该作业所属的批次是否已截止，已截止才可以下载
        Batch batch = batchMapper.selectById(task.getBelongBatchId());
        if (batch.getEndTime().after(new Date())) {
            throw new GlobalBusinessException(800, "所属批次还未截止，无法下载");
        }

        File taskFile = new File(task.getFilePath());
        if (!taskFile.exists()) {
            throw new GlobalBusinessException(800, "该作业文件不存在");
        }
        //在vue的response中显示Content-Disposition
        response.setHeader("Access-Control-Expose-Headers", "Content-Disposition");
        // 设置在下载框默认显示的文件名
        response.setHeader("Content-Disposition", "attachment;filename=" + URLEncoder.encode(task.getFileName(), "UTF-8"));
        response.setHeader("Content-Length", String.valueOf(taskFile.length()));

        response.setContentType("application/octet-stream;charset=UTF-8");
        InputStream inputStream = null;
        BufferedInputStream bufferedInputStream = null;
        BufferedOutputStream bufferedOutputStream = null;
        try {
            inputStream = Files.newInputStream(taskFile.toPath());
            bufferedInputStream = new BufferedInputStream(inputStream);
            bufferedOutputStream = new BufferedOutputStream(response.getOutputStream());
            // 将文件流写入到response的输出流中
            FileCopyUtils.copy(bufferedInputStream, bufferedOutputStream);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (inputStream != null) {
                inputStream.close();
            }
            if (bufferedInputStream != null) {
                bufferedInputStream.close();
            }
            if (bufferedOutputStream != null) {
                bufferedOutputStream.flush();
                bufferedOutputStream.close();
            }
        }
    }

    @Override
    public void getBatchFile(String batchId, HttpServletResponse response) throws IOException {
        // 通过响应头通知前端异常信息
        response.setHeader("Access-Control-Expose-Headers","exception");
        // 设置响应类型为文本
        Batch batch = batchMapper.selectById(batchId);
        if (Objects.isNull(batch)) {
            response.setHeader("exception", "batch not exist");
            throw new GlobalBusinessException(800, "该批次不存在");
        }

        if (batch.getEndTime().after(new Date()) || batch.getEndTime().equals(GMTDate)) {
            response.setHeader("exception", "batch not end");
            throw new GlobalBusinessException(800, "该批次还未截止，无法下载");
        }

        // 判断所属课程是否被禁用
        Course course = courseMapper.selectById(batch.getBelongCourseId());
        if (course.getStatus() == 0) {
            response.setHeader("exception", "course is disabled");
            throw new GlobalBusinessException(800, "所属课程已被禁用，无法下载");
        }

        // 判断批次下是否存在作业
        QueryWrapper<Task> taskQueryWrapper = new QueryWrapper<>();
        taskQueryWrapper.eq("belong_batch_id", batchId);
        long count = taskMapper.selectCount(taskQueryWrapper);
        if (count == 0) {
            response.setHeader("exception", "no task");
            throw new GlobalBusinessException(800, "该批次下还没有作业");
        }

        // 获取该批次的文件夹
        String batchFolderPath = batch.getFolderPath();
        File batchFolder = new File(batchFolderPath);
        if (!batchFolder.exists()) {
            response.setHeader("exception", "batch folder not exist");
            throw new GlobalBusinessException(800, "该批次文件夹不存在");
        }

        // 获取该批次文件夹下的的所有作业文件
        List<File> fileList = Arrays.asList(batchFolder.listFiles());
        // 以所属课程名 + 批次名作为zip文件名
        String fileName = course.getCourseName() + "---" + batch.getBatchName();
        // 拼接压缩包的路径
        String filePath = filePathBySystem + "temp_files" + File.separator + fileName + ".zip";
        // 压缩文件
        new ZipFile(filePath).addFiles(fileList);

        // 获取压缩后的zip文件
        File taskFilesZip = new File(filePath);
        if (!taskFilesZip.exists()) {
            throw new GlobalBusinessException(800, "压缩文件失败");
        }

        //在vue的response中显示Content-Disposition
        response.setHeader("Access-Control-Expose-Headers", "Content-Disposition");
        // 设置在下载框默认显示的文件名
        response.setHeader("Content-Disposition", "attachment;filename=" + URLEncoder.encode(taskFilesZip.getName(), "UTF-8"));
        response.setHeader("Content-Length", String.valueOf(taskFilesZip.length()));

        response.setContentType("application/octet-stream;charset=UTF-8");
        InputStream inputStream = null;
        BufferedInputStream bufferedInputStream = null;
        BufferedOutputStream bufferedOutputStream = null;
        try {
            inputStream = Files.newInputStream(taskFilesZip.toPath());
            bufferedInputStream = new BufferedInputStream(inputStream);
            bufferedOutputStream = new BufferedOutputStream(response.getOutputStream());
            // 将文件流写入到response的输出流中
            FileCopyUtils.copy(bufferedInputStream, bufferedOutputStream);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (inputStream != null) {
                inputStream.close();
            }
            if (bufferedInputStream != null) {
                bufferedInputStream.close();
            }
            if (bufferedOutputStream != null) {
                bufferedOutputStream.flush();
                bufferedOutputStream.close();
            }
            // 删除临时文件夹中的压缩包
            taskFilesZip.delete();
        }
    }
}