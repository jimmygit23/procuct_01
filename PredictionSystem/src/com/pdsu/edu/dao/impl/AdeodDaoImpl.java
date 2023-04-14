package com.pdsu.edu.dao.impl;
import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.pdsu.edu.dao.AdeodDao;
import com.pdsu.edu.domain.Adeod;

@Repository
public class AdeodDaoImpl implements AdeodDao {
	private final String SELECT_ALL = "selAll";
	private final String SELECT_PATIENT = "selpatientList";
	private final String SELECT_INSUREDINFO = "selectInsuredInfo";
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	
	public List<Adeod> findAll() {
		return sqlSessionTemplate.selectList(SELECT_ALL);
	}

	public List<Adeod> findPatient(Adeod adeod) {
		return sqlSessionTemplate.selectList(SELECT_PATIENT, adeod);
	}
	
	public List<Adeod> selectInsuredInfo(Adeod adeod) {
		return sqlSessionTemplate.selectList(SELECT_INSUREDINFO, adeod);
	}

	public List<Adeod> selectPhyName(String npi) {
		
		return sqlSessionTemplate.selectList("selectPhyName", npi);
	}

	public List<Adeod> selectProccd(String proccd) {
	
		return sqlSessionTemplate.selectList("selectProccd", proccd);
	}

	public List<Adeod> selectModcd(String modcd) {
		
		return sqlSessionTemplate.selectList("selectModcd", modcd);
	}

	public List<Adeod> selectCode(String code) {
		
		return sqlSessionTemplate.selectList("selectCode", code);
	}

	public List<Adeod> selectPOS(Integer pos) {
		
		return sqlSessionTemplate.selectList("selectPOS", pos);
	}

	public Integer selectMstno(Integer grpno) {
		
		return sqlSessionTemplate.selectOne("selectMstno", grpno);
	}

	public List<Adeod> selpatientuser(Adeod adeod) {
		return sqlSessionTemplate.selectList("selpatientuser",adeod);
	}
}
