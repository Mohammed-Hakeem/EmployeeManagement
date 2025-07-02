package com.department.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.Data;

@Entity

@Data
public class Department {

	@Id
	private int deptid;
	private String deptname;
	private String description;
	private String departmentcode;

}
