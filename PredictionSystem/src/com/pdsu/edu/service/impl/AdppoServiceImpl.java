package com.pdsu.edu.service.impl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pdsu.edu.dao.AdppoDao;
import com.pdsu.edu.domain.Adppo;
import com.pdsu.edu.service.AdppoService;

@Service
@Transactional
public class AdppoServiceImpl implements AdppoService {
	@Autowired
	private AdppoDao adppodao;

	public List<Adppo> findppoAll() {
		return adppodao.findppoAll();
	}

	public List<Adppo> findppoSpecialty(Adppo adppo) {
		return adppodao.findppoSpecialty(adppo);
	}

	public List<Adppo> findLatlon(Adppo adppo) {
		return adppodao.findLatlon(adppo);
	}

	public List<Adppo> selProbylocationtaxid(Adppo adppo) {
		return adppodao.selProbylocationtaxid(adppo);
	}

	public List<Adppo> selPpobymember(Adppo adppo) {
		return adppodao.selPpobymember(adppo);
	}

	public List<Adppo> selPpobymastergroup(Adppo adppo) {
		return adppodao.selPpobymastergroup(adppo);
	}

	public List<Adppo> selPpobyid(Adppo adppo) {
		return adppodao.selPpobyid(adppo);
	}

	public List<Adppo> selSubgroupinfo(Adppo adppo) {
		return adppodao.selSubgroupinfo(adppo);
	}

	public List<Adppo> selCorporationbyid(Adppo adppo) {
		return adppodao.selCorporationbyid(adppo);
	}

	public List<Adppo> selmembercart(Adppo adppo) {
		return adppodao.selmembercart(adppo);
	}

	public void deltmembercart(Adppo adppo) {
		adppodao.deltmembercart(adppo);
		
	}

	public Integer insertmembercart(Adppo adppo) {
		return  adppodao.insertmembercart(adppo);
	}

	public List<Adppo> selProbylocationtaxidFH(Adppo adppo) {
		return adppodao.selProbylocationtaxidFH(adppo);
	}
	public List<Adppo> selProbylocationtaxidFHsize(Adppo adppo) {
		return adppodao.selProbylocationtaxidFHsize(adppo);
	}

	public List<Adppo> selProbylocationtaxidFHF(Adppo adppo) {
		return adppodao.selProbylocationtaxidFHF(adppo);
	}

	public List<Adppo> selProbylocationtaxidFHFS(Adppo adppo) {
		return adppodao.selProbylocationtaxidFHFS(adppo);
	}

	public List<Adppo> selProbylocationtaxidFHS(Adppo adppo) {
		return adppodao.selProbylocationtaxidFHS(adppo);
	}

	public List<Adppo> selProccd(Adppo adppo) {
		return adppodao.selProccd(adppo);
	}

	public List<Adppo> selProbympi(Adppo adppo) {
		return adppodao.selProbympi(adppo);
	}

	public List<Adppo> selProbylocationtaxidFHFSsize(Adppo adppo) {
		return adppodao.selProbylocationtaxidFHFSsize(adppo);
	}

	public List<Adppo> selProbylocationtaxidFHFsize(Adppo adppo) {
		return adppodao.selProbylocationtaxidFHFsize(adppo);
	}

	public List<Adppo> selProbylocationtaxidFHSsize(Adppo adppo) {
		return adppodao.selProbylocationtaxidFHSsize(adppo);
	}

	public List<Adppo> selProbympisize(Adppo adppo) {
		return adppodao.selProbympisize(adppo);
	}

	public List<Adppo> selPromstcategoryDetl(Adppo adppo) {
		return adppodao.selPromstcategoryDetl(adppo);
	}

	public List<Adppo> selPromstcategoryMaster(Adppo adppo) {
		return adppodao.selPromstcategoryMaster(adppo);
	}

	public List<Adppo> selPromstcategorySub(Adppo adppo) {
		return adppodao.selPromstcategorySub(adppo);
	}

	public List<Adppo> selestcostclmdetl(Adppo adppo) {
		return adppodao.selestcostclmdetl(adppo);
	}

	public List<Adppo> selestcostempplan(Adppo adppo) {
		return adppodao.selestcostempplan(adppo);
	}

	public List<Adppo> selplanbenefits(Adppo adppo) {
		return adppodao.selplanbenefits(adppo);
	}

	public List<Adppo> selchecklUCR(Adppo adppo) {
		return adppodao.selchecklUCR(adppo);
	}


}
