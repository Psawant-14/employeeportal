package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.Employee;
import com.example.demo.service.EmployeeService;

@Controller
public class EmployeeController 
{
	    
	    @Autowired
	    private EmployeeService employeeService;
	    
	    @RequestMapping("/")
	    public String viewHomePage(Model model) {
	        List<Employee> list=employeeService.list();
	        model.addAttribute("list",list);	        
	        return "homepage";
	    }
	    
	    @RequestMapping("/new") 
	    public String showNewForm(Model model)
	    {
	    	Employee employee=new Employee();
	        model.addAttribute("employee", employee);
	        return "new_form";
	    }
	    
	    @RequestMapping(value="/save",method=RequestMethod.POST)        
	        public String save(@ModelAttribute("employee") Employee employee )
	        {
	    		employeeService.save(employee);
 	            return "redirect:/";
	         }
		     
	    @RequestMapping("/employee/{id}") 
        public ModelAndView list(@PathVariable("id") int id)
        {
            ModelAndView mav = new ModelAndView("new_form");
            Employee employee = employeeService.get(id);
            if(employee == null)
            {
                throw new RuntimeException("Record not found "+id); 
            }
            mav.addObject("employee",employee);
            return mav; 
        }	 
    
	    @RequestMapping(value="/delete/{id}",method=RequestMethod.GET)        
        public String delete(@PathVariable("id") int id)
        {
	    	employeeService.delete(id);
            
            return "redirect:/";
        }  
	  
	   
	    

}
