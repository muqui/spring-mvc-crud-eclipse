 package com.alberto.controller;

 import org.springframework.jdbc.core.JdbcTemplate;
 import java.util.List;    
 import org.springframework.beans.factory.annotation.Autowired;    
 import org.springframework.stereotype.Controller;  
 import org.springframework.ui.Model;  
 import org.springframework.web.bind.annotation.ModelAttribute;    
 import org.springframework.web.bind.annotation.PathVariable;    
 import org.springframework.web.bind.annotation.RequestMapping;    
 import org.springframework.web.bind.annotation.RequestMethod;     
 import org.springframework.web.servlet.ModelAndView;
 

import com.alberto.beans.Person;
import com.alberto.dao.PersonDao;
  
@Controller
public class CrudController {
	  @Autowired    
	  PersonDao dao;//will inject dao from XML file    
	  
	  
	  @RequestMapping("/addPerson")    
	    public String showform(Model m){    
	        m.addAttribute("command", new Person());  
	        return "addPerson";   
	    }    
	  @RequestMapping(value="/save",method = RequestMethod.POST)    
	    public String save(@ModelAttribute("emp") Person person){    
	        dao.save(person);    
	        return "redirect:/";//will redirect to viewemp request mapping    
	    }    
	
	  
    /* It provides list of employees in model object */    
    @RequestMapping("/")    
    public String list(Model m){    
        List<Person> list=dao.getEmployees();    
        m.addAttribute("list",list);  
        return "index";    
    }  
    /* It deletes record for the given id in URL and redirects to /viewemp */    
    @RequestMapping(value="/deletePerson/{id}",method = RequestMethod.GET)    
    public String delete(@PathVariable int id){    
        dao.delete(id);    
        return "redirect:/";    
    }  
    /* It displays object data into form for the given id.   
     * The @PathVariable puts URL data into variable.*/    
    @RequestMapping(value="/editPerson/{id}")    
    public String edit(@PathVariable int id, Model m){    
        Person emp=dao.getEmpById(id);    
        m.addAttribute("command",emp);  
        return "edit";    
    } 
    /* It updates model object. */    
    @RequestMapping(value="/editsave",method = RequestMethod.POST)    
    public String editsave(@ModelAttribute("emp") Person emp){    
        dao.update(emp);    
        return "redirect:/";    
    }    
}
