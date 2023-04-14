package com.pdsu.edu.syscom.util;

import java.io.Serializable;

public class SessionUser implements Serializable {
	private static final long serialVersionUID = 4243691323057057400L;

	private Long FileId;
	private String reporting_entity_name;
	private String reporting_entity_type;
	private String plan_name;
	private String plan_market_type;
	private String negotiation_arrangement,fileuploadname,fileuploadstatus,fileuploadSize;
	
	private String plan_id,plan_id_type;//--<==for CMS INN/OON
	private String msoid,login,password;
	private String filenew;
	private String errorinfo;
	 
	

	private String ssn,gr_number,subgroup,logintype,ppo,corporationid,dotype;
	private String dob;
	 
	private String grpno,empno,depno;
	
	
	
	public String getGrpno() {
		return grpno;
	}
	public void setGrpno(String grpno) {
		this.grpno = grpno;
	}
	public String getEmpno() {
		return empno;
	}
	public void setEmpno(String empno) {
		this.empno = empno;
	}
	public String getDepno() {
		return depno;
	}
	public void setDepno(String depno) {
		this.depno = depno;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getDotype() {
		return dotype;
	}
	public void setDotype(String dotype) {
		this.dotype = dotype;
	}
	public String getCorporationid() {
		return corporationid;
	}
	public void setCorporationid(String corporationid) {
		this.corporationid = corporationid;
	}
	public String getSsn() {
		return ssn;
	}
	public void setSsn(String ssn) {
		this.ssn = ssn;
	}
	public String getGr_number() {
		return gr_number;
	}
	public void setGr_number(String gr_number) {
		this.gr_number = gr_number;
	}
	public String getSubgroup() {
		return subgroup;
	}
	public void setSubgroup(String subgroup) {
		this.subgroup = subgroup;
	}
	public String getLogintype() {
		return logintype;
	}
	public void setLogintype(String logintype) {
		this.logintype = logintype;
	}
	public String getPpo() {
		return ppo;
	}
	public void setPpo(String ppo) {
		this.ppo = ppo;
	}
	public String getErrorinfo() {
		return errorinfo;
	}
	public void setErrorinfo(String errorinfo) {
		this.errorinfo = errorinfo;
	}
	public String getFilenew() {
		return filenew;
	}
	public void setFilenew(String filenew) {
		this.filenew = filenew;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getMsoid() {
		return msoid;
	}
	public void setMsoid(String msoid) {
		this.msoid = msoid;
	}
	public String getPlan_id() {
		return plan_id;
	}
	public void setPlan_id(String plan_id) {
		this.plan_id = plan_id;
	}
	public String getPlan_id_type() {
		return plan_id_type;
	}
	public void setPlan_id_type(String plan_id_type) {
		this.plan_id_type = plan_id_type;
	}
	public String getFileuploadname() {
		return fileuploadname;
	}
	public void setFileuploadname(String fileuploadname) {
		this.fileuploadname = fileuploadname;
	}
	public String getFileuploadstatus() {
		return fileuploadstatus;
	}
	public void setFileuploadstatus(String fileuploadstatus) {
		this.fileuploadstatus = fileuploadstatus;
	}
	public String getFileuploadSize() {
		return fileuploadSize;
	}
	public void setFileuploadSize(String fileuploadSize) {
		this.fileuploadSize = fileuploadSize;
	}
	public Long getFileId() {
		return FileId;
	}
	public void setFileId(Long fileId) {
		FileId = fileId;
	}
	public String getReporting_entity_name() {
		return reporting_entity_name;
	}
	public void setReporting_entity_name(String reporting_entity_name) {
		this.reporting_entity_name = reporting_entity_name;
	}
	public String getReporting_entity_type() {
		return reporting_entity_type;
	}
	public void setReporting_entity_type(String reporting_entity_type) {
		this.reporting_entity_type = reporting_entity_type;
	}
	public String getPlan_name() {
		return plan_name;
	}
	public void setPlan_name(String plan_name) {
		this.plan_name = plan_name;
	}
	public String getPlan_market_type() {
		return plan_market_type;
	}
	public void setPlan_market_type(String plan_market_type) {
		this.plan_market_type = plan_market_type;
	}
	public String getNegotiation_arrangement() {
		return negotiation_arrangement;
	}
	public void setNegotiation_arrangement(String negotiation_arrangement) {
		this.negotiation_arrangement = negotiation_arrangement;
	}
	
	
}
