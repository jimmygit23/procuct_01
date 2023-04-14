package com.pdsu.edu.domain;

import java.io.Serializable;
import java.util.Date;


public class Advanceeod implements Serializable {
	private static final long serialVersionUID = 5859329915583291624L;
	private Long ssn;
	private String ICN;
	private String CLMNUM;
	private String CLMTYPE;
	private Integer depno;
	
	////--------------------------head--------------------------------
	private String scanned_claim_id;
	private Long employee_ssn;
	private String member_id;
	private Long submission_reason;
	private String subscriber_lname;
	private String subscriber_fname;
	private String subscriber_mname;
	private String subscriber_suffix;
	private String subscriber_address1;
	private String subscriber_address2;
	private String subscriber_city;
	private String subscriber_st;
	private String subscriber_zip;
	private Date subscriber_dob;
	private String subscriber_gender;
	private String plan_number;
	private String employer_name;
	private String other_subscriber_lname;
	private String other_subscriber_fname;
	private String other_subscriber_mname;
	private String other_subscriber_suffix;
	private Date other_subscriber_dob;
	private String other_subscriber_gender;
	private String other_policy_number;
	private String other_insurance_plan_name;
	private String other_insurance_type;
	private Long cob_paid_amount;
	private String other_payor;
	private String other_payor_identification;
	private String patient_lname;
	private String patient_fname;
	private String patient_mname;
	private String patient_suffix;
	private String patient_address1;
	private String patient_address2;
	private String patient_city;
	private String patient_st;
	private String patient_zip;
	private Date patient_dob;
	  private String patient_gender;
	  private String patient_account_number;
	  private String billing_provider_id;
	  private String billing_taxid;
	  private String billing_provider_lname;
	  private String billing_provider_fname;
	  private String billing_provider_mname;
	  private String billing_provider_suffix;
	  private String billing_provider_address1;
	  private String billing_provider_address2;
	  private String billing_provider_city;
	  private String billing_provider_st;
	  private String billing_provider_zip;
	  private String billing_group_npi;
	  private String billing_other_identifier;
	  private String billing_contact_name;
	  private String billing_contact_type;
	  private String billing_contact_number;
	  private String billing_contact_number2;
	  private String billing_contact_number3;
	  private String currency_indicator;
	  private String payto_provider_id;
	  private String payto_taxid;
	  private String payto_provider_lname;
	  private String payto_provider_fname;
	  private String payto_provider_mname;
	  private String payto_provider_suffix;
	  private String payto_provider_address1;
	  private String payto_provider_address2;
	  private String payto_provider_city;
	  private String payto_provider_st;
	  private String payto_provider_zip;
	  private String payto_group_npi;
	  private String payto_other_identifier;
	  private String referring_provider_lname;
	  private String referring_provider_fname;
	  private String referring_provider_mname;
	  private String referring_provider_suffix;
	  private String referring_taxid;
	  private String referring_group_npi;
	  private String referring_provider_id;
	  private String referring_other_identifier;
	  private String rendering_provider_id;
	  private String rendering_taxid;
	  private String rendering_group_npi;
	  private String rendering_other_identifier;
	  private String rendering_provider_lname;
	  private String rendering_provider_fname;
	  private String rendering_provider_mname;
	  private String rendering_provider_suffix;
	  private String service_facility_provider_id;
	  private String service_facility_taxid;
	  private String service_facility_id;
	  private String service_facility_name;
	  private String service_facility_address1;
	  private String service_facility_address2;
	  private String service_facility_city;
	  private String service_facility_st;
	  private String service_facility_zip;
	  private String service_other_identifier;
	  private String service_facility_group_npi;
	  private String relationship_to_employee;
	  private String work_related_indicator;
	  private String auto_accident_indicator;
	  private String auto_accident_state;
	  private String  accidental_injury_indicator;
	  private Date accident_date;
	  private Date disability_from_date;
	  private Date disability_end_date;
	  private String releaseofinformation;
	  private String assignment_of_benefits;
	  private String otherinsurance;
	  private String patient_signature;
	  private Date date_of_onset;
	  private Date similar_or_symptom_date;
	  private String remarks;
	  private String diagnosis_type_code;
	  private String diagnosis_code_1;
	  private String diagnosis_code_2;
	  private String diagnosis_code_3;
	  private String diagnosis_code_4;
	  private String diagnosis_code_5;
	  private String diagnosis_code_6;
	  private String diagnosis_code_7;
	  private String diagnosis_code_8;
	  private String diagnosis_code_9;
	  private String diagnosis_code_10;
	  private String diagnosis_code_11;
	  private String diagnosis_code_12;
	  private String prior_authorization_number;
	  private Date date_of_service_from;
	  private Date date_of_service_through;
	  private Long place_of_service;
	  private String medicare_assignment;
	  private Float total_charge_amount;
	  private Float total_paid_amount;
	  private Float total_discount_amount;
	  private String provider_signature_on_file;
	  private String pricing_methodology;
	  private String ppo;
	  private String reject_reason_code;
	  private String repriced_reference_number;
	  private String claim_message_code;
	  private String primary_payer_name;
	  private String primary_payer_identifier;
	  private String icn;
	  private String claim_number;
	  private String file_name;
	  private Long file_type;
	  private String sender;
	  private String sender_batchnumber;
	  private Date send_date;
	  private Date imported;
	  private Long image_created;
	  private Long exported;
	  private String sys_id;
	  private String sys_ref1;
	  private String sys_ref2;
	  private Date sys_import;
	  private Long subssn;
	  private Date received_date;
	  private Long hcp05;
	  private String hcp06;
	  private Long hcp07;
	  
		////--------------------------line--------------------------------	 
	  
	  private Long claimline_id;
	  private Date incdate_from;
	  private Date incdate_through;
	 // private Long place_of_service;    		//same as head
	  private String emergency_indicator;
	  private String cpt_code;
	  private String cpt_modifier;
	  private String diagcodepointer;
	  private Float charge_amount;
	 // private Long cob_paid_amount;    		//same as head
	  private String measurement_code;
	  private Integer totalunitsused;
	  private Float discount_amount;
	  private String message_code;
	 // private String pricing_methodology;    	//same as head
	 // private String ppo;    					//same as head
	 // private String reject_reason_code;    	//same as head
	 // private String remarks;    				//same as head
	  private Long place_of_service_line;

	  private String fdate;
	  private String edate;
	  private String ifdate;
	  private String iedate;
	  private Integer rnum;
	  private Integer beginrow;
	  private Integer endrow;
	  private Integer fromid;
	  
	  private Integer requestid;
	  private Integer toid;
	  private Integer master_group;
	  private Integer dep_no;
	  private String login_area;
	  private Integer call_number;
	  private String description;
	  private Integer priority;
	  private Integer status;
      private Date datecompleted;
      private String claim_form_id;
      private String doc_id;
      private String reply;
      private Integer deliver_method;
      private String email_address;
      private String mailing_address;
      private Date delivered_date;
      private String returndialog;
      private String fax_number;
	 
	  private Long request_id;
	  private String status_str;
	  private Date date_submitted;
	  private Date date_completed;
	  private String provider_name;
	  private String aeob_link;
	  private String form_doc_id;
	  private String searchstatus;
	  private Integer counttotal;
	  
	  private String file_id;
	  private String altid;
	  private Date updated;
	  private Date last_updated; 
	  
	  private String name;
	  private String FAX_NUMBER;
	  private String EMAIL_ADDRESS;
	  private String MAILING_ADDRESS;
	  

	  private String patientname;
	  private String formid;
	  private String docid;
	  private String docids;
	  private Date datesubmitted;
	  private String providerid;
	  private String providername;
	  private Float chargeamount;
	  
	       
	  
	public String getDocids() {
		return docids;
	}
	public void setDocids(String docids) {
		this.docids = docids;
	}
	public String getPatientname() {
		return patientname;
	}
	public void setPatientname(String patientname) {
		this.patientname = patientname;
	}
	public String getFormid() {
		return formid;
	}
	public void setFormid(String formid) {
		this.formid = formid;
	}
	public String getDocid() {
		return docid;
	}
	public void setDocid(String docid) {
		this.docid = docid;
	}
	 
	public Date getDatesubmitted() {
		return datesubmitted;
	}
	public void setDatesubmitted(Date datesubmitted) {
		this.datesubmitted = datesubmitted;
	}
	public Float getChargeamount() {
		return chargeamount;
	}
	public void setChargeamount(Float chargeamount) {
		this.chargeamount = chargeamount;
	}
	public String getProviderid() {
		return providerid;
	}
	public void setProviderid(String providerid) {
		this.providerid = providerid;
	}
	public String getProvidername() {
		return providername;
	}
	public void setProvidername(String providername) {
		this.providername = providername;
	}
	 
