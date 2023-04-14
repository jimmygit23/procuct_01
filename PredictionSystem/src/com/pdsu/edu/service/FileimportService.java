package com.pdsu.edu.service;

import java.util.List;
import com.pdsu.edu.domain.Fileimport;


public interface FileimportService {

	public abstract Integer insertFile(Fileimport fileimport);
	public abstract Integer insertProvider(Fileimport fileimport);
	public abstract Integer insertProvidertin(Fileimport fileimport);
	public abstract Integer insertRate(Fileimport fileimport);
	public abstract Integer insertrateContract(Fileimport fileimport);

	public abstract Integer insertoonFile(Fileimport fileimport);
	public abstract Integer insertoonProvider(Fileimport fileimport);
	public abstract Integer insertoonProvidertin(Fileimport fileimport);
	public abstract Integer insertoonRate(Fileimport fileimport);
	public abstract Integer insertrateoonAllowed(Fileimport fileimport);
	public abstract Integer insertInnetwork(Fileimport fileimport);
	public abstract Integer insertCMSFile(Fileimport fileimport); 
	
}
