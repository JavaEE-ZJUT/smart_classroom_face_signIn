package cn.edu.zjut.service;

import cn.edu.zjut.po.Sign;
import cn.edu.zjut.po.SignInstanceTemplate;
import cn.edu.zjut.po.TaskList;

public interface ITaskService {

    boolean insertSign(Sign sign);

    boolean insertTemplate(SignInstanceTemplate template);

    TaskList getTaskList(int teaID);

    boolean deleteTemplate(int templateId);


}