	public String getFAX_NUMBER() {
		return FAX_NUMBER;
	}
	public void setFAX_NUMBER(String fax_number) {
		FAX_NUMBER = fax_number;
	}
	public String getEMAIL_ADDRESS() {
		return EMAIL_ADDRESS;
	}
	public void setEMAIL_ADDRESS(String email_address) {
		EMAIL_ADDRESS = email_address;
	}
	public String getMAILING_ADDRESS() {
		return MAILING_ADDRESS;
	}
	public void setMAILING_ADDRESS(String mailing_address) {
		MAILING_ADDRESS = mailing_address;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getDepno() {
		return depno;
	}
	public void setDepno(Integer depno) {
		this.depno = depno;
	}
	public String getFile_id() {
		return file_id;
	}
	public void setFile_id(String file_id) {
		this.file_id = file_id;
	}
	public String getAltid() {
		return altid;
	}
	public void setAltid(String altid) {
		this.altid = altid;
	}
	public Date getUpdated() {
		return updated;
	}
	public void setUpdated(Date updated) {
		this.updated = updated;
	}
	public Date getLast_updated() {
		return last_updated;
	}
	public void setLast_updated(Date last_updated) {
		this.last_updated = last_updated;
	}
	public Integer getCounttotal() {
		return counttotal;
	}
	public void setCounttotal(Integer counttotal) {
		this.counttotal = counttotal;
	}
	public String getSearchstatus() {
		return searchstatus;
	}
	public void setSearchstatus(String searchstatus) {
		this.searchstatus = searchstatus;
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
	public String getIfdate() {
		return ifdate;
	}
	public void setIfdate(String ifdate) {
		this.ifdate = ifdate;
	}
	public String getIedate() {
		return iedate;
	}
	public void setIedate(String iedate) {
		this.iedate = iedate;
	}
	public Long getSsn() {
		return ssn;
	}
	public void setSsn(Long ssn) {
		this.ssn = ssn;
	}
	public String getICN() {
		return ICN;
	}
	public void setICN(String icn) {
		ICN = icn;
	}
	public String getCLMNUM() {
		return CLMNUM;
	}
	public void setCLMNUM(String clmnum) {
		CLMNUM = clmnum;
	}
	public String getCLMTYPE() {
		return CLMTYPE;
	}
	public void setCLMTYPE(String clmtype) {
		CLMTYPE = clmtype;
	}
	public String getScanned_claim_id() {
		return scanned_claim_id;
	}
	public void setScanned_claim_id(String scanned_claim_id) {
		this.scanned_claim_id = scanned_claim_id;
	}
	public Long getEmployee_ssn() {
		return employee_ssn;
	}
	public void setEmployee_ssn(Long employee_ssn) {
		this.employee_ssn = employee_ssn;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public Long getSubmission_reason() {
		return submission_reason;
	}
	public void setSubmission_reason(Long submission_reason) {
		this.submission_reason = submission_reason;
	}
	public String getSubscriber_lname() {
		return subscriber_lname;
	}
	public void setSubscriber_lname(String subscriber_lname) {
		this.subscriber_lname = subscriber_lname;
	}
	public String getSubscriber_fname() {
		return subscriber_fname;
	}
	public void setSubscriber_fname(String subscriber_fname) {
		this.subscriber_fname = subscriber_fname;
	}
	public String getSubscriber_mname() {
		return subscriber_mname;
	}
	public void setSubscriber_mname(String subscriber_mname) {
		this.subscriber_mname = subscriber_mname;
	}
	public String getSubscriber_suffix() {
		return subscriber_suffix;
	}
	public void setSubscriber_suffix(String subscriber_suffix) {
		this.subscriber_suffix = subscriber_suffix;
	}
	public String getSubscriber_address1() {
		return subscriber_address1;
	}
	public void setSubscriber_address1(String subscriber_address1) {
		this.subscriber_address1 = subscriber_address1;
	}
	public String getSubscriber_address2() {
		return subscriber_address2;
	}
	public void setSubscriber_address2(String subscriber_address2) {
		this.subscriber_address2 = subscriber_address2;
	}
	public String getSubscriber_city() {
		return subscriber_city;
	}
	public void setSubscriber_city(String subscriber_city) {
		this.subscriber_city = subscriber_city;
	}
	public String getSubscriber_st() {
		return subscriber_st;
	}
	public void setSubscriber_st(String subscriber_st) {
		this.subscriber_st = subscriber_st;
	}
	public String getSubscriber_zip() {
		return subscriber_zip;
	}
	public void setSubscriber_zip(String subscriber_zip) {
		this.subscriber_zip = subscriber_zip;
	}
	public Date getSubscriber_dob() {
		return subscriber_dob;
	}
	public void setSubscriber_dob(Date subscriber_dob) {
		this.subscriber_dob = subscriber_dob;
	}
	public String getSubscriber_gender() {
		return subscriber_gender;
	}
	public void setSubscriber_gender(String subscriber_gender) {
		this.subscriber_gender = subscriber_gender;
	}
	public String getPlan_number() {
		return plan_number;
	}
	public void setPlan_number(String plan_number) {
		this.plan_number = plan_number;
	}
	public String getEmployer_name() {
		return employer_name;
	}
	public void setEmployer_name(String employer_name) {
		this.employer_name = employer_name;
	}
	public String getOther_subscriber_lname() {
		return other_subscriber_lname;
	}
	public void setOther_subscriber_lname(String other_subscriber_lname) {
		this.other_subscriber_lname = other_subscriber_lname;
	}
	public String getOther_subscriber_fname() {
		return other_subscriber_fname;
	}
	public void setOther_subscriber_fname(String other_subscriber_fname) {
		this.other_subscriber_fname = other_subscriber_fname;
	}
	public String getOther_subscriber_mname() {
		return other_subscriber_mname;
	}
	public void setOther_subscriber_mname(String other_subscriber_mname) {
		this.other_subscriber_mname = other_subscriber_mname;
	}
	public String getOther_subscriber_suffix() {
		return other_subscriber_suffix;
	}
	public void setOther_subscriber_suffix(String other_subscriber_suffix) {
		this.other_subscriber_suffix = other_subscriber_suffix;
	}
	public Date getOther_subscriber_dob() {
		return other_subscriber_dob;
	}
	public void setOther_subscriber_dob(Date other_subscriber_dob) {
		this.other_subscriber_dob = other_subscriber_dob;
	}
	public String getOther_subscriber_gender() {
		return other_subscriber_gender;
	}
	public void setOther_subscriber_gender(String other_subscriber_gender) {
		this.other_subscriber_gender = other_subscriber_gender;
	}
	public String getOther_policy_number() {
		return other_policy_number;
	}
	public void setOther_policy_number(String other_policy_number) {
		this.other_policy_number = other_policy_number;
	}
	public String getOther_insurance_plan_name() {
		return other_insurance_plan_name;
	}
	public void setOther_insurance_plan_name(String other_insurance_plan_name) {
		this.other_insurance_plan_name = other_insurance_plan_name;
	}
	public String getOther_insurance_type() {
		return other_insurance_type;
	}
	public void setOther_insurance_type(String other_insurance_type) {
		this.other_insurance_type = other_insurance_type;
	}
	public Long getCob_paid_amount() {
		return cob_paid_amount;
	}
	public void setCob_paid_amount(Long cob_paid_amount) {
		this.cob_paid_amount = cob_paid_amount;
	}
	public String getOther_payor() {
		return other_payor;
	}
	public void setOther_payor(String other_payor) {
		this.other_payor = other_payor;
	}
	public String getOther_payor_identification() {
		return other_payor_identification;
	}
	public void setOther_payor_identification(String other_payor_identification) {
		this.other_payor_identification = other_payor_identification;
	}
	public String getPatient_lname() {
		return patient_lname;
	}
	public void setPatient_lname(String patient_lname) {
		this.patient_lname = patient_lname;
	}
	public String getPatient_fname() {
		return patient_fname;
	}
	public void setPatient_fname(String patient_fname) {
		this.patient_fname = patient_fname;
	}
	public String getPatient_mname() {
		return patient_mname;
	}
	public void setPatient_mname(String patient_mname) {
		this.patient_mname = patient_mname;
	}
	public String getPatient_suffix() {
		return patient_suffix;
	}
	public void setPatient_suffix(String patient_suffix) {
		this.patient_suffix = patient_suffix;
	}
	public String getPatient_address1() {
		return patient_address1;
	}
	public void setPatient_address1(String patient_address1) {
		this.patient_address1 = patient_address1;
	}
	public String getPatient_address2() {
		return patient_address2;
	}
	public void setPatient_address2(String patient_address2) {
		this.patient_address2 = patient_address2;
	}
	public String getPatient_city() {
		return patient_city;
	}
	public void setPatient_city(String patient_city) {
		this.patient_city = patient_city;
	}
	public String getPatient_st() {
		return patient_st;
	}
	public void setPatient_st(String patient_st) {
		this.patient_st = patient_st;
	}
	public String getPatient_zip() {
		return patient_zip;
	}
	public void setPatient_zip(String patient_zip) {
		this.patient_zip = patient_zip;
	}
	public Date getPatient_dob() {
		return patient_dob;
	}
	public void setPatient_dob(Date patient_dob) {
		this.patient_dob = patient_dob;
	}
	public String getPatient_gender() {
		return patient_gender;
	}
	public void setPatient_gender(String patient_gender) {
		this.patient_gender = patient_gender;
	}
	public String getPatient_account_number() {
		return patient_account_number;
	}
	public void setPatient_account_number(String patient_account_number) {
		this.patient_account_number = patient_account_number;
	}
	public String getBilling_provider_id() {
		return billing_provider_id;
	}
	public void setBilling_provider_id(String billing_provider_id) {
		this.billing_provider_id = billing_provider_id;
	}
	public String getBilling_taxid() {
		return billing_taxid;
	}
	public void setBilling_taxid(String billing_taxid) {
		this.billing_taxid = billing_taxid;
	}
	public String getBilling_provider_lname() {
		return billing_provider_lname;
	}
	public void setBilling_provider_lname(String billing_provider_lname) {
		this.billing_provider_lname = billing_provider_lname;
	}
	public String getBilling_provider_fname() {
		return billing_provider_fname;
	}
	public void setBilling_provider_fname(String billing_provider_fname) {
		this.billing_provider_fname = billing_provider_fname;
	}
	public String getBilling_provider_mname() {
		return billing_provider_mname;
	}
	public void setBilling_provider_mname(String billing_provider_mname) {
		this.billing_provider_mname = billing_provider_mname;
	}
	public String getBilling_provider_suffix() {
		return billing_provider_suffix;
	}
	public void setBilling_provider_suffix(String billing_provider_suffix) {
		this.billing_provider_suffix = billing_provider_suffix;
	}
	public String getBilling_provider_address1() {
		return billing_provider_address1;
	}
	public void setBilling_provider_address1(String billing_provider_address1) {
		this.billing_provider_address1 = billing_provider_address1;
	}
	public String getBilling_provider_address2() {
		return billing_provider_address2;
	}
	public void setBilling_provider_address2(String billing_provider_address2) {
		this.billing_provider_address2 = billing_provider_address2;
	}
	public String getBilling_provider_city() {
		return billing_provider_city;
	}
	public void setBilling_provider_city(String billing_provider_city) {
		this.billing_provider_city = billing_provider_city;
	}
	public String getBilling_provider_st() {
		return billing_provider_st;
	}
	public void setBilling_provider_st(String billing_provider_st) {
		this.billing_provider_st = billing_provider_st;
	}
	public String getBilling_provider_zip() {
		return billing_provider_zip;
	}
	public void setBilling_provider_zip(String billing_provider_zip) {
		this.billing_provider_zip = billing_provider_zip;
	}
	public String getBilling_group_npi() {
		return billing_group_npi;
	}
	public void setBilling_group_npi(String billing_group_npi) {
		this.billing_group_npi = billing_group_npi;
	}
	public String getBilling_other_identifier() {
		return billing_other_identifier;
	}
	public void setBilling_other_identifier(String billing_other_identifier) {
		this.billing_other_identifier = billing_other_identifier;
	}
	public String getBilling_contact_name() {
		return billing_contact_name;
	}
	public void setBilling_contact_name(String billing_contact_name) {
		this.billing_contact_name = billing_contact_name;
	}
	public String getBilling_contact_type() {
		return billing_contact_type;
	}
	public void setBilling_contact_type(String billing_contact_type) {
		this.billing_contact_type = billing_contact_type;
	}
	public String getBilling_contact_number() {
		return billing_contact_number;
	}
	public void setBilling_contact_number(String billing_contact_number) {
		this.billing_contact_number = billing_contact_number;
	}
	public String getBilling_contact_number2() {
		return billing_contact_number2;
	}
	public void setBilling_contact_number2(String billing_contact_number2) {
		this.billing_contact_number2 = billing_contact_number2;
	}
	public String getBilling_contact_number3() {
		return billing_contact_number3;
	}
	public void setBilling_contact_number3(String billing_contact_number3) {
		this.billing_contact_number3 = billing_contact_number3;
	}
	public String getCurrency_indicator() {
		return currency_indicator;
	}
	public void setCurrency_indicator(String currency_indicator) {
		this.currency_indicator = currency_indicator;
	}
	public String getPayto_provider_id() {
		return payto_provider_id;
	}
	public void setPayto_provider_id(String payto_provider_id) {
		this.payto_provider_id = payto_provider_id;
	}
	public String getPayto_taxid() {
		return payto_taxid;
	}
	public void setPayto_taxid(String payto_taxid) {
		this.payto_taxid = payto_taxid;
	}
	public String getPayto_provider_lname() {
		return payto_provider_lname;
	}
	public void setPayto_provider_lname(String payto_provider_lname) {
		this.payto_provider_lname = payto_provider_lname;
	}
	public String getPayto_provider_fname() {
		return payto_provider_fname;
	}
	public void setPayto_provider_fname(String payto_provider_fname) {
		this.payto_provider_fname = payto_provider_fname;
	}
	public String getPayto_provider_mname() {
		return payto_provider_mname;
	}
	public void setPayto_provider_mname(String payto_provider_mname) {
		this.payto_provider_mname = payto_provider_mname;
	}
	public String getPayto_provider_suffix() {
		return payto_provider_suffix;
	}
	public void setPayto_provider_suffix(String payto_provider_suffix) {
		this.payto_provider_suffix = payto_provider_suffix;
	}
	public String getPayto_provider_address1() {
		return payto_provider_address1;
	}
	public void setPayto_provider_address1(String payto_provider_address1) {
		this.payto_provider_address1 = payto_provider_address1;
	}
	public String getPayto_provider_address2() {
		return payto_provider_address2;
	}
	public void setPayto_provider_address2(String payto_provider_address2) {
		this.payto_provider_address2 = payto_provider_address2;
	}
	public String getPayto_provider_city() {
		return payto_provider_city;
	}
	public void setPayto_provider_city(String payto_provider_city) {
		this.payto_provider_city = payto_provider_city;
	}
	public String getPayto_provider_st() {
		return payto_provider_st;
	}
	public void setPayto_provider_st(String payto_provider_st) {
		this.payto_provider_st = payto_provider_st;
	}
	public String getPayto_provider_zip() {
		return payto_provider_zip;
	}
	public void setPayto_provider_zip(String payto_provider_zip) {
		this.payto_provider_zip = payto_provider_zip;
	}
	public String getPayto_group_npi() {
		return payto_group_npi;
	}
	public void setPayto_group_npi(String payto_group_npi) {
		this.payto_group_npi = payto_group_npi;
	}
	public String getPayto_other_identifier() {
		return payto_other_identifier;
	}
	public void setPayto_other_identifier(String payto_other_identifier) {
		this.payto_other_identifier = payto_other_identifier;
	}
	public String getReferring_provider_lname() {
		return referring_provider_lname;
	}
	public void setReferring_provider_lname(String referring_provider_lname) {
		this.referring_provider_lname = referring_provider_lname;
	}
	public String getReferring_provider_fname() {
		return referring_provider_fname;
	}
	public void setReferring_provider_fname(String referring_provider_fname) {
		this.referring_provider_fname = referring_provider_fname;
	}
	public String getReferring_provider_mname() {
		return referring_provider_mname;
	}
	public void setReferring_provider_mname(String referring_provider_mname) {
		this.referring_provider_mname = referring_provider_mname;
	}
	public String getReferring_provider_suffix() {
		return referring_provider_suffix;
	}
	public void setReferring_provider_suffix(String referring_provider_suffix) {
		this.referring_provider_suffix = referring_provider_suffix;
	}
	public String getReferring_taxid() {
		return referring_taxid;
	}
	public void setReferring_taxid(String referring_taxid) {
		this.referring_taxid = referring_taxid;
	}
	public String getReferring_group_npi() {
		return referring_group_npi;
	}
	public void setReferring_group_npi(String referring_group_npi) {
		this.referring_group_npi = referring_group_npi;
	}
	public String getReferring_provider_id() {
		return referring_provider_id;
	}
	public void setReferring_provider_id(String referring_provider_id) {
		this.referring_provider_id = referring_provider_id;
	}
	public String getReferring_other_identifier() {
		return referring_other_identifier;
	}
	public void setReferring_other_identifier(String referring_other_identifier) {
		this.referring_other_identifier = referring_other_identifier;
	}
	public String getRendering_provider_id() {
		return rendering_provider_id;
	}
	public void setRendering_provider_id(String rendering_provider_id) {
		this.rendering_provider_id = rendering_provider_id;
	}
	public String getRendering_taxid() {
		return rendering_taxid;
	}
	public void setRendering_taxid(String rendering_taxid) {
		this.rendering_taxid = rendering_taxid;
	}
	public String getRendering_group_npi() {
		return rendering_group_npi;
	}
	public void setRendering_group_npi(String rendering_group_npi) {
		this.rendering_group_npi = rendering_group_npi;
	}
	public String getRendering_other_identifier() {
		return rendering_other_identifier;
	}
	public void setRendering_other_identifier(String rendering_other_identifier) {
		this.rendering_other_identifier = rendering_other_identifier;
	}
	public String getRendering_provider_lname() {
		return rendering_provider_lname;
	}
	public void setRendering_provider_lname(String rendering_provider_lname) {
		this.rendering_provider_lname = rendering_provider_lname;
	}
	public String getRendering_provider_fname() {
		return rendering_provider_fname;
	}
	public void setRendering_provider_fname(String rendering_provider_fname) {
		this.rendering_provider_fname = rendering_provider_fname;
	}
	public String getRendering_provider_mname() {
		return rendering_provider_mname;
	}
	public void setRendering_provider_mname(String rendering_provider_mname) {
		this.rendering_provider_mname = rendering_provider_mname;
	}
	public String getRendering_provider_suffix() {
		return rendering_provider_suffix;
	}
	public void setRendering_provider_suffix(String rendering_provider_suffix) {
		this.rendering_provider_suffix = rendering_provider_suffix;
	}
	public String getService_facility_provider_id() {
		return service_facility_provider_id;
	}
	public void setService_facility_provider_id(String service_facility_provider_id) {
		this.service_facility_provider_id = service_facility_provider_id;
	}
	public String getService_facility_taxid() {
		return service_facility_taxid;
	}
	public void setService_facility_taxid(String service_facility_taxid) {
		this.service_facility_taxid = service_facility_taxid;
	}
	public String getService_facility_id() {
		return service_facility_id;
	}
	public void setService_facility_id(String service_facility_id) {
		this.service_facility_id = service_facility_id;
	}
	public String getService_facility_name() {
		return service_facility_name;
	}
	public void setService_facility_name(String service_facility_name) {
		this.service_facility_name = service_facility_name;
	}
	public String getService_facility_address1() {
		return service_facility_address1;
	}
	public void setService_facility_address1(String service_facility_address1) {
		this.service_facility_address1 = service_facility_address1;
	}
	public String getService_facility_address2() {
		return service_facility_address2;
	}
	public void setService_facility_address2(String service_facility_address2) {
		this.service_facility_address2 = service_facility_address2;
	}
	public String getService_facility_city() {
		return service_facility_city;
	}
	public void setService_facility_city(String service_facility_city) {
		this.service_facility_city = service_facility_city;
	}
	public String getService_facility_st() {
		return service_facility_st;
	}
	public void setService_facility_st(String service_facility_st) {
		this.service_facility_st = service_facility_st;
	}
	public String getService_facility_zip() {
		return service_facility_zip;
	}
	public void setService_facility_zip(String service_facility_zip) {
		this.service_facility_zip = service_facility_zip;
	}
	public String getService_other_identifier() {
		return service_other_identifier;
	}
	public void setService_other_identifier(String service_other_identifier) {
		this.service_other_identifier = service_other_identifier;
	}
	public String getService_facility_group_npi() {
		return service_facility_group_npi;
	}
	public void setService_facility_group_npi(String service_facility_group_npi) {
		this.service_facility_group_npi = service_facility_group_npi;
	}
	public String getRelationship_to_employee() {
		return relationship_to_employee;
	}
	public void setRelationship_to_employee(String relationship_to_employee) {
		this.relationship_to_employee = relationship_to_employee;
	}
	public String getWork_related_indicator() {
		return work_related_indicator;
	}
	public void setWork_related_indicator(String work_related_indicator) {
		this.work_related_indicator = work_related_indicator;
	}
	public String getAuto_accident_indicator() {
		return auto_accident_indicator;
	}
	public void setAuto_accident_indicator(String auto_accident_indicator) {
		this.auto_accident_indicator = auto_accident_indicator;
	}
	public String getAuto_accident_state() {
		return auto_accident_state;
	}
	public void setAuto_accident_state(String auto_accident_state) {
		this.auto_accident_state = auto_accident_state;
	}
	public String getAccidental_injury_indicator() {
		return accidental_injury_indicator;
	}
	public void setAccidental_injury_indicator(String accidental_injury_indicator) {
		this.accidental_injury_indicator = accidental_injury_indicator;
	}
	public Date getAccident_date() {
		return accident_date;
	}
	public void setAccident_date(Date accident_date) {
		this.accident_date = accident_date;
	}
	public Date getDisability_from_date() {
		return disability_from_date;
	}
	public void setDisability_from_date(Date disability_from_date) {
		this.disability_from_date = disability_from_date;
	}
	public Date getDisability_end_date() {
		return disability_end_date;
	}
	public void setDisability_end_date(Date disability_end_date) {
		this.disability_end_date = disability_end_date;
	}
	public String getReleaseofinformation() {
		return releaseofinformation;
	}
	public void setReleaseofinformation(String releaseofinformation) {
		this.releaseofinformation = releaseofinformation;
	}
	public String getAssignment_of_benefits() {
		return assignment_of_benefits;
	}
	public void setAssignment_of_benefits(String assignment_of_benefits) {
		this.assignment_of_benefits = assignment_of_benefits;
	}
	public String getOtherinsurance() {
		return otherinsurance;
	}
	public void setOtherinsurance(String otherinsurance) {
		this.otherinsurance = otherinsurance;
	}
	public String getPatient_signature() {
		return patient_signature;
	}
	public void setPatient_signature(String patient_signature) {
		this.patient_signature = patient_signature;
	}
	public Date getDate_of_onset() {
		return date_of_onset;
	}
	public void setDate_of_onset(Date date_of_onset) {
		this.date_of_onset = date_of_onset;
	}
	public Date getSimilar_or_symptom_date() {
		return similar_or_symptom_date;
	}
	public void setSimilar_or_symptom_date(Date similar_or_symptom_date) {
		this.similar_or_symptom_date = similar_or_symptom_date;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public String getDiagnosis_type_code() {
		return diagnosis_type_code;
	}
	public void setDiagnosis_type_code(String diagnosis_type_code) {
		this.diagnosis_type_code = diagnosis_type_code;
	}
	public String getDiagnosis_code_1() {
		return diagnosis_code_1;
	}
	public void setDiagnosis_code_1(String diagnosis_code_1) {
		this.diagnosis_code_1 = diagnosis_code_1;
	}
	public String getDiagnosis_code_2() {
		return diagnosis_code_2;
	}
	public void setDiagnosis_code_2(String diagnosis_code_2) {
		this.diagnosis_code_2 = diagnosis_code_2;
	}
	public String getDiagnosis_code_3() {
		return diagnosis_code_3;
	}
	public void setDiagnosis_code_3(String diagnosis_code_3) {
		this.diagnosis_code_3 = diagnosis_code_3;
	}
	public String getDiagnosis_code_4() {
		return diagnosis_code_4;
	}
	public void setDiagnosis_code_4(String diagnosis_code_4) {
		this.diagnosis_code_4 = diagnosis_code_4;
	}
	public String getDiagnosis_code_5() {
		return diagnosis_code_5;
	}
	public void setDiagnosis_code_5(String diagnosis_code_5) {
		this.diagnosis_code_5 = diagnosis_code_5;
	}
	public String getDiagnosis_code_6() {
		return diagnosis_code_6;
	}
	public void setDiagnosis_code_6(String diagnosis_code_6) {
		this.diagnosis_code_6 = diagnosis_code_6;
	}
	public String getDiagnosis_code_7() {
		return diagnosis_code_7;
	}
	public void setDiagnosis_code_7(String diagnosis_code_7) {
		this.diagnosis_code_7 = diagnosis_code_7;
	}
	public String getDiagnosis_code_8() {
		return diagnosis_code_8;
	}
	public void setDiagnosis_code_8(String diagnosis_code_8) {
		this.diagnosis_code_8 = diagnosis_code_8;
	}
	public String getDiagnosis_code_9() {
		return diagnosis_code_9;
	}
	public void setDiagnosis_code_9(String diagnosis_code_9) {
		this.diagnosis_code_9 = diagnosis_code_9;
	}
	public String getDiagnosis_code_10() {
		return diagnosis_code_10;
	}
	public void setDiagnosis_code_10(String diagnosis_code_10) {
		this.diagnosis_code_10 = diagnosis_code_10;
	}
	public String getDiagnosis_code_11() {
		return diagnosis_code_11;
	}
	public void setDiagnosis_code_11(String diagnosis_code_11) {
		this.diagnosis_code_11 = diagnosis_code_11;
	}
	public String getDiagnosis_code_12() {
		return diagnosis_code_12;
	}
	public void setDiagnosis_code_12(String diagnosis_code_12) {
		this.diagnosis_code_12 = diagnosis_code_12;
	}
	public String getPrior_authorization_number() {
		return prior_authorization_number;
	}
	public void setPrior_authorization_number(String prior_authorization_number) {
		this.prior_authorization_number = prior_authorization_number;
	}
	public Date getDate_of_service_from() {
		return date_of_service_from;
	}
	public void setDate_of_service_from(Date date_of_service_from) {
		this.date_of_service_from = date_of_service_from;
	}
	public Date getDate_of_service_through() {
		return date_of_service_through;
	}
	public void setDate_of_service_through(Date date_of_service_through) {
		this.date_of_service_through = date_of_service_through;
	}
	public Long getPlace_of_service() {
		return place_of_service;
	}
	public void setPlace_of_service(Long place_of_service) {
		this.place_of_service = place_of_service;
	}
	public String getMedicare_assignment() {
		return medicare_assignment;
	}
	public void setMedicare_assignment(String medicare_assignment) {
		this.medicare_assignment = medicare_assignment;
	}
	public Float getTotal_charge_amount() {
		return total_charge_amount;
	}
	public void setTotal_charge_amount(Float total_charge_amount) {
		this.total_charge_amount = total_charge_amount;
	}
	public Float getTotal_paid_amount() {
		return total_paid_amount;
	}
	public void setTotal_paid_amount(Float total_paid_amount) {
		this.total_paid_amount = total_paid_amount;
	}
	public Float getTotal_discount_amount() {
		return total_discount_amount;
	}
	public void setTotal_discount_amount(Float total_discount_amount) {
		this.total_discount_amount = total_discount_amount;
	}
	public String getProvider_signature_on_file() {
		return provider_signature_on_file;
	}
	public void setProvider_signature_on_file(String provider_signature_on_file) {
		this.provider_signature_on_file = provider_signature_on_file;
	}
	public String getPricing_methodology() {
		return pricing_methodology;
	}
	public void setPricing_methodology(String pricing_methodology) {
		this.pricing_methodology = pricing_methodology;
	}
	public String getPpo() {
		return ppo;
	}
	public void setPpo(String ppo) {
		this.ppo = ppo;
	}
	public String getReject_reason_code() {
		return reject_reason_code;
	}
	public void setReject_reason_code(String reject_reason_code) {
		this.reject_reason_code = reject_reason_code;
	}
	public String getRepriced_reference_number() {
		return repriced_reference_number;
	}
	public void setRepriced_reference_number(String repriced_reference_number) {
		this.repriced_reference_number = repriced_reference_number;
	}
	public String getClaim_message_code() {
		return claim_message_code;
	}
	public void setClaim_message_code(String claim_message_code) {
		this.claim_message_code = claim_message_code;
	}
	public String getPrimary_payer_name() {
		return primary_payer_name;
	}
	public void setPrimary_payer_name(String primary_payer_name) {
		this.primary_payer_name = primary_payer_name;
	}
	public String getPrimary_payer_identifier() {
		return primary_payer_identifier;
	}
	public void setPrimary_payer_identifier(String primary_payer_identifier) {
		this.primary_payer_identifier = primary_payer_identifier;
	}
	public String getIcn() {
		return icn;
	}
	public void setIcn(String icn) {
		this.icn = icn;
	}
	public String getClaim_number() {
		return claim_number;
	}
	public void setClaim_number(String claim_number) {
		this.claim_number = claim_number;
	}
	public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}
	public Long getFile_type() {
		return file_type;
	}
	public void setFile_type(Long file_type) {
		this.file_type = file_type;
	}
	public String getSender() {
		return sender;
	}
	public void setSender(String sender) {
		this.sender = sender;
	}
	public String getSender_batchnumber() {
		return sender_batchnumber;
	}
	public void setSender_batchnumber(String sender_batchnumber) {
		this.sender_batchnumber = sender_batchnumber;
	}
	public Date getSend_date() {
		return send_date;
	}
	public void setSend_date(Date send_date) {
		this.send_date = send_date;
	}
	public Date getImported() {
		return imported;
	}
	public void setImported(Date imported) {
		this.imported = imported;
	}
	public Long getImage_created() {
		return image_created;
	}
	public void setImage_created(Long image_created) {
		this.image_created = image_created;
	}
	public Long getExported() {
		return exported;
	}
	public void setExported(Long exported) {
		this.exported = exported;
	}
	public String getSys_id() {
		return sys_id;
	}
	public void setSys_id(String sys_id) {
		this.sys_id = sys_id;
	}
	public String getSys_ref1() {
		return sys_ref1;
	}
	public void setSys_ref1(String sys_ref1) {
		this.sys_ref1 = sys_ref1;
	}
	public String getSys_ref2() {
		return sys_ref2;
	}
	public void setSys_ref2(String sys_ref2) {
		this.sys_ref2 = sys_ref2;
	}
	public Date getSys_import() {
		return sys_import;
	}
	public void setSys_import(Date sys_import) {
		this.sys_import = sys_import;
	}
	public Long getSubssn() {
		return subssn;
	}
	public void setSubssn(Long subssn) {
		this.subssn = subssn;
	}
	public Date getReceived_date() {
		return received_date;
	}
	public void setReceived_date(Date received_date) {
		this.received_date = received_date;
	}
	public Long getHcp05() {
		return hcp05;
	}
	public void setHcp05(Long hcp05) {
		this.hcp05 = hcp05;
	}
	public String getHcp06() {
		return hcp06;
	}
	public void setHcp06(String hcp06) {
		this.hcp06 = hcp06;
	}
	public Long getHcp07() {
		return hcp07;
	}
	public void setHcp07(Long hcp07) {
		this.hcp07 = hcp07;
	}
	public Long getClaimline_id() {
		return claimline_id;
	}
	public void setClaimline_id(Long claimline_id) {
		this.claimline_id = claimline_id;
	}
	public Date getIncdate_from() {
		return incdate_from;
	}
	public void setIncdate_from(Date incdate_from) {
		this.incdate_from = incdate_from;
	}
	public Date getIncdate_through() {
		return incdate_through;
	}
	public void setIncdate_through(Date incdate_through) {
		this.incdate_through = incdate_through;
	}
	public String getEmergency_indicator() {
		return emergency_indicator;
	}
	public void setEmergency_indicator(String emergency_indicator) {
		this.emergency_indicator = emergency_indicator;
	}
	public String getCpt_code() {
		return cpt_code;
	}
	public void setCpt_code(String cpt_code) {
		this.cpt_code = cpt_code;
	}
	public String getCpt_modifier() {
		return cpt_modifier;
	}
	public void setCpt_modifier(String cpt_modifier) {
		this.cpt_modifier = cpt_modifier;
	}
	public String getDiagcodepointer() {
		return diagcodepointer;
	}
	public void setDiagcodepointer(String diagcodepointer) {
		this.diagcodepointer = diagcodepointer;
	}
	public Float getCharge_amount() {
		return charge_amount;
	}
	public void setCharge_amount(Float charge_amount) {
		this.charge_amount = charge_amount;
	}
	public String getMeasurement_code() {
		return measurement_code;
	}
	public void setMeasurement_code(String measurement_code) {
		this.measurement_code = measurement_code;
	}
	public Integer getTotalunitsused() {
		return totalunitsused;
	}
	public void setTotalunitsused(Integer totalunitsused) {
		this.totalunitsused = totalunitsused;
	}
	public Float getDiscount_amount() {
		return discount_amount;
	}
	public void setDiscount_amount(Float discount_amount) {
		this.discount_amount = discount_amount;
	}
	public String getMessage_code() {
		return message_code;
	}
	public void setMessage_code(String message_code) {
		this.message_code = message_code;
	}
	public Long getPlace_of_service_line() {
		return place_of_service_line;
	}
	public void setPlace_of_service_line(Long place_of_service_line) {
		this.place_of_service_line = place_of_service_line;
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
	public Integer getRnum() {
		return rnum;
	}
	public void setRnum(Integer rnum) {
		this.rnum = rnum;
	}
    public Integer getFromid() {
		return fromid;
	}
	public void setFromid(Integer fromid) {
		this.fromid = fromid;
	}
	public Integer getRequestid() {
		return requestid;
	}
	public void setRequestid(Integer requestid) {
		this.requestid = requestid;
	}
	public Integer getToid() {
		return toid;
	}
	public void setToid(Integer toid) {
		this.toid = toid;
	}
	public Integer getMaster_group() {
		return master_group;
	}
	public void setMaster_group(Integer master_group) {
		this.master_group = master_group;
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
	public Integer getCall_number() {
		return call_number;
	}
	public void setCall_number(Integer call_number) {
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
	public String getDoc_id() {
		return doc_id;
	}
	public void setDoc_id(String doc_id) {
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
	public String getFax_number() {
		return fax_number;
	}
	public void setFax_number(String fax_number) {
		this.fax_number = fax_number;
	}
	public Long getRequest_id() {
		return request_id;
	}
	public void setRequest_id(Long strid) {
		this.request_id = strid;
	}
	public String getStatus_str() {
		return status_str;
	}
	public void setStatus_str(String status_str) {
		this.status_str = status_str;
	}
	public Date getDate_submitted() {
		return date_submitted;
	}
	public void setDate_submitted(Date date_submitted) {
		this.date_submitted = date_submitted;
	}
	public Date getDate_completed() {
		return date_completed;
	}
	public void setDate_completed(Date date_completed) {
		this.date_completed = date_completed;
	}
	public String getProvider_name() {
		return provider_name;
	}
	public void setProvider_name(String provider_name) {
		this.provider_name = provider_name;
	}
	public String getAeob_link() {
		return aeob_link;
	}
	public void setAeob_link(String aeob_link) {
		this.aeob_link = aeob_link;
	}
	public String getForm_doc_id() {
		return form_doc_id;
	}
	public void setForm_doc_id(String form_doc_id) {
		this.form_doc_id = form_doc_id;
	}
	
	

}
