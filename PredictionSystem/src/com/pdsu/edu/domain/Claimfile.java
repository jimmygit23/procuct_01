package com.pdsu.edu.domain;

import java.io.Serializable;
import java.util.Date;


public class Claimfile implements Serializable {
	private static final long serialVersionUID = 5859329915583291624L;
	private Long fileId;
	private Long ssn;
	private String altid;
	private String file_type;
	private String file_name;
	private Date last_updated; 
	
	private String FILE_ID;
	private Long SSN;
	private String ALTID;
	private String FILE_TYPE;
	private String FILE_NAME; 
	private Date LAST_UPDATED;
	private String fdate;
	private String edate;
	private String updated;
	private String flag;
	
	private Long requestid;
	private Long toid;
	private Long fromid;
	private Integer master_group;
	private Integer emp_ssn;
	private Integer grp_no;
	private Integer emp_no;
	private Integer dep_no;
	private String login_area;
	private Long call_number;
	private String description;
	private Integer priority;
	private Integer status;
	private Date datesubmitted;
	private Date datecompleted;
	private String claim_form_id;
	private Long doc_id;
	private String reply;
	private Integer deliver_method;
	private Long fax_number;
	private String email_address;
	private String mailing_address;
	private Date delivered_date;
	private String returndialog;
	private String claim_number;
	  private Integer beginrow;
	  private Integer endrow;

		private String email;
		  private Integer total;
	
	
	
	public Integer getGrp_no() {
			return grp_no;
		}
		public void setGrp_no(Integer grp_no) {
			this.grp_no = grp_no;
		}
		public Integer getEmp_no() {
			return emp_no;
		}
		public void setEmp_no(Integer emp_no) {
			this.emp_no = emp_no;
		}
	public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public Integer getTotal() {
			return total;
		}
		public void setTotal(Integer total) {
			this.total = total;
		}
	public Integer getBeginrow() {
		return beginrow;
	}
	public void setBeginrow(Integer beginrow) {
		this.beginrow = beginrow;
	}
	public Integer getEndrow() {
		return endrow;
	}
	public void setEndrow(Integer endrow) {
		this.endrow = endrow;
	}
	public Long getRequestid() {
		return requestid;
	}
	public void setRequestid(Long requestid) {
		this.requestid = requestid;
	}
	public Long getToid() {
		return toid;
	}
	public void setToid(Long toid) {
		this.toid = toid;
	}
	public Long getFromid() {
		return fromid;
	}
	public void setFromid(Long fromid) {
		this.fromid = fromid;
	}
	public Integer getMaster_group() {
		return master_group;
	}
	public void setMaster_group(Integer master_group) {
		this.master_group = master_group;
	}
	public Integer getEmp_ssn() {
		return emp_ssn;
	}
	public void setEmp_ssn(Integer emp_ssn) {
		this.emp_ssn = emp_ssn;
	}
	public Integer getDep_no() {
		return dep_no;
	}
	public void setDep_no(Integer dep_no) {
		this.dep_no = dep_no;
	}
	public String getLogin_area() {
		return login_area;
	}
	public void setLogin_area(String login_area) {
		this.login_area = login_area;
	}
	public Long getCall_number() {
		return call_number;
	}
	public void setCall_number(Long call_number) {
		this.call_number = call_number;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Integer getPriority() {
		return priority;
	}
	public void setPriority(Integer priority) {
		this.priority = priority;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public Date getDatesubmitted() {
		return datesubmitted;
	}
	public void setDatesubmitted(Date datesubmitted) {
		this.datesubmitted = datesubmitted;
	}
	public Date getDatecompleted() {
		return datecompleted;
	}
	public void setDatecompleted(Date datecompleted) {
		this.datecompleted = datecompleted;
	}
	public String getClaim_form_id() {
		return claim_form_id;
	}
	public void setClaim_form_id(String claim_form_id) {
		this.claim_form_id = claim_form_id;
	}
	public Long getDoc_id() {
		return doc_id;
	}
	public void setDoc_id(Long doc_id) {
		this.doc_id = doc_id;
	}
	public String getReply() {
		return reply;
	}
	public void setReply(String reply) {
		this.reply = reply;
	}
	public Integer getDeliver_method() {
		return deliver_method;
	}
	public void setDeliver_method(Integer deliver_method) {
		this.deliver_method = deliver_method;
	}
	public Long getFax_number() {
		return fax_number;
	}
	public void setFax_number(Long fax_number) {
		this.fax_number = fax_number;
	}
	public String getEmail_address() {
		return email_address;
	}
	public void setEmail_address(String email_address) {
		this.email_address = email_address;
	}
	public String getMailing_address() {
		return mailing_address;
	}
	public void setMailing_address(String mailing_address) {
		this.mailing_address = mailing_address;
	}
	public Date getDelivered_date() {
		return delivered_date;
	}
	public void setDelivered_date(Date delivered_date) {
		this.delivered_date = delivered_date;
	}
	public String getReturndialog() {
		return returndialog;
	}
	public void setReturndialog(String returndialog) {
		this.returndialog = returndialog;
	}
	public String getClaim_number() {
		return claim_number;
	}
	public void setClaim_number(String claim_number) {
		this.claim_number = claim_number;
	}
	public String getFlag() {
		return flag;
	}
	public void setFlag(String flag) {
		this.flag = flag;
	}
	public String getFdate() {
		return fdate;
	}
	public void setFdate(String fdate) {
		this.fdate = fdate;
	}
	public String getEdate() {
		return edate;
	}
	public void setEdate(String edate) {
		this.edate = edate;
	}
	public String getUpdated() {
		return updated;
	}
	public void setUpdated(String updated) {
		this.updated = updated;
	}
	 
	public Long getFileId() {
		return fileId;
	}
	public void setFileId(Long fileId) {
		this.fileId = fileId;
	}
	public Long getSsn() {
		return ssn;
	}
	public void setSsn(Long ssn) {
		this.ssn = ssn;
	}
	public String getAltid() {
		return altid;
	}
	public void setAltid(String altid) {
		this.altid = altid;
	}
	public String getFile_type() {
		return file_type;
	}
	public void setFile_type(String file_type) {
		this.file_type = file_type;
	}
	public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}
	public Date getLast_updated() {
		return last_updated;
	}
	public void setLast_updated(Date last_updated) {
		this.last_updated = last_updated;
	}
	public String getFILE_ID() {
		return FILE_ID;
	}
	public void setFILE_ID(String file_id) {
		FILE_ID = file_id;
	}
	public Long getSSN() {
		return SSN;
	}
	public void setSSN(Long ssn) {
		SSN = ssn;
	}
	public String getALTID() {
		return ALTID;
	}
	public void setALTID(String altid) {
		ALTID = altid;
	}
	public String getFILE_TYPE() {
		return FILE_TYPE;
	}
	public void setFILE_TYPE(String file_type) {
		FILE_TYPE = file_type;
	}
	public String getFILE_NAME() {
		return FILE_NAME;
	}
	public void setFILE_NAME(String file_name) {
		FILE_NAME = file_name;
	}
	public Date getLAST_UPDATED() {
		return LAST_UPDATED;
	}
	public void setLAST_UPDATED(Date last_updated) {
		LAST_UPDATED = last_updated;
	}
	 
	 

}
