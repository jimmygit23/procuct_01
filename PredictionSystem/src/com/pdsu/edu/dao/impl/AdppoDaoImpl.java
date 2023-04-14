package com.pdsu.edu.dao.impl;
import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.pdsu.edu.dao.AdppoDao;
import com.pdsu.edu.domain.Adppo;

@Repository
public class AdppoDaoImpl implements AdppoDao {
	private final String SELECT_PPO = "selppoAll";
	private final String SELECT_SPECIALTY = "selppoSpecialty";
	private final String SELECT_LATLON = "selLatlon";
	private final String SELECT_LATCIONTAXID = "selProbylocationtaxid";
	private final String SELECT_LATCIONTAXIDFH = "selProbylocationtaxidFH";
	private final String SELECT_LATCIONTAXIDFHSIZE = "selProbylocationtaxidFHsize";
	private final String SELECT_LATCIONTAXIDFHS = "selProbylocationtaxidFHS";
	private final String SELECT_LATCIONTAXIDFHSSIZE = "selProbylocationtaxidFHSsize";
	private final String SELECT_LATCIONTAXIDFHF = "selProbylocationtaxidFHF";
	private final String SELECT_LATCIONTAXIDFHFSIZE = "selProbylocationtaxidFHFsize";
	private final String SELECT_LATCIONTAXIDFHFS = "selProbylocationtaxidFHFS";
	private final String SELECT_LATCIONTAXIDFHFSSIZE = "selProbylocationtaxidFHFSsize";
	private final String SELECT_PPOBYMEMBER = "selPpobymember";
	private final String SELECT_PPOBYMASTERGROUP = "selPpobymastergroup";
	private final String SELECT_PPOBYID = "selPpobyid";
	private final String SELECT_SUBGROUPINFO = "selSubgroupinfo";
	private final String SELECT_CORPORATION = "selCorporationbyid";
	private final String SELECT_CART = "selmembercart";
	private final String DELETE_CART = "deltmembercart";
	private final String INSERT_CART = "insertmembercart";
	private final String SELECT_PROCCD = "selProccd";
	private final String SELECT_PROMPI = "selProbympi";
	private final String SELECT_PROMPISIZE = "selProbympisize";
	private final String SELECT_PROCATEGORYDETL = "sel_mstcategoryDetl";
	private final String SELECT_PROCATEGORYMASTER = "sel_mstcategoryMaster";
	private final String SELECT_PROCATEGORYSUB = "sel_mstcategorySub";

	private final String SELECT_ESTCOSTEMPPLAN = "selestcostempplan";
	private final String SELECT_ESTCOSTCLMDETL = "selestcostclmdetl";
	private final String SELECT_PLANBENEFITS = "selplanbenefits";
	private final String SELECT_CHECKLUCR = "selchecklUCR";
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public List<Adppo> findppoAll() {
		return sqlSessionTemplate.selectList(SELECT_PPO);
	}

	public List<Adppo> findppoSpecialty(Adppo adppo) {
		return sqlSessionTemplate.selectList(SELECT_SPECIALTY, adppo);
	}

	public List<Adppo> findLatlon(Adppo adppo) {
		return sqlSessionTemplate.selectList(SELECT_LATLON, adppo);
	}

	public List<Adppo> selProbylocationtaxid(Adppo adppo) {
		return sqlSessionTemplate.selectList(SELECT_LATCIONTAXID, adppo);
	}

	public List<Adppo> selPpobymember(Adppo adppo) {
		return sqlSessionTemplate.selectList(SELECT_PPOBYMEMBER, adppo);
	}

	public List<Adppo> selPpobymastergroup(Adppo adppo) {
		return sqlSessionTemplate.selectList(SELECT_PPOBYMASTERGROUP, adppo);
	}

	public List<Adppo> selPpobyid(Adppo adppo) {
		return sqlSessionTemplate.selectList(SELECT_PPOBYID, adppo);
	}

	public List<Adppo> selSubgroupinfo(Adppo adppo) {
		return sqlSessionTemplate.selectList(SELECT_SUBGROUPINFO, adppo);
	}

