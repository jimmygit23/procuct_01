package com.pdsu.edu.adeod.action;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import net.sf.json.JSONArray;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.aurorasoft.medi.common.mail.MailInfo;
import com.aurorasoft.medi.common.util.MediMailUtil;
import com.aurorasoft.medi.common.util.ResponseOutTool;
import com.aurorasoft.sysreport.user.action.MailSenderAttach;
import com.opensymphony.xwork2.ActionSupport;
import com.pdsu.edu.domain.Adeod;
import com.pdsu.edu.domain.Advanceeod;
import com.pdsu.edu.domain.Claimfile;
import com.pdsu.edu.domain.eodLines;
import com.pdsu.edu.service.AdeodService;
import com.pdsu.edu.service.AdvanceeodService;
import com.pdsu.edu.service.ClaimfileService;

@Controller
@Scope("prototype")
public class AdeodAction extends ActionSupport {
	@Autowired 
	private AdvanceeodService advanceeodService;
	@Autowired 
	private AdeodService adeodService;
	@Autowired 
	private ClaimfileService claimfileService;

	private List<Advanceeod> temAdvanceeod;
	private String hidden_ssn;
	private String hidden_altid;
	private String ICN;
	private String Lines_total;
	private String doLine;
	private String tempCLMNUM;
	private List<eodLines> tempLines;
	private List<Advanceeod> tempAdeods;
	private List<Advanceeod> tempAdeodspdf;
	private String linestr,headstr,errorinfo;
	private String TaxID,RequestID;
	private String sdate;
	private Long ssn;
	private String memberID;
	private String dob;
	private String dobdep;
	private List<Advanceeod> eobdetailList;
	private Advanceeod eobdetailobj;
	private Integer grpno;
	private String firstname;
	private String mi;
	private String lastname;
	private String suffix;
	private String gender;
	private String spouse;
	private String child;
	private String other;
	private Adeod insuredobj;
	private String subtype;
	
	private String fromdate,enddate;
	private String npi;
	private String proccd;
	private String modcd;
	private String code;
	private Integer totalpage,pageno;
	private Integer beginrow;
	private Integer endrow;
	private String pos;
	private Integer depno;
	private Integer empno;
	private String fromid;
	
	private String methodinfo;
	private String emailaddressinfo;
	private String faxnumberinfo;
	private String emailtoaddress;
	
	private Integer request_id;
	private String status_str;
	private Date date_submitted;
	private Date date_completed;
	private String provider_name;
	private String aeob_link;
	private String form_doc_id;
	private Integer rowsno;
	private String searchstatus;
	private String actiontempclm;
	
