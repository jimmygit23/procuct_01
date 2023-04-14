package com.pdsu.edu.service.impl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pdsu.edu.dao.ClaimfileDao;
import com.pdsu.edu.domain.Claimfile;
import com.pdsu.edu.domain.Fileimport;
import com.pdsu.edu.service.ClaimfileService;


@Service
@Transactional
public class ClaimfileServiceImpl implements ClaimfileService {
	@Autowired
	private ClaimfileDao claimfiledao;
	
	
	public List<Claimfile> findAll() {
		return claimfiledao.findAll();
	}
	
	public List<Claimfile> findFilelist(Claimfile claimfile) {
		return claimfiledao.findFilelist(claimfile);
	}


	public Integer insertFile(Claimfile claimfile) {
		return  claimfiledao.insertFile(claimfile);
	}

	public void deleteFile(Claimfile claimfile) {
		claimfiledao.deleteFile(claimfile);
		
	}

	public List<Claimfile> findEmaillist(Claimfile claimfile) {
		return claimfiledao.findEmaillist(claimfile);
	}

	public List<Claimfile> findEmaillistbyrow(Claimfile claimfile) {
		return claimfiledao.findEmaillistbyrow(claimfile);
	}

	public List<Claimfile> findcheckEmaillist(Claimfile claimfile) {
		return claimfiledao.findcheckEmaillist(claimfile);
	}

	public List<Claimfile> findcheckEmaillistbyrow(Claimfile claimfile) {
		return claimfiledao.findcheckEmaillistbyrow(claimfile);
	}

	public List<Claimfile> findempEmaillist(Claimfile claimfile) {
		return claimfiledao.findempEmaillist(claimfile);
	}

	public List<Claimfile> findFileidmax(Claimfile claimfile) {
		return claimfiledao.findFileidmax(claimfile);
	}

	public void deleteMaintance(Claimfile claimfile) {
		claimfiledao.deleteMaintance(claimfile);
		
	}


 
}
