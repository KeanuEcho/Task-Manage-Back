package top.belongme.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import top.belongme.exception.GlobalBusinessException;
import top.belongme.beanconverter.CourseConverter;
import top.belongme.model.vo.CourseVO;
import top.belongme.model.pojo.Course;
import top.belongme.model.result.Result;
import top.belongme.model.dto.CourseQueryDTO;
import top.belongme.service.CourseService;

import javax.annotation.Resource;
import javax.validation.Valid;
import java.util.List;
import java.util.Objects;

/**
 * @Title: CourseController
 * @ProjectName JobManage-Back
 * @Description: TODO
 * @Author DengChao
 * @Date 2023/2/814:05
 */
@RestController
@RequestMapping("course")
@Slf4j
//@Validated
public class CourseController {

    @Resource
    CourseService courseService;

    @Resource
    private CourseConverter courseConverter;

    /**
     * TODO 获取课程列表，分页查询 + 模糊查询
     *
     * @Author DengChao
     * @Date 2023/2/9 10:55
     */
    @PreAuthorize("hasAuthority('job:course:select')")
    @GetMapping("/listPage/{page}/{limit}")
    public Result<IPage<CourseVO>> getCourseList(@PathVariable Long page,
                                                 @PathVariable Long limit,
                                                 CourseQueryDTO courseQueryDTO) {
        //创建page对象
        Page<Course> pageParam = new Page<>(page, limit);
        //调用service方法
        IPage<Course> pageModel = courseService.selectPage(pageParam, courseQueryDTO);

        IPage<CourseVO> courseDTOIPage = courseConverter.convertPage(pageModel);
        return new Result<>(200, "请求成功", courseDTOIPage);
    }

    /**
     * TODO 获取课程列表，只要已启用的
     *
     * @Author DengChao
     * @Date 2023/2/9 12:24
     */
    @PreAuthorize("hasAuthority('job:course:select')")
    @GetMapping("/listOnlyEnabled")
    public Result<List<CourseVO>> getCourseListOnlyEnabled() {
        List<Course> courseList = courseService.list(new QueryWrapper<Course>().eq("status", 1));
        List<CourseVO> courseVOList = courseConverter.convertToDTOList(courseList);
        return Result.ok(courseVOList);
    }

    /**
     * TODO 添加课程
     *
     * @Author DengChao
     * @Date 2023/2/9 10:54
     */
    @PreAuthorize("hasAuthority('job:course:insert')")
    @PostMapping("/add")
    public Result addCourse(@RequestBody @Valid Course course, BindingResult result) {
        if (result != null && result.hasErrors()) {
            throw new GlobalBusinessException(800, Objects.requireNonNull(result.getFieldError()).getDefaultMessage());
        }
        return courseService.addCourse(course);
    }

    /**
     * TODO 根据id删除课程
     *
     * @Author DengChao
     * @Date 2023/2/9 10:54
     */
    @PreAuthorize("hasAuthority('job:course:delete')")
    @DeleteMapping("/delete/{id}")
    public Result deleteCourse(@PathVariable String id) {
        return courseService.deleteCourse(id);
    }


    /**
     * TODO 更新课程信息
     *
     * @Author DengChao
     * @Date 2023/2/9 10:54
     */
    @PreAuthorize("hasAuthority('job:course:update')")
    @PutMapping("/update")
    public Result updateCourse(@RequestBody @Valid Course course, BindingResult result) {
        if (result != null && result.hasErrors()) {
            throw new GlobalBusinessException(800, Objects.requireNonNull(result.getFieldError()).getDefaultMessage());
        }
        return courseService.updateCourse(course);
    }

    /**
     * TODO 更新课程状态
     *
     * @Author DengChao
     * @Date 2023/2/9 10:54
     */
    @PreAuthorize("hasAuthority('job:course:update')")
    @PutMapping("/updateStatus/{courseId}/{status}")
    public Result updateStatus(@PathVariable String courseId,
                               @PathVariable Integer status) {
        return courseService.updateStatus(courseId, status);
    }

    /**
     * TODO 根据id获取课程信息
     *
     * @Author DengChao
     * @Date 2023/2/9 10:55
     */
    @PreAuthorize("hasAuthority('job:course:select')")
    @GetMapping("/get/{courseId}")
    public Result<CourseVO> getCourseById(@PathVariable String courseId) {
        Course course = courseService.getById(courseId);
        CourseVO courseVO = courseConverter.convertToDTO(course);
        return new Result(200, "请求成功", courseVO);
    }
}
