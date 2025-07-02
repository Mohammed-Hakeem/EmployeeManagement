package com.department.service;

import java.util.List;
import java.util.NoSuchElementException;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.MethodArgumentNotValidException;

import com.department.dto.Departmentdto;
import com.department.exceptions. DepartmentNotFoundException;
import com.department.util.DepartmentConstants;


@Service
public interface DepartmentService {

public Departmentdto createdepartment (Departmentdto empdto) throws MethodArgumentNotValidException;

public List<Departmentdto> getdetails () throws DepartmentNotFoundException;

public Departmentdto getdetails(int id) throws NoSuchElementException;

public String updatedetails (int id, Departmentdto empdto) throws DepartmentNotFoundException;

public String deletedetails (int id) throws DepartmentNotFoundException;

}
