package com.minhaz.spring.myproject.user.service;

import java.util.List;

import com.minhaz.spring.myproject.user.entity.User;

public interface UserService {
	
	int save(User user);
	
	List<User> getUsers();
	
	User getUser(Integer id);

	
}
