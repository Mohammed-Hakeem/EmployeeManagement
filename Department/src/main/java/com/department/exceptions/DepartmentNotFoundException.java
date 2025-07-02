package com.department.exceptions;

public class DepartmentNotFoundException extends Exception {

	/**
	 * 
	 */

	private static final long serialVersionUID = 1L;

	public DepartmentNotFoundException(String errormessage) {

		super(errormessage);

	}
}
