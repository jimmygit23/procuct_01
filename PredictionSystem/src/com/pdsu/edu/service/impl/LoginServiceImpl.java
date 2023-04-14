package com.pdsu.edu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pdsu.edu.dao.LoginDao;
import com.pdsu.edu.domain.Loginuser;
import com.pdsu.edu.service.LoginService;


@Service
@Transactional
public class LoginServiceImpl implements LoginService{
	
	@Autowired
	private LoginDao loginDao;

	public List<Loginuser> findLoginuser(Loginuser login) {
		return loginDao.findLoginuser(login);
	}

	public List<Loginuser> findempLogin(Loginuser login) {
		return loginDao.findempLogin(login);
	}



}
