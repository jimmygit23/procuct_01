package com.pdsu.edu.dao;

import java.util.List;

import com.pdsu.edu.domain.Loginuser;


public interface LoginDao {
	
	public abstract List<Loginuser> findLoginuser(Loginuser login);

	public abstract List<Loginuser> findempLogin(Loginuser login);
	
}
