package com.department.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Department {
	
	@Id
	private int deptid;
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
	
	
	

}
