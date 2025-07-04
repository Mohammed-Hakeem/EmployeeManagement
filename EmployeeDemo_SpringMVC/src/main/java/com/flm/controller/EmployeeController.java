package com.flm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.flm.dao.EmployeeDao;
import com.flm.model.Employee;

import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/employee")
public class EmployeeController {

	@Autowired

	EmployeeDao dao;

	

	@RequestMapping("/getone")
	public String getoneEmployee() {

		return "getone";
	}

	@RequestMapping("/getEmp")
	public String getemployee(HttpServletRequest request, Model model) {
		String id = request.getParameter("id");
		Long empId = Long.parseLong(id);
		Employee emp = dao.Getemployee(empId);
		if (emp == null) {

			// Handle case where employee is not found (e.g., ID doesn't exist)

			model.addAttribute("errorMessage", "Employee not found for editing.");

			return "errorPage"; 
		}else {
			model.addAttribute("emp", emp);
			return "oneEmployee";
		}
		

		
	}
	
	@RequestMapping("/getAll")
	public String getallemployees(Model model) {

		List<Employee> emplist = dao.Getallemployees();

		model.addAttribute("emps", emplist);

		return "employee";
	}
	@RequestMapping("/addEmployee")
	public String addemployee(HttpServletRequest request, Model model) {

		return "add_emp";
	}
	
	@RequestMapping("/save")
	public String createemployee(HttpServletRequest request, Model model) {

		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String salary = request.getParameter("salary");

		Employee employee = new Employee(name, address, salary);

		dao.saveemp(employee);

		return "redirect:getAll";

	}

	@RequestMapping("/editEmployee")
	public String editemployeepage(HttpServletRequest request, Model model) {

		String id = request.getParameter("emp_id");
		Long empId = Long.parseLong(id);
		Employee employee = dao.Getemployee(empId);

		model.addAttribute("employee", employee);

		return "edit_emp";
	}

	

	@RequestMapping("/update")
	public String updateemployee(HttpServletRequest request, Model model) {

		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String salary = request.getParameter("salary");

		Long eid = Long.parseLong(id);

		Employee employee = new Employee(eid, name, address, salary);

		dao.updateemp(employee);

		return "redirect:getAll";
	}

	@RequestMapping("/delete")
	public String deleteemployee(HttpServletRequest request, Model model) {

		String id = request.getParameter("emp_id");

		Long eid = Long.parseLong(id);

		dao.deleteemp(eid);

		return "redirect:getAll";
	}
}
