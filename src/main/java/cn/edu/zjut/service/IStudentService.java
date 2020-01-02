package cn.edu.zjut.service;

import cn.edu.zjut.po.Student;

import java.util.List;

public interface IStudentService {
    /**
     * 增加一个学生信息
     */
    void insertStudent(Student student);

    /**
     * 修改一个学生的信息
     */
    boolean updateStudent(Student student);

    /**
     * 删除一个学生的信息
     */
    boolean deleteStudent(int stuID);

    /**
     * 通过学号查找一个学生信息
     */
    Student searchStudentByID(int stuID);

    /**
     * 查找所有学生的信息
     */
    boolean listAllStudent();

    /**
     * 查找一个班级学生的信息
     */
    List<Student> searchStudentByClass(String className);

    /**
     * 查找一个专业学生的信息
     */
    List<Student> searchStudentByDepart(String departName);

    /**
     * 根据输入的学生信息进行查找
     * 通过传入的student哪个属性不为空来判断根据什么查询
     */
    boolean searchStudent(String stuMess, int searchType);

    /**
     * 查看该学生的信息，并存入request
     */
    boolean showStudent(int id);
}
