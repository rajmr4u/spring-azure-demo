package net.guides.springboot2.azure.demo.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import net.guides.springboot2.azure.demo.domain.User;
import net.guides.springboot2.azure.demo.repositories.UserRepository;

@Controller
public class UserController {
	@Autowired
	UserRepository userRepo;
	
	@GetMapping("/register")
	public String showRegistrationForm(Model model) {
		System.out.print("In register..");
	    model.addAttribute("user", new User());
	     
	    return "signup_form";
	    //return "form";
	    
	}
	
	@RequestMapping("")
	public String showhome(Model model) {
		return "index";
	//    return "form";
	    
	}
	
	@RequestMapping("login")
	public String login(Model model) {
		System.out.print("In login..");
	    model.addAttribute("user", new User());
		return "login";
	//    return "form";
	    
	}

	@PostMapping("/register")
	public String processRegister(@ModelAttribute User user, Model model) {
		System.out.print("Process REgister +++++++++++...."+user.getEmail());
		
//	    BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
//	    String encodedPassword = passwordEncoder.encode(user.getPassword());
//	    user.setPassword(encodedPassword);
//	     
	    userRepo.save(user);
	    model.addAttribute("users", userRepo.findAll());
	    return "users";
	}
	
	@RequestMapping("/users")
	public String home(Model model) {
		model.addAttribute("users", userRepo.findAll());
		return "users";
	}
	
	
	@PostMapping("/logon")
	//@RequestMapping(value = "logon", method = RequestMethod.POST)
	public String authenticateUser(@ModelAttribute User user, Model model) {
		System.out.print("In Authenticate"+user.getEmail());
		//model.addAttribute("user",user);
		User loginUser = userRepo.findByEmail(user.getEmail());
		
		if(loginUser!=null && user.getEmail().equalsIgnoreCase(loginUser.getEmail())&& user.getPassword().equals(loginUser.getPassword()) ){
			model.addAttribute("users", userRepo.findAll());
		    return "users";
	   }    	
	   else
		   return "index";
	    
	}
}
