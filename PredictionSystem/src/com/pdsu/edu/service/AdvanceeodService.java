package com.pdsu.edu.service;

import java.util.List;
import com.pdsu.edu.domain.Advanceeod; 

public interface AdvanceeodService {
	public abstract List<Advanceeod> findAdvanceeob(Advanceeod advanceeod); 
	public abstract List<Advanceeod> findAdvanceeobClaim(Advanceeod advanceeod); 
	public abstract List<Advanceeod> findAdvanceeobClaimrow(Advanceeod advanceeod);
	public abstract Integer insertAdvanceeob(Advanceeod advanceeod);
	public abstract Integer insertAdvanceeobline(Advanceeod advanceeod);
	public abstract Integer insertAeobMaintenance(Advanceeod advanceeod);
	public abstract List<Advanceeod> selclaimsearch(Advanceeod advanceeod);
	public abstract void updateAeobclaim(Advanceeod advanceeod);
	public abstract void updateAeobclaimpdf(Advanceeod advanceeod);
	
	public abstract List<Advanceeod> findAdvanceeobpdf(Advanceeod advanceeod); 
	public abstract List<Advanceeod> findAdvanceeobpdfrow(Advanceeod advanceeod); 
	public abstract List<Advanceeod> findAdvanceeobpdftotal(Advanceeod advanceeod);
	
	public abstract Integer insertAeobMaintenances(Advanceeod advanceeod);
	public abstract List<Advanceeod> findAdvanceeobid(Advanceeod advanceeod);
	public abstract List<Advanceeod> findAdvanceeobadvpdf(Advanceeod advanceeod);
	public abstract List<Advanceeod> findAdvanceeobadv(Advanceeod advanceeod);
}
