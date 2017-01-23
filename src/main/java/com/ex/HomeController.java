package com.ex;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.ex.model.Student;
import com.ex.service.StudentService;

@RestController
public class HomeController {
	@Autowired
	private StudentService studentservice;

	@RequestMapping(value = "/student", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public List<Student> getAllStudent() {

		return studentservice.getAllStudents();
	}

	@RequestMapping(value = "/delete/{id}", method = RequestMethod.DELETE)
	@ResponseBody
	public void deleteUser(@PathVariable("id") Long id) {
		studentservice.delete(id);
	}

	@RequestMapping(value = "/search/{name}", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public Student searchByName(@PathVariable("name") String name) {
		return studentservice.getStudentByName(name);
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST, produces = { "application/json; charset=UTF-8" })
	@ResponseBody
	public void addUser(@RequestBody Student student) {
		studentservice.add(student);
	}

	@RequestMapping(value = "/update/{id}", method = RequestMethod.PUT, produces = {
			"application/json; charset=UTF-8" })
	@ResponseBody
	public void updateUser(@PathVariable("id") Long id, @RequestBody Student student) {
		studentservice.update(id, student);
	}

	@RequestMapping(value = "/home")
	@ResponseBody
	public ModelAndView md() {
		return new ModelAndView("NewFile");
	}

	@RequestMapping(value = "/demo")
	@ResponseBody
	public ModelAndView md1() {
		return new ModelAndView("addStudent");
	}

	@RequestMapping(value = "/form")
	@ResponseBody
	public ModelAndView form() {
		return new ModelAndView("form");
	}

	@RequestMapping(value = "/formB")
	@ResponseBody
	public ModelAndView formB() {
		return new ModelAndView("index");
	}

	@RequestMapping(value = "/forminput")
	@ResponseBody
	public ModelAndView page1() {
		return new ModelAndView("forminput");
	}

}