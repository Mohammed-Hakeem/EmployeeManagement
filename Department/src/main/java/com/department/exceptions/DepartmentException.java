package com.department.exceptions;

import java.util.NoSuchElementException;
import java.util.stream.Collectors;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import jakarta.validation.ConstraintViolation;
import jakarta.validation.ConstraintViolationException;

@RestControllerAdvice

public class DepartmentException {

	@ExceptionHandler(DepartmentNotFoundException.class)

	public ResponseEntity<ErrorMessage> DepartmentsException(DepartmentNotFoundException ex) {

		ErrorMessage error = new ErrorMessage();

		error.setErrorcode(HttpStatus.INTERNAL_SERVER_ERROR.value());
		error.setMessage(ex.getMessage());

		return new ResponseEntity<>(error, HttpStatus.INTERNAL_SERVER_ERROR);
	}

	@ExceptionHandler(MethodArgumentNotValidException.class)

	public ResponseEntity<ErrorMessage> methodArgumentExceptionHandler(MethodArgumentNotValidException ex) {

		ErrorMessage error = new ErrorMessage();

		error.setErrorcode(HttpStatus.BAD_REQUEST.value());

		error.setMessage(ex.getBindingResult().getAllErrors().stream().map(ObjectError::getDefaultMessage)
				.collect(Collectors.joining(", ")));

		return new ResponseEntity<>(error, HttpStatus.BAD_REQUEST);
	}

	@ExceptionHandler(NoSuchElementException.class)

	public ResponseEntity<ErrorMessage> NoSuchElementExceptionHandler(NoSuchElementException ex) {

		ErrorMessage error = new ErrorMessage();

		error.setErrorcode(HttpStatus.BAD_REQUEST.value());

		error.setMessage("no department found with the id");

		return new ResponseEntity<>(error, HttpStatus.BAD_REQUEST);
	}

//Handler for validation failures w.rit URI parameters

	@ExceptionHandler(ConstraintViolationException.class)

	public ResponseEntity<ErrorMessage> constraintViolationExceptionHandler(ConstraintViolationException ex) {

		ErrorMessage error = new ErrorMessage();

		error.setErrorcode(HttpStatus.BAD_REQUEST.value());

		error.setMessage(ex.getConstraintViolations().stream().map(ConstraintViolation::getMessage)
				.collect(Collectors.joining(",")));

		return new ResponseEntity<>(error, HttpStatus.BAD_REQUEST);

	}
}
