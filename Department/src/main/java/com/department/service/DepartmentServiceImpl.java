package com.department.service;

import java.util.List;
import java.util.NoSuchElementException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.MethodArgumentNotValidException;

import com.department.dto.Departmentdto;
import com.department.entity.Department;
import com.department.exceptions.DepartmentNotFoundException;
import com.department.repository.DepartmentRepository;
import com.department.util.DepartmentConstants;


@PropertySource("classpath:validationmsg.properties")
@Service
public class DepartmentServiceImpl implements DepartmentService {

	@Autowired

	private DepartmentRepository repo;

	@Autowired

	private Departmentdto dto;

	@Autowired

	private Environment environment;

	@Override

	public Departmentdto createdepartment(Departmentdto deptdto) throws MethodArgumentNotValidException {

		Department dept = dto.dtotoentity(deptdto);

		dept = repo.save(dept);

		return dto.entitytodto(dept);
	}

	@Override

	public List<Departmentdto> getdetails() throws DepartmentNotFoundException {

// TODO Auto-generated method stub

		List<Department> departmentlist = repo.findAll();

		List<Departmentdto> deptdto = null;

		deptdto = dto.entitytodto(departmentlist);

		if (departmentlist.isEmpty()) {

			throw new DepartmentNotFoundException(
					(environment.getProperty(DepartmentConstants.DEPARTMENT_NOT_FOUND.toString())));
		}

		return deptdto;

// return repo. FindById(id).get();
	}

	@Override
	public Departmentdto getdetails(int id) throws NoSuchElementException {
		// TODO Auto-generated method stub
		Department department = repo.findById(id).get();

		Departmentdto deptdto = null;

		deptdto = dto.entitytodto(department);

		if (department == null) {

			
			throw new NoSuchElementException(
					(environment.getProperty(DepartmentConstants.GENERAL_EXCEPTION_MESSAGE.toString())));
		}
		
	

		return deptdto;

	}

	@Override
	public String updatedetails(int id, Departmentdto deptdto) throws DepartmentNotFoundException {
		// TODO Auto-generated method stub

		Department department = repo.findById(id).get();
		if (department == null) {

			throw new DepartmentNotFoundException(
					(environment.getProperty(DepartmentConstants.DEPARTMENT_NOT_FOUND.toString())));
		}
		
		

		department.setDeptid(deptdto.getDeptid());

		department.setDeptname(deptdto.getDeptname());
		department.setDescription(deptdto.getDescription());
		department.setDepartmentcode(deptdto.getDepartmentcode());

		repo.save(department);

		// return "update success";

		return environment.getProperty(DepartmentConstants.DEPARTMENT_UPDATE_SUCCESS.toString());

	}

	@Override
	public String deletedetails(int id) throws DepartmentNotFoundException {

		// TODO Auto-generated method stub

		Department department = repo.findById(id).get();

		if (department == null) {

			throw new DepartmentNotFoundException(
					(environment.getProperty(DepartmentConstants.DEPARTMENT_NOT_FOUND.toString())));
		} else {

			repo.delete(department);
		}

		return environment.getProperty(DepartmentConstants.DEPARTMENT_DELETE_SUCCESS.toString());
	}

}