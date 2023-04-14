package com.pdsu.edu.service;

import java.util.List;
import com.pdsu.edu.domain.Claimfile;

public interface ClaimfileService {
	public abstract List<Claimfile> findAll();
	public abstract List<Claimfile> findFileidmax(Claimfile claimfile);
	public abstract List<Claimfile> findFilelist(Claimfile claimfile);
	public abstract List<Claimfile> findEmaillist(Claimfile claimfile);
	public abstract List<Claimfile> findempEmaillist(Claimfile claimfile);
	public abstract List<Claimfile> findEmaillistbyrow(Claimfile claimfile);
	public abstract List<Claimfile> findcheckEmaillist(Claimfile claimfile);
	public abstract List<Claimfile> findcheckEmaillistbyrow(Claimfile claimfile);
	public abstract Integer insertFile(Claimfile claimfile);
	public abstract void deleteFile(Claimfile claimfile);
	public abstract void deleteMaintance(Claimfile claimfile);
}
