package top.belongme.model.pojo.task;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

import java.util.Date;

/**
 * @Title: TaskDetails
 * @ProjectName Task-Manage-Back
 * @Description: TODO
 * @Author DengChao
 * @Date 2023/2/1220:02
 */
@Data
public class TaskDetails {
    private String taskId;
    private String studentName;
    private String studentNumber;
    private String belongCourseName;
    private String belongBatchName;
    // 所属批次是否已截止
    private Integer isEnd;
    // 所属批次截止时间，此字段不需要传递给前端
    @JsonIgnore
    private Date belongBatchEndTime;
    private Date createTime;

}