package com.pdsu.edu.domain;

import java.io.Serializable;

public class Adppo implements Serializable {
private static final long serialVersionUID=5859329915583291626L;
private Integer ppo; 
private Integer ppono; 
private String ppo_name,ppoprovname;
private String specialty;
private Integer specialty_id; 
private Integer zip; 
private Float lat; 
private Float lon; 
private Float latlon; 
private String name;
private String address1;
private String address2;
private String city;
private String st; 
private String phone;
private String lname;
private String fname;
private String effdate;
private String termdate ;

private String provtype ;
private String taxid ;
private String spec ;
private String ox1;
private String oy1;
private String ox2;
private String oy2;
private String ix1;
private String iy1;
private String ix2;
private String iy2;
private String provst; 

private Integer mastgroup; 
private Integer ssn; 
private String specific_plan_type;
private String CoverageTypeID;
private String nationalPPO;
private String PPO_WebUrl;
private String seq;
 
private String  corporationid;
private Integer  newfeaturesind;
private Integer  grnumber;
private Integer  cartid;

private Long carttId;
private String memberlogin;

private String Provname,Provcode,poscode,serviceamt ;
private String postalcode,state,zipcode;
private String sqlstr,proccd,descr,proccdesc,cpt;

private String hiddenssn,hiddendob,hiddentype;
private String pagelow,pageup;
private Integer  total;
private Integer  mst_ip,sub_ip;
private String mst_category,sub_category;


private String grpno ;
private String empno ;
private String depno ;

private String CLMLN; 
private String CLMNO;  
private String CLMPRE;
private String DEDNO;
private String OOPNO;
private String BENCD;
private String ANNACC1;
private String ANNACC2;
private String LIFACC1;
private String LIFACC2;
private String PERC;
private String VSTSCD;
private String COPAYCD;
private String COPAYAMT;
private String FREQCD;
private String WVECD;
private String AMTLMT;
private String AMTFLAG;
private String ANNVSTS;
private String TMFRMTP;
private String TMFRMCT;
private String TMFRMDEN;
private String TMFRMCD;
private String DLYLMTCD;
private String COPDED;
private String COPOOP;
private String OOPINCDED;
private String INOUTACCS;
private String IOACCSCOMDED;
private String PPONO;
private String CVGMAPFLAG;
private String PRVRESP;
private String EERESP;
private String EDEAMT; 
private String COPAMT; 
private String COINAMT; 
private String DEDPSTAMT; 
private String OOPPSTAMT; 
private String DEDREMPLN; 
private String DEDREMPPO; 
private String OOPREMPLN; 
private String OOPREMPPO;
private String UNITS;
private String UNITSALWD;
private String CVGTP;
private String CHGAMT;
private String ADJCVRD;  
private String INCFRMDT;
private String GRPNO; 
private String EMPNO; 
private String DEPNO;
private String MODCD1; 
private String DIAG;
private String POS; 
private String AGE; 
private String PRVTP;
private String PROCCD;
private String CVGCD;


private String PPODESC;
private String ServiceDescription;
private String Copay;
private String PaidPct;
private String Deductible;
private String OOP;
private String NOTES;

private Integer UCRGRPNO;
private String UCRZIP,UCRCPT,UCRMODCD;
private String CPT,MODCD,EFFYM,UCRCD,PCT,GEOAREA,RVSID,RELVAL,UCRPCT,UCRAMT;



public String getCpt() {
	return cpt;
}

public void setCpt(String cpt) {
	this.cpt = cpt;
}

public String getProccdesc() {
	return proccdesc;
}

public void setProccdesc(String proccdesc) {
	this.proccdesc = proccdesc;
}

public String getCPT() {
	return CPT;
}

public void setCPT(String cpt) {
	CPT = cpt;
}

public String getMODCD() {
	return MODCD;
}

public void setMODCD(String modcd) {
	MODCD = modcd;
}

public String getEFFYM() {
	return EFFYM;
}

public void setEFFYM(String effym) {
	EFFYM = effym;
}

public String getUCRCD() {
	return UCRCD;
}

public void setUCRCD(String ucrcd) {
	UCRCD = ucrcd;
}

public String getPCT() {
	return PCT;
}

public void setPCT(String pct) {
	PCT = pct;
}

public String getGEOAREA() {
	return GEOAREA;
}

public void setGEOAREA(String geoarea) {
	GEOAREA = geoarea;
}

public String getRVSID() {
	return RVSID;
}

public void setRVSID(String rvsid) {
	RVSID = rvsid;
}

public String getRELVAL() {
	return RELVAL;
}

public void setRELVAL(String relval) {
	RELVAL = relval;
}

public String getUCRPCT() {
	return UCRPCT;
}

public void setUCRPCT(String ucrpct) {
	UCRPCT = ucrpct;
}

public String getUCRAMT() {
	return UCRAMT;
}

public void setUCRAMT(String ucramt) {
	UCRAMT = ucramt;
}

public Integer getUCRGRPNO() {
	return UCRGRPNO;
}

public void setUCRGRPNO(Integer ucrgrpno) {
	UCRGRPNO = ucrgrpno;
}

public String getUCRZIP() {
	return UCRZIP;
}

public void setUCRZIP(String ucrzip) {
	UCRZIP = ucrzip;
}

public String getUCRCPT() {
	return UCRCPT;
}

public void setUCRCPT(String ucrcpt) {
	UCRCPT = ucrcpt;
}

public String getUCRMODCD() {
	return UCRMODCD;
}

public void setUCRMODCD(String ucrmodcd) {
	UCRMODCD = ucrmodcd;
}

public String getPPODESC() {
	return PPODESC;
}

public void setPPODESC(String ppodesc) {
	PPODESC = ppodesc;
}

public String getCopay() {
	return Copay;
}

public void setCopay(String copay) {
	Copay = copay;
}

 

 
public String getDeductible() {
	return Deductible;
}

public void setDeductible(String deductible) {
	Deductible = deductible;
}

public String getOOP() {
	return OOP;
}

public void setOOP(String oop) {
	OOP = oop;
}

public String getNOTES() {
	return NOTES;
}

public void setNOTES(String notes) {
	NOTES = notes;
}

public String getCLMLN() {
	return CLMLN;
}

public void setCLMLN(String clmln) {
	CLMLN = clmln;
}

public String getCLMNO() {
	return CLMNO;
}

public void setCLMNO(String clmno) {
	CLMNO = clmno;
}

public String getCLMPRE() {
	return CLMPRE;
}

public void setCLMPRE(String clmpre) {
	CLMPRE = clmpre;
}

public String getDEDNO() {
	return DEDNO;
}

public void setDEDNO(String dedno) {
	DEDNO = dedno;
}

public String getOOPNO() {
	return OOPNO;
}

public void setOOPNO(String oopno) {
	OOPNO = oopno;
}

public String getBENCD() {
	return BENCD;
}

public void setBENCD(String bencd) {
	BENCD = bencd;
}

public String getANNACC1() {
	return ANNACC1;
}

public void setANNACC1(String annacc1) {
	ANNACC1 = annacc1;
}

public String getANNACC2() {
	return ANNACC2;
}

public void setANNACC2(String annacc2) {
	ANNACC2 = annacc2;
}

public String getLIFACC1() {
	return LIFACC1;
}

public void setLIFACC1(String lifacc1) {
	LIFACC1 = lifacc1;
}

public String getLIFACC2() {
	return LIFACC2;
}

public void setLIFACC2(String lifacc2) {
	LIFACC2 = lifacc2;
}

public String getPERC() {
	return PERC;
}

public void setPERC(String perc) {
	PERC = perc;
}

public String getVSTSCD() {
	return VSTSCD;
}

public void setVSTSCD(String vstscd) {
	VSTSCD = vstscd;
}

public String getCOPAYCD() {
	return COPAYCD;
}

public void setCOPAYCD(String copaycd) {
	COPAYCD = copaycd;
}

public String getCOPAYAMT() {
	return COPAYAMT;
}

public void setCOPAYAMT(String copayamt) {
	COPAYAMT = copayamt;
}

public String getFREQCD() {
	return FREQCD;
}

public void setFREQCD(String freqcd) {
	FREQCD = freqcd;
}

public String getWVECD() {
	return WVECD;
}

public void setWVECD(String wvecd) {
	WVECD = wvecd;
}

public String getAMTLMT() {
	return AMTLMT;
}

public void setAMTLMT(String amtlmt) {
	AMTLMT = amtlmt;
}

public String getAMTFLAG() {
	return AMTFLAG;
}

public void setAMTFLAG(String amtflag) {
	AMTFLAG = amtflag;
}

public String getANNVSTS() {
	return ANNVSTS;
}

public void setANNVSTS(String annvsts) {
	ANNVSTS = annvsts;
}

public String getTMFRMTP() {
	return TMFRMTP;
}

public void setTMFRMTP(String tmfrmtp) {
	TMFRMTP = tmfrmtp;
}

public String getTMFRMCT() {
	return TMFRMCT;
}

public void setTMFRMCT(String tmfrmct) {
	TMFRMCT = tmfrmct;
}

public String getTMFRMDEN() {
	return TMFRMDEN;
}

public void setTMFRMDEN(String tmfrmden) {
	TMFRMDEN = tmfrmden;
}

public String getTMFRMCD() {
	return TMFRMCD;
}

public void setTMFRMCD(String tmfrmcd) {
	TMFRMCD = tmfrmcd;
}

public String getDLYLMTCD() {
	return DLYLMTCD;
}

public void setDLYLMTCD(String dlylmtcd) {
	DLYLMTCD = dlylmtcd;
}

public String getCOPDED() {
	return COPDED;
}

public void setCOPDED(String copded) {
	COPDED = copded;
}

public String getCOPOOP() {
	return COPOOP;
}

public void setCOPOOP(String copoop) {
	COPOOP = copoop;
}

public String getOOPINCDED() {
	return OOPINCDED;
}

public void setOOPINCDED(String oopincded) {
	OOPINCDED = oopincded;
}

public String getINOUTACCS() {
	return INOUTACCS;
}

public void setINOUTACCS(String inoutaccs) {
	INOUTACCS = inoutaccs;
}

public String getIOACCSCOMDED() {
	return IOACCSCOMDED;
}

public void setIOACCSCOMDED(String ioaccscomded) {
	IOACCSCOMDED = ioaccscomded;
}

public String getPPONO() {
	return PPONO;
}

public void setPPONO(String ppono) {
	PPONO = ppono;
}

public String getCVGMAPFLAG() {
	return CVGMAPFLAG;
}

public void setCVGMAPFLAG(String cvgmapflag) {
	CVGMAPFLAG = cvgmapflag;
}

public String getPRVRESP() {
	return PRVRESP;
}

public void setPRVRESP(String prvresp) {
	PRVRESP = prvresp;
}

public String getEERESP() {
	return EERESP;
}

public void setEERESP(String eeresp) {
	EERESP = eeresp;
}

public String getEDEAMT() {
	return EDEAMT;
}

public void setEDEAMT(String edeamt) {
	EDEAMT = edeamt;
}

public String getCOPAMT() {
	return COPAMT;
}

public void setCOPAMT(String copamt) {
	COPAMT = copamt;
}

public String getCOINAMT() {
	return COINAMT;
}

public void setCOINAMT(String coinamt) {
	COINAMT = coinamt;
}

public String getDEDPSTAMT() {
	return DEDPSTAMT;
}

public void setDEDPSTAMT(String dedpstamt) {
	DEDPSTAMT = dedpstamt;
}

public String getOOPPSTAMT() {
	return OOPPSTAMT;
}

public void setOOPPSTAMT(String ooppstamt) {
	OOPPSTAMT = ooppstamt;
}

public String getDEDREMPLN() {
	return DEDREMPLN;
}

public void setDEDREMPLN(String dedrempln) {
	DEDREMPLN = dedrempln;
}

public String getDEDREMPPO() {
	return DEDREMPPO;
}

public void setDEDREMPPO(String dedremppo) {
	DEDREMPPO = dedremppo;
}

public String getOOPREMPLN() {
	return OOPREMPLN;
}

public void setOOPREMPLN(String ooprempln) {
	OOPREMPLN = ooprempln;
}

public String getOOPREMPPO() {
	return OOPREMPPO;
}

public void setOOPREMPPO(String oopremppo) {
	OOPREMPPO = oopremppo;
}

public String getUNITS() {
	return UNITS;
}

public void setUNITS(String units) {
	UNITS = units;
}

public String getUNITSALWD() {
	return UNITSALWD;
}

public void setUNITSALWD(String unitsalwd) {
	UNITSALWD = unitsalwd;
}

public String getCVGTP() {
	return CVGTP;
}

public void setCVGTP(String cvgtp) {
	CVGTP = cvgtp;
}

public String getCHGAMT() {
	return CHGAMT;
}

public void setCHGAMT(String chgamt) {
	CHGAMT = chgamt;
}

public String getADJCVRD() {
	return ADJCVRD;
}

public void setADJCVRD(String adjcvrd) {
	ADJCVRD = adjcvrd;
}

public String getINCFRMDT() {
	return INCFRMDT;
}

public void setINCFRMDT(String incfrmdt) {
	INCFRMDT = incfrmdt;
}

public String getGRPNO() {
	return GRPNO;
}

public void setGRPNO(String grpno) {
	GRPNO = grpno;
}

public String getEMPNO() {
	return EMPNO;
}

public void setEMPNO(String empno) {
	EMPNO = empno;
}

public String getDEPNO() {
	return DEPNO;
}

public void setDEPNO(String depno) {
	DEPNO = depno;
}

public String getMODCD1() {
	return MODCD1;
}

public void setMODCD1(String modcd1) {
	MODCD1 = modcd1;
}

public String getDIAG() {
	return DIAG;
}

public void setDIAG(String diag) {
	DIAG = diag;
}

public String getPOS() {
	return POS;
}

public void setPOS(String pos) {
	POS = pos;
}

public String getAGE() {
	return AGE;
}

public void setAGE(String age) {
	AGE = age;
}

public String getPRVTP() {
	return PRVTP;
}

public void setPRVTP(String prvtp) {
	PRVTP = prvtp;
}

public String getPROCCD() {
	return PROCCD;
}

public void setPROCCD(String proccd) {
	PROCCD = proccd;
}

public String getCVGCD() {
	return CVGCD;
}

public void setCVGCD(String cvgcd) {
	CVGCD = cvgcd;
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

public String getMst_category() {
	return mst_category;
}

public void setMst_category(String mst_category) {
	this.mst_category = mst_category;
}

public String getSub_category() {
	return sub_category;
}

public void setSub_category(String sub_category) {
	this.sub_category = sub_category;
}

public Integer getMst_ip() {
	return mst_ip;
}

public void setMst_ip(Integer mst_ip) {
	this.mst_ip = mst_ip;
}

public Integer getSub_ip() {
	return sub_ip;
}

public void setSub_ip(Integer sub_ip) {
	this.sub_ip = sub_ip;
}

public Integer getTotal() {
	return total;
}

public void setTotal(Integer total) {
	this.total = total;
}

public String getPagelow() {
	return pagelow;
}

public void setPagelow(String pagelow) {
	this.pagelow = pagelow;
}

public String getPageup() {
	return pageup;
}

public void setPageup(String pageup) {
	this.pageup = pageup;
}

public String getHiddenssn() {
	return hiddenssn;
}

public void setHiddenssn(String hiddenssn) {
	this.hiddenssn = hiddenssn;
}

public String getHiddendob() {
	return hiddendob;
}

public void setHiddendob(String hiddendob) {
	this.hiddendob = hiddendob;
}

public String getHiddentype() {
	return hiddentype;
}

public void setHiddentype(String hiddentype) {
	this.hiddentype = hiddentype;
}

public String getProccd() {
	return proccd;
}

public void setProccd(String proccd) {
	this.proccd = proccd;
}

public String getDescr() {
	return descr;
}

public void setDescr(String descr) {
	this.descr = descr;
}

public String getSqlstr() {
	return sqlstr;
}

public void setSqlstr(String sqlstr) {
	this.sqlstr = sqlstr;
}

public String getPostalcode() {
	return postalcode;
}

public void setPostalcode(String postalcode) {
	this.postalcode = postalcode;
}

public String getState() {
	return state;
}

public void setState(String state) {
	this.state = state;
}

public String getZipcode() {
	return zipcode;
}

public void setZipcode(String zipcode) {
	this.zipcode = zipcode;
}

public String getPoscode() {
	return poscode;
}

public void setPoscode(String poscode) {
	this.poscode = poscode;
}

public String getServiceamt() {
	return serviceamt;
}

public void setServiceamt(String serviceamt) {
	this.serviceamt = serviceamt;
}

public String getProvcode() {
	return Provcode;
}

public void setProvcode(String provcode) {
	Provcode = provcode;
}

public String getMemberlogin() {
	return memberlogin;
}

public void setMemberlogin(String memberlogin) {
	this.memberlogin = memberlogin;
}

public Float getLatlon() {
	return latlon;
}

public void setLatlon(Float latlon) {
	this.latlon = latlon;
}

public Integer getPpo() {
	return ppo;
}

public void setPpo(Integer ppo) {
	this.ppo = ppo;
}

public Integer getPpono() {
	return ppono;
}

public void setPpono(Integer ppono) {
	this.ppono = ppono;
}

public String getPpo_name() {
	return ppo_name;
}

public void setPpo_name(String ppo_name) {
	this.ppo_name = ppo_name;
}

public String getSpecialty() {
	return specialty;
}

public void setSpecialty(String specialty) {
	this.specialty = specialty;
}

public Integer getSpecialty_id() {
	return specialty_id;
}

public void setSpecialty_id(Integer specialty_id) {
	this.specialty_id = specialty_id;
}

public Integer getZip() {
	return zip;
}

public void setZip(Integer zip) {
	this.zip = zip;
}

public Float getLat() {
	return lat;
}

public void setLat(Float lat) {
	this.lat = lat;
}

public Float getLon() {
	return lon;
}

public void setLon(Float lon) {
	this.lon = lon;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public String getAddress1() {
	return address1;
}

public void setAddress1(String address1) {
	this.address1 = address1;
}

public String getAddress2() {
	return address2;
}

public void setAddress2(String address2) {
	this.address2 = address2;
}

public String getCity() {
	return city;
}

public void setCity(String city) {
	this.city = city;
}

public String getSt() {
	return st;
}

public void setSt(String st) {
	this.st = st;
}

public String getPhone() {
	return phone;
}

public void setPhone(String phone) {
	this.phone = phone;
}

public String getLname() {
	return lname;
}

public void setLname(String lname) {
	this.lname = lname;
}

public String getFname() {
	return fname;
}

public void setFname(String fname) {
	this.fname = fname;
}

public String getEffdate() {
	return effdate;
}

public void setEffdate(String effdate) {
	this.effdate = effdate;
}

public String getTermdate() {
	return termdate;
}

public void setTermdate(String termdate) {
	this.termdate = termdate;
}

public String getProvtype() {
	return provtype;
}

public void setProvtype(String provtype) {
	this.provtype = provtype;
}

public String getTaxid() {
	return taxid;
}

public void setTaxid(String taxid) {
	this.taxid = taxid;
}

public String getSpec() {
	return spec;
}

public void setSpec(String spec) {
	this.spec = spec;
}

public String getOx1() {
	return ox1;
}

public void setOx1(String ox1) {
	this.ox1 = ox1;
}

public String getOy1() {
	return oy1;
}

public void setOy1(String oy1) {
	this.oy1 = oy1;
}

public String getOx2() {
	return ox2;
}

public void setOx2(String ox2) {
	this.ox2 = ox2;
}

public String getOy2() {
	return oy2;
}

public void setOy2(String oy2) {
	this.oy2 = oy2;
}

public String getIx1() {
	return ix1;
}

public void setIx1(String ix1) {
	this.ix1 = ix1;
}

public String getIy1() {
	return iy1;
}

public void setIy1(String iy1) {
	this.iy1 = iy1;
}

public String getIx2() {
	return ix2;
}

public void setIx2(String ix2) {
	this.ix2 = ix2;
}

public String getIy2() {
	return iy2;
}

public void setIy2(String iy2) {
	this.iy2 = iy2;
}

public String getProvname() {
	return Provname;
}

public void setProvname(String provname) {
	Provname = provname;
}

public String getProvst() {
	return provst;
}

public void setProvst(String provst) {
	this.provst = provst;
}

public Integer getMastgroup() {
	return mastgroup;
}

public void setMastgroup(Integer mastgroup) {
	this.mastgroup = mastgroup;
}

public Integer getSsn() {
	return ssn;
}

public void setSsn(Integer ssn) {
	this.ssn = ssn;
}

public String getSpecific_plan_type() {
	return specific_plan_type;
}

public void setSpecific_plan_type(String specific_plan_type) {
	this.specific_plan_type = specific_plan_type;
}

public String getCoverageTypeID() {
	return CoverageTypeID;
}

public void setCoverageTypeID(String coverageTypeID) {
	CoverageTypeID = coverageTypeID;
}

public String getNationalPPO() {
	return nationalPPO;
}

public void setNationalPPO(String nationalPPO) {
	this.nationalPPO = nationalPPO;
}

public String getPPO_WebUrl() {
	return PPO_WebUrl;
}

public void setPPO_WebUrl(String webUrl) {
	PPO_WebUrl = webUrl;
}

public String getSeq() {
	return seq;
}

public void setSeq(String seq) {
	this.seq = seq;
}

 
public Integer getNewfeaturesind() {
	return newfeaturesind;
}

public void setNewfeaturesind(Integer newfeaturesind) {
	this.newfeaturesind = newfeaturesind;
}

public String getCorporationid() {
	return corporationid;
}

public void setCorporationid(String corporationid) {
	this.corporationid = corporationid;
}

public Integer getGrnumber() {
	return grnumber;
}

public void setGrnumber(Integer grnumber) {
	this.grnumber = grnumber;
}

public Integer getCartid() {
	return cartid;
}

public void setCartid(Integer cartid) {
	this.cartid = cartid;
}

public Long getCarttId() {
	return carttId;
}

public void setCarttId(Long carttId) {
	this.carttId = carttId;
}

public String getServiceDescription() {
	return ServiceDescription;
}

public void setServiceDescription(String serviceDescription) {
	ServiceDescription = serviceDescription;
}

public String getPaidPct() {
	return PaidPct;
}

public void setPaidPct(String paidPct) {
	PaidPct = paidPct;
}

public String getPpoprovname() {
	return ppoprovname;
}

public void setPpoprovname(String ppoprovname) {
	this.ppoprovname = ppoprovname;
}

 



}
