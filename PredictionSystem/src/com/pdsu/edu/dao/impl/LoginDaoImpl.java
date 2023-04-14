package com.pdsu.edu.dao.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pdsu.edu.dao.LoginDao;
import com.pdsu.edu.domain.Loginuser;

@Repository
public class LoginDaoImpl implements LoginDao {

	private final String SELECT_LOGIN = "selLogin";
	private final String SELECT_LOGINUSER = "selemploginuser";
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public List<Loginuser> findLoginuser(Loginuser login) {
		return sqlSessionTemplate.selectList(SELECT_LOGIN, login);
	}

	public List<Loginuser> findempLogin(Loginuser login) {
		return sqlSessionTemplate.selectList(SELECT_LOGINUSER, login);
	}

}
