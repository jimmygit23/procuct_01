package com.pdsu.edu.service.impl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pdsu.edu.dao.AdeodDao;
import com.pdsu.edu.domain.Adeod;
import com.pdsu.edu.service.AdeodService;

@Service
@Transactional
public class AdeodServiceImpl implements AdeodService {
	@Autowired
	private AdeodDao adeoddao;
	
	
	public List<Adeod> findAll() {
		return adeoddao.findAll();
	}


	public List<Adeod> findPatient(Adeod adeod) {
		return adeoddao.findPatient(adeod);
	}


	public List<Adeod> selectInsuredInfo(Adeod adeod) {
		// TODO Auto-generated method stub
		return adeoddao.selectInsuredInfo(adeod);
	}


	public List<Adeod> selectPhyName(String npi) {
		// TODO Auto-generated method stub
		return adeoddao.selectPhyName(npi);
	}


	public List<Adeod> selectProccd(String proccd) {
		
		return adeoddao.selectProccd(proccd);
	}


	public List<Adeod> selectModcd(String modcd) {
		
		return adeoddao.selectModcd(modcd);
	}


	public List<Adeod> selectCode(String code) {
		
		return adeoddao.selectCode(code);
	}


	public List<Adeod> selectPOS(Integer pos) {
		
		return adeoddao.selectPOS(pos);
	}


	public Integer selectMstno(Integer grpno) {
		
		return adeoddao.selectMstno(grpno);
	}


	public List<Adeod> selpatientuser(Adeod adeod) {
		return adeoddao.selpatientuser(adeod);
	}

}
