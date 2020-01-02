package cn.edu.zjut.service;


import cn.edu.zjut.po.Teacher;

public interface ITeacherService {
    /**
     * Jww:验证登录信息
     */
    boolean login(Teacher teacher);

    /**
     * 插入一条学生信息
     */
    boolean insertTeacher(Teacher teacher);

    /**
     * 修改一个教师的信息
     */
    boolean updateTeacher(Teacher teacher);

    /**
     * 通过教师id删除一个教师的信息
     */
    boolean deleteTeacher(int teaID);

    /**
     * 查找所有的教师信息
     */
    boolean listAllTeacher();

    /**
     * 通过教师id查找教师
     */
    Teacher getTeacherByID(int teaID);

    /**
     * 通过不同的方式查找教师
     */
    boolean searchTeacher(String teaMess, int type);
}
