package com.spring;


import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.bean.*;
import com.dbconnection.Com;

@Controller
public class Logincontroller {



@RequestMapping(value="/HELLO", method = RequestMethod.GET)
public String submit(Model model, @ModelAttribute("loginBean") Loginbean loginBean)

{
	return "HELLO";
}
@RequestMapping(value = "/login",method = RequestMethod.POST)
public String facebook(@Validated @ModelAttribute("logbean") Loginbean logbean ,BindingResult result,ModelMap model) throws SQLException {
    

       Com obj =new Com();
       System.out.println("uname="+logbean.getEma());
       ResultSet x=obj.store(logbean.getEma(), logbean.getWord());
       System.out.println("x="+x);
       if(x.next())
       {
       
        //model.addAttribute("email", logbean.getEma());
       // model.addAttribute("pswd", logbean.getWord());
    	   model.addAttribute("fname", x.getString("firstname"));
       	return "project";
       }
       else
       {
        model.addAttribute("error", "REgistration Failed");
       	return "HELLO";
       }
}

//System.out.println(loginBean.getEma());

/*if (loginBean != null && loginBean.getEma() != null & loginBean.getWord() != null)
	
{
if (loginBean.getEma().equals("abc@gmail.com") && loginBean.getWord().equals("abc123")) 

{
model.addAttribute("msg", loginBean.getEma());

return "HELLO";
} 

else {
	
model.addAttribute("error", "Invalid Details");
return "project";
}
} 

else {
model.addAttribute("error", "Please enter Details");
return "HELLO";
}*/
}

