package com.pdsu.edu.service.impl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pdsu.edu.dao.AdvanceeodDao;
import com.pdsu.edu.domain.Advanceeod;
import com.pdsu.edu.service.AdvanceeodService;

@Service
@Transactional
public class AdvanceeodServiceImpl implements AdvanceeodService {
	@Autowired
	private AdvanceeodDao advanceeoddao;
	 

	public List<Advanceeod> findAdvanceeob(Advanceeod advanceeod) {
		return advanceeoddao.findAdvanceeob(advanceeod);
	}
	
	public List<Advanceeod> findAdvanceeobClaim(Advanceeod advanceeod) {
		return advanceeoddao.findAdvanceeobClaim(advanceeod);
	}


	public Integer insertAdvanceeob(Advanceeod advanceeod) {
		return advanceeoddao.insertAdvanceeob(advanceeod);
	}


	public Integer insertAdvanceeobline(Advanceeod advanceeod) {
		return advanceeoddao.insertAdvanceeobline(advanceeod);
	}

	public List<Advanceeod> findAdvanceeobClaimrow(Advanceeod advanceeod) {
		return advanceeoddao.findAdvanceeobClaimrow(advanceeod);
	}
	public Integer insertAeobMaintenance(Advanceeod advanceeod) {
		return advanceeoddao.insertAeobMaintenance(advanceeod);
	}

	public List<Advanceeod> selclaimsearch(Advanceeod advanceeod) {
		return advanceeoddao.selclaimsearch(advanceeod);
	}

	public void updateAeobclaim(Advanceeod advanceeod) {
		advanceeoddao.updateAeobclaim(advanceeod);
		
	}

	public List<Advanceeod> findAdvanceeobpdf(Advanceeod advanceeod) {
		return advanceeoddao.findAdvanceeobpdf(advanceeod);
	}

	public List<Advanceeod> findAdvanceeobpdfrow(Advanceeod advanceeod) {
		return advanceeoddao.findAdvanceeobpdfrow(advanceeod);
	}

	public List<Advanceeod> findAdvanceeobpdftotal(Advanceeod advanceeod) {
		return advanceeoddao.findAdvanceeobpdftotal(advanceeod);
	}

	public void updateAeobclaimpdf(Advanceeod advanceeod) {
		advanceeoddao.updateAeobclaimpdf(advanceeod);
		
	}

	public List<Advanceeod> findAdvanceeobid(Advanceeod advanceeod) {
		return advanceeoddao.findAdvanceeobid(advanceeod);
	}

	public Integer insertAeobMaintenances(Advanceeod advanceeod) {
		return advanceeoddao.insertAeobMaintenances(advanceeod);
	}

	public List<Advanceeod> findAdvanceeobadvpdf(Advanceeod advanceeod) {
		return advanceeoddao.findAdvanceeobadvpdf(advanceeod);
	}

	public List<Advanceeod> findAdvanceeobadv(Advanceeod advanceeod) {
		return advanceeoddao.findAdvanceeobadv(advanceeod);
	}
 
}
