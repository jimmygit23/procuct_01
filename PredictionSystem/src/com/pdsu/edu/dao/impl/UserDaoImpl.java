package com.pdsu.edu.dao.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pdsu.edu.dao.UserDao;
import com.pdsu.edu.domain.User;

 
@Repository
public class UserDaoImpl implements UserDao {
	private final String INSERT_USER = "insertUser";
	private final String UPDATE_USER = "updateUser";
	private final String DELETE_USER = "deleteUser";
	private final String FIND_USER_BYID = "findUserById";
	private final String SELECT_ALL_USER = "selectAllUser";
	private final String USER_LOGIN = "userLogin";
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;


	public void insertUser(User user) {
		sqlSessionTemplate.insert(INSERT_USER, user);
	}

	public void updateUser(User user) {
		sqlSessionTemplate.update(UPDATE_USER, user);
	}

	public void deleteUser(Integer userId) {
		sqlSessionTemplate.delete(DELETE_USER, userId);
	}

	public User findUserByid(Integer userId) {
		return sqlSessionTemplate.selectOne(FIND_USER_BYID, userId);
	}


	public List<User> findAll() {
		return sqlSessionTemplate.selectList(SELECT_ALL_USER);
	}

	public User userLogin(User user) {
		return sqlSessionTemplate.selectOne(USER_LOGIN, user);
	}
}
