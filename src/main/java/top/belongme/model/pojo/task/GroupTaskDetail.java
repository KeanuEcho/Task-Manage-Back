package top.belongme.model.pojo.task;

import com.baomidou.mybatisplus.annotation.TableId;
import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

import java.util.Date;

/**
 * @Title: GroupTaskDetail
 * @ProjectName Task-Manage-Back
 * @Description: TODO
 * @Author DengChao
 * @Date 2024/10/2714:27
 */
@Data
public class GroupTaskDetail {
    @TableId
    private String taskId;
    private String groupName; //群组名称
    private String belongCourseName;
    private String belongBatchName;
    // 所属批次是否已截止
    private Integer isEnd;
    private Long fileSize;
    @JsonIgnore
    private String fileType;
    @JsonIgnore
    private String fileSha256;
    // 所属批次截止时间，此字段不需要传递给前端
    @JsonIgnore
    private Date belongBatchEndTime;
    private Date createTime;

}
