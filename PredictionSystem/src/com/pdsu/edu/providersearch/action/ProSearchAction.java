package com.pdsu.edu.providersearch.action;

import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.opensymphony.xwork2.ActionSupport;
import com.pdsu.edu.domain.Adppo;
import com.pdsu.edu.domain.Loginuser;
import com.pdsu.edu.service.AdppoService;
import com.pdsu.edu.service.LoginService;
import com.pdsu.edu.syscom.util.SessionUser;

@Controller
@Scope("prototype")
public class ProSearchAction extends ActionSupport {

	@Autowired 
	private AdppoService adppoService;
	
	private List<Adppo> adppoobj;
	private List<Adppo> adppospobj,adppospobj2;
	private List<Adppo> adproccd; 
	private List<Adppo> adppoLatcionobj,adppoLatcionFHobj;
	private List<Adppo> adprocategory; 
	private List<Adppo> estcostclmdetl,estchecklUCR; 
	private Integer ppono;
	private String Specids;
	private String Specnames;
	private String pageset;
	private Integer sizetotal=0;
	private String ppo,ppoprovname;
	private String taxid,NPI;
	private String Zip,Zipcode;
	private String Radius;
	private String st;
	private String providerType;
	private String filtertype;
	private String Provname; 
	private String provst;
	private String procedurecode;
	private String poscode,serviceamt,latlon;
	private String provcode;
	private List<Loginuser> loginUserList;
	@Autowired 
	private LoginService loginService;
	
	private String mstip,subip,inrate;
	
	private String cartProvname,cartspecialty,cartspecialtyid,cartaddress1,cartaddress2,cartcity,cartSt,cartzip,cartphone,carteffdate,carttermdate;	
	private String dotype,cartid;
	private String grpno,empno,depno,pricegrpno,priceempno,pricedepno,proccd,proccdesc,cpt;
	
	public String showppolist() {
		SessionUser sessionUser1 = (SessionUser) ServletActionContext.getRequest().getSession().getAttribute("sessionUser");
		Adppo adppo=new Adppo();
		adppoobj=new ArrayList<Adppo>();
		//List<Adppo> AdppoList=adppoService.findppoAll();
		if(null!=sessionUser1){
			if(null!=sessionUser1.getLogintype()){
			}else{
				Loginuser loginuser=new Loginuser();
				loginuser.setLogin(sessionUser1.getLogin());
				loginuser.setPassword(sessionUser1.getPassword());
				loginUserList=loginService.findLoginuser(loginuser);
				if(loginUserList.size()>0){
					sessionUser1.setSsn(String.valueOf(loginUserList.get(0).getSsn()));
					sessionUser1.setGr_number(String.valueOf(loginUserList.get(0).getGr_number()));
					sessionUser1.setSubgroup(String.valueOf(loginUserList.get(0).getSubgroup()));
					sessionUser1.setLogintype(String.valueOf(loginUserList.get(0).getLogintype()));
					sessionUser1.setPpo(String.valueOf(loginUserList.get(0).getPpo()));
					sessionUser1.setCorporationid(String.valueOf(loginUserList.get(0).getCorporationid()));
					if(null!=grpno && null!=empno && null!=empno){
						sessionUser1.setGrpno(grpno);
						sessionUser1.setEmpno(empno);
						sessionUser1.setDepno(depno);
					}
					ServletActionContext.getRequest().getSession()
					.setAttribute("sessionUser", sessionUser1);
				}
			}
			
			adppo.setGrnumber(Integer.valueOf(sessionUser1.getGr_number()));
			adppo.setSsn(Integer.valueOf(sessionUser1.getSsn()));
			String logintype=sessionUser1.getLogintype();
			
			//-----get newfeaturesind-----------------------------------------------------
			Integer  newfeaturesind=0;
			adppo.setCorporationid(sessionUser1.getCorporationid());
			List<Adppo> AdppoList0=adppoService.selCorporationbyid(adppo);
			if(AdppoList0 != null && AdppoList0.size() > 0){
				newfeaturesind=AdppoList0.get(0).getNewfeaturesind();
				if(newfeaturesind==0 && !"D".equals(logintype)){
					newfeaturesind=0;
				}else{
					newfeaturesind=1;
				}
			}
			//----------------------------------------------------------
		
			if(null!=logintype){
				if("M".equals(logintype)){
					List<Adppo> AdppoList=adppoService.selPpobymember(adppo);
					//---1.1----------------------------------------
					if(AdppoList != null && AdppoList.size() > 0){
						for(int i=0;i<AdppoList.size();i++){
						Adppo A=new Adppo();
						A.setPpo(AdppoList.get(i).getPpo());
						//A.setPpo_name(AdppoList.get(i).getPpo_name());
						A.setPpo_name(AdppoList.get(i).getPpo_name()+"&nbsp;("+AdppoList.get(i).getSpecific_plan_type()+")");
						A.setSpecific_plan_type(AdppoList.get(i).getSpecific_plan_type());
						A.setCoverageTypeID(AdppoList.get(i).getCoverageTypeID());
						A.setNationalPPO(AdppoList.get(i).getNationalPPO());
						A.setPPO_WebUrl(AdppoList.get(i).getPPO_WebUrl());
						A.setSeq(AdppoList.get(i).getSeq());
						
						if(null!=grpno && null!=empno && null!=empno){
							A.setGrpno(grpno);
							A.setEmpno(empno);
							A.setDepno(depno);
						}
						
						adppoobj.add(A);
						}
					}
					//-------------------------------------------
					
				}else if("S".equals(logintype)){
					Integer PPOnum=0;
					Integer NationalPPOnum=0;
					Integer DentalPPOnum=0;
					String PPoname="";
					String NationalPPoname="";
					
					adppo.setGrnumber(Integer.valueOf(sessionUser1.getSubgroup()));
					List<Adppo> AdppoList1=adppoService.selSubgroupinfo(adppo);
					if(null!=AdppoList1&& AdppoList1.size() > 0){
						PPOnum=AdppoList1.get(0).getPpo();
						NationalPPOnum=Integer.valueOf(AdppoList1.get(0).getNationalPPO());
					}
					
					List<Adppo> AdppoList2=adppoService.selPpobymember(adppo);
					if(null!=AdppoList2&& AdppoList2.size() > 0){
						for(int i=0;i<AdppoList2.size();i++){
							if(null!=AdppoList2.get(i).getPpo() && PPOnum!=AdppoList2.get(i).getPpo()&& NationalPPOnum!=AdppoList2.get(i).getPpo() && PPOnum!=0 && NationalPPOnum!=0){
								DentalPPOnum=AdppoList2.get(i).getPpo();
							}
						}
					}
					
					adppo.setPpono(PPOnum);
					List<Adppo> AdppoList3=adppoService.selPpobyid(adppo);
					if(null!=AdppoList3&& AdppoList3.size() > 0){
						PPoname=AdppoList3.get(0).getPpo_name();
					}

					adppo.setPpono(NationalPPOnum);
					List<Adppo> AdppoList4=adppoService.selPpobyid(adppo);
					if(null!=AdppoList4&& AdppoList4.size() > 0){
						NationalPPoname=AdppoList4.get(0).getPpo_name();
					}
					
					List<Adppo> AdppoList=adppoService.findppoAll();
					//---1.2----------------------------------------
					if(AdppoList != null && AdppoList.size() > 0){
						for(int i=0;i<AdppoList.size();i++){
						Adppo A=new Adppo();
						Integer tempPPO=AdppoList.get(i).getPpo();
						String tempPPOname=AdppoList.get(i).getPpo_name();
						if(tempPPO==PPOnum){
							tempPPOname=tempPPOname + "&nbsp;[MEMBER'S NETWORK]";
						}else if(tempPPO == NationalPPOnum){
							tempPPOname=tempPPOname + "&nbsp;[SECONDARY NETWORK]";
						}else{
						}
						A.setPpo(tempPPO);
						A.setPpo_name(tempPPOname);
						A.setSpecific_plan_type("");
						A.setCoverageTypeID("");
						A.setNationalPPO("");
						A.setPPO_WebUrl("");
						A.setSeq("");
						
						if(null!=grpno && null!=empno && null!=empno){
							A.setGrpno(grpno);
							A.setEmpno(empno);
							A.setDepno(depno);
						}
						
						adppoobj.add(A);
						}
					}
					//-------------------------------------------
				}else if("A".equals(logintype)){
					List<Adppo> AdppoList=adppoService.findppoAll();
					//---1.0----------------------------------------
					if(AdppoList != null && AdppoList.size() > 0){
						for(int i=0;i<AdppoList.size();i++){
						Adppo A=new Adppo();
						A.setPpo(AdppoList.get(i).getPpo());
						A.setPpo_name(AdppoList.get(i).getPpo_name());
						A.setSpecific_plan_type("");
						A.setCoverageTypeID("");
						A.setNationalPPO("");
						A.setPPO_WebUrl("");
						A.setSeq("");
						
						if(null!=grpno && null!=empno && null!=empno){
							A.setGrpno(grpno);
							A.setEmpno(empno);
							A.setDepno(depno);
						}
						
						adppoobj.add(A);
						}
					}
					//-------------------------------------------
					
				}else if("O".equals(logintype)){
					List<Adppo> AdppoList=adppoService.findppoAll();
					//---1.0----------------------------------------
					if(AdppoList != null && AdppoList.size() > 0){
						for(int i=0;i<AdppoList.size();i++){
						Adppo A=new Adppo();
						A.setPpo(AdppoList.get(i).getPpo());
						A.setPpo_name(AdppoList.get(i).getPpo_name());
						A.setSpecific_plan_type("");
						A.setCoverageTypeID("");
						A.setNationalPPO("");
						A.setPPO_WebUrl("");
						A.setSeq("");
						
						if(null!=grpno && null!=empno && null!=empno){
							A.setGrpno(grpno);
							A.setEmpno(empno);
							A.setDepno(depno);
						}
						
						adppoobj.add(A);
						}
					}
					//-------------------------------------------
					
				}else if("B".equals(logintype)){
					List<Adppo> AdppoList=adppoService.findppoAll();
					//---1.0----------------------------------------
					if(AdppoList != null && AdppoList.size() > 0){
						for(int i=0;i<AdppoList.size();i++){
						Adppo A=new Adppo();
						A.setPpo(AdppoList.get(i).getPpo());
						A.setPpo_name(AdppoList.get(i).getPpo_name());
						A.setSpecific_plan_type("");
						A.setCoverageTypeID("");
						A.setNationalPPO("");
						A.setPPO_WebUrl("");
						A.setSeq("");
						
						if(null!=grpno && null!=empno && null!=empno){
							A.setGrpno(grpno);
							A.setEmpno(empno);
							A.setDepno(depno);
						}
						
						adppoobj.add(A);
						}
					}
					//-------------------------------------------
					
				}else if("C".equals(logintype)){
					adppo.setMastgroup(Integer.valueOf(sessionUser1.getGr_number()));
					adppo.setNewfeaturesind(newfeaturesind);
					List<Adppo> AdppoList=adppoService.selPpobymastergroup(adppo);
					//---1.3----------------------------------------
					if(AdppoList != null && AdppoList.size() > 0){
						for(int i=0;i<AdppoList.size();i++){
						Adppo A=new Adppo();
						A.setPpo(AdppoList.get(i).getPpo());
						A.setPpo_name(AdppoList.get(i).getPpo_name()+"&nbsp;("+AdppoList.get(i).getSpecific_plan_type()+")");
						A.setSpecific_plan_type(AdppoList.get(i).getSpecific_plan_type());
						A.setCoverageTypeID("");
						A.setNationalPPO("");
						A.setPPO_WebUrl("");
						A.setSeq("");
						
						if(null!=grpno && null!=empno && null!=empno){
							A.setGrpno(grpno);
							A.setEmpno(empno);
							A.setDepno(depno);
						}
						
						adppoobj.add(A);
						}
					}
					//-------------------------------------------
					
				}
				//N V
			}
		}else{
			List<Adppo> AdppoList=adppoService.findppoAll();
			//---1.0----------------------------------------
			if(AdppoList != null && AdppoList.size() > 0){
				for(int i=0;i<AdppoList.size();i++){
				Adppo A=new Adppo();
				A.setPpo(AdppoList.get(i).getPpo());
				A.setPpo_name(AdppoList.get(i).getPpo_name());
				A.setSpecific_plan_type("");
				A.setCoverageTypeID("");
				A.setNationalPPO("");
				A.setPPO_WebUrl("");
				A.setSeq("");
				
				if(null!=grpno && null!=empno && null!=empno){
					A.setGrpno(grpno);
					A.setEmpno(empno);
					A.setDepno(depno);
				}
				
				adppoobj.add(A);
				}
			}
			//-------------------------------------------
		}
		
		
		
		return "ppolist";
	}
	
