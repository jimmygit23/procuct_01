package com.pdsu.edu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pdsu.edu.dao.FileimportDao;
import com.pdsu.edu.domain.Fileimport; 
import com.pdsu.edu.service.FileimportService;



@Service
@Transactional
public class FileimportServiceImpl  implements FileimportService   {

	@Autowired
	private FileimportDao FileimportDao;
	
	
	public Integer insertFile(Fileimport fileimport) { 
			return FileimportDao.insertFile(fileimport);
		 
	}


	public Integer insertProvider(Fileimport fileimport) {
		return FileimportDao.insertProvider(fileimport);
	}


	public Integer insertProvidertin(Fileimport fileimport) {
		return FileimportDao.insertProvidertin(fileimport);
	}


	public Integer insertRate(Fileimport fileimport) {
		return FileimportDao.insertRate(fileimport);
	}


	public Integer insertrateContract(Fileimport fileimport) {
		return FileimportDao.insertrateContract(fileimport);
	}


	public Integer insertoonFile(Fileimport fileimport) {
		return FileimportDao.insertoonFile(fileimport);
	}


	public Integer insertoonProvider(Fileimport fileimport) {
		return FileimportDao.insertoonProvider(fileimport);
	}


	public Integer insertoonProvidertin(Fileimport fileimport) {
		return FileimportDao.insertoonProvidertin(fileimport);
	}


	public Integer insertoonRate(Fileimport fileimport) {
		return FileimportDao.insertoonRate(fileimport);
	}


	public Integer insertrateoonAllowed(Fileimport fileimport) {
		return FileimportDao.insertrateoonAllowed(fileimport);
	}


	public Integer insertCMSFile(Fileimport fileimport) {
		// TODO Auto-generated method stub
		return null;
	}


	public Integer insertInnetwork(Fileimport fileimport) {
		// TODO Auto-generated method stub
		return null;
	}
 
}
