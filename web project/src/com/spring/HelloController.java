package com.spring;

import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import com.bean.Userbean;
import com.dbconnection.*;
@RestController
public class HelloController extends Com{

@RequestMapping(value = "/facebook", method= RequestMethod.GET)
 public String init(Model model) 

{ 
	
return "facebook";
		
}
//@RequestMapping(value = "/project", method= RequestMethod.POST)
//public String git(Model model) 

//{ 
	//model.addAttribute("please enter your login details");
//return "project";
		
//}		
//@RequestMapping(value = "/HELLO", method= RequestMethod.GET)
//public String git1(Model model)
//{
	//Com cat1=new Com();
	//cat1.insert("lisi","t",1234577,"lisina@gmail.com","abc123");
	//return "HELLO";
//}
//@RequestMapping(value = "/facebook", method= RequestMethod.GET)
//public String git2(Model model)
//{
	// cat2=new Com();
	//cat2.insert("lisi","t",1234577,"lisina@gmail.com","abc123");
	//return "facebook";
//}

@RequestMapping(value = "/facebook",method = RequestMethod.POST)
public String facebook(@Validated @ModelAttribute("userbean") Userbean userbean ,BindingResult result,ModelMap model) {
    
String fname =userbean.getFname();  System.out.println(fname);


       Com obj =new Com();
       int resgister=obj.insert(userbean.getFname(), userbean.getLname(),userbean.getPhno(), userbean.getEmail(), userbean.getPword());
       if(resgister==1)
       {
        model.addAttribute("fname", userbean.getFname());
        model.addAttribute("lname", userbean.getLname());
        model.addAttribute("phno", userbean.getPhno());
        model.addAttribute("email", userbean.getEmail());
        model.addAttribute("pword", userbean.getPword());
       	return "home";
       }
       else
       {
        model.addAttribute("error", "REgistration Failed");
       	return "HELLO";
       }
}
}
