package com.controllers;
import java.util.List;    
import org.springframework.beans.factory.annotation.Autowired;    
import org.springframework.stereotype.Controller;  
import org.springframework.ui.Model;  
//import org.springframework.web.bind.annotation.ModelAttribute;    
//import org.springframework.web.bind.annotation.PathVariable;    
import org.springframework.web.bind.annotation.RequestMapping;    
//import org.springframework.web.bind.annotation.RequestMethod;     
import com.beans.Emp;    
import com.dao.EmpDao;    
@Controller    
public class EmpController {    
    @Autowired  
    EmpDao dao,dao2,dao3;//will inject dao from XML file    
        
    /*It displays a form to input data, here "command" is a reserved request attribute  
     *which is used to display object data into form  
     */    
      
   @RequestMapping("/viewemp")    
    public String viewemp(Model m){    
        List<Emp> list=dao.getEmployees();
        System.out.println("size:"+list.size());
        m.addAttribute("list",list);  
        return "viewemp";   
        
    }    
    
    	 @RequestMapping("/feb")    
    	    public String feb(Model m){    
    	        List<Emp> list=dao2.getEmployees1();
    	        System.out.println("size:"+list.size());
    	        m.addAttribute("list",list);  
    	        return "feb";    
    }
    	 @RequestMapping("/march")    
 	    public String march(Model m){    
 	        List<Emp> list=dao3.getEmployees2();
 	        System.out.println("size:"+list.size());
 	        m.addAttribute("list",list);  
 	        return "march";    
 }
}  