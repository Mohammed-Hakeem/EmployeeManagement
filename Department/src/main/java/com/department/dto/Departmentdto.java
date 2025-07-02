package com.department.dto;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Component;

import com.department.entity.Department;

import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;

@Component

//@XmlRootElement

public class Departmentdto {

@Min(1)
@Max (value=10,message="id must be in between 1 & 10")
private int deptid;

@NotNull (message="department name should not be null")
@NotEmpty (message="department name should not be empty")
private String deptname;
private String description;
private String departmentcode;


public int getDeptid() {
	return deptid;
}
public void setDeptid(int deptid) {
	this.deptid = deptid;
}
public String getDeptname() {
	return deptname;
}
public void setDeptname(String deptname) {
	this.deptname = deptname;
}
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}
public String getDepartmentcode() {
	return departmentcode;
}
public void setDepartmentcode(String departmentcode) {
	this.departmentcode = departmentcode;
}



public Departmentdto entitytodto (Department dept) {
	

		Departmentdto dto=new Departmentdto();
		
dto.setDeptid (dept.getDeptid());

dto.setDeptname (dept.getDeptname());

dto.setDescription (dept.getDescription());
dto.setDepartmentcode (dept.getDepartmentcode());


return dto;
}

public List<Departmentdto> entitytodto (List<Department> emp) {

return emp.stream().map(x->entitytodto(x)).collect(Collectors.toList());
}


public Department dtotoentity (Departmentdto dto) {

Department dept=new Department();

dept.setDeptid (dto.getDeptid());
dept.setDeptname (dto.getDeptname());
dept.setDepartmentcode (dto.getDepartmentcode());
dept.setDescription (dto.getDescription());

 return dept;
}







 public List<Department> dtotoentity(List<Departmentdto> dto){

 return dto.stream().map(x->dtotoentity(x)).collect (Collectors.toList());}




}