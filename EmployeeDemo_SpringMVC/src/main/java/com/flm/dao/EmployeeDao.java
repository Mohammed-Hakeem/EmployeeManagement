package com.flm.dao;

import java.util.List;

import com.flm.model.Employee;

public interface EmployeeDao {
	
	public List<Employee> Getallemployees();
	public Employee Getemployee(Long id);
	public void saveemp(Employee emp);
	public void updateemp(Employee emp);
	public void deleteemp(Long id);
}
