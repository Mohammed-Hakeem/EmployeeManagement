package com.department.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.department.dto.Departmentdto;
import com.department.exceptions.DepartmentNotFoundException;
import com.department.service.DepartmentService;
import com.department.util.DepartmentConstants;

import jakarta.validation.Valid;

@RestController

@RequestMapping("/department")

public class DepartmentController {

	@Autowired

	private DepartmentService service;

	@Autowired
	private Environment environment;

@PostMapping (consumes="application/json",value="/create")

public ResponseEntity<String> createDepartment (@Valid @RequestBody Departmentdto deptdto) throws MethodArgumentNotValidException{

service.createdepartment (deptdto);

return new ResponseEntity<>(environment.getProperty(DepartmentConstants.DEPARTMENT_CREATED.toString()), HttpStatus.CREATED);

}

	@GetMapping(value = "/details")

	public List<Departmentdto> getdetails() throws DepartmentNotFoundException {
		return service.getdetails();
	}

	@GetMapping(produces = "application/json", value = "/details/{id}")

	public ResponseEntity<Departmentdto> getdeptdetails(@PathVariable int id) throws DepartmentNotFoundException {

		Departmentdto deptdto = service.getdetails(id);

		return new ResponseEntity<>(deptdto, HttpStatus.OK);

	}

	@PutMapping("/{id}")

	public String updateDetails(@PathVariable("id") int id, @RequestBody Departmentdto dto) throws DepartmentNotFoundException {
		return service.updatedetails(id, dto);
	}

	@DeleteMapping("{id}")

	public String deletedepartment(@PathVariable("id") int id) throws DepartmentNotFoundException {

		return service.deletedetails(id);

	}
}