	public static String format2(double value) {
		 
		 DecimalFormat df = new DecimalFormat("0.00");
		 df.setRoundingMode(RoundingMode.HALF_UP);
		 return df.format(value);
		}
	

	
	
	public String prosearesault() {
		
		
		String hidden_ssn="";
		String hidden_dob="";
		String hidden_dotype="";

		SessionUser sessionUser=new SessionUser();
	    sessionUser = (SessionUser) ServletActionContext
		.getRequest().getSession().getAttribute("sessionUser");
		if(null!=sessionUser){
			hidden_ssn=sessionUser.getSsn();
			hidden_dob=sessionUser.getDob();
			hidden_dotype=sessionUser.getLogintype();
		}else{
			
		}
		
		
		String dosearch="F";
		Float radius=Float.valueOf(0);
		Float Ox1=Float.valueOf(0);
		Float Oy1=Float.valueOf(0);
		Float Ox2=Float.valueOf(0);
		Float Oy2=Float.valueOf(0);
		Float Ix1=Float.valueOf(0);
		Float Ix2=Float.valueOf(0);
		Float Iy1=Float.valueOf(0);
		Float Iy2=Float.valueOf(0);
		Float lat=Float.valueOf(0);
		Float lon=Float.valueOf(0);
		if(null!=Radius){
		radius=Float.valueOf(Radius)/111;
		}
		
		Adppo adlocation=new Adppo();
		if(null!=Zip){
				Adppo adppo=new Adppo();
				adppo.setZip(Integer.valueOf(Zip));
				List<Adppo> AdppoLatlon=adppoService.findLatlon(adppo);
				
				
				if(AdppoLatlon != null && AdppoLatlon.size() > 0){
					lat=AdppoLatlon.get(0).getLat();
					lon=AdppoLatlon.get(0).getLon();
					Ox1=lat-radius;
					Oy1=lon-radius;
					Ox2=lat+radius;
					Oy2=lon+radius;
					Ix1=lat;
					Ix2=lat;
					Iy1=lon;
					Iy2=lon;
		
					adlocation.setOx1(String.valueOf(Ox1));
					adlocation.setOy1(String.valueOf(Oy1));
					adlocation.setOx2(String.valueOf(Ox2));
					adlocation.setOy2(String.valueOf(Oy2));
					adlocation.setIx1(String.valueOf(Ix1));
					adlocation.setIx2(String.valueOf(Ix2));
					adlocation.setIy1(String.valueOf(Iy1));
					adlocation.setIy2(String.valueOf(Iy2));
					adlocation.setLat(lat);
					adlocation.setLon(lon);
					dosearch="T";
				}
		}
		
		if(null!=pageset){
			String pagelow= String.valueOf((Integer.valueOf(pageset)-1)*50+1);
			String pageup= String.valueOf(Integer.valueOf(pageset)*50);
			adlocation.setPagelow(pagelow);
			adlocation.setPageup(pageup);
		}else{
			adlocation.setPagelow("1");
			adlocation.setPageup("50");
		}
		
		
		if(null!=providerType){
			adlocation.setProvtype(providerType);
		}
		 

		if(null!=Provname){
			adlocation.setProvname(Provname.toUpperCase());
		}

		if(null!=taxid){
			adlocation.setTaxid(taxid);
			dosearch="T";
		}
		
		if(null!=provst){
			adlocation.setProvst(provst);
			dosearch="T";
		}

		if(null!=Specids){
		    //adlocation.setSpec(Specnames.replaceAll(",","','"));
			adlocation.setSpec(Specids);
		}

		if(null!=filtertype){
			adlocation.setSeq(filtertype);
		}
		
		String doppo="N";
		if(null!=ppo && !"0".equals(ppo)){
			if("102".equals(ppo))doppo="T";//First health
			if("38".equals(ppo))doppo="T";//First health
			
			if("16".equals(ppo))doppo="T";//MPI
			if("116".equals(ppo)){doppo="T"; ppo="16";}//MPI
			if("117".equals(ppo))doppo="T";//MPI
			if("40".equals(ppo))doppo="T";//PHCS
			if("140".equals(ppo))doppo="T"; //PHCS
			
			if("T".equals(doppo) ){
				adlocation.setPpono(Integer.valueOf(ppo));
			} 
		}
		 	if(dosearch=="T"){
		 				/*
		 			 	List<Adppo> AdppoLatcion=adppoService.selProbylocationtaxid(adlocation);
						if(AdppoLatcion != null && AdppoLatcion.size() > 0){
							adppoLatcionobj=new ArrayList<Adppo>();
							for(int i=0;i<AdppoLatcion.size();i++){
								Adppo A=new Adppo();
								A.setName(AdppoLatcion.get(i).getName());
								A.setAddress1(AdppoLatcion.get(i).getAddress1());
								A.setAddress2(AdppoLatcion.get(i).getAddress2());
								A.setCity(AdppoLatcion.get(i).getCity());
								A.setSt(AdppoLatcion.get(i).getSt());
								A.setZip(AdppoLatcion.get(i).getZip());
								A.setSpecialty(AdppoLatcion.get(i).getSpecialty());
								String tempphone=AdppoLatcion.get(i).getPhone();
								String phone=tempphone.substring(0,3)+"-"+tempphone.substring(3,6)+"-"+tempphone.substring(6);
								A.setPhone(phone);
								A.setLname(AdppoLatcion.get(i).getLname());
								A.setFname(AdppoLatcion.get(i).getFname());
								A.setCartid(AdppoLatcion.get(i).getCartid());
							 	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
								try {
									A.setEffdate(dateFormat.format(dateFormat.parse(AdppoLatcion.get(i).getEffdate())));
								} catch (ParseException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								}
								try {
									A.setTermdate(dateFormat.format(dateFormat.parse(AdppoLatcion.get(i).getTermdate())));
								} catch (ParseException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								}
								adppoLatcionobj.add(A);
								if(i>100){
									i=AdppoLatcion.size();
								}
							}
						}
						 */
				//--------------------------------------------------------------------------------------------
		 				
						String tempname="";
						String temppos="";
						String tempamt="";
						String temppos1="";
						String tempamt1="";
						String tempaddress1="";
						String tempspecialty="";
						String realpath=ServletActionContext.getServletContext().getRealPath("/logoimg");
						//filename=realpath+"/"+filename;
						
						
						if(null!=procedurecode){
							//procedurecode="10021";
							adlocation.setProvcode(procedurecode);
						}
						
						String doMPI="N";
						if("16".equals(ppo) || "116".equals(ppo) || "117".equals(ppo) || "40".equals(ppo) || "140".equals(ppo)){
							if("116".equals(ppo) )ppo="16";
							doMPI="T";
						}
						
						String doFH="N";
						String doFHS="N";
						String doFHF="N";
						String doFHFS="N";
						
						if("N".equals(doMPI)){
							if("P"==providerType){
								doFH="T";
								if("38".equals(ppo) || "102".equals(ppo))doFHS="T";
							}else if("F"==providerType){
								doFHF="T";
								if("38".equals(ppo) || "102".equals(ppo))doFHFS="T";
							}else{
								doFH="T";
								if("38".equals(ppo) || "102".equals(ppo))doFHS="T";
								doFHF="T";
								if("38".equals(ppo) || "102".equals(ppo))doFHFS="T";
							}
						}

						
						
						

						adppoLatcionFHobj=new ArrayList<Adppo>();
						if("T".equals(doFH)){
								 
								
								List<Adppo> AdppoLatcionFH=adppoService.selProbylocationtaxidFH(adlocation);
								//List<Adppo> AdppoLatcionFHS=adppoService.selProbylocationtaxidFHS(adlocation);
								//List<Adppo> AdppoLatcionFHF=adppoService.selProbylocationtaxidFHF(adlocation);
								//List<Adppo> AdppoLatcionFHFS=adppoService.selProbylocationtaxidFHFS(adlocation);
								if(AdppoLatcionFH != null && AdppoLatcionFH.size() > 0){
									Adppo AFH=new Adppo();
									for(int i=0;i<AdppoLatcionFH.size();i++){ 
														if(!tempname.equals(AdppoLatcionFH.get(i).getName()) || !tempaddress1.equals(AdppoLatcionFH.get(i).getAddress1()) || !tempspecialty.equals(AdppoLatcionFH.get(i).getSpecialty())){
															if(null != tempname && !"".equals(tempname)){
																temppos1="";
																tempamt1="";
																AFH.setPoscode("<tr><td>Poscode:</td>"+temppos+"</tr>");
																AFH.setServiceamt("<tr><td>Serviceamt:</td>"+tempamt+"</tr>");
																adppoLatcionFHobj.add(AFH);
																AFH=new Adppo();
															}
															temppos="<td>"+AdppoLatcionFH.get(i).getPoscode()+"</td>";
															tempamt="<td>&#36;"+format2(Double.valueOf(AdppoLatcionFH.get(i).getServiceamt()))+"</td>";
															
															temppos1=AdppoLatcionFH.get(i).getPoscode();
															tempamt1=AdppoLatcionFH.get(i).getServiceamt();
															tempaddress1=AdppoLatcionFH.get(i).getAddress1();
															tempspecialty=AdppoLatcionFH.get(i).getSpecialty();
																
															if(null!=hidden_dotype&& "M".equals(hidden_dotype.toUpperCase())){
																AFH.setHiddenssn(hidden_ssn);
																if(hidden_dob.indexOf("/")>0){
																	AFH.setHiddendob(hidden_dob);
																}else{
																	SimpleDateFormat dateFormat1 = new SimpleDateFormat("yyyy-mm-dd");
																	try {
																		String tempdb=dateFormat1.format(dateFormat1.parse(hidden_dob));
																		  tempdb=tempdb.substring(5,7)+"/"+tempdb.substring(8,10)+"/"+tempdb.substring(0,4);
																		AFH.setHiddendob(tempdb);
																	} catch (ParseException e) {
																		// TODO Auto-generated catch block
																		e.printStackTrace();
																	} 
																}
																AFH.setHiddentype(hidden_dotype.toLowerCase());
																//AFH.setHiddentype(hidden_dotype.toUpperCase());
															}
															
															tempname=AdppoLatcionFH.get(i).getName();
															AFH.setProccdesc(proccdesc);
															AFH.setName(AdppoLatcionFH.get(i).getName());
															AFH.setAddress1(AdppoLatcionFH.get(i).getAddress1());
															AFH.setAddress2(AdppoLatcionFH.get(i).getAddress2());
															AFH.setCity(AdppoLatcionFH.get(i).getCity());
															AFH.setSt(AdppoLatcionFH.get(i).getSt());
															AFH.setZip(AdppoLatcionFH.get(i).getZip());
															AFH.setPostalcode(AdppoLatcionFH.get(i).getPostalcode());
															AFH.setZipcode(AdppoLatcionFH.get(i).getZipcode());
															AFH.setState(AdppoLatcionFH.get(i).getState());
															AFH.setSpecialty(AdppoLatcionFH.get(i).getSpecialty());
															AFH.setSpecialty_id(AdppoLatcionFH.get(i).getSpecialty_id());
															String tempphone=AdppoLatcionFH.get(i).getPhone();
															String phone=tempphone.substring(0,3)+"-"+tempphone.substring(3,6)+"-"+tempphone.substring(6);
															AFH.setPhone(phone);
															AFH.setLname(AdppoLatcionFH.get(i).getLname());
															AFH.setFname(AdppoLatcionFH.get(i).getFname());
															AFH.setCartid(AdppoLatcionFH.get(i).getCartid());
															AFH.setPpoprovname(ppoprovname);
															
															if(null!=AdppoLatcionFH.get(i).getLatlon()){
															AFH.setLatlon(Float.valueOf(format2(Double.valueOf(AdppoLatcionFH.get(i).getLatlon()))));
															}
															if(null!=AdppoLatcionFH.get(i).getEffdate()){
															 SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-mm-dd");
																try {
																	AFH.setEffdate(dateFormat.format(dateFormat.parse(AdppoLatcionFH.get(i).getEffdate())));
																} catch (ParseException e) {
																	// TODO Auto-generated catch block
																	e.printStackTrace();
																}
																 try {
																	String tem=dateFormat.format(dateFormat.parse(AdppoLatcionFH.get(i).getTermdate()));
																	if("2999-12-31".equals(tem))tem="Current";
																	AFH.setTermdate(tem);
																	
																} catch (ParseException e) {
																	// TODO Auto-generated catch block
																	e.printStackTrace();
																}
															}
						
														}else{
															if(!temppos1.equals(AdppoLatcionFH.get(i).getPoscode()) || !tempamt1.equals(AdppoLatcionFH.get(i).getServiceamt())){
																temppos=temppos+"<td>"+AdppoLatcionFH.get(i).getPoscode()+"</td>";
																tempamt=tempamt+"<td>&#36;"+format2(Double.valueOf(AdppoLatcionFH.get(i).getServiceamt()))+"</td>";
																temppos1=AdppoLatcionFH.get(i).getPoscode();
																tempamt1=AdppoLatcionFH.get(i).getServiceamt();
															}
														}
										 
		
										 
									}
		
									AFH.setPoscode("<tr><td>Poscode:</td>"+temppos+"</tr>");
									AFH.setServiceamt("<tr><td>Serviceamt:</td>"+tempamt+"</tr>");
									adppoLatcionFHobj.add(AFH);
									AFH=null;
								}
						}	
						//--------------------------------------------------------------------------------------------
						if("T".equals(doFHS)){
							 
							List<Adppo> AdppoLatcionFHS=adppoService.selProbylocationtaxidFHS(adlocation);
							if(AdppoLatcionFHS != null && AdppoLatcionFHS.size() > 0){
								Adppo AFH=new Adppo();
								for(int i=0;i<AdppoLatcionFHS.size();i++){ 
													if(!tempname.equals(AdppoLatcionFHS.get(i).getName()) || !tempaddress1.equals(AdppoLatcionFHS.get(i).getAddress1()) || !tempspecialty.equals(AdppoLatcionFHS.get(i).getSpecialty())){
														if(null != tempname && !"".equals(tempname)){
															temppos1="";
															tempamt1="";
															AFH.setPoscode("<tr><td>Poscode:</td>"+temppos+"</tr>");
															AFH.setServiceamt("<tr><td>Serviceamt:</td>"+tempamt+"</tr>");
															adppoLatcionFHobj.add(AFH);
															AFH=new Adppo();
														}
														temppos="<td>"+AdppoLatcionFHS.get(i).getPoscode()+"</td>";
														tempamt="<td>&#36;"+format2(Double.valueOf(AdppoLatcionFHS.get(i).getServiceamt()))+"</td>";
														
														temppos1=AdppoLatcionFHS.get(i).getPoscode();
														tempamt1=AdppoLatcionFHS.get(i).getServiceamt();
														tempaddress1=AdppoLatcionFHS.get(i).getAddress1();
														tempspecialty=AdppoLatcionFHS.get(i).getSpecialty();

														
														if(null!=hidden_dotype&& "M".equals(hidden_dotype.toUpperCase())){
															AFH.setHiddenssn(hidden_ssn);
															SimpleDateFormat dateFormat1 = new SimpleDateFormat("yyyy-mm-dd");
															try {
																AFH.setHiddendob(dateFormat1.format(dateFormat1.parse(hidden_dob)));
															} catch (ParseException e) {
																// TODO Auto-generated catch block
																e.printStackTrace();
															}  
															AFH.setHiddentype(hidden_dotype.toLowerCase());
														}
															
														tempname=AdppoLatcionFHS.get(i).getName();
														AFH.setProccdesc(proccdesc);
														AFH.setName(AdppoLatcionFHS.get(i).getName());
														AFH.setAddress1(AdppoLatcionFHS.get(i).getAddress1());
														AFH.setAddress2(AdppoLatcionFHS.get(i).getAddress2());
														AFH.setCity(AdppoLatcionFHS.get(i).getCity());
														AFH.setSt(AdppoLatcionFHS.get(i).getSt());
														AFH.setZip(AdppoLatcionFHS.get(i).getZip());
														AFH.setPostalcode(AdppoLatcionFHS.get(i).getPostalcode());
														AFH.setZipcode(AdppoLatcionFHS.get(i).getZipcode());
														AFH.setState(AdppoLatcionFHS.get(i).getState());
														AFH.setSpecialty(AdppoLatcionFHS.get(i).getSpecialty());
														AFH.setSpecialty_id(AdppoLatcionFHS.get(i).getSpecialty_id());
														String tempphone=AdppoLatcionFHS.get(i).getPhone();
														String phone=tempphone.substring(0,3)+"-"+tempphone.substring(3,6)+"-"+tempphone.substring(6);
														AFH.setPhone(phone);
														AFH.setLname(AdppoLatcionFHS.get(i).getLname());
														AFH.setFname(AdppoLatcionFHS.get(i).getFname());
														AFH.setCartid(AdppoLatcionFHS.get(i).getCartid());
														AFH.setPpoprovname(ppoprovname);
														if(null!=AdppoLatcionFHS.get(i).getLatlon()){
														AFH.setLatlon(Float.valueOf(format2(Double.valueOf(AdppoLatcionFHS.get(i).getLatlon()))));
														}
														if(null!=AdppoLatcionFHS.get(i).getEffdate()){
														 SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-mm-dd");
															try {
																AFH.setEffdate(dateFormat.format(dateFormat.parse(AdppoLatcionFHS.get(i).getEffdate())));
															} catch (ParseException e) {
																// TODO Auto-generated catch block
																e.printStackTrace();
															}
															 try {
																//AFH.setTermdate(dateFormat.format(dateFormat.parse(AdppoLatcionFHS.get(i).getTermdate())));

																String tem=dateFormat.format(dateFormat.parse(AdppoLatcionFHS.get(i).getTermdate()));
																if("2999-12-31".equals(tem))tem="Current";
																AFH.setTermdate(tem);
															} catch (ParseException e) {
																// TODO Auto-generated catch block
																e.printStackTrace();
															}
														}
					
													}else{
														if(!temppos1.equals(AdppoLatcionFHS.get(i).getPoscode()) || !tempamt1.equals(AdppoLatcionFHS.get(i).getServiceamt())){
															temppos=temppos+"<td>"+AdppoLatcionFHS.get(i).getPoscode()+"</td>";
															tempamt=tempamt+"<td>&#36;"+format2(Double.valueOf(AdppoLatcionFHS.get(i).getServiceamt()))+"</td>";
															temppos1=AdppoLatcionFHS.get(i).getPoscode();
															tempamt1=AdppoLatcionFHS.get(i).getServiceamt();
														}
													}
									 
	
									 
								}
	
								AFH.setPoscode("<tr><td>Poscode:</td>"+temppos+"</tr>");
								AFH.setServiceamt("<tr><td>Serviceamt:</td>"+tempamt+"</tr>");
								adppoLatcionFHobj.add(AFH);
								AFH=null;
							}
						}	
						
						//--------------------------------------------------------------------------------------------
						if("T".equals(doFHF)){
							 
							
							List<Adppo> AdppoLatcionFHF=adppoService.selProbylocationtaxidFHF(adlocation);
							if(AdppoLatcionFHF != null && AdppoLatcionFHF.size() > 0){
								Adppo AFH=new Adppo();
								for(int i=0;i<AdppoLatcionFHF.size();i++){ 
													if(!tempname.equals(AdppoLatcionFHF.get(i).getName()) || !tempaddress1.equals(AdppoLatcionFHF.get(i).getAddress1()) || !tempspecialty.equals(AdppoLatcionFHF.get(i).getSpecialty())){
														if(null != tempname && !"".equals(tempname)){
															temppos1="";
															tempamt1="";
															AFH.setPoscode("<tr><td>Poscode:</td>"+temppos+"</tr>");
															AFH.setServiceamt("<tr><td>Serviceamt:</td>"+tempamt+"</tr>");
															adppoLatcionFHobj.add(AFH);
															AFH=new Adppo();
														}
														temppos="<td>"+AdppoLatcionFHF.get(i).getPoscode()+"</td>";
														tempamt="<td>&#36;"+format2(Double.valueOf(AdppoLatcionFHF.get(i).getServiceamt()))+"</td>";
														
														temppos1=AdppoLatcionFHF.get(i).getPoscode();
														tempamt1=AdppoLatcionFHF.get(i).getServiceamt();
														tempaddress1=AdppoLatcionFHF.get(i).getAddress1();
														tempspecialty=AdppoLatcionFHF.get(i).getSpecialty();

														
														if(null!=hidden_dotype&& "M".equals(hidden_dotype.toUpperCase())){
															AFH.setHiddenssn(hidden_ssn);
															SimpleDateFormat dateFormat1 = new SimpleDateFormat("yyyy-mm-dd");
															try {
																AFH.setHiddendob(dateFormat1.format(dateFormat1.parse(hidden_dob)));
															} catch (ParseException e) {
																// TODO Auto-generated catch block
																e.printStackTrace();
															} 
															AFH.setHiddentype(hidden_dotype.toLowerCase());
														}
															
														tempname=AdppoLatcionFHF.get(i).getName();
														AFH.setProccdesc(proccdesc);
														AFH.setName(AdppoLatcionFHF.get(i).getName());
														AFH.setAddress1(AdppoLatcionFHF.get(i).getAddress1());
														AFH.setAddress2(AdppoLatcionFHF.get(i).getAddress2());
														AFH.setCity(AdppoLatcionFHF.get(i).getCity());
														AFH.setSt(AdppoLatcionFHF.get(i).getSt());
														AFH.setZip(AdppoLatcionFHF.get(i).getZip());
														AFH.setPostalcode(AdppoLatcionFHF.get(i).getPostalcode());
														AFH.setZipcode(AdppoLatcionFHF.get(i).getZipcode());
														AFH.setState(AdppoLatcionFHF.get(i).getState());
														AFH.setSpecialty(AdppoLatcionFHF.get(i).getSpecialty());
														AFH.setSpecialty_id(AdppoLatcionFHF.get(i).getSpecialty_id());
														String tempphone=AdppoLatcionFHF.get(i).getPhone();
														String phone=tempphone.substring(0,3)+"-"+tempphone.substring(3,6)+"-"+tempphone.substring(6);
														AFH.setPhone(phone);
														AFH.setLname(AdppoLatcionFHF.get(i).getLname());
														AFH.setFname(AdppoLatcionFHF.get(i).getFname());
														AFH.setCartid(AdppoLatcionFHF.get(i).getCartid());
														AFH.setPpoprovname(ppoprovname);
														if(null!=AdppoLatcionFHF.get(i).getLatlon()){
														AFH.setLatlon(Float.valueOf(format2(Double.valueOf(AdppoLatcionFHF.get(i).getLatlon()))));
														}
														if(null!=AdppoLatcionFHF.get(i).getEffdate()){
														 SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-mm-dd");
															try {
																AFH.setEffdate(dateFormat.format(dateFormat.parse(AdppoLatcionFHF.get(i).getEffdate())));
															} catch (ParseException e) {
																// TODO Auto-generated catch block
																e.printStackTrace();
															}
															 try {
																//AFH.setTermdate(dateFormat.format(dateFormat.parse(AdppoLatcionFHF.get(i).getTermdate())));
																String tem=dateFormat.format(dateFormat.parse(AdppoLatcionFHF.get(i).getTermdate()));
																if("2999-12-31".equals(tem))tem="Current";
																AFH.setTermdate(tem);
															} catch (ParseException e) {
																// TODO Auto-generated catch block
																e.printStackTrace();
															}
														}
					
													}else{
														if(!temppos1.equals(AdppoLatcionFHF.get(i).getPoscode()) || !tempamt1.equals(AdppoLatcionFHF.get(i).getServiceamt())){
															temppos=temppos+"<td>"+AdppoLatcionFHF.get(i).getPoscode()+"</td>";
															tempamt=tempamt+"<td>&#36;"+format2(Double.valueOf(AdppoLatcionFHF.get(i).getServiceamt()))+"</td>";
															temppos1=AdppoLatcionFHF.get(i).getPoscode();
															tempamt1=AdppoLatcionFHF.get(i).getServiceamt();
														}
													}
									 
	
									 
								}
	
								AFH.setPoscode("<tr><td>Poscode:</td>"+temppos+"</tr>");
								AFH.setServiceamt("<tr><td>Serviceamt:</td>"+tempamt+"</tr>");
								adppoLatcionFHobj.add(AFH);
								AFH=null;
							}
					}	
					//--------------------------------------------------------------------------------------------
						if("T".equals(doFHFS)){
							 
							List<Adppo> AdppoLatcionFHFS=adppoService.selProbylocationtaxidFHFS(adlocation);
							if(AdppoLatcionFHFS != null && AdppoLatcionFHFS.size() > 0){
								Adppo AFH=new Adppo();
								for(int i=0;i<AdppoLatcionFHFS.size();i++){ 
													if(!tempname.equals(AdppoLatcionFHFS.get(i).getName()) || !tempaddress1.equals(AdppoLatcionFHFS.get(i).getAddress1()) || !tempspecialty.equals(AdppoLatcionFHFS.get(i).getSpecialty())){
														if(null != tempname && !"".equals(tempname)){
															temppos1="";
															tempamt1="";
															AFH.setPoscode("<tr><td>Poscode:</td>"+temppos+"</tr>");
															AFH.setServiceamt("<tr><td>Serviceamt:</td>"+tempamt+"</tr>");
															adppoLatcionFHobj.add(AFH);
															AFH=new Adppo();
														}
														temppos="<td>"+AdppoLatcionFHFS.get(i).getPoscode()+"</td>";
														tempamt="<td>&#36;"+format2(Double.valueOf(AdppoLatcionFHFS.get(i).getServiceamt()))+"</td>";
														
														temppos1=AdppoLatcionFHFS.get(i).getPoscode();
														tempamt1=AdppoLatcionFHFS.get(i).getServiceamt();
														tempaddress1=AdppoLatcionFHFS.get(i).getAddress1();
														tempspecialty=AdppoLatcionFHFS.get(i).getSpecialty();

														
														if(null!=hidden_dotype&& "M".equals(hidden_dotype.toUpperCase())){
															AFH.setHiddenssn(hidden_ssn);
															SimpleDateFormat dateFormat1 = new SimpleDateFormat("yyyy-mm-dd");
															try {
																AFH.setHiddendob(dateFormat1.format(dateFormat1.parse(hidden_dob)));
															} catch (ParseException e) {
																// TODO Auto-generated catch block
																e.printStackTrace();
															} 
															AFH.setHiddentype(hidden_dotype.toLowerCase());
														}	
															
														tempname=AdppoLatcionFHFS.get(i).getName();
														AFH.setProccdesc(proccdesc);
														AFH.setName(AdppoLatcionFHFS.get(i).getName());
														AFH.setAddress1(AdppoLatcionFHFS.get(i).getAddress1());
														AFH.setAddress2(AdppoLatcionFHFS.get(i).getAddress2());
														AFH.setCity(AdppoLatcionFHFS.get(i).getCity());
														AFH.setSt(AdppoLatcionFHFS.get(i).getSt());
														AFH.setZip(AdppoLatcionFHFS.get(i).getZip());
														AFH.setPostalcode(AdppoLatcionFHFS.get(i).getPostalcode());
														AFH.setZipcode(AdppoLatcionFHFS.get(i).getZipcode());
														AFH.setState(AdppoLatcionFHFS.get(i).getState());
														AFH.setSpecialty(AdppoLatcionFHFS.get(i).getSpecialty());
														AFH.setSpecialty_id(AdppoLatcionFHFS.get(i).getSpecialty_id());
														String tempphone=AdppoLatcionFHFS.get(i).getPhone();
														String phone=tempphone.substring(0,3)+"-"+tempphone.substring(3,6)+"-"+tempphone.substring(6);
														AFH.setPhone(phone);
														AFH.setLname(AdppoLatcionFHFS.get(i).getLname());
														AFH.setFname(AdppoLatcionFHFS.get(i).getFname());
														AFH.setCartid(AdppoLatcionFHFS.get(i).getCartid());
														AFH.setPpoprovname(ppoprovname);
														if(null!=AdppoLatcionFHFS.get(i).getLatlon()){
														AFH.setLatlon(Float.valueOf(format2(Double.valueOf(AdppoLatcionFHFS.get(i).getLatlon()))));
														}
														if(null!=AdppoLatcionFHFS.get(i).getEffdate()){
														 SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-mm-dd");
															try {
																AFH.setEffdate(dateFormat.format(dateFormat.parse(AdppoLatcionFHFS.get(i).getEffdate())));
															} catch (ParseException e) {
																// TODO Auto-generated catch block
																e.printStackTrace();
															}
															 try {
																//AFH.setTermdate(dateFormat.format(dateFormat.parse(AdppoLatcionFHFS.get(i).getTermdate())));
																String tem=dateFormat.format(dateFormat.parse(AdppoLatcionFHFS.get(i).getTermdate()));
																if("2999-12-31".equals(tem))tem="Current";
																AFH.setTermdate(tem);
															} catch (ParseException e) {
																// TODO Auto-generated catch block
																e.printStackTrace();
															}
														}
					
													}else{
														if(!temppos1.equals(AdppoLatcionFHFS.get(i).getPoscode()) || !tempamt1.equals(AdppoLatcionFHFS.get(i).getServiceamt())){
															temppos=temppos+"<td>"+AdppoLatcionFHFS.get(i).getPoscode()+"</td>";
															tempamt=tempamt+"<td>&#36;"+format2(Double.valueOf(AdppoLatcionFHFS.get(i).getServiceamt()))+"</td>";
															temppos1=AdppoLatcionFHFS.get(i).getPoscode();
															tempamt1=AdppoLatcionFHFS.get(i).getServiceamt();
														}
													}
									 
	
									 
								}
	
								AFH.setPoscode("<tr><td>Poscode:</td>"+temppos+"</tr>");
								AFH.setServiceamt("<tr><td>Serviceamt:</td>"+tempamt+"</tr>");
								adppoLatcionFHobj.add(AFH);
								AFH=null;
							}
						}	
				//--------------------------------------------------------------------------------------------
						
						
						
						if("T".equals(doMPI)){
							 
							List<Adppo> AdppoLatcionMPI=adppoService.selProbympi(adlocation);
							if(AdppoLatcionMPI != null && AdppoLatcionMPI.size() > 0){
								Adppo AFH=new Adppo();
								for(int i=0;i<AdppoLatcionMPI.size();i++){ 
													if(!tempname.equals(AdppoLatcionMPI.get(i).getName()) || !tempaddress1.equals(AdppoLatcionMPI.get(i).getAddress1()) || !tempspecialty.equals(AdppoLatcionMPI.get(i).getSpecialty())){
														if(null != tempname && !"".equals(tempname)){
															temppos1="";
															tempamt1="";
															AFH.setPoscode("<tr><td>Poscode:</td>"+temppos+"</tr>");
															AFH.setServiceamt("<tr><td>Serviceamt:</td>"+tempamt+"</tr>");
															adppoLatcionFHobj.add(AFH);
															AFH=new Adppo();
														}
														temppos="<td>"+AdppoLatcionMPI.get(i).getPoscode()+"</td>";
														tempamt="<td>&#36;"+format2(Double.valueOf(AdppoLatcionMPI.get(i).getServiceamt()))+"</td>";
														
														temppos1=AdppoLatcionMPI.get(i).getPoscode();
														tempamt1=AdppoLatcionMPI.get(i).getServiceamt();
														tempaddress1=AdppoLatcionMPI.get(i).getAddress1();
														tempspecialty=AdppoLatcionMPI.get(i).getSpecialty();
															
														if(null!=hidden_dotype&& "M".equals(hidden_dotype.toUpperCase())){
															AFH.setHiddenssn(hidden_ssn);
															SimpleDateFormat dateFormat1 = new SimpleDateFormat("yyyy-mm-dd");
															try {
																String tempdb=dateFormat1.format(dateFormat1.parse(hidden_dob));
																  tempdb=tempdb.substring(5,7)+"/"+tempdb.substring(8,10)+"/"+tempdb.substring(0,4);
																AFH.setHiddendob(tempdb);
															} catch (ParseException e) {
																// TODO Auto-generated catch block
																e.printStackTrace();
															} 
															AFH.setHiddentype(hidden_dotype.toLowerCase());
															//AFH.setHiddentype(hidden_dotype.toUpperCase());
														}
														
														tempname=AdppoLatcionMPI.get(i).getName();
														AFH.setProccdesc(proccdesc);
														AFH.setName(AdppoLatcionMPI.get(i).getName());
														AFH.setAddress1(AdppoLatcionMPI.get(i).getAddress1());
														AFH.setAddress2(AdppoLatcionMPI.get(i).getAddress2());
														AFH.setCity(AdppoLatcionMPI.get(i).getCity());
														AFH.setSt(AdppoLatcionMPI.get(i).getSt());
														AFH.setZip(AdppoLatcionMPI.get(i).getZip());
														AFH.setPostalcode(AdppoLatcionMPI.get(i).getPostalcode());
														AFH.setZipcode(AdppoLatcionMPI.get(i).getZipcode());
														AFH.setState(AdppoLatcionMPI.get(i).getState());
														AFH.setSpecialty(AdppoLatcionMPI.get(i).getSpecialty());
														AFH.setSpecialty_id(AdppoLatcionMPI.get(i).getSpecialty_id());
														String tempphone=AdppoLatcionMPI.get(i).getPhone();
														String phone=tempphone.substring(0,3)+"-"+tempphone.substring(3,6)+"-"+tempphone.substring(6);
														AFH.setPhone(phone);
														AFH.setLname(AdppoLatcionMPI.get(i).getLname());
														AFH.setFname(AdppoLatcionMPI.get(i).getFname());
														AFH.setCartid(AdppoLatcionMPI.get(i).getCartid());
														AFH.setPpoprovname(ppoprovname);
														if(null!=AdppoLatcionMPI.get(i).getLatlon()){
														AFH.setLatlon(Float.valueOf(format2(Double.valueOf(AdppoLatcionMPI.get(i).getLatlon()))));
														}
														if(null!=AdppoLatcionMPI.get(i).getEffdate()){
														 SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-mm-dd");
															try {
																AFH.setEffdate(dateFormat.format(dateFormat.parse(AdppoLatcionMPI.get(i).getEffdate())));
															} catch (ParseException e) {
																// TODO Auto-generated catch block
																e.printStackTrace();
															}
															 try {
																String tem=dateFormat.format(dateFormat.parse(AdppoLatcionMPI.get(i).getTermdate()));
																if("2999-12-31".equals(tem))tem="Current";
																AFH.setTermdate(tem);
																
															} catch (ParseException e) {
																// TODO Auto-generated catch block
																e.printStackTrace();
															}
														}
					
													}else{
														if(!temppos1.equals(AdppoLatcionMPI.get(i).getPoscode()) || !tempamt1.equals(AdppoLatcionMPI.get(i).getServiceamt())){
															temppos=temppos+"<td>"+AdppoLatcionMPI.get(i).getPoscode()+"</td>";
															tempamt=tempamt+"<td>&#36;"+format2(Double.valueOf(AdppoLatcionMPI.get(i).getServiceamt()))+"</td>";
															temppos1=AdppoLatcionMPI.get(i).getPoscode();
															tempamt1=AdppoLatcionMPI.get(i).getServiceamt();
														}
													}
									 
	
									 
								}
	
								AFH.setPoscode("<tr><td>Poscode:</td>"+temppos+"</tr>");
								AFH.setServiceamt("<tr><td>Serviceamt:</td>"+tempamt+"</tr>");
								adppoLatcionFHobj.add(AFH);
								AFH=null;
							}
					}	
					//--------------------------------------------------------------------------------------------
		 	}else{
		 		adppoLatcionobj=new ArrayList<Adppo>();
		 		adppoLatcionFHobj=new ArrayList<Adppo>();
		 	}
		 	
		  
		return "searchresault";
	}
	
public String getresaultpagetotal() {

		String dosearch="F";
		Float radius=Float.valueOf(0);
		Float Ox1=Float.valueOf(0);
		Float Oy1=Float.valueOf(0);
		Float Ox2=Float.valueOf(0);
		Float Oy2=Float.valueOf(0);
		Float Ix1=Float.valueOf(0);
		Float Ix2=Float.valueOf(0);
		Float Iy1=Float.valueOf(0);
		Float Iy2=Float.valueOf(0);
		Float lat=Float.valueOf(0);
		Float lon=Float.valueOf(0);
		if(null!=Radius){
		radius=Float.valueOf(Radius)/111;
		}
		
		Adppo adlocation=new Adppo();
		if(null!=Zip){
				Adppo adppo=new Adppo();
				adppo.setZip(Integer.valueOf(Zip));
				List<Adppo> AdppoLatlon=adppoService.findLatlon(adppo);
				
				
				if(AdppoLatlon != null && AdppoLatlon.size() > 0){
					lat=AdppoLatlon.get(0).getLat();
					lon=AdppoLatlon.get(0).getLon();
					Ox1=lat-radius;
					Oy1=lon-radius;
					Ox2=lat+radius;
					Oy2=lon+radius;
					Ix1=lat;
					Ix2=lat;
					Iy1=lon;
					Iy2=lon;
		
					adlocation.setOx1(String.valueOf(Ox1));
					adlocation.setOy1(String.valueOf(Oy1));
					adlocation.setOx2(String.valueOf(Ox2));
					adlocation.setOy2(String.valueOf(Oy2));
					adlocation.setIx1(String.valueOf(Ix1));
					adlocation.setIx2(String.valueOf(Ix2));
					adlocation.setIy1(String.valueOf(Iy1));
					adlocation.setIy2(String.valueOf(Iy2));
					adlocation.setLat(lat);
					adlocation.setLon(lon);
					dosearch="T";
				}
		}
		
		
		
		if(null!=providerType){
			adlocation.setProvtype(providerType);
		}
		 

		if(null!=Provname){
			adlocation.setProvname(Provname.toUpperCase());
		}

		if(null!=taxid){
			adlocation.setTaxid(taxid);
			dosearch="T";
		}
		
		if(null!=provst){
			adlocation.setProvst(provst);
			dosearch="T";
		}

		if(null!=Specids){
		    //adlocation.setSpec(Specnames.replaceAll(",","','"));
			adlocation.setSpec(Specids);
		}


		
		String doppo="N";
		if(null!=ppo && !"0".equals(ppo)){
			if("102".equals(ppo))doppo="T";//First health
			if("38".equals(ppo))doppo="T";//First health
			
			if("16".equals(ppo))doppo="T";//MPI
			if("116".equals(ppo)){doppo="T"; ppo="16";}//MPI
			if("117".equals(ppo))doppo="T";//MPI
			if("40".equals(ppo))doppo="T";//PHCS
			if("140".equals(ppo))doppo="T"; //PHCS
			
			if("T".equals(doppo) ){
				adlocation.setPpono(Integer.valueOf(ppo));
			} 
		}
		 	if(dosearch=="T"){
			 
						
						if(null!=procedurecode){
							adlocation.setProvcode(procedurecode);
						}
						
						String doMPI="N";
						if("16".equals(ppo) || "116".equals(ppo) || "117".equals(ppo) || "40".equals(ppo) || "140".equals(ppo)){
							if("116".equals(ppo) )ppo="16";
							doMPI="T";
						}
						
						String doFH="N";
						String doFHS="N";
						String doFHF="N";
						String doFHFS="N";
						
						if("N".equals(doMPI)){
							if("P"==providerType){
								doFH="T";
								if("38".equals(ppo) || "102".equals(ppo))doFHS="T";
							}else if("F"==providerType){
								doFHF="T";
								if("38".equals(ppo) || "102".equals(ppo))doFHFS="T";
							}else{
								doFH="T";
								if("38".equals(ppo) || "102".equals(ppo))doFHS="T";
								doFHF="T";
								if("38".equals(ppo) || "102".equals(ppo))doFHFS="T";
							}
						}

						
						
						

						
						if("T".equals(doFH)){
								List<Adppo> AdppoLatcionFHsize=adppoService.selProbylocationtaxidFHsize(adlocation);
								if(AdppoLatcionFHsize != null && AdppoLatcionFHsize.size() > 0){
									if(sizetotal<AdppoLatcionFHsize.get(0).getTotal())sizetotal=AdppoLatcionFHsize.get(0).getTotal();
								}
						}	
						//--------------------------------------------------------------------------------------------
						if("T".equals(doFHS)){
							List<Adppo> AdppoLatcionFHSsize=adppoService.selProbylocationtaxidFHSsize(adlocation);
							if(AdppoLatcionFHSsize != null && AdppoLatcionFHSsize.size() > 0){
								if(sizetotal<AdppoLatcionFHSsize.get(0).getTotal())sizetotal=AdppoLatcionFHSsize.get(0).getTotal();
							}
							
						}	
						
						//--------------------------------------------------------------------------------------------
						if("T".equals(doFHF)){
							List<Adppo> AdppoLatcionFHFsize=adppoService.selProbylocationtaxidFHFsize(adlocation);
							if(AdppoLatcionFHFsize != null && AdppoLatcionFHFsize.size() > 0){
								if(sizetotal<AdppoLatcionFHFsize.get(0).getTotal())sizetotal=AdppoLatcionFHFsize.get(0).getTotal();
							}
							
							 
						}	
					//--------------------------------------------------------------------------------------------
						if("T".equals(doFHFS)){
							List<Adppo> AdppoLatcionFHFSsize=adppoService.selProbylocationtaxidFHFSsize(adlocation);
							if(AdppoLatcionFHFSsize != null && AdppoLatcionFHFSsize.size() > 0){
								if(sizetotal<AdppoLatcionFHFSsize.get(0).getTotal())sizetotal=AdppoLatcionFHFSsize.get(0).getTotal();
							}
							 
						}	
				//--------------------------------------------------------------------------------------------
						
						
						
						if("T".equals(doMPI)){
							List<Adppo> AdppoLatcionMPISsize=adppoService.selProbympisize(adlocation);
							if(AdppoLatcionMPISsize != null && AdppoLatcionMPISsize.size() > 0){
								if(sizetotal<AdppoLatcionMPISsize.get(0).getTotal())sizetotal=AdppoLatcionMPISsize.get(0).getTotal();
							}
							
					}	
					//--------------------------------------------------------------------------------------------
		 	}
		 	
		 	sizetotal=sizetotal/50+1;
		return "getresaultsize";
	}

