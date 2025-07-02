package com.department.util;

/**
 * *



The Enum ExceptionConstants.
 */

public enum DepartmentConstants {

//Exception message constants
DEPARTMENT_NOT_FOUND ("Department.not.found"),

GENERAL_EXCEPTION_MESSAGE("general.exception"),


//Success message constants


DEPARTMENT_CREATED ("department.creation.success"),

DEPARTMENT_UPDATE_SUCCESS ("department.update.success"),

DEPARTMENT_DELETE_SUCCESS("department.delete.success");



private final String type;

private DepartmentConstants (String type) {

this.type =type;
}


@Override
public String toString() {

return this.type;
}
}
