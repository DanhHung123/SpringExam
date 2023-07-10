package com.example.exam.employee.reponsitories;

import com.example.exam.employee.models.Employee;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

public interface EmployeeReponsitory extends JpaRepository<Employee,Integer>, JpaSpecificationExecutor {
    Iterable<Employee> findByEmployeeName(String employeeName);
}
