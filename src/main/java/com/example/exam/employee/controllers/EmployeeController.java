package com.example.exam.employee.controllers;

import com.example.exam.employee.models.Employee;
import com.example.exam.employee.reponsitories.EmployeeReponsitory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/employee")
public class EmployeeController {
    @Autowired
    EmployeeReponsitory employeeReponsitory;

    @GetMapping("")
    public String findAllEmployees(ModelMap modelMap) {
        Iterable<Employee> employees = employeeReponsitory.findAll();
        modelMap.addAttribute("employees",employees);
        return "home";
    }

    @GetMapping("/create")
    public  String showCreateForm() {
        return "create";
    }

    @PostMapping("/create")
    public  String createEmployee(@RequestParam(value = "employeeName") String employeeName,
                                  @RequestParam(value = "salary") Integer salary) {
        if(employeeName.trim().isEmpty() || salary <= 0) {
            return "redirect:/employee/create";
        }
        Employee employee = new Employee(employeeName, salary);
        employeeReponsitory.save(employee);
        return "redirect:/employee";
    }
}
