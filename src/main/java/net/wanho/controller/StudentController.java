package net.wanho.controller;

import com.github.pagehelper.PageInfo;
import net.wanho.pojo.Student;
import net.wanho.service.StudentServiceI;
import net.wanho.util.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

/**
 * Created by DELL on 2019/4/18.
 */
@Controller
public class StudentController {

    @Autowired
    private StudentServiceI studentServiceI;

/*    @RequestMapping("getAllStus")
    @ResponseBody
    public JsonResult getAllStu(){
        List<Student> student = studentServiceI.getAllStudent();
        JsonResult jsonResult=new JsonResult();
        jsonResult.setStatus(200);
        jsonResult.setMsg("查询成功");
        jsonResult.setData(student);
        return jsonResult;
    }*/

    //获取所有student
    @RequestMapping("getAllStus")
    public  String getAllStus(@RequestParam(value = "pageNum",defaultValue = "1") Integer pageNum, Map map)
    {
        PageInfo<Student> pageInfo = studentServiceI.queryAll(pageNum);
        map.put("pageInfo",pageInfo);
        return "StudentList";
    }

    //跳转到增加页面
    @RequestMapping("addJSP")
    public  String toStudentList(){
        return "addStudent";
    }

    @RequestMapping("addStudent")
    public  String addStudent(String name,Integer age,String sex){
        Student student=new Student(null,name,age,sex);
        studentServiceI.add(student);
        return  "redirect:/getAllStus";

    }

    //根据id查找学生
    @RequestMapping("queryById")
    public  String queryById(Integer id,Map map){
        Student student = studentServiceI.queryById(id);
        map.put("stu",student);
        return "updateStudent";

    }

    @RequestMapping("updateStudent")
    public  String updateStudent(Integer id,String name,Integer age,String sex){
        Student student=new Student(id,name,age,sex);
        studentServiceI.update(student);
        return "redirect:/getAllStus";
    }

    @RequestMapping("deleteStudent")
    public  String deleteStudent(Integer id){
        studentServiceI.delete(id);
        return  "redirect:/getAllStus";
    }


}
