package net.wanho.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import net.wanho.mapper.StudentMapper;
import net.wanho.pojo.Student;
import net.wanho.service.StudentServiceI;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by DELL on 2019/4/18.
 */
@Service
public class StudentServiceImpl implements StudentServiceI {

    @Autowired
    private StudentMapper studentMapper;



    @Override
    public PageInfo<Student> queryAll(Integer pageNum) {
        //设置分页信息
        PageHelper.startPage(pageNum,4);
        List<Student> list = studentMapper.getAllStudnet();
        PageInfo<Student> pageInfo=new PageInfo<Student>(list);
        return pageInfo;
    }

    @Override
    public void add(Student student) {
        studentMapper.add(student);

    }

    @Override
    public void update(Student student) {
        studentMapper.update(student);

    }

    @Override
    public void delete(Integer id) {
        studentMapper.delete(id);

    }

    @Override
    public Student queryById(Integer id) {
        return studentMapper.queryById(id);
    }
}
