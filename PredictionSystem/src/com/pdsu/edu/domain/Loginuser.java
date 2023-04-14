package com.pdsu.edu.domain;

import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.Comparator;
import java.util.Date;

public class Loginuser implements Serializable {

	private static final long serialVersionUID = 5961782027043024215L;

	private String login;
	private String password;
	private Integer ssn;
	private Integer user_number;
	private Integer gr_number;
	private Integer subgroup;
	private Date createtime;
	private String logintype;
	private String name;
	private Integer ppo;
	private String previouslyloggedin;
	private Date termdate;
	private Integer locationid;
	private Integer employeeclassid;
	private Integer corporationid;
	private Integer sys_cuser;
	private Date sys_cdate;
	private Integer msoid;
	private String forceenrollment;
	private Integer intpopedom;
	private Integer dep_number;
	private String email;
	private String mail_eob;
	private String mail_letter;
	private Date prompt_date;
	private Date modifydate;
	private String dob;
	private String grpno;
	private String empno;
	private String depno;
	
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
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
	 
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public Integer getSsn() {
		return ssn;
	}
	public void setSsn(Integer ssn) {
		this.ssn = ssn;
	}
	public Integer getUser_number() {
		return user_number;
	}
	public void setUser_number(Integer user_number) {
		this.user_number = user_number;
	}
	public Integer getGr_number() {
		return gr_number;
	}
	public void setGr_number(Integer gr_number) {
		this.gr_number = gr_number;
	}
	public Integer getSubgroup() {
		return subgroup;
	}
	public void setSubgroup(Integer subgroup) {
		this.subgroup = subgroup;
	}
	public Date getCreatetime() {
		return createtime;
	}
	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}
	public String getLogintype() {
		return logintype;
	}
	public void setLogintype(String logintype) {
		this.logintype = logintype;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getPpo() {
		return ppo;
	}
	public void setPpo(Integer ppo) {
		this.ppo = ppo;
	}

	public String getPreviouslyloggedin() {
		return previouslyloggedin;
	}
	public void setPreviouslyloggedin(String previouslyloggedin) {
		this.previouslyloggedin = previouslyloggedin;
	}
	public Date getTermdate() {
		return termdate;
	}
	public void setTermdate(Date termdate) {
		this.termdate = termdate;
	}
	public Integer getLocationid() {
		return locationid;
	}
	public void setLocationid(Integer locationid) {
		this.locationid = locationid;
	}
	public Integer getEmployeeclassid() {
		return employeeclassid;
	}
	public void setEmployeeclassid(Integer employeeclassid) {
		this.employeeclassid = employeeclassid;
	}
	public Integer getCorporationid() {
		return corporationid;
	}
	public void setCorporationid(Integer corporationid) {
		this.corporationid = corporationid;
	}
	public Integer getSys_cuser() {
		return sys_cuser;
	}
	public void setSys_cuser(Integer sys_cuser) {
		this.sys_cuser = sys_cuser;
	}
	public Date getSys_cdate() {
		return sys_cdate;
	}
	public void setSys_cdate(Date sys_cdate) {
		this.sys_cdate = sys_cdate;
	}
	public Integer getMsoid() {
		return msoid;
	}
	public void setMsoid(Integer msoid) {
		this.msoid = msoid;
	}
	public String getForceenrollment() {
		return forceenrollment;
	}
	public void setForceenrollment(String forceenrollment) {
		this.forceenrollment = forceenrollment;
	}
	public Integer getIntpopedom() {
		return intpopedom;
	}
	public void setIntpopedom(Integer intpopedom) {
		this.intpopedom = intpopedom;
	}
	public Integer getDep_number() {
		return dep_number;
	}
	public void setDep_number(Integer dep_number) {
		this.dep_number = dep_number;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMail_eob() {
		return mail_eob;
	}
	public void setMail_eob(String mail_eob) {
		this.mail_eob = mail_eob;
	}
	public String getMail_letter() {
		return mail_letter;
	}
	public void setMail_letter(String mail_letter) {
		this.mail_letter = mail_letter;
	}
	public Date getPrompt_date() {
		return prompt_date;
	}
	public void setPrompt_date(Date prompt_date) {
		this.prompt_date = prompt_date;
	}
	public Date getModifydate() {
		return modifydate;
	}
	public void setModifydate(Date modifydate) {
		this.modifydate = modifydate;
	}


	
	
}