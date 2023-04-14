package com.pdsu.edu.dao;
import java.util.List;
import com.pdsu.edu.domain.Adppo;

public interface AdppoDao {
	public abstract List<Adppo> findppoAll();
	public abstract List<Adppo> findppoSpecialty(Adppo adppo);
	public abstract List<Adppo> findLatlon(Adppo adppo);
	public abstract List<Adppo> selProbylocationtaxid(Adppo adppo);
	public abstract List<Adppo> selPpobymember(Adppo adppo);
	public abstract List<Adppo> selPpobymastergroup(Adppo adppo);
	public abstract List<Adppo> selPpobyid(Adppo adppo);
	public abstract List<Adppo> selSubgroupinfo(Adppo adppo);
	public abstract List<Adppo> selCorporationbyid(Adppo adppo);
	public abstract List<Adppo> selmembercart(Adppo adppo);
	public abstract void deltmembercart(Adppo adppo);
	public abstract Integer insertmembercart(Adppo adppo);
	public abstract List<Adppo> selProbylocationtaxidFH(Adppo adppo);
	public abstract List<Adppo> selProbylocationtaxidFHF(Adppo adppo);
	public abstract List<Adppo> selProbylocationtaxidFHFS(Adppo adppo);
	public abstract List<Adppo> selProbylocationtaxidFHS(Adppo adppo);
	public abstract List<Adppo> selProccd(Adppo adppo);
	public abstract List<Adppo> selProbympi(Adppo adppo);
	public abstract List<Adppo> selProbylocationtaxidFHsize(Adppo adppo);
	public abstract List<Adppo> selProbylocationtaxidFHFSsize(Adppo adppo);
	public abstract List<Adppo> selProbylocationtaxidFHFsize(Adppo adppo);
	public abstract List<Adppo> selProbylocationtaxidFHSsize(Adppo adppo);
	public abstract List<Adppo> selProbympisize(Adppo adppo);
	public abstract List<Adppo> selPromstcategoryDetl(Adppo adppo);
	public abstract List<Adppo> selPromstcategoryMaster(Adppo adppo);
	public abstract List<Adppo> selPromstcategorySub(Adppo adppo);
	public abstract List<Adppo> selestcostclmdetl(Adppo adppo);
	public abstract List<Adppo> selestcostempplan(Adppo adppo);
	public abstract List<Adppo> selplanbenefits(Adppo adppo);
	public abstract List<Adppo> selchecklUCR(Adppo adppo);

}
