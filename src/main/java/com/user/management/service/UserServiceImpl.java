package com.user.management.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.user.management.dao.UserDao;
import com.user.management.model.User;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
    private UserDao dao;
	
	@Override
	public User findById(long id) {
		return dao.findById(id);
	}

	@Override
	public void saveUser(User user) {
		dao.saveUser(user);
	}

	@Override
	public void updateUser(User user) {
	        dao.updateUser(user);
	}

	@Override
	public void deleteUserById(long id) {
		dao.deleteUserById(id);
		
	}

	@Override
	public List<User> findAllUsers() {
		return dao.findAllUsers();
	}

}
