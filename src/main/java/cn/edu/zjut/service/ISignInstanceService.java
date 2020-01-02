package cn.edu.zjut.service;

import cn.edu.zjut.po.Student;

import java.util.List;

public interface ISignInstanceService {

    int insertSignInstance(String[] stu, String[] dates, int templateid, int chooseid);
    List<Student> listAllStudents();
}
