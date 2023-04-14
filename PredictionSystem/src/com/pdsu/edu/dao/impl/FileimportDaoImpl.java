package com.pdsu.edu.dao.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pdsu.edu.dao.FileimportDao;
import com.pdsu.edu.domain.Fileimport;

@Repository
public class FileimportDaoImpl  implements FileimportDao {
	private final String INSERT_FILE = "insertFile";
	private final String INSERT_PROVIDER = "insertProvider";
	private final String INSERT_PROVIDER_TIN = "insertProvidertin";
	private final String INSERT_RATE = "insertRate";
	private final String INSERT_RATE_CONTRACT = "insertrateContract";

	private final String INSERT_OON_FILE = "insertoonFile";
	private final String INSERT_OON_PROVIDER = "insertoonProvider";
	private final String INSERT_OON_PROVIDER_TIN = "insertoonProvidertin";
	private final String INSERT_OON_RATE = "insertoonRate";
	private final String INSERT_OON_RATE_ALLOWED = "insertrateoonAllowed";
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;


	public Integer insertFile(Fileimport fileimport) {
		return sqlSessionTemplate.insert(INSERT_FILE, fileimport);
		
	}


	public Integer insertProvider(Fileimport fileimport) {
		return sqlSessionTemplate.insert(INSERT_PROVIDER, fileimport);
	}


	public Integer insertProvidertin(Fileimport fileimport) {
		return sqlSessionTemplate.insert(INSERT_PROVIDER_TIN, fileimport);
	}


	public Integer insertRate(Fileimport fileimport) {
		return sqlSessionTemplate.insert(INSERT_RATE, fileimport);
	}


	public Integer insertrateContract(Fileimport fileimport) {
		return sqlSessionTemplate.insert(INSERT_RATE_CONTRACT, fileimport);
	}


	public Integer insertoonFile(Fileimport fileimport) {
		return sqlSessionTemplate.insert(INSERT_OON_FILE, fileimport);
	}


	public Integer insertoonProvider(Fileimport fileimport) {
		return sqlSessionTemplate.insert(INSERT_OON_PROVIDER, fileimport);
	}


	public Integer insertoonProvidertin(Fileimport fileimport) {
		return sqlSessionTemplate.insert(INSERT_OON_PROVIDER_TIN, fileimport);
	}


	public Integer insertoonRate(Fileimport fileimport) {
		return sqlSessionTemplate.insert(INSERT_OON_RATE, fileimport);
	}


	public Integer insertrateoonAllowed(Fileimport fileimport) {
		return sqlSessionTemplate.insert(INSERT_OON_RATE_ALLOWED, fileimport);
	}
}