	public List<Adppo> selCorporationbyid(Adppo adppo) {
		return sqlSessionTemplate.selectList(SELECT_CORPORATION, adppo);
	}

	public List<Adppo> selmembercart(Adppo adppo) {
		return sqlSessionTemplate.selectList(SELECT_CART, adppo);
	}

	public void deltmembercart(Adppo adppo) {
		sqlSessionTemplate.delete(DELETE_CART,adppo);
		
	}

	public Integer insertmembercart(Adppo adppo) {
		return sqlSessionTemplate.insert(INSERT_CART, adppo);
	}

	public List<Adppo> selProbylocationtaxidFH(Adppo adppo) {
		return sqlSessionTemplate.selectList(SELECT_LATCIONTAXIDFH, adppo);
	}

	public List<Adppo> selProbylocationtaxidFHF(Adppo adppo) {
		return sqlSessionTemplate.selectList(SELECT_LATCIONTAXIDFHF, adppo);
	}

	public List<Adppo> selProbylocationtaxidFHFS(Adppo adppo) {
		return sqlSessionTemplate.selectList(SELECT_LATCIONTAXIDFHFS, adppo);
	}

	public List<Adppo> selProbylocationtaxidFHS(Adppo adppo) {
		return sqlSessionTemplate.selectList(SELECT_LATCIONTAXIDFHS, adppo);
	}

	public List<Adppo> selProccd(Adppo adppo) {
		return sqlSessionTemplate.selectList(SELECT_PROCCD, adppo);
	}

	public List<Adppo> selProbympi(Adppo adppo) {
		return sqlSessionTemplate.selectList(SELECT_PROMPI, adppo);
	}

	public List<Adppo> selProbylocationtaxidFHsize(Adppo adppo) {
		return sqlSessionTemplate.selectList(SELECT_LATCIONTAXIDFHSIZE, adppo);
	}

	public List<Adppo> selProbylocationtaxidFHFSsize(Adppo adppo) {
		return sqlSessionTemplate.selectList(SELECT_LATCIONTAXIDFHSSIZE, adppo);
	}

	public List<Adppo> selProbylocationtaxidFHFsize(Adppo adppo) {
		return sqlSessionTemplate.selectList(SELECT_LATCIONTAXIDFHFSIZE, adppo);
	}

	public List<Adppo> selProbylocationtaxidFHSsize(Adppo adppo) {
		return sqlSessionTemplate.selectList(SELECT_LATCIONTAXIDFHSSIZE, adppo);
	}

	public List<Adppo> selProbympisize(Adppo adppo) {
		return sqlSessionTemplate.selectList(SELECT_PROMPISIZE, adppo);
	}

	public List<Adppo> selPromstcategoryDetl(Adppo adppo) {
		return sqlSessionTemplate.selectList(SELECT_PROCATEGORYDETL, adppo);
	}

	public List<Adppo> selPromstcategoryMaster(Adppo adppo) {
		return sqlSessionTemplate.selectList(SELECT_PROCATEGORYMASTER, adppo);
	}

	public List<Adppo> selPromstcategorySub(Adppo adppo) {
		return sqlSessionTemplate.selectList(SELECT_PROCATEGORYSUB, adppo);
	}

	public List<Adppo> selestcostclmdetl(Adppo adppo) {
		return sqlSessionTemplate.selectList(SELECT_ESTCOSTCLMDETL, adppo);
	}

	public List<Adppo> selestcostempplan(Adppo adppo) {
		return sqlSessionTemplate.selectList(SELECT_ESTCOSTEMPPLAN, adppo);
	}

	public List<Adppo> selplanbenefits(Adppo adppo) {
		return sqlSessionTemplate.selectList(SELECT_PLANBENEFITS, adppo);
	}

	public List<Adppo> selchecklUCR(Adppo adppo) {
		return sqlSessionTemplate.selectList(SELECT_CHECKLUCR, adppo);
	 
	}

	 
}
