package com.pdsu.edu.service;

import java.util.List;

import com.pdsu.edu.domain.Loginuser;

public interface LoginService {
	public abstract List<Loginuser> findLoginuser(Loginuser login);
	public abstract List<Loginuser> findempLogin(Loginuser login);
}