	private String subject;
	private String content;
	private String addrto;
	private Long insertrequestid;
	private Integer temptotal;
	private String successform;
	private String dotype;
	private String delrequestid,strtaxid,searchall;
	
	
	public String addeob() {
		emailtoaddress="";
		String do_ssn=hidden_ssn;
		String do_altid=hidden_altid; 
		String memberid=memberID;
		Adeod adeod = new Adeod();
		adeod.setGrpno(grpno);
		adeod.setEmpno(empno);
		/*
		if(hidden_ssn != null && !hidden_ssn.equals("")){
			adeod.setSsn(Long.valueOf(hidden_ssn));
		}else{
			adeod.setIdalt(hidden_altid);
		}
		adeod.setMemberid(memberID);
		adeod.setGrpno(grpno);
		*/
		List<Adeod> insuredList = adeodService.selectInsuredInfo(adeod);
		if(insuredList != null && insuredList.size() > 0){
			insuredobj = insuredList.get(0);
		}
		
		if(null!=emailaddressinfo && "2".equals(emailaddressinfo)){
			methodinfo="2";
			emailaddressinfo="";
			Claimfile email=new Claimfile();
			/*if(null!=hidden_ssn){
				email.setSsn(Long.valueOf(hidden_ssn));
			}
			if(null!=hidden_altid){
				email.setAltid(hidden_altid);
			} */
			if(null!=grpno){
				email.setGrp_no(Integer.valueOf(grpno));
			}
			if(null!=empno){
				email.setEmp_no(Integer.valueOf(empno));
			}
			/*if(null!=depno){
				email.setDep_no(Integer.valueOf(depno));
			}*/
			email.setDep_no(Integer.valueOf(0));
			List<Claimfile> temp=claimfileService.findempEmaillist(email); 
			if(null!=temp && temp.size()>0){
		        for(int i=0;i<temp.size();i++){
		        	if(null!=temp.get(i)){
			        	if(null!=temp.get(i).getEmail()){
			        		emailtoaddress=temp.get(i).getEmail();
			        	}
		        	}else{ 
		        		emailtoaddress="";
		        	}
		        }
			}else{ 
				emailtoaddress="";
			}
		}
		
		 
		return "addeob";
	}
	public String showeob() {

		//-----------------------------------------------------
		if("del".equals(dotype)){
			Advanceeod advanceeod=new Advanceeod();
			advanceeod.setRequest_id(Long.valueOf(delrequestid));
			advanceeod.setStatus(-1);
			advanceeodService.updateAeobclaim(advanceeod);
		}
		//-----------------------------------------------------
		
		//String do_ssn=hidden_ssn;
		//String do_altid=hidden_altid; 
		String dd=dob;
		String temp_Scanned_claim_id="";
		SimpleDateFormat format=new SimpleDateFormat("MM/dd/yyyy");
		Date date_dob=null;
		try {
			if(null != dobdep && !dobdep.trim().equals(""))
			  date_dob=format.parse(dobdep);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		Advanceeod advanceeod =new Advanceeod();
		//show eob
		if(null != depno && depno == 0){//ee
			advanceeod.setEmployee_ssn(Long.valueOf(hidden_ssn));
		}else if(null != depno && depno != 0){//dep
			Adeod adeod = new Adeod();
			adeod.setGrpno(grpno);
			adeod.setEmpno(empno);
			List<Adeod> insuredList = adeodService.selectInsuredInfo(adeod);
			if(insuredList != null && insuredList.size() > 0){
				advanceeod.setEmployee_ssn(insuredList.get(0).getSsn());;
			}
		}
		advanceeod.setDep_no(depno);
		advanceeod.setPatient_fname(firstname);
		//end show eob
		if(null!=ssn && !ssn.equals("")){
			advanceeod.setEmployee_ssn(ssn);
		}

		if(null!=hidden_ssn && !hidden_ssn.equals("")){
			//advanceeod.setEmployee_ssn(Long.valueOf(hidden_ssn));
		}
		
		
		if(null!=memberID && !memberID.equals("null")&& !memberID.equals("")){
			advanceeod.setMember_id(memberID);
		}
		if(null!=date_dob && !date_dob.equals("")){
			advanceeod.setPatient_dob(date_dob);
		}
		if(null!=TaxID && !TaxID.equals("")){
			advanceeod.setBilling_taxid(TaxID);
		}
		if(null!=strtaxid && !strtaxid.equals("")){
			advanceeod.setBilling_taxid(strtaxid);
		}
		

		if(null!=delrequestid && !delrequestid.equals("")){
			advanceeod.setRequest_id(Long.valueOf(delrequestid));
		}
		
		
		/*
		if( null!=searchall && searchall.equals("Y")){	
		tempAdeods=new ArrayList<Advanceeod>();
				if( (null!=hidden_ssn && !hidden_ssn.equals("")) || (null!=ssn && !ssn.equals("")) || (null!=memberID && !memberID.equals("")) || null != firstname){	
					List<Advanceeod> temp=advanceeodService.selclaimsearch(advanceeod);
					for(int i=0;i<temp.size();i++){
						Advanceeod A = new Advanceeod();
						A.setRequest_id(temp.get(i).getRequest_id());
						A.setPatientname(temp.get(i).getPatientname());
						A.setStatus_str(temp.get(i).getStatus_str());
						A.setDate_submitted(temp.get(i).getDate_submitted());
						A.setDate_completed(temp.get(i).getDate_completed());
						A.setProvider_name(temp.get(i).getProvider_name());
						A.setClaim_number(temp.get(i).getClaim_number());
						A.setAeob_link(temp.get(i).getAeob_link());
						A.setCharge_amount(temp.get(i).getCharge_amount());
						A.setForm_doc_id(temp.get(i).getForm_doc_id());
						tempAdeods.add(A);
					}
				
				
				}
		
		
				List<Advanceeod> temp1=advanceeodService.findAdvanceeobadvpdf(advanceeod);
				for(int i=0;i<temp1.size();i++){
					Advanceeod A = new Advanceeod();
					A.setRequest_id(temp1.get(i).getRequest_id());
					A.setStatus_str(temp1.get(i).getStatus_str());
					A.setPatientname(temp1.get(i).getPatientname());
					A.setProvidername(temp1.get(i).getProvidername());
					A.setFormid(temp1.get(i).getFormid());
					A.setDocid(temp1.get(i).getDocid());
					A.setDatesubmitted(temp1.get(i).getDatesubmitted());
					A.setDate_completed(temp1.get(i).getDate_completed());
					A.setChargeamount(temp1.get(i).getChargeamount());
					A.setFax_number(temp1.get(i).getFAX_NUMBER());
					A.setEmail_address(temp1.get(i).getEMAIL_ADDRESS());
					A.setMailing_address(temp1.get(i).getMAILING_ADDRESS().replaceAll(";", "<br>"));
					A.setFile_name(temp1.get(i).getFile_name());
					A.setDocids(temp1.get(i).getDocids());
					tempAdeods.add(A);
				}
		}
		*/

		return "showeob";
	}
	
	public String showEobByTaxID() {
		Advanceeod advanceeod =new Advanceeod();
		if(null!=TaxID){
			TaxID=TaxID.replaceAll("-", "");
			advanceeod.setBilling_taxid(TaxID);
		}
		
		advanceeod.setRequest_id((RequestID != null && !String.valueOf(RequestID).trim().equals(""))?Long.valueOf(RequestID):null);
		//advanceeod.setFromid((request_id != null && !String.valueOf(request_id).trim().equals(""))?Integer.valueOf(request_id):null);
		
		List<Advanceeod> temp=advanceeodService.selclaimsearch(advanceeod);
		tempAdeods=new ArrayList<Advanceeod>();
		for(int i=0;i<temp.size();i++){
			Advanceeod A = new Advanceeod();
			A.setRequest_id(temp.get(i).getRequest_id());
			A.setStatus_str(temp.get(i).getStatus_str());
			A.setDate_submitted(temp.get(i).getDate_submitted());
			A.setDate_completed(temp.get(i).getDate_completed());
			A.setProvider_name(temp.get(i).getProvider_name());
			A.setClaim_number(temp.get(i).getClaim_number());
			A.setAeob_link(temp.get(i).getAeob_link());
			A.setCharge_amount(temp.get(i).getCharge_amount());
			A.setForm_doc_id(temp.get(i).getForm_doc_id());
			

			A.setPatientname(temp.get(i).getPatientname());
			tempAdeods.add(A);
		}
		
			Long tempRequestid=Long.valueOf(0);
			Long tempRequestid1=Long.valueOf(0);
			String temp_docids="";
			String temp_filenames="";
		//if(RequestID != null && !String.valueOf(RequestID).trim().equals("")){
			List<Advanceeod> temp1=advanceeodService.findAdvanceeobadvpdf(advanceeod);
			if(temp1.size()>0){
							for(int i=0;i<temp1.size();i++){
								Advanceeod A = new Advanceeod();
								tempRequestid=Long.valueOf(temp1.get(i).getRequest_id());
								if(tempRequestid!=tempRequestid1){
									if(!"".equals(temp_docids)){
										A.setRequest_id(tempRequestid1);
										A.setStatus_str(temp1.get(i-1).getStatus_str());
										A.setPatientname(temp1.get(i-1).getPatientname());
										A.setProvidername(temp1.get(i-1).getProvidername());
										A.setFormid(temp1.get(i-1).getFormid());
										//A.setDocid(temp1.get(i-1).getDocid());
										A.setDatesubmitted(temp1.get(i-1).getDatesubmitted());
										A.setDate_completed(temp1.get(i-1).getDate_completed());
										A.setCharge_amount(temp1.get(i-1).getCharge_amount());
										A.setChargeamount(temp1.get(i-1).getChargeamount());
										A.setFax_number(temp1.get(i-1).getFAX_NUMBER());
										A.setEmail_address(temp1.get(i-1).getEMAIL_ADDRESS());
										A.setProvider_name(temp1.get(i-1).getProvider_name());
										if(null!=temp1.get(i-1).getMAILING_ADDRESS()){
											A.setMailing_address(temp1.get(i-1).getMAILING_ADDRESS().replaceAll(";", "<br>"));
										}
										A.setAeob_link(temp1.get(i-1).getAeob_link());
										//A.setFile_name(temp1.get(i-1).getFile_name());
										A.setDocids(temp1.get(i-1).getDocids());
										
										A.setDocid(temp_docids);
										A.setFile_name(temp_filenames);
										tempAdeods.add(A);
									}
									
									tempRequestid1=tempRequestid;
									//temp_docids=temp1.get(i).getDocid();
									temp_docids="<a href='###' id='"+temp1.get(i).getDocid()+"' class='showpdf'>"+temp1.get(i).getDocid()+"</a>";
									temp_filenames=temp1.get(i).getFile_name();
								}else{
									/*
									A.setRequest_id(tempRequestid);
									A.setStatus_str(temp1.get(i).getStatus_str());
									A.setPatientname(temp1.get(i).getPatientname());
									A.setProvidername(temp1.get(i).getProvidername());
									A.setFormid(temp1.get(i).getFormid());
									A.setDocid(temp1.get(i).getDocid());
									A.setDatesubmitted(temp1.get(i).getDatesubmitted());
									A.setDate_completed(temp1.get(i).getDate_completed());
									A.setCharge_amount(temp1.get(i).getCharge_amount());
									A.setChargeamount(temp1.get(i).getChargeamount());
									A.setFax_number(temp1.get(i).getFAX_NUMBER());
									A.setEmail_address(temp1.get(i).getEMAIL_ADDRESS());
									A.setProvider_name(temp1.get(i).getProvider_name());
									if(null!=temp1.get(i).getMAILING_ADDRESS()){
										A.setMailing_address(temp1.get(i).getMAILING_ADDRESS().replaceAll(";", "<br>"));
									}
									A.setAeob_link(temp1.get(i).getAeob_link());
									A.setFile_name(temp1.get(i).getFile_name());
									A.setDocids(temp1.get(i).getDocids());
									*/
									//temp_docids=temp_docids+","+temp1.get(i).getDocid();
									
									temp_docids=temp_docids+"<br>"+"<a href='###' id='"+temp1.get(i).getDocid()+"' class='showpdf'>"+temp1.get(i).getDocid()+"</a>";
									temp_filenames=temp_filenames+"<br>"+temp1.get(i).getFile_name();
								}
							}
							
							//***************************************************************
							Advanceeod A = new Advanceeod();
							A.setRequest_id(tempRequestid1);
							A.setStatus_str(temp1.get(temp1.size()-1).getStatus_str());
							A.setPatientname(temp1.get(temp1.size()-1).getPatientname());
							A.setProvidername(temp1.get(temp1.size()-1).getProvidername());
							A.setFormid(temp1.get(temp1.size()-1).getFormid());
							//A.setDocid(temp1.get(i-1).getDocid());
							A.setDatesubmitted(temp1.get(temp1.size()-1).getDatesubmitted());
							A.setDate_completed(temp1.get(temp1.size()-1).getDate_completed());
							A.setCharge_amount(temp1.get(temp1.size()-1).getCharge_amount());
							A.setChargeamount(temp1.get(temp1.size()-1).getChargeamount());
							A.setFax_number(temp1.get(temp1.size()-1).getFAX_NUMBER());
							A.setEmail_address(temp1.get(temp1.size()-1).getEMAIL_ADDRESS());
							A.setProvider_name(temp1.get(temp1.size()-1).getProvider_name());
							if(null!=temp1.get(temp1.size()-1).getMAILING_ADDRESS()){
								A.setMailing_address(temp1.get(temp1.size()-1).getMAILING_ADDRESS().replaceAll(";", "<br>"));
							}
							A.setAeob_link(temp1.get(temp1.size()-1).getAeob_link());
							//A.setFile_name(temp1.get(temp1.size()-1).getFile_name());
							A.setDocids(temp1.get(temp1.size()-1).getDocids());
							A.setDocid(temp_docids);
							A.setFile_name(temp_filenames);
							tempAdeods.add(A);
							//***************************************************************
			}
		//}
		return "showeob";
	}
	
	public String showeobdetail() {
		String do_CLMNUM=tempCLMNUM; 
		Advanceeod obj = new Advanceeod();
		obj.setScanned_claim_id(tempCLMNUM);
		//obj.setEmployee_ssn(null);
		//obj.setMember_id(null);
		//obj.setClaimline_id(Long.valueOf(clm_line[1]));
		//obj.setFile_type(null);
		//obj.setFdate(null);
		//obj.setEdate(null);
		//obj.setIfdate(null);
		//obj.setIedate(null);
	
		eobdetailList = advanceeodService.findAdvanceeob(obj);
		if(null != eobdetailList && eobdetailList.size() > 0){
			eobdetailobj = eobdetailList.get(0);
		}
		if(null != subtype && subtype.equals("print")){
			return "printeobdetail";
		}else{
			return "showeobdetail";
		}
		
	}
	public String addeoblines() {
		tempLines=new ArrayList<eodLines>();
		Integer tal=3;
		if(null!=Lines_total){
			if(null!=doLine && doLine.equals("del")){
				tal=Integer.valueOf(Lines_total)-1;
			}else{
				tal=Integer.valueOf(Lines_total)+1;
			}
			Lines_total= String.valueOf(tal);
		}else{
			Lines_total= String.valueOf(tal);
		}
		
		if(null!=linestr){
			String[] temLines=null;
			String[] temLinedetail=null;
			temLines=linestr.split(";");
			for(int i=0;i<temLines.length;i++){
				temLinedetail=temLines[i].split("_");
					eodLines e = new eodLines();
					e.setA(temLinedetail[0].replace("|", ""));
					e.setB(temLinedetail[1].replace("|", ""));
					e.setC(temLinedetail[2].replace("|", ""));
					e.setD(temLinedetail[3].replace("|", ""));
					e.setE(temLinedetail[4].replace("|", ""));
					e.setF(temLinedetail[5].replace("|", ""));
					e.setG(temLinedetail[6].replace("|", ""));
					e.setH(temLinedetail[7].replace("|", ""));
					e.setI(temLinedetail[8].replace("|", ""));
					e.setJ(temLinedetail[9].replace("|", ""));
					e.setK(temLinedetail[10].replace("|", ""));
					e.setL(temLinedetail[11].replace("|", ""));
					e.setM(temLinedetail[12].replace("|", ""));
					e.setN(temLinedetail[13].replace("|", ""));
					tempLines.add(e);
				
			}
			if(null!=doLine && doLine.equals("add")){
			eodLines e = new eodLines();
			e.setA("");
			e.setB("");
			e.setC("");
			e.setD("");
			e.setE("");
			e.setF("");
			e.setG("");
			e.setH("");
			e.setI("");
			e.setJ("");
			e.setK("");
			e.setL("");
			e.setM("");
			e.setN("");
			tempLines.add(e);
			}
		}else{
				for(int i=0;i<tal;i++){
					eodLines e = new eodLines();
					e.setA("");
					e.setB("");
					e.setC("");
					e.setD("");
					e.setE("");
					e.setF("");
					e.setG("");
					e.setH("");
					e.setI("");
					e.setJ("");
					e.setK("");
					e.setL("");
					e.setM("");
					e.setN("");
					tempLines.add(e);
				}
		}
		return "addeoblines";
	}
	
	public String addAdvanceeob() {
		SimpleDateFormat sdf =   new SimpleDateFormat("MM/dd/yyyy" ); 
        Date temp_date = null;
		tempLines=new ArrayList<eodLines>();
		Advanceeod tempAdeod=new Advanceeod();
		Advanceeod tempAdeodline=new Advanceeod();
		Calendar calendar = Calendar.getInstance();
		String	scanned_claim_id = "ADV"+String.valueOf(calendar.getTimeInMillis());
		
		errorinfo="";
		//String do_ssn=hidden_ssn;
		//String do_altid=hidden_altid; 
		//linestr,headstr
		try{
				String[] temAdvance=null;
				temAdvance=headstr.split("_");
				tempAdeod.setEmployee_ssn(Long.valueOf("0"+temAdvance[0].replace("|", "")));
				tempAdeod.setMember_id(temAdvance[1].replace("|", ""));
				tempAdeod.setPatient_lname(temAdvance[2].replace("|", ""));
				tempAdeod.setPatient_mname(temAdvance[3].replace("|", ""));
				tempAdeod.setPatient_fname(temAdvance[4].replace("|", ""));
				tempAdeod.setPatient_suffix(temAdvance[5].replace("|", ""));
				try {
					
					temp_date=temAdvance[6].replace("|", "").trim().equals("")?null:sdf.parse(temAdvance[6].replace("|", ""));
				} catch (ParseException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				tempAdeod.setPatient_dob(temp_date);
				tempAdeod.setPatient_gender(temAdvance[7].replace("|", ""));
				tempAdeod.setSubscriber_lname(temAdvance[8].replace("|", ""));
				tempAdeod.setSubscriber_mname(temAdvance[9].replace("|", ""));
				tempAdeod.setSubscriber_fname(temAdvance[10].replace("|", ""));
				tempAdeod.setSubscriber_suffix(temAdvance[11].replace("|", ""));
				tempAdeod.setRelationship_to_employee(temAdvance[12].replace("|", ""));
				tempAdeod.setOther_subscriber_fname(temAdvance[13].replace("|", ""));
				tempAdeod.setOther_subscriber_mname(temAdvance[14].replace("|", ""));
				tempAdeod.setOther_subscriber_lname(temAdvance[15].replace("|", ""));
				tempAdeod.setOther_subscriber_suffix(temAdvance[16].replace("|", ""));
				tempAdeod.setOther_policy_number(temAdvance[17].replace("|", ""));
				try {
					temp_date=temAdvance[18].replace("|", "").trim().equals("")?null:sdf.parse(temAdvance[18].replace("|", ""));
				} catch (ParseException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				tempAdeod.setOther_subscriber_dob(temp_date);
				tempAdeod.setOther_subscriber_gender(temAdvance[19].replace("|", ""));
				tempAdeod.setOther_insurance_plan_name(temAdvance[20].replace("|", ""));
				tempAdeod.setWork_related_indicator(temAdvance[21].replace("|", ""));
				tempAdeod.setAuto_accident_indicator(temAdvance[22].replace("|", ""));
				tempAdeod.setAuto_accident_state(temAdvance[23].replace("|", ""));
				tempAdeod.setAccidental_injury_indicator(temAdvance[24].replace("|", ""));
				try {
					temp_date=temAdvance[25].replace("|", "").trim().equals("")?null:sdf.parse(temAdvance[25].replace("|", ""));
				} catch (ParseException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				tempAdeod.setAccident_date(temp_date);
				tempAdeod.setPlan_number(temAdvance[26].replace("|", ""));
				try {
					temp_date=temAdvance[27].replace("|", "").trim().equals("")?null:sdf.parse(temAdvance[27].replace("|", ""));
				} catch (ParseException e1) {
					// TODO Auto-generated catch block
				}
				tempAdeod.setSubscriber_dob(temp_date);
				tempAdeod.setSubscriber_gender(temAdvance[28].replace("|", ""));
				tempAdeod.setEmployer_name(temAdvance[29].replace("|", ""));
				tempAdeod.setOtherinsurance(temAdvance[30].replace("|", ""));
				if(!temAdvance[31].replace("|", "").trim().equals("")){
					//tempAdeod.setReleaseofinformation((temAdvance[31].replace("|", "")).substring(1));
					tempAdeod.setReleaseofinformation((temAdvance[31].replace("|", "")));
				}
				if(!temAdvance[32].replace("|", "").trim().equals("")){
					//tempAdeod.setAssignment_of_benefits((temAdvance[32].replace("|", "")).substring(1));
					tempAdeod.setAssignment_of_benefits((temAdvance[32].replace("|", "")));
				}
				tempAdeod.setReferring_provider_fname(temAdvance[33].replace("|", ""));
				tempAdeod.setReferring_provider_mname(temAdvance[34].replace("|", ""));
				tempAdeod.setReferring_provider_lname(temAdvance[35].replace("|", ""));
				tempAdeod.setReferring_provider_suffix(temAdvance[36].replace("|", ""));
				tempAdeod.setReferring_group_npi(temAdvance[37].replace("|", ""));
				tempAdeod.setDiagnosis_code_1(temAdvance[39].replace("|", "").replace(".", "").toUpperCase());
				tempAdeod.setDiagnosis_code_2(temAdvance[40].replace("|", "").replace(".", "").toUpperCase());
				tempAdeod.setDiagnosis_code_3(temAdvance[41].replace("|", "").replace(".", "").toUpperCase());
				tempAdeod.setDiagnosis_code_4(temAdvance[42].replace("|", "").replace(".", "").toUpperCase());
				tempAdeod.setDiagnosis_code_5(temAdvance[43].replace("|", "").replace(".", "").toUpperCase());
				tempAdeod.setDiagnosis_code_6(temAdvance[44].replace("|", "").replace(".", "").toUpperCase());
				tempAdeod.setDiagnosis_code_7(temAdvance[45].replace("|", "").replace(".", "").toUpperCase());
				tempAdeod.setDiagnosis_code_8(temAdvance[46].replace("|", "").replace(".", "").toUpperCase());
				tempAdeod.setDiagnosis_code_9(temAdvance[47].replace("|", "").replace(".", "").toUpperCase());
				tempAdeod.setDiagnosis_code_10(temAdvance[48].replace("|", "").replace(".", "").toUpperCase());
				tempAdeod.setDiagnosis_code_11(temAdvance[49].replace("|", "").replace(".", "").toUpperCase());
				tempAdeod.setDiagnosis_code_12(temAdvance[50].replace("|", "").replace(".", "").toUpperCase());
				tempAdeod.setPrior_authorization_number(temAdvance[51].replace("|", ""));
				tempAdeod.setBilling_taxid(temAdvance[52].replace("|", ""));
				strtaxid=temAdvance[52].replace("|", "");
				tempAdeod.setPatient_account_number(temAdvance[53].replace("|", ""));
				tempAdeod.setMedicare_assignment(temAdvance[54].replace("|", ""));
				tempAdeod.setTotal_charge_amount(Float.valueOf("0"+temAdvance[55].replace("|", "").replace(",", "")));
				tempAdeod.setTotal_paid_amount(Float.valueOf("0"+temAdvance[56].replace("|", "")));
				tempAdeod.setRendering_provider_fname(temAdvance[57].replace("|", ""));
				tempAdeod.setRendering_provider_mname(temAdvance[58].replace("|", ""));
				tempAdeod.setRendering_provider_lname(temAdvance[59].replace("|", ""));
				tempAdeod.setRendering_provider_suffix(temAdvance[60].replace("|", ""));
				tempAdeod.setService_facility_name(temAdvance[61].replace("|", ""));
				tempAdeod.setService_facility_address1(temAdvance[62].replace("|", ""));
				tempAdeod.setService_facility_address2(temAdvance[63].replace("|", ""));
				tempAdeod.setService_facility_city(temAdvance[64].replace("|", ""));
				tempAdeod.setService_facility_st(temAdvance[65].replace("|", ""));
				tempAdeod.setService_facility_zip(temAdvance[66].replace("|", ""));
				tempAdeod.setService_facility_group_npi(temAdvance[67].replace("|", ""));
				tempAdeod.setBilling_provider_lname(temAdvance[68].replace("|", ""));
				tempAdeod.setBilling_provider_address1(temAdvance[69].replace("|", ""));
				tempAdeod.setBilling_provider_address2(temAdvance[70].replace("|", ""));
				tempAdeod.setBilling_group_npi(temAdvance[75].replace("|", ""));
				tempAdeod.setBilling_provider_st(temAdvance[72].replace("|", ""));
				tempAdeod.setBilling_provider_zip(temAdvance[73].replace("|", ""));
				tempAdeod.setBilling_contact_number(temAdvance[74].replace("|", ""));
				//tempAdeod.setBilling_group_npi(temAdvance[75].replace("|", ""));
				tempAdeod.setRendering_group_npi(temAdvance[76].replace("|", ""));
				tempAdeod.setBilling_provider_city(temAdvance[77].replace("|", ""));
				tempAdeod.setImported(new Date());
				tempAdeod.setScanned_claim_id(scanned_claim_id);
			    advanceeodService.insertAdvanceeob(tempAdeod);
			    //Integer id = tempAdeod.getFromid();
		} catch(ArrayIndexOutOfBoundsException ex){
				errorinfo="Can't update head!";
		}catch(Exception e){
			errorinfo="Can't update head!";
			e.printStackTrace();
		}
			
		try{
			if(errorinfo.equals("")){
				String[] temLines=null;
				String[] temLinedetail=null;
				temLines=linestr.split(";");
				if(null!=linestr && !linestr.equals("")){
					for(int i=0;i<temLines.length;i++){
						temLinedetail=temLines[i].split("_");
							eodLines e = new eodLines();
							tempAdeodline.setPlace_of_service(Long.valueOf("0"+temLinedetail[2].replace("|", "")));
							tempAdeodline.setCpt_code(temLinedetail[4].replace("|", ""));
							String str="";
							str=temLinedetail[5].replace("|", "");
							str=str+","+temLinedetail[6].replace("|", "");
							str=str+","+temLinedetail[7].replace("|", "");
							str=str+","+temLinedetail[8].replace("|", "");
							tempAdeodline.setCpt_modifier(str);
							tempAdeodline.setDiagcodepointer(temLinedetail[9].replace("|", ""));
							tempAdeodline.setCharge_amount(Float.valueOf("0"+temLinedetail[10].replace("|", "").replace(",", "").replace("$", "")));
							tempAdeodline.setTotalunitsused(Integer.valueOf("0"+temLinedetail[11].replace("|", "")));
							tempAdeodline.setMeasurement_code(temLinedetail[12].replace("|", ""));
							tempAdeodline.setRendering_group_npi(temLinedetail[13].replace("|", ""));
							tempAdeodline.setScanned_claim_id(scanned_claim_id);
							tempAdeodline.setClaimline_id(Long.valueOf(i+1));
							advanceeodService.insertAdvanceeobline(tempAdeodline);
					}
				}
			}
		} catch(ArrayIndexOutOfBoundsException ex){
			errorinfo=errorinfo+"Can't update lines!";	
		}catch(Exception e){
			e.printStackTrace();
			errorinfo=errorinfo+"Can't update lines!";
		}

		
		try {
			Advanceeod Adeodtemp=new Advanceeod();
			Integer id = tempAdeod.getFromid();
			//Adeodtemp.setFromid(id);
			Adeodtemp.setFromid(Integer.valueOf(tempAdeod.getBilling_taxid().trim()));
			Integer mstno = adeodService.selectMstno(grpno);
			Adeodtemp.setMaster_group(grpno);//Adeodtemp.setMaster_group(mstno);
			//Adeodtemp.setEmployee_ssn(Long.valueOf(hidden_ssn));
			Adeodtemp.setEmployee_ssn(tempAdeod.getEmployee_ssn());
			Adeodtemp.setDep_no(depno);
			Adeodtemp.setLogin_area("P");
			Adeodtemp.setStatus(0);
			Adeodtemp.setDeliver_method(Integer.valueOf(methodinfo));
			Adeodtemp.setEmail_address(emailaddressinfo);
			Adeodtemp.setFax_number(faxnumberinfo);
			Adeodtemp.setMailing_address(emailtoaddress);
			Adeodtemp.setToid(143717);
			Adeodtemp.setClaim_form_id(scanned_claim_id);
			//advanceeodService.insertAeobMaintenance(Adeodtemp);
			

			 Advanceeod advanceeod=new Advanceeod();
			temAdvanceeod=advanceeodService.findAdvanceeobid(advanceeod);
			 insertrequestid=Long.valueOf(temAdvanceeod.get(0).getRequest_id());
			Adeodtemp.setRequest_id(insertrequestid);
			advanceeodService.insertAeobMaintenances(Adeodtemp);
			 
		} catch (Exception e) {
			// TODO Auto-generated catch block
		} 
		
		
		
			return "addstatus";
			
			

	
	}

	public String addAdvancesuccess() {

		String do_ssn=hidden_ssn;
		String do_altid=hidden_altid;  
		String do_grpno= grpno.toString();
		String do_empno= empno.toString();
		String do_depno= depno.toString(); 
		String do_errorinfo= errorinfo.toString();
		String do_dob= dob.toString(); 
		String do_strtaxid= strtaxid.toString(); 
		
		
		tempAdeods=new ArrayList<Advanceeod>();
		Advanceeod advanceeod =new Advanceeod();
		advanceeod.setRequest_id(insertrequestid);
		List<Advanceeod> temp=advanceeodService.findAdvanceeobadv(advanceeod);
		//List<Advanceeod> temp=advanceeodService.findAdvanceeobadvpdf(advanceeod);
		for(int i=0;i<temp.size();i++){
			Advanceeod A = new Advanceeod();
			A.setRequest_id(temp.get(i).getRequest_id());
			A.setPatientname(temp.get(i).getPatientname());
			A.setProvidername(temp.get(i).getProvidername());
			A.setFormid(temp.get(i).getFormid());
			A.setDocid(temp.get(i).getDocid());
			A.setDatesubmitted(temp.get(i).getDatesubmitted());
			A.setChargeamount(temp.get(i).getChargeamount());
			A.setFax_number(temp.get(i).getFAX_NUMBER());
			A.setEmail_address(temp.get(i).getEMAIL_ADDRESS());
			if(null!=temp.get(i).getMAILING_ADDRESS()){
			A.setMailing_address(temp.get(i).getMAILING_ADDRESS().replaceAll(";", "<br>"));
			}
			tempAdeods.add(A);
		}
		temptotal=temp.size();
		successform="form";
		return "formsuccess";
	}
	
	
	public String showClaimlist(){
		tempAdeods=new ArrayList<Advanceeod>();
		Advanceeod adv = new Advanceeod();
		Advanceeod advch = new Advanceeod();
		if(null!=actiontempclm){
			advch.setScanned_claim_id(actiontempclm);
			advch.setStatus(Integer.valueOf(status_str));
			advanceeodService.updateAeobclaim(advch);
			
		}
		
		
		System.out.println("******************"+pageno);
		if(null==pageno || pageno.equals("")|| pageno==0){
			pageno=1;
		}
		//beginrow = pageno*20-20;
		//endrow = pageno*20;
		beginrow = pageno*rowsno-rowsno;
		endrow = pageno*rowsno;
		String temp_Scanned_claim_id="";
        SimpleDateFormat df =   new SimpleDateFormat("MM/dd/yyyy" ); 
        String temp_date = null;
        String temp_date2 = null;
		try {
			if(null != fromdate && !"".equals(fromdate)){
				temp_date = String.valueOf(df.format(df.parse(fromdate)));
				fromdate=String.valueOf(df.format(df.parse(fromdate)));
			}else{
				String currentDate = df.format(new Date());
				temp_date = String.valueOf(currentDate);
				fromdate=String.valueOf(df.format(new Date()));
			}
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			if(null != enddate && !"".equals(enddate)){
				temp_date2 = String.valueOf(df.format(df.parse(enddate)));
				enddate=String.valueOf(df.format(df.parse(enddate)));
			}else{
				String currentDate = df.format(new Date());
				temp_date2 = String.valueOf(currentDate);
				enddate=String.valueOf(df.format(new Date()));
			}
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
			//adv.setImported(df.parse(fromdate));
			adv.setIfdate(fromdate);
			//adv.setImported(df.parse(enddate));
			adv.setIedate(enddate);
			adv.setBeginrow(beginrow);
			adv.setEndrow(endrow);
			//adv.setStatus(searchstatus);
			if(null!=hidden_ssn  && hidden_ssn.length()>0){
				adv.setSsn(Long.valueOf(hidden_ssn));
			}
			if(null!=hidden_altid  && hidden_altid.length()>0){
				adv.setAltid(hidden_altid);
			}
			
			adv.setSearchstatus(searchstatus);
				List<Advanceeod> temp=advanceeodService.findAdvanceeobClaim(adv);
				tempAdeods=advanceeodService.findAdvanceeobClaimrow(adv);
				/*for(int i=0;i<temp.size();i++){
					if(!temp_Scanned_claim_id.equals(temp.get(i).getScanned_claim_id())){
						temp_Scanned_claim_id=temp.get(i).getScanned_claim_id();
						Advanceeod A = new Advanceeod();
						//A.setCLMNUM("111111111111"+i);
						A.setScanned_claim_id(temp_Scanned_claim_id);
						A.setEmployee_ssn(temp.get(i).getEmployee_ssn());
						A.setPatient_lname(temp.get(i).getPatient_lname());
						A.setPatient_fname(temp.get(i).getPatient_fname());
						A.setMember_id(temp.get(i).getMember_id());
						A.setImported(temp.get(i).getImported());
						A.setRnum(temp.get(i).getRnum());
						tempAdeods.add(A);
					}
				}*/
		
		//totalpage = temp.size()/20+1;
		if(temp.size()%rowsno>0){
			totalpage = temp.size()/rowsno+1;
		}else{
			totalpage = temp.size()/rowsno;
		}
		//HttpServletRequest request = null;
		javax.servlet.http.HttpServletRequest request = ServletActionContext.getRequest();
		request.getSession().setAttribute("totalpage", totalpage);
		request.getSession().setAttribute("nowpageno", pageno);
		return "showClaimlist";
	} 
	
	public String showpdflist(){
		tempAdeods=new ArrayList<Advanceeod>();
		Advanceeod adv = new Advanceeod();
		Advanceeod advch = new Advanceeod();
		if(null!=actiontempclm){
			advch.setScanned_claim_id(actiontempclm);
			advch.setStatus(Integer.valueOf(status_str));
			advanceeodService.updateAeobclaimpdf(advch);
			
		}
		
		
		System.out.println("******************"+pageno);
		if(null==pageno || pageno.equals("")|| pageno==0){
			pageno=1;
		}
		//beginrow = pageno*20-20;
		//endrow = pageno*20;
		beginrow = pageno*rowsno-rowsno;
		endrow = pageno*rowsno;
		String temp_Scanned_claim_id="";
        SimpleDateFormat df =   new SimpleDateFormat("MM/dd/yyyy" ); 
        String temp_date = null;
        String temp_date2 = null;
		try {
			if(null != fromdate && !"".equals(fromdate)){
				temp_date = String.valueOf(df.format(df.parse(fromdate)));
				fromdate=String.valueOf(df.format(df.parse(fromdate)));
			}else{
				String currentDate = df.format(new Date());
				temp_date = String.valueOf(currentDate);
				fromdate=String.valueOf(df.format(new Date()));
			}
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			if(null != enddate && !"".equals(enddate)){
				temp_date2 = String.valueOf(df.format(df.parse(enddate)));
				enddate=String.valueOf(df.format(df.parse(enddate)));
			}else{
				String currentDate = df.format(new Date());
				temp_date2 = String.valueOf(currentDate);
				enddate=String.valueOf(df.format(new Date()));
			}
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
			//adv.setImported(df.parse(fromdate));
			adv.setIfdate(fromdate);
			//adv.setImported(df.parse(enddate));
			adv.setIedate(enddate);
			adv.setBeginrow(beginrow);
			adv.setEndrow(endrow);
			//adv.setStatus(searchstatus);
			adv.setSearchstatus(searchstatus);
			if(null!=hidden_ssn  && hidden_ssn.length()>0){
				adv.setSsn(Long.valueOf(hidden_ssn));
			}
			if(null!=hidden_altid  && hidden_altid.length()>0){
				adv.setAltid(hidden_altid);
			}
			
				//List<Advanceeod> temp=advanceeodService.findAdvanceeobpdf(adv);
				tempAdeodspdf=advanceeodService.findAdvanceeobpdfrow(adv);
				List<Advanceeod> temptotal=	advanceeodService.findAdvanceeobpdftotal(adv);	
				Integer tempsize=temptotal.get(0).getCounttotal();
		//totalpage = temp.size()/20+1;
		if(tempsize%rowsno>0){
			totalpage = tempsize/rowsno+1;
		}else{
			totalpage = tempsize/rowsno;
		}
		//HttpServletRequest request = null;
		javax.servlet.http.HttpServletRequest request = ServletActionContext.getRequest();
		request.getSession().setAttribute("totalpage", totalpage);
		request.getSession().setAttribute("nowpageno", pageno);
		return "showClaimpdflist";
	} 
	
	public void searchPhyName(){
		List<Adeod> nameList = adeodService.selectPhyName(npi);
		String name = "";
		if(null != nameList && nameList.size() > 0){
			String firstname = nameList.get(0).getFirstname();
			String lastname = nameList.get(0).getLastname();
			String mi = nameList.get(0).getMi();
			String suffix = nameList.get(0).getSuffix();
			name = (firstname==null?"":firstname)+";"+(mi==null?"":mi)+";"+(lastname==null?"":lastname)+";"+(suffix==null?"":suffix);
		}
		ResponseOutTool.outputHtmlResult(name, ServletActionContext
				.getResponse());
		
	}
	
	public void searchProccd(){
		List<Adeod> proccdList = adeodService.selectProccd(proccd);
		String proccd1 = "";
		if(null != proccdList && proccdList.size() > 0){
			proccd1 = proccdList.get(0).getProccd();
		}
		ResponseOutTool.outputHtmlResult(proccd1, ServletActionContext
				.getResponse());
	}
	
	public void searchModcd(){
		int modcdcnt = modcd.split(",").length;
		String modcd1 = "";
		if(modcdcnt > 0){
			for(int i = 0;i < modcdcnt;i++){
				List<Adeod> modcdList = adeodService.selectModcd(modcd.split(",")[i]);
				if(null != modcdList && modcdList.size() > 0){
						modcd1 = "all";
				}else{
					modcd1 = "";
					break;
				}
			}
		}
		/*
		List<Adeod> modcdList = adeodService.selectModcd(modcd);
		if(null != modcdList && modcdList.size() > 0){
			if(modcdList.size() == modcdcnt){
				modcd1 = "All";
			}
		}
		*/
		ResponseOutTool.outputHtmlResult(modcd1, ServletActionContext
				.getResponse());
	}
	
	public void searchCode(){
		int codecnt = code.split(",").length;
		String code1 = "";
		String codevalue = "";
		String codeiden = "";
		if(codecnt > 0){
			for(int i = 0;i < codecnt;i++){
				codevalue = code.split(",")[i].substring(0,code.split(",")[i].indexOf(":"));
				codeiden = code.split(",")[i].substring(code.split(",")[i].indexOf(":")+1);
				List<Adeod> codeList = adeodService.selectCode(codevalue);
				if(null != codeList && codeList.size() > 0){
					code1 = "all";
				}else{
					code1 = codeiden;
					break;
				}
				codevalue = "";
				codeiden = "";
			}
		}
		ResponseOutTool.outputHtmlResult(code1, ServletActionContext
				.getResponse());
	}
	public void searchPos(){
		String pos1 = "";
		 try{
			 Integer descno = Integer.valueOf(pos.trim());
		 }catch (Exception e) {
			 pos1 = "NaN";
		 }
		 if(!pos1.equals("NaN")){
			 List<Adeod> posList = adeodService.selectPOS(Integer.valueOf(pos.trim()));
			 if(null != posList && posList.size() > 0){
					pos1 = posList.get(0).getDescno().toString();
			  }
		 }	
		ResponseOutTool.outputHtmlResult(pos1, ServletActionContext
				.getResponse());
	}
	
	public void searchScannedClaimId(){
		Advanceeod advanceeod =new Advanceeod();
		advanceeod.setBilling_taxid(TaxID);
		advanceeod.setFromid((fromid != null && !fromid.trim().equals(""))?Integer.valueOf(fromid):null);
		List<Advanceeod> temp=advanceeodService.findAdvanceeobClaim(advanceeod);
		String claimid = "";
		if(null !=temp && temp.size() > 0){
			claimid = temp.get(0).getScanned_claim_id();
		}
		ResponseOutTool.outputHtmlResult(claimid, ServletActionContext
				.getResponse());
	}
	
	public void email(){
		String Subject=subject;
		String Content=content;
		String Addrto="";
		String[] temLines=null;
		temLines=addrto.split(";");
		
		
				
		
			try {
				for(int i=0;i<temLines.length;i++){ 
					Addrto=temLines[i]+";";
					//email
					String ServerHost = MediMailUtil.getServerHost();
					String ServerPort = MediMailUtil.getServerPort();
					String Username = MediMailUtil.getUsername();
					String Validate = MediMailUtil.getValidate();
					String Password = MediMailUtil.getPassword();
					String FromAddress = "achmail@achonline.com";   //--test
					//String FromAddress = "vendorsupport@achonline.com";
					//************************************************************************
					String ToAddress =Addrto;
					///----------String ToAddress ="alicec@aurorasoft.com.cn;andy@achonline.com;";
					//************************************************************************
					//String ToAddress ="alicec@aurorasoft.com.cn";
					//String bccAddress ="alicec@aurorasoft.com.cn";
					//String Subject = "Cigna Precert "+datetime;
					//String Content = "Hava a great day!";
					MailInfo mailInfo = new MailInfo();
					mailInfo.setMailServerHost(ServerHost);
					mailInfo.setMailServerPort(ServerPort);
					mailInfo.setUserName(Username);
					mailInfo.setValidate(Boolean.valueOf(Validate));
					mailInfo.setPassword(Password);
					mailInfo.setFromAddress(FromAddress);
					mailInfo.setToAddress(ToAddress);
					mailInfo.setContent(Content);
					//mailInfo.setBccAddress(bccAddress);
					mailInfo.setSubject(Subject);
					
					//String[] strs = new String[]{fileName};
					
					//if(bFlag){
						//mailInfo.setAttachFileNames(strs);
					//}
					
					MailSenderAttach.sendHtmlMail(mailInfo);
				}
				System.out.println("import email is ok");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
	}
	
	
	public List<eodLines> getTempLines() {
		return tempLines;
	}
	public void setTempLines(List<eodLines> tempLines) {
		this.tempLines = tempLines;
	}
	public String getHidden_ssn() {
		return hidden_ssn;
	}
	public void setHidden_ssn(String hidden_ssn) {
		this.hidden_ssn = hidden_ssn;
	}
	public String getHidden_altid() {
		return hidden_altid;
	}
	public void setHidden_altid(String hidden_altid) {
		this.hidden_altid = hidden_altid;
	}
	public String getLines_total() {
		return Lines_total;
	}
	public void setLines_total(String lines_total) {
		Lines_total = lines_total;
	}
	public String getDoLine() {
		return doLine;
	}
	public void setDoLine(String doLine) {
		this.doLine = doLine;
	}
	public String getICN() {
		return ICN;
	}
	public void setICN(String icn) {
		ICN = icn;
	}
	public List<Advanceeod> getTempAdeods() {
		return tempAdeods;
	}
	public void setTempAdeods(List<Advanceeod> tempAdeods) {
		this.tempAdeods = tempAdeods;
	}
	public String getTempCLMNUM() {
		return tempCLMNUM;
	}
	public void setTempCLMNUM(String tempCLMNUM) {
		this.tempCLMNUM = tempCLMNUM;
	}
	public String getLinestr() {
		return linestr;
	}
	public void setLinestr(String linestr) {
		this.linestr = linestr;
	}
	public String getHeadstr() {
		return headstr;
	}
	public void setHeadstr(String headstr) {
		this.headstr = headstr;
	}
	public String getErrorinfo() {
		return errorinfo;
	}
	public void setErrorinfo(String errorinfo) {
		this.errorinfo = errorinfo;
	}
	
	public Long getSsn() {
		return ssn;
	}
	public void setSsn(Long ssn) {
		this.ssn = ssn;
	}
	public String getTaxID() {
		return TaxID;
	}
	public void setTaxID(String taxID) {
		TaxID = taxID;
	}
	public String getSdate() {
		return sdate;
	}
	public void setSdate(String sdate) {
		this.sdate = sdate;
	}
	public String getMemberID() {
		return memberID;
	}
	public void setMemberID(String memberID) {
		this.memberID = memberID;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public List<Advanceeod> getEobdetailList() {
		return eobdetailList;
	}
	public void setEobdetailList(List<Advanceeod> eobdetailList) {
		this.eobdetailList = eobdetailList;
	}
	public Advanceeod getEobdetailobj() {
		return eobdetailobj;
	}
	public void setEobdetailobj(Advanceeod eobdetailobj) {
		this.eobdetailobj = eobdetailobj;
	}
	public Integer getGrpno() {
		return grpno;
	}
	public void setGrpno(Integer grpno) {
		this.grpno = grpno;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getMi() {
		return mi;
	}
	public void setMi(String mi) {
		this.mi = mi;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getSuffix() {
		return suffix;
	}
	public void setSuffix(String suffix) {
		this.suffix = suffix;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getSpouse() {
		return spouse;
	}
	public void setSpouse(String spouse) {
		this.spouse = spouse;
	}
	public String getChild() {
		return child;
	}
	public void setChild(String child) {
		this.child = child;
	}
	public String getOther() {
		return other;
	}
	public void setOther(String other) {
		this.other = other;
	}
	public Adeod getInsuredobj() {
		return insuredobj;
	}
	public void setInsuredobj(Adeod insuredobj) {
		this.insuredobj = insuredobj;
	}
	public String getSubtype() {
		return subtype;
	}
	public void setSubtype(String subtype) {
		this.subtype = subtype;

	}
	public String getFromdate() {
		return fromdate;
	}
	public void setFromdate(String fromdate) {
		this.fromdate = fromdate;
	}
	public String getEnddate() {
		return enddate;
	}
	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}
	public String getNpi() {
		return npi;
	}
	public void setNpi(String npi) {
		this.npi = npi;
	}
	public String getProccd() {
		return proccd;
	}
	public void setProccd(String proccd) {
		this.proccd = proccd;
	}
	public String getModcd() {
		return modcd;
	}
	public void setModcd(String modcd) {
		this.modcd = modcd;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public Integer getTotalpage() {
		return totalpage;
	}
	public void setTotalpage(Integer totalpage) {
		this.totalpage = totalpage;
	}
	public Integer getPageno() {
		return pageno;
	}
	public void setPageno(Integer pageno) {
		this.pageno = pageno;
	}
	public String getPos() {
		return pos;
	}
	public void setPos(String pos) {
		this.pos = pos;
	}
	public Integer getDepno() {
		return depno;
	}
	public void setDepno(Integer depno) {
		this.depno = depno;
	}
	public Integer getEmpno() {
		return empno;
	}
	public void setEmpno(Integer empno) {
		this.empno = empno;
	}
	public String getFromid() {
		return fromid;
	}
	public void setFromid(String fromid) {
		this.fromid = fromid;
	} 	
	
	public String getEmailaddressinfo() {
		return emailaddressinfo;
	}
	public void setEmailaddressinfo(String emailaddressinfo) {
		this.emailaddressinfo = emailaddressinfo;
	}
	public String getMethodinfo() {
		return methodinfo;
	}
	public void setMethodinfo(String methodinfo) {
		this.methodinfo = methodinfo;
	}
	public String getFaxnumberinfo() {
		return faxnumberinfo;
	}
	public void setFaxnumberinfo(String faxnumberinfo) {
		this.faxnumberinfo = faxnumberinfo;
	}
	public Integer getRowsno() {
		return rowsno;
	}
	public void setRowsno(Integer rowsno) {
		this.rowsno = rowsno;
	}
	public String getSearchstatus() {
		return searchstatus;
	}
	public void setSearchstatus(String searchstatus) {
		this.searchstatus = searchstatus;
	}
	public String getActiontempclm() {
		return actiontempclm;
	}
	public void setActiontempclm(String actiontempclm) {
		this.actiontempclm = actiontempclm;
	}
	public String getStatus_str() {
		return status_str;
	}
	public void setStatus_str(String status_str) {
		this.status_str = status_str;
	}
	public List<Advanceeod> getTempAdeodspdf() {
		return tempAdeodspdf;
	}
	public void setTempAdeodspdf(List<Advanceeod> tempAdeodspdf) {
		this.tempAdeodspdf = tempAdeodspdf;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getAddrto() {
		return addrto;
	}
	public void setAddrto(String addrto) {
		this.addrto = addrto;
	}
	public String getEmailtoaddress() {
		return emailtoaddress;
	}
	public void setEmailtoaddress(String emailtoaddress) {
		this.emailtoaddress = emailtoaddress;
	}
	public Long getInsertrequestid() {
		return insertrequestid;
	}
	public void setInsertrequestid(Long insertrequestid) {
		this.insertrequestid = insertrequestid;
	}
	public Integer getTemptotal() {
		return temptotal;
	}
	public void setTemptotal(Integer temptotal) {
		this.temptotal = temptotal;
	}
	public String getSuccessform() {
		return successform;
	}
	public void setSuccessform(String successform) {
		this.successform = successform;
	}
	public String getDotype() {
		return dotype;
	}
	public void setDotype(String dotype) {
		this.dotype = dotype;
	}
	public String getDelrequestid() {
		return delrequestid;
	}
	public void setDelrequestid(String delrequestid) {
		this.delrequestid = delrequestid;
	}
	public String getDobdep() {
		return dobdep;
	}
	public void setDobdep(String dobdep) {
		this.dobdep = dobdep;
	}
	public String getRequestID() {
		return RequestID;
	}
	public void setRequestID(String requestID) {
		RequestID = requestID;
	}
	public String getStrtaxid() {
		return strtaxid;
	}
	public void setStrtaxid(String strtaxid) {
		this.strtaxid = strtaxid;
	}
	public String getSearchall() {
		return searchall;
	}
	public void setSearchall(String searchall) {
		this.searchall = searchall;
	}
	
	
}
