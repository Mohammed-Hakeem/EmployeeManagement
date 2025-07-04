package com.flm.model;

public class Employee {

	private Long id;
	private String name;
	private String address;
	private String salary;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getSalary() {
		return salary;
	}

	public void setSalary(String salary) {
		this.salary = salary;
	}

	public Employee(Long id, String name, String address, String salary) {
		super();
		this.id = id;
		this.name = name;
		this.address = address;
		this.salary = salary;
	}

	public Employee(String name, String address, String salary) {

		this.name = name;
		this.address = address;
		this.salary = salary;
	}

	public Employee() {

	}

}
