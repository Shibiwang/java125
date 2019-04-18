package net.wanho.service;

import com.github.pagehelper.PageInfo;
import net.wanho.pojo.Student;

import java.util.List;

/**
 * Created by DELL on 2019/4/18.
 */
public interface StudentServiceI {

   // List<Student> getAllStudent();

    PageInfo<Student> queryAll(Integer pageNum);
    void add(Student student);
    void update(Student student);
    void delete(Integer id);

    Student queryById(Integer id);
}
