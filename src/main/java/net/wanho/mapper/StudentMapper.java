package net.wanho.mapper;

import net.wanho.pojo.Student;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by DELL on 2019/4/18.
 */
public interface StudentMapper {

    List<Student> getAllStudnet();

    void add(@Param("stu") Student student);
    void update(@Param("student") Student student);
    void delete(Integer id);

    Student queryById(Integer id);

}
