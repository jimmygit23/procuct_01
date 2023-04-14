package com.pdsu.edu.dao.impl;
import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.pdsu.edu.dao.AdvanceeodDao;
import com.pdsu.edu.domain.Advanceeod;
import com.pdsu.edu.domain.User;

@Repository
public class AdvanceeodDaoImpl implements AdvanceeodDao {
	private final String SELECT_ADVANCEEOB = "selAdvanceeob";
	private final String SELECT_ADVANCEEOB_CLAIM = "selAdvanceeobclaim";
	private final String SELECT_ADVANCEEOB_CLAIM_ROW = "selAdvanceeobclaimrow";
	private final String SELECT_ADVANCEEOBS = "insertAeobMaintenances";
	private final String INSERT_ADVANCEEOB = "insertAdvanceeob";
	private final String INSERT_ADVANCEEOBLINE = "insertAdvanceeobline";
	private final String SELECT_CLAIM = "selclaimsearch";
	private final String UPDATE_CLAIM = "updateBystatus";
	private final String UPDATE_CLAIMPDF = "updateBystatuspdf";
	

	private final String SELECT_ADVANCEEOB_ADVPDF = "selupdateadvpdf";
	private final String SELECT_ADVANCEEOB_ADV = "selupdateadv";
	private final String SELECT_ADVANCEEOB_ID = "selrequestid";
	private final String SELECT_ADVANCEEOB_PDF = "selAdvanceeobpdf";
	private final String SELECT_ADVANCEEOB_PDF_ROW = "selAdvanceeobpdfrow";
	private final String SELECT_ADVANCEEOB_PDF_TOTAL = "selAdvanceeobpdfcount";
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	 
	public List<Advanceeod> findAdvanceeob(Advanceeod advanceeod) {
		return sqlSessionTemplate.selectList(SELECT_ADVANCEEOB,advanceeod);
	}
	
	public List<Advanceeod> findAdvanceeobClaim(Advanceeod advanceeod) {
		return sqlSessionTemplate.selectList(SELECT_ADVANCEEOB_CLAIM,advanceeod);
	}


	public Integer insertAdvanceeob(Advanceeod advanceeod) {
		return sqlSessionTemplate.insert(INSERT_ADVANCEEOB, advanceeod);
	}


	public Integer insertAdvanceeobline(Advanceeod advanceeod) {
		return sqlSessionTemplate.insert(INSERT_ADVANCEEOBLINE, advanceeod);
	}

	public List<Advanceeod> findAdvanceeobClaimrow(Advanceeod advanceeod) {
		return sqlSessionTemplate.selectList(SELECT_ADVANCEEOB_CLAIM_ROW, advanceeod);
	}
	
	public Integer insertAeobMaintenance(Advanceeod advanceeod) {
		return sqlSessionTemplate.insert("insertAeobMaintenance", advanceeod);
	}

	public List<Advanceeod> selclaimsearch(Advanceeod advanceeod) {
		return sqlSessionTemplate.selectList(SELECT_CLAIM, advanceeod);
	}

	public void updateAeobclaim(Advanceeod advanceeod) {
		sqlSessionTemplate.update(UPDATE_CLAIM, advanceeod);
		
	}

	
	public List<Advanceeod> findAdvanceeobpdf(Advanceeod advanceeod) {
		return sqlSessionTemplate.selectList(SELECT_ADVANCEEOB_PDF, advanceeod);
	}

	public List<Advanceeod> findAdvanceeobpdfrow(Advanceeod advanceeod) {
		return sqlSessionTemplate.selectList(SELECT_ADVANCEEOB_PDF_ROW, advanceeod);
	}

	public List<Advanceeod> findAdvanceeobpdftotal(Advanceeod advanceeod) {
		return sqlSessionTemplate.selectList(SELECT_ADVANCEEOB_PDF_TOTAL, advanceeod);
	}
 
	public void updateAeobclaimpdf(Advanceeod advanceeod) {
		sqlSessionTemplate.update(UPDATE_CLAIMPDF, advanceeod);
		
	}

	public List<Advanceeod> findAdvanceeobid(Advanceeod advanceeod) {
		return sqlSessionTemplate.selectList(SELECT_ADVANCEEOB_ID, advanceeod);
	}

	public Integer insertAeobMaintenances(Advanceeod advanceeod) {
		return sqlSessionTemplate.insert(SELECT_ADVANCEEOBS, advanceeod);
	}

	public List<Advanceeod> findAdvanceeobadvpdf(Advanceeod advanceeod) {
		return sqlSessionTemplate.selectList(SELECT_ADVANCEEOB_ADVPDF, advanceeod);
	}

	public List<Advanceeod> findAdvanceeobadv(Advanceeod advanceeod) {
		return sqlSessionTemplate.selectList(SELECT_ADVANCEEOB_ADV, advanceeod);
	}

}
