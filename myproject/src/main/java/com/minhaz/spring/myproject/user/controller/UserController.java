package com.minhaz.spring.myproject.user.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.minhaz.spring.myproject.user.entity.User;
import com.minhaz.spring.myproject.user.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService service;
	private List<User> users;

	@RequestMapping("registeruser")
	public String showRegistrationPage() {
		return "userReg";
	}

	@RequestMapping(value = "registerUser", method = RequestMethod.POST)
	public String registerUser(@ModelAttribute("user") User user, ModelMap model) {
		int result = service.save(user);
		model.addAttribute("result", "user created with id" + result);
		return "userReg";
	}

	@RequestMapping("getusers")
	public String getUser(ModelMap model) {
		List<User> users = service.getUsers();
		model.addAttribute("users", users);
		return "displayUsers";
	}

	@RequestMapping("validateEmail")
	public @ResponseBody String validateEmail(@RequestParam("id") int id) {
		User user = service.getUser(id);
		String msg = " ";
		if(user != null) {
			msg = id + "already exits";
		}
		return msg;
	}

	public UserService getService() {
		return service;
	}

	public void setService(UserService service) {
		this.service = service;
	}

	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}

}
