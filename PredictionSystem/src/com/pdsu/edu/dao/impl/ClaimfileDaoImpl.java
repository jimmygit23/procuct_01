package com.pdsu.edu.dao.impl;
import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.pdsu.edu.dao.ClaimfileDao;
import com.pdsu.edu.domain.Claimfile; 

@Repository
public class ClaimfileDaoImpl implements ClaimfileDao {
	private final String SELECT_ALL = "selAll";
	private final String SELECT_FILELIST = "selFilelist";
	private final String SELECT_FILEIDMAX = "selFileidmax";
	private final String SELECT_EMAILLIST = "selEmaillist";
	private final String SELECT_EMPEMAILLIST = "selempEmaillist";
	private final String SELECT_EMAILLISTBYROW = "selEmaillistbyrows";
	private final String SELECT_EMAILCHECKLIST = "selcheckEmaillist";
	private final String SELECT_EMAILCHECKLISTBYROW = "selcheckEmaillistbyrows";
	private final String INSERT_FILE = "insertAdvanceFile";
	private final String DELETE_FILE = "delAdvanceFile";
	private final String DELETE_MAINTENANCE = "delFileMaintenance";
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	
	public List<Claimfile> findAll() {
		return sqlSessionTemplate.selectList(SELECT_ALL);
	}

	public List<Claimfile> findFilelist(Claimfile claimfile) {
		return sqlSessionTemplate.selectList(SELECT_FILELIST,claimfile);
	}
	
	public Integer insertFile(Claimfile claimfile) {
		return sqlSessionTemplate.insert(INSERT_FILE, claimfile);
		
	}

	public void deleteFile(Claimfile claimfile) {
		sqlSessionTemplate.delete(DELETE_FILE,claimfile);
		
	}

	public List<Claimfile> findEmaillist(Claimfile claimfile) {
		return sqlSessionTemplate.selectList(SELECT_EMAILLIST,claimfile);
	}

	public List<Claimfile> findEmaillistbyrow(Claimfile claimfile) {
		return sqlSessionTemplate.selectList(SELECT_EMAILLISTBYROW,claimfile);
	}

	public List<Claimfile> findcheckEmaillist(Claimfile claimfile) {
		return sqlSessionTemplate.selectList(SELECT_EMAILCHECKLIST,claimfile);
	}

	public List<Claimfile> findcheckEmaillistbyrow(Claimfile claimfile) {
		return sqlSessionTemplate.selectList(SELECT_EMAILCHECKLISTBYROW,claimfile);
	}

	public List<Claimfile> findempEmaillist(Claimfile claimfile) {
		return sqlSessionTemplate.selectList(SELECT_EMPEMAILLIST,claimfile);
	}

	public List<Claimfile> findFileidmax(Claimfile claimfile) {
		return sqlSessionTemplate.selectList(SELECT_FILEIDMAX,claimfile);
	}

	public void deleteMaintance(Claimfile claimfile) {
		sqlSessionTemplate.delete(DELETE_MAINTENANCE,claimfile);
		
	}


}
