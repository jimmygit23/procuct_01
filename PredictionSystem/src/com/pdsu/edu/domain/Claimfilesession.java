package com.pdsu.edu.domain;

import java.io.Serializable;


public class Claimfilesession implements Serializable { 
	/**
	 * 
	 */
	private static final long serialVersionUID = -6604420195536695520L;
	private String filename;
	
	
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	
	

}
