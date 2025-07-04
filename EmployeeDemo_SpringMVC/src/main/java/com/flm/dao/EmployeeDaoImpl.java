package com.flm.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.flm.model.Employee;

public class EmployeeDaoImpl implements EmployeeDao {

	private String getall = "select * from employee";
	private String getone = "select * from employee where id=?";
	private String insert = "insert into employee (name,address,salary) values(?,?,?)";
	private String update = "update employee set name=?,address=?,salary=? where id=?";
	private String delete = "delete from employee where id=?";

	@Autowired
	JdbcTemplate jdbctemplate;

	EmployeeRowMapper mapper = new EmployeeRowMapper();

	@Override
	public List<Employee> Getallemployees() {
		// TODO Auto-generated method stub
		return jdbctemplate.query(getall, mapper);

	}

	@Override
	public Employee Getemployee(Long id) {
		// TODO Auto-generated method stub
		return jdbctemplate.queryForObject(getone, mapper, id);

	}

	@Override
	public void saveemp(Employee emp) {

		jdbctemplate.update(insert, emp.getName(), emp.getAddress(), emp.getSalary());

	}

	@Override
	public void updateemp(Employee emp) {
		// TODO Auto-generated method stub
		jdbctemplate.update(update, emp.getName(), emp.getAddress(), emp.getSalary(), emp.getId());

	}

	@Override
	public void deleteemp(Long id) {
		// TODO Auto-generated method stub
		jdbctemplate.update(delete, id);

	}

}
