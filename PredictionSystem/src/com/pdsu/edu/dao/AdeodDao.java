package com.pdsu.edu.dao;
import java.util.List;
import com.pdsu.edu.domain.Adeod; 

public interface AdeodDao {
	
	public abstract List<Adeod> findAll();
	public abstract List<Adeod> findPatient(Adeod adeod);
	public abstract List<Adeod> selectInsuredInfo(Adeod adeod);
	public abstract List<Adeod> selectPhyName(String npi);
	public abstract List<Adeod> selectProccd(String proccd);
	public abstract List<Adeod> selectModcd(String modcd);
	public abstract List<Adeod> selectCode(String code);
	public abstract List<Adeod> selectPOS(Integer pos);
	public abstract Integer selectMstno(Integer grpno);
	public abstract List<Adeod> selpatientuser(Adeod adeod);
}
