package com.example.exam.employee.models;

import jakarta.persistence.*;

@Entity
@Table(name = "employee")
public class Employee {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "employeeId")
    private Integer employeeId;
    @Column(name = "employeeName")
    private String employeeName;
    @Column(name = "salary")
    private Integer salary;

    public Employee() {}

    public Employee(int employeeId, String employeeName, int salary) {
        this.employeeId = employeeId;
        this.employeeName = employeeName;
        this.salary = salary;
    }
    public Employee( String employeeName, int salary) {
        this.employeeName = employeeName;
        this.salary = salary;
    }

    public int getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(int employeeId) {
        this.employeeId = employeeId;
    }

    public String getEmployeeName() {
        return employeeName;
    }

    public void setEmployeeName(String employeeName) {
        this.employeeName = employeeName;
    }

    public int getSalary() {
        return salary;
    }

    public void setSalary(int salary) {
        this.salary = salary;
    }
}
