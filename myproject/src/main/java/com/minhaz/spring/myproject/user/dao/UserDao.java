package com.minhaz.spring.myproject.user.dao;

import java.util.List;

import com.minhaz.spring.myproject.user.entity.User;

public interface UserDao {
	
	int create(User user);
	
	List<User> findUsers();
	
	User findUser(Integer id);
	

}
