package com.pdsu.edu.domain;

import java.io.Serializable;
import java.util.Date;

public class Fileimport implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4415990281535582816L;
	private Long fileId;
	private String reporting_entity_name;
	private String plan_name;
	private String plan_market_type;
	private String negotiation_arrangement;
	private Date last_updated_on;
	
	
	private Long providerId;
	private Long providerfileId;
	private String negotiated_type;
	private String negotiation_arrangement_type;
	private Date expiration_date;

	private Long providertinId;
	private Long tinnum;
	private Long provId;
	
	
	private Long rateId;
	private String service_code;
	private String billing_code_type;
	private String billing_code_type_version;
	private String negotiated_rate_type;
	

	private Long contractId;
	private Long contractrateId;
	private String billing_code;
	private double negotiated_rate;
	
	private Long allowedId;
	private double allowedrateId;
	private double allowedamount;
	private double billing_charge;
	

	private String plan_id_type, plan_id;//--<==for CMS INN/OON
	private String name,description;//--<==for CMS INN/OON

	private Long innetworkfileId,Innetworkid;
	
	
	public Long getInnetworkid() {
		return Innetworkid;
	}
	public void setInnetworkid(Long innetworkid) {
		Innetworkid = innetworkid;
	}
	public Long getInnetworkfileId() {
		return innetworkfileId;
	}
	public void setInnetworkfileId(Long innetworkfileId) {
		this.innetworkfileId = innetworkfileId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
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
	public double getAllowedrateId() {
		return allowedrateId;
	}
	public void setAllowedrateId(double allowedrateId) {
		this.allowedrateId = allowedrateId;
	}
	public double getAllowedamount() {
		return allowedamount;
	}
	public void setAllowedamount(double allowedamount) {
		this.allowedamount = allowedamount;
	}
	public double getBilling_charge() {
		return billing_charge;
	}
	public void setBilling_charge(double billing_charge) {
		this.billing_charge = billing_charge;
	}
	public Long getAllowedId() {
		return allowedId;
	}
	public void setAllowedId(Long allowedId) {
		this.allowedId = allowedId;
	}
	public Long getContractId() {
		return contractId;
	}
	public void setContractId(Long contractId) {
		this.contractId = contractId;
	}
	public Long getContractrateId() {
		return contractrateId;
	}
	public void setContractrateId(Long contractrateId) {
		this.contractrateId = contractrateId;
	}
	public String getBilling_code() {
		return billing_code;
	}
	public void setBilling_code(String billing_code) {
		this.billing_code = billing_code;
	}
	public double getNegotiated_rate() {
		return negotiated_rate;
	}
	public void setNegotiated_rate(double negotiated_rate) {
		this.negotiated_rate = negotiated_rate;
	}
	public Long getRateId() {
		return rateId;
	}
	public void setRateId(Long rateId) {
		this.rateId = rateId;
	}
	public String getService_code() {
		return service_code;
	}
	public void setService_code(String service_code) {
		this.service_code = service_code;
	}
	public String getBilling_code_type() {
		return billing_code_type;
	}
	public void setBilling_code_type(String billing_code_type) {
		this.billing_code_type = billing_code_type;
	}
	public String getBilling_code_type_version() {
		return billing_code_type_version;
	}
	public void setBilling_code_type_version(String billing_code_type_version) {
		this.billing_code_type_version = billing_code_type_version;
	}
	public String getNegotiated_rate_type() {
		return negotiated_rate_type;
	}
	public void setNegotiated_rate_type(String negotiated_rate_type) {
		this.negotiated_rate_type = negotiated_rate_type;
	}
	public Long getProvId() {
		return provId;
	}
	public void setProvId(Long provId) {
		this.provId = provId;
	}
	public Long getFileId() {
		return fileId;
	}
	public void setFileId(Long fileId) {
		this.fileId = fileId;
	}
	public String getReporting_entity_name() {
		return reporting_entity_name;
	}
	public void setReporting_entity_name(String reporting_entity_name) {
		this.reporting_entity_name = reporting_entity_name;
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
	public Date getLast_updated_on() {
		return last_updated_on;
	}
	public void setLast_updated_on(Date last_updated_on) {
		this.last_updated_on = last_updated_on;
	}
	public Long getProviderId() {
		return providerId;
	}
	public void setProviderId(Long providerId) {
		this.providerId = providerId;
	}
	public Long getProviderfileId() {
		return providerfileId;
	}
	public void setProviderfileId(Long providerfileId) {
		this.providerfileId = providerfileId;
	}
	public String getNegotiated_type() {
		return negotiated_type;
	}
	public void setNegotiated_type(String negotiated_type) {
		this.negotiated_type = negotiated_type;
	}
	public String getNegotiation_arrangement_type() {
		return negotiation_arrangement_type;
	}
	public void setNegotiation_arrangement_type(String negotiation_arrangement_type) {
		this.negotiation_arrangement_type = negotiation_arrangement_type;
	}
	public Date getExpiration_date() {
		return expiration_date;
	}
	public void setExpiration_date(Date expiration_date) {
		this.expiration_date = expiration_date;
	}
	public Long getProvidertinId() {
		return providertinId;
	}
	public void setProvidertinId(Long providertinId) {
		this.providertinId = providertinId;
	}
	public Long getTinnum() {
		return tinnum;
	}
	public void setTinnum(Long tinnum) {
		this.tinnum = tinnum;
	}
	
	

}