	public String resaulteidtcart() {
		String hidden_ssn="";
		String hidden_dob="";
		String hidden_grpno="";
		String hidden_dotype="";
		SessionUser sessionUser=new SessionUser();
	 	 sessionUser = (SessionUser) ServletActionContext
		.getRequest().getSession().getAttribute("sessionUser");
		if(null!=sessionUser){
			hidden_ssn=sessionUser.getSsn();
			hidden_dob=sessionUser.getDob();
			hidden_grpno=sessionUser.getGr_number();
			hidden_dotype=sessionUser.getLogintype();
		
		//cartProvname,cartspecialty,cartaddress1,cartaddress2,cartcity,cartSt,cartzip,cartphone,carteffdate,carttermdate

		Adppo adppo=new Adppo();
		//adppo.setPpono(ppono);
		//List<Adppo> AdppospList=adppoService.findppoSpecialty(adppo);
		adppo.setSsn(Integer.valueOf(hidden_ssn));
		adppo.setName(cartProvname);
		adppo.setSpecialty(cartspecialty);
		adppo.setSpecialty_id(Integer.valueOf(cartspecialtyid));
		adppo.setAddress1(cartaddress1);
		adppo.setAddress2(cartaddress2);
		adppo.setCity(cartcity);
		adppo.setSt(cartSt);
		adppo.setZip(Integer.valueOf(cartzip));
		adppo.setPhone(cartphone);
		adppo.setEffdate(carteffdate);
		adppo.setTermdate(carttermdate);
		adppo.setFname("");
		adppo.setLname("");
		adppo.setLatlon(Float.valueOf(latlon));
		adppo.setMemberlogin("");
		adppo.setZipcode(Zipcode);
		adppo.setProccdesc(proccdesc);
		String tempstr=poscode;
		tempstr=tempstr.replace("<tr><td>", "");
		tempstr=tempstr.replace("</td></tr>", "");
		tempstr=tempstr.replace("</td><td>", "_");
		adppo.setPoscode(tempstr);
		tempstr=serviceamt;
		tempstr=tempstr.replace("<tr><td>", "");
		tempstr=tempstr.replace("</td></tr>", "");
		tempstr=tempstr.replace("</td><td>", "_");
		adppo.setServiceamt(tempstr);
		adppo.setHiddendob(hidden_dob);
		adppo.setHiddenssn(hidden_ssn);
		adppo.setHiddentype(hidden_dotype);
		adppo.setCpt(cpt);
		 adppoService.insertmembercart(adppo);
		 return "addcartresault";
		}else{
		 
					return "timeout";
				
			}
		
	}
	public String prosearesaultcart() {
		String hidden_ssn="";
		String hidden_grpno="";
		String hidden_dob="";
		String hidden_dotype="";
		SessionUser sessionUser=new SessionUser();
	 	 sessionUser = (SessionUser) ServletActionContext
		.getRequest().getSession().getAttribute("sessionUser");
		if(null!=sessionUser){
			hidden_ssn=sessionUser.getSsn();
			hidden_dob=sessionUser.getDob();
			hidden_grpno=sessionUser.getGr_number();
			hidden_dotype=sessionUser.getLogintype();
		
			if("emptyall".equals(cartid)){
				if("del".equals(dotype)){
					Adppo deladppo=new Adppo();
					deladppo.setSsn(Integer.valueOf(hidden_ssn));
					adppoService.deltmembercart(deladppo);
				}
				adppoLatcionobj=new ArrayList<Adppo>();
			}else{
		
					if("del".equals(dotype)){
						Adppo deladppo=new Adppo();
						deladppo.setCartid(Integer.valueOf(cartid));
						adppoService.deltmembercart(deladppo);
					}
					
					Adppo adppo=new Adppo();
					adppo.setSsn(Integer.valueOf(hidden_ssn));
					List<Adppo> AdppospList=adppoService.selmembercart(adppo);
					
					if(AdppospList != null && AdppospList.size() > 0){
						adppoLatcionobj=new ArrayList<Adppo>();
						for(int i=0;i<AdppospList.size();i++){
						Adppo A=new Adppo();
						A.setHiddendob(hidden_dob);
						A.setHiddenssn(hidden_ssn);
						A.setHiddentype(hidden_dotype);
						A.setGrnumber(Integer.valueOf(hidden_grpno));
						A.setName(AdppospList.get(i).getName());
						A.setAddress1(AdppospList.get(i).getAddress1());
						A.setAddress2(AdppospList.get(i).getAddress2());
						A.setCity(AdppospList.get(i).getCity());
						A.setSt(AdppospList.get(i).getSt());
						A.setZip(AdppospList.get(i).getZip());
						A.setSpecialty(AdppospList.get(i).getSpecialty());
						A.setSpecialty_id(AdppospList.get(i).getSpecialty_id());
						A.setZipcode(AdppospList.get(i).getZipcode());
						A.setProccdesc(AdppospList.get(i).getProccdesc());
						A.setCpt(AdppospList.get(i).getCpt());
						String tempphone=AdppospList.get(i).getPhone();
						//String phone=tempphone.substring(0,3)+"-"+tempphone.substring(3,6)+"-"+tempphone.substring(6);
						String phone=tempphone;
						A.setPhone(phone);
						A.setLname(AdppospList.get(i).getLname());
						A.setFname(AdppospList.get(i).getFname());
						A.setMemberlogin(AdppospList.get(i).getMemberlogin());
						A.setCartid(AdppospList.get(i).getCartid());
						A.setLatlon(AdppospList.get(i).getLatlon());
			
						String tempstr=AdppospList.get(i).getPoscode();
						tempstr=tempstr.replace("_", "</td><td>");
						tempstr="<tr><td>"+tempstr+"</td></tr>";
						A.setPoscode(tempstr);
						tempstr=AdppospList.get(i).getServiceamt();
						tempstr=tempstr.replace("_", "</td><td>");
						tempstr="<tr><td>"+tempstr+"</td></tr>";
						A.setServiceamt(tempstr);
						if(null!=AdppospList.get(i).getEffdate()){
						SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
							try {
								A.setEffdate(dateFormat.format(dateFormat.parse(AdppospList.get(i).getEffdate())));
							} catch (ParseException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
							A.setTermdate(AdppospList.get(i).getTermdate());
						}
						adppoLatcionobj.add(A);
							if(i>100){
								i=AdppospList.size();
							}
						}
					}
		}		
					return "searchresaultcart";
		}else{
			return "timeout";
		}
	}
	
	public String showspeclist() {
		Adppo adppo=new Adppo();
		adppo.setPpono(ppono);
		List<Adppo> AdppospList=adppoService.findppoSpecialty(adppo);
		adppospobj=new ArrayList<Adppo>();
		if(AdppospList != null && AdppospList.size() > 0){
			for(int i=0;i<AdppospList.size();i++){
			Adppo A=new Adppo();
			A.setSpecialty(AdppospList.get(i).getSpecialty());
			//A.setSpecialty(AdppospList.get(i).getSpecialty().replace("&", "%26"));
			A.setSpecialty_id(AdppospList.get(i).getSpecialty_id());
			adppospobj.add(A);
			}
		}
		return "speclist";
		
		
		
	}
	
	public String showspeccode() {
		String tempstr="";
		String tempstr1="";
		String dosubip="N";
		String doprovcode="N";

		Adppo adppo=new Adppo();
		if(null!=subip){ 
			dosubip="Y";
		}
		if(null!=provcode){
			doprovcode="Y";
			tempstr1="proccd='"+provcode+"'";
			provcode=provcode.toUpperCase();
			provcode=provcode.replaceAll(",", " ");
			String[] temLines=null; 
			temLines=provcode.split(" "); 
				for(int i=0;i<temLines.length;i++){ 
					if(i>0){
						tempstr=tempstr+" and upper(descr) like'%"+temLines[i]+"%'";
					}else{
						tempstr=tempstr+" upper(descr) like'%"+temLines[i]+"%'";
					}
				}
				
				tempstr1="("+tempstr1+" or ("+ tempstr +"))";
				adppo.setSqlstr(tempstr1);
		}
		
		if("Y".equals(dosubip)){
			adppo.setSub_ip(Integer.valueOf(subip));
			adproccd=adppoService.selPromstcategoryDetl(adppo);
		}else{
			if("Y".equals(doprovcode)){ 
				adproccd=adppoService.selProccd(adppo);
			}
		}
		return "prcoderesault";
		
	}
	

	public String showspeccodecategory() {
		Adppo adppo=new Adppo();
			adprocategory=adppoService.selPromstcategoryMaster(adppo);
		
		return "prcodecategory";
	}
	
	public String showspeccodecategorysub() {
		Adppo adppo=new Adppo();
			if(null!=mstip){
			adppo.setMst_ip(Integer.valueOf(mstip));
			}
			adprocategory=adppoService.selPromstcategorySub(adppo);
		return "prcodecategorysub";
	}
	
	public String showinnetwork() {
		String tempinrate=inrate;
		Adppo adppo=new Adppo(); 
	 
		
		adppo.setGrpno(pricegrpno); 
		adppo.setEmpno(priceempno);
		adppo.setDepno(pricedepno);
		/*
		List<Adppo> estcostempplan=adppoService.selestcostempplan(adppo);
		if(null!=estcostempplan){
		} 
		*/

	    /*  Provname
	     * @POS as POS, @PROCCD as PROCCD
	     * ,@RATE as CHGAMT, @RATE as ADJCVRD
	     * ,@PRVTP as PRVTP 
	     * , '00' as MODCD1, 'A00.00' as DIAG
		*/
		// adppo.setPRVTP(prvtp);
		adppo.setPoscode(poscode);
		adppo.setProccd(proccd);
		adppo.setCHGAMT(tempinrate);
		adppo.setADJCVRD(tempinrate);
		adppo.setMODCD1("00");
		adppo.setDIAG("A00.00");
		if(null!=Specids){
				//String[] temLines=null;
				//temLines=Specids.split(",");
				//for(int i=1;i<temLines.length;i++){
				//	if(""!=temLines[i] && null!=temLines[i]){
				//	adppo.setPRVTP(String.valueOf(temLines[i]));
			        adppo.setPRVTP(String.valueOf(Specids));
					List<Adppo> estcostclmdetls=adppoService.selestcostclmdetl(adppo);
					estcostclmdetl=new ArrayList<Adppo>();
						if(null!=estcostclmdetls && estcostclmdetls.size()>0){
							for(int k=0;k<estcostclmdetls.size();k++){
							Adppo AA=new Adppo();
							AA.setServiceDescription(estcostclmdetls.get(k).getServiceDescription());
							AA.setCopay(estcostclmdetls.get(k).getCopay());
							AA.setPaidPct(estcostclmdetls.get(k).getPaidPct());
							AA.setDeductible(estcostclmdetls.get(k).getDeductible());
							AA.setPPODESC(estcostclmdetls.get(k).getPPODESC());
							AA.setOOP(estcostclmdetls.get(k).getOOP());
							AA.setNOTES(estcostclmdetls.get(k).getNOTES());
							estcostclmdetl.add(AA);
							}
						}
				//	}
				//}
		}else{
					adppo.setPRVTP("0");
					List<Adppo> estcostclmdetls=adppoService.selestcostclmdetl(adppo);
					if(null!=estcostclmdetls && estcostclmdetls.size()>0){
						for(int k=0;k<estcostclmdetls.size();k++){
							Adppo AA=new Adppo();
							AA.setServiceDescription(estcostclmdetls.get(k).getServiceDescription());
							AA.setCopay(estcostclmdetls.get(k).getCopay());
							AA.setPaidPct(estcostclmdetls.get(k).getPaidPct());
							AA.setDeductible(estcostclmdetls.get(k).getDeductible());
							AA.setPPODESC(estcostclmdetls.get(k).getPPODESC());
							AA.setOOP(estcostclmdetls.get(k).getOOP());
							AA.setNOTES(estcostclmdetls.get(k).getNOTES());
							estcostclmdetl.add(AA);
							}
					}
		}

		
		Adppo adppo2=new Adppo();  
		adppo2.setUCRGRPNO(Integer.valueOf(pricegrpno));
		adppo2.setUCRCPT(proccd);
		adppo2.setUCRZIP(Zipcode);
		adppo2.setUCRMODCD("00");	
		List<Adppo>  checklUCR=adppoService.selchecklUCR(adppo2);
		estchecklUCR=new ArrayList<Adppo>();
		if(null!=checklUCR && checklUCR.size()>0){
			for(int l=0;l<checklUCR.size();l++){
				Adppo AAUCR=new Adppo();
				AAUCR.setGRPNO(checklUCR.get(l).getGRPNO());
				AAUCR.setZip(checklUCR.get(l).getZip());
				AAUCR.setCPT(checklUCR.get(l).getCPT());
				AAUCR.setMODCD(checklUCR.get(l).getMODCD());
				AAUCR.setEFFYM(checklUCR.get(l).getEFFYM());
				AAUCR.setUCRCD(checklUCR.get(l).getUCRCD());
				AAUCR.setPCT(checklUCR.get(l).getPCT());
				AAUCR.setGEOAREA(checklUCR.get(l).getGEOAREA());
				AAUCR.setRVSID(checklUCR.get(l).getRVSID());
				AAUCR.setRELVAL(checklUCR.get(l).getRELVAL());
				AAUCR.setUCRPCT(checklUCR.get(l).getUCRPCT());
				if(null!=checklUCR.get(l).getUCRAMT()){
					AAUCR.setUCRAMT(checklUCR.get(l).getUCRAMT());
				}else{
					AAUCR.setUCRAMT("0.00");
				}
				estchecklUCR.add(AAUCR);
			}
			
		}else{
			Adppo AAUCR=new Adppo();
			AAUCR.setGRPNO(null);
			AAUCR.setZip(null);
			AAUCR.setCPT(null);
			AAUCR.setMODCD(null);
			AAUCR.setEFFYM(null);
			AAUCR.setUCRCD(null);
			AAUCR.setPCT(null);
			AAUCR.setGEOAREA(null);
			AAUCR.setRVSID(null);
			AAUCR.setRELVAL(null);
			AAUCR.setUCRPCT(null);
			AAUCR.setUCRAMT("0.00");
			estchecklUCR.add(AAUCR);
		}
		String tempProvname=ppoprovname;
		String tempproccdesc=proccdesc;
		 
		return "showinnetwork";
	}
	
	
	public String showspecselect() {
		if(null!=Specids){
			String[] temLines=null;
			String[] temLinedetail=null;
			temLines=Specids.split(",");
			temLinedetail=Specnames.split(",");
			
			Adppo adppo=new Adppo();
			adppo.setPpono(ppono);
			List<Adppo> AdppospList=adppoService.findppoSpecialty(adppo);
			adppospobj=new ArrayList<Adppo>();
				for(int i=1;i<temLines.length;i++){
				Adppo A=new Adppo();
				A.setSpecialty_id(Integer.valueOf(temLines[i]));
				A.setSpecialty(temLinedetail[i]);
				adppospobj.add(A);
				}
		}
		
	return "showspecselect";
	}
	

 

	public String getPpo() {
		return ppo;
	}

	public void setPpo(String ppo) {
		this.ppo = ppo;
	}

	public String getTaxid() {
		return taxid;
	}

	public void setTaxid(String taxid) {
		this.taxid = taxid;
	}

	public String getZip() {
		return Zip;
	}

	public void setZip(String zip) {
		Zip = zip;
	}

	public String getRadius() {
		return Radius;
	}

	public void setRadius(String radius) {
		Radius = radius;
	}

	public String getSt() {
		return st;
	}

	public void setSt(String st) {
		this.st = st;
	}

	public String getProviderType() {
		return providerType;
	}

	public void setProviderType(String providerType) {
		this.providerType = providerType;
	}

	public String getProvname() {
		return Provname;
	}

	public void setProvname(String provname) {
		Provname = provname;
	}

	public String getSpecids() {
		return Specids;
	}


	public void setSpecids(String specids) {
		Specids = specids;
	}


	public String getSpecnames() {
		return Specnames;
	}


	public void setSpecnames(String specnames) {
		Specnames = specnames;
	}


	public Integer getPpono() {
		return ppono;
	}


	public void setPpono(Integer ppono) {
		this.ppono = ppono;
	}


	public List<Adppo> getAdppospobj() {
		return adppospobj;
	}


	public void setAdppospobj(List<Adppo> adppospobj) {
		this.adppospobj = adppospobj;
	}


	public List<Adppo> getAdppoobj() {
		return adppoobj;
	}


	public void setAdppoobj(List<Adppo> adppoobj) {
		this.adppoobj = adppoobj;
	}

	public String getProvst() {
		return provst;
	}

	public void setProvst(String provst) {
		this.provst = provst;
	}

	public List<Adppo> getAdppoLatcionFHobj() {
		return adppoLatcionFHobj;
	}

	public void setAdppoLatcionFHobj(List<Adppo> adppoLatcionFHobj) {
		this.adppoLatcionFHobj = adppoLatcionFHobj;
	}

	public List<Adppo> getAdppoLatcionobj() {
		return adppoLatcionobj;
	}

	public void setAdppoLatcionobj(List<Adppo> adppoLatcionobj) {
		this.adppoLatcionobj = adppoLatcionobj;
	}

	public String getFiltertype() {
		return filtertype;
	}

	public void setFiltertype(String filtertype) {
		this.filtertype = filtertype;
	}

	public String getCartProvname() {
		return cartProvname;
	}

	public void setCartProvname(String cartProvname) {
		this.cartProvname = cartProvname;
	}

	public String getCartspecialtyid() {
		return cartspecialtyid;
	}

	public void setCartspecialtyid(String cartspecialtyid) {
		this.cartspecialtyid = cartspecialtyid;
	}

	public String getCartspecialty() {
		return cartspecialty;
	}

	public void setCartspecialty(String cartspecialty) {
		this.cartspecialty = cartspecialty;
	}

	public String getCartaddress1() {
		return cartaddress1;
	}

	public void setCartaddress1(String cartaddress1) {
		this.cartaddress1 = cartaddress1;
	}

	public String getCartaddress2() {
		return cartaddress2;
	}

	public void setCartaddress2(String cartaddress2) {
		this.cartaddress2 = cartaddress2;
	}

	public String getCartcity() {
		return cartcity;
	}

	public void setCartcity(String cartcity) {
		this.cartcity = cartcity;
	}

	public String getCartSt() {
		return cartSt;
	}

	public void setCartSt(String cartSt) {
		this.cartSt = cartSt;
	}

	public String getCartzip() {
		return cartzip;
	}

	public void setCartzip(String cartzip) {
		this.cartzip = cartzip;
	}

	public String getCartphone() {
		return cartphone;
	}

	public void setCartphone(String cartphone) {
		this.cartphone = cartphone;
	}

	public String getCarteffdate() {
		return carteffdate;
	}

	public void setCarteffdate(String carteffdate) {
		this.carteffdate = carteffdate;
	}

	public String getCarttermdate() {
		return carttermdate;
	}

	public void setCarttermdate(String carttermdate) {
		this.carttermdate = carttermdate;
	}

	public String getDotype() {
		return dotype;
	}

	public void setDotype(String dotype) {
		this.dotype = dotype;
	}

	public String getCartid() {
		return cartid;
	}

	public void setCartid(String cartid) {
		this.cartid = cartid;
	}

	public String getProcedurecode() {
		return procedurecode;
	}

	public void setProcedurecode(String procedurecode) {
		this.procedurecode = procedurecode;
	}

	public String getNPI() {
		return NPI;
	}

	public void setNPI(String npi) {
		NPI = npi;
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
		return provcode;
	}

	public void setProvcode(String provcode) {
		this.provcode = provcode;
	}

	public List<Adppo> getAdproccd() {
		return adproccd;
	}

	public void setAdproccd(List<Adppo> adproccd) {
		this.adproccd = adproccd;
	}

	public String getPageset() {
		return pageset;
	}

	public void setPageset(String pageset) {
		this.pageset = pageset;
	}

	public Integer getSizetotal() {
		return sizetotal;
	}

	public void setSizetotal(Integer sizetotal) {
		this.sizetotal = sizetotal;
	}

	public String getLatlon() {
		return latlon;
	}

	public void setLatlon(String latlon) {
		this.latlon = latlon;
	}

	public List<Adppo> getAdprocategory() {
		return adprocategory;
	}

	public void setAdprocategory(List<Adppo> adprocategory) {
		this.adprocategory = adprocategory;
	}

	public String getMstip() {
		return mstip;
	}

	public void setMstip(String mstip) {
		this.mstip = mstip;
	}

	public String getSubip() {
		return subip;
	}

	public void setSubip(String subip) {
		this.subip = subip;
	}

	public String getInrate() {
		return inrate;
	}

	public void setInrate(String inrate) {
		this.inrate = inrate;
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

	public String getPricegrpno() {
		return pricegrpno;
	}

	public void setPricegrpno(String pricegrpno) {
		this.pricegrpno = pricegrpno;
	}

	public String getPriceempno() {
		return priceempno;
	}

	public void setPriceempno(String priceempno) {
		this.priceempno = priceempno;
	}

	public String getPricedepno() {
		return pricedepno;
	}

	public void setPricedepno(String pricedepno) {
		this.pricedepno = pricedepno;
	}

	public String getProccd() {
		return proccd;
	}

	public void setProccd(String proccd) {
		this.proccd = proccd;
	}

	public List<Adppo> getEstcostclmdetl() {
		return estcostclmdetl;
	}

	public void setEstcostclmdetl(List<Adppo> estcostclmdetl) {
		this.estcostclmdetl = estcostclmdetl;
	}

	public List<Adppo> getAdppospobj2() {
		return adppospobj2;
	}

	public void setAdppospobj2(List<Adppo> adppospobj2) {
		this.adppospobj2 = adppospobj2;
	}

	public String getZipcode() {
		return Zipcode;
	}

	public void setZipcode(String zipcode) {
		Zipcode = zipcode;
	}

	public List<Adppo> getEstchecklUCR() {
		return estchecklUCR;
	}

	public void setEstchecklUCR(List<Adppo> estchecklUCR) {
		this.estchecklUCR = estchecklUCR;
	}

	public String getProccdesc() {
		return proccdesc;
	}

	public void setProccdesc(String proccdesc) {
		this.proccdesc = proccdesc;
	}

	public String getCpt() {
		return cpt;
	}

	public void setCpt(String cpt) {
		this.cpt = cpt;
	}

	public String getPpoprovname() {
		return ppoprovname;
	}

	public void setPpoprovname(String ppoprovname) {
		this.ppoprovname = ppoprovname;
	}

	 
	
	
}
