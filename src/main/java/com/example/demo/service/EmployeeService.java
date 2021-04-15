package com.example.demo.service;

import java.util.List;

import com.example.demo.model.Employee;

public interface EmployeeService
{
	
    List<Employee> list();
    
    Employee get(int id);
    
    void save(Employee employee);
    
    void delete(int id);

}
