package com.pdsu.edu.claimfileimport.action;

 
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.channels.FileChannel;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
  
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
 
import com.aurorasoft.medi.common.util.ResponseOutTool;
import com.itextpdf.text.DocumentException;
import com.opensymphony.xwork2.ActionSupport;
import com.pdsu.edu.domain.Adeod;  
import com.pdsu.edu.domain.Adppo;
import com.pdsu.edu.domain.Advanceeod;
import com.pdsu.edu.domain.Claimfile;
import com.pdsu.edu.domain.Claimfilesession;
import com.pdsu.edu.domain.Fileimport;
import com.pdsu.edu.domain.Loginuser;
import com.pdsu.edu.domain.User;
import com.pdsu.edu.service.AdeodService;  
import com.pdsu.edu.service.AdvanceeodService;
import com.pdsu.edu.service.ClaimfileService;
import com.pdsu.edu.service.FileimportService;
import com.pdsu.edu.service.LoginService;
import com.pdsu.edu.service.UserService;
import com.pdsu.edu.syscom.util.SessionUser;
import com.pdsu.edu.claimfileimport.action.Filecheck;
  
import com.spire.pdf.*;
import com.spire.pdf.exporting.PdfImageInfo;
import com.spire.pdf.graphics.PdfBitmap;

/*
import org.codehaus.jackson.map.*;
import org.codehaus.jackson.node.JsonNodeFactory;
import org.codehaus.jackson.*;
import java.io.File;
*/

@Controller
@Scope("prototype")
public class ClaimfileimportAction  extends ActionSupport {
	 
	/**
	 * 
	 */
	private static final long serialVersionUID = -5998932512922608926L;
 
	@Autowired 
	private UserService userService;
	@Autowired 
	private AdeodService adeodService;
	@Autowired 
	private AdvanceeodService advanceeodService;
	@Autowired 
	private ClaimfileService claimfileService;
	
	private User user;
	private Adeod adeod; 
	private Advanceeod advanceeod; 
	private Claimfile claimfile;
	
	private String TaxID,fromdate1,ssn,ssnc,memberIDc,fromdate2;
	private String memberID;
	private String hidden_ssn;
	private String hidden_altid;
	private String hidden_memid;
	private String hidden_filename;
	private String hidden_fileId;
	private String dob,dobdep;
	
	private List<User> tempuser;
	private List<Adeod> tempadeod;
	private List<Advanceeod> temAdvanceeod;
	private List<Claimfile> temClaimfile,temfile; 
	

	private String filepath,filepath2,filepath3,filename;

	@Autowired 
	private FileimportService fileimportService;
	private Fileimport fileimport;
	private List<File> fileupload;
	private String fileuploadpath,fileuploadstatus,Filetype,fileuploadSize;
	private String dotype;
	private String logintype;
	private String usernumber;
	private String fromdate,enddate;
	private String filelinenum;
	private Filecheck tempFilecheck;
	private PdfCheck tempPdfcheck;
	private String errorinfo;
	private File tempfile; 
	
	private String methodinfo;
	private String emailaddressinfo;
	private String faxnumberinfo;
	private String usernumberinfo;
	
	private String grpno;
	private String empno;
	private String depno;
	private String hidden_grpno;
	private String hidden_empno;
	private String hidden_depno;
	private String hidden_login;
	private String hidden_password;
	private Integer rowsno;
	private Integer totalpage,pageno;
	private Integer beginrow;
	private Integer endrow;
	private Integer chossedepno;
	private String chossedotype;
	private String returndata;
	private String dofileup;
	private String delrequestid;
	private Integer temptotal;
	private String successform;
	private String docid;
	private String docids;
	private String delfilename;
	private String taxnumber;
	
	private List<Loginuser> loginUserList;
	@Autowired 
	private LoginService loginService;
	
	List<Claimfile> emaillistpobj;
	private List<Advanceeod> tempAdeods;
	
	public String showlist1(){
		String tempssnc=ssn;
		String tempgrpno=grpno;
		String tempmemberIDc=memberID;
		String tempfromdate1=dob;
		tempadeod=null;
		List<Adeod> tempadeodtemp = null;		
		List<Adeod> tempadeodtemp2 = null;		
		adeod= new Adeod();
		
		//dotype为cs说明从medi的custom service跳转过来
		if(dotype != null && (dotype.equals("cs") || dotype.equals("M"))){
			chossedotype=dotype;
			Loginuser loginuser=new Loginuser();
			
			if(null!=ssn && null!=dob){
			}else{
				Adeod adeod = new Adeod();
				adeod.setGrpno(Integer.valueOf(grpno));
				adeod.setEmpno(Integer.valueOf(empno));
				List<Adeod> insuredList = adeodService.selectInsuredInfo(adeod);
				tempssnc = insuredList.get(0).getSsn().toString();
				tempfromdate1 = new SimpleDateFormat("MM/dd/yyyy").format(insuredList.get(0).getDob());
			}
			loginuser.setSsn(Integer.valueOf(tempssnc));
			loginuser.setGr_number(Integer.valueOf(grpno));
			loginUserList=loginService.findLoginuser(loginuser);

			SessionUser sessionUser=new SessionUser();
			//SessionUser sessionUser = (SessionUser) ServletActionContext.getRequest().getSession().getAttribute("sessionUser");
			if(loginUserList.size()>0){
				//gr_number,subgroup,logintype,ppo;
				sessionUser.setDotype(dotype);
				sessionUser.setDob(tempfromdate1);
				sessionUser.setSsn(String.valueOf(loginUserList.get(0).getSsn()));
				sessionUser.setGr_number(String.valueOf(loginUserList.get(0).getGr_number()));
				sessionUser.setSubgroup(String.valueOf(loginUserList.get(0).getSubgroup()));
				sessionUser.setLogintype(String.valueOf(loginUserList.get(0).getLogintype()));
				sessionUser.setPpo(String.valueOf(loginUserList.get(0).getPpo()));
				sessionUser.setCorporationid(String.valueOf(loginUserList.get(0).getCorporationid()));
				sessionUser.setLogin(String.valueOf(loginUserList.get(0).getLogin()));
				sessionUser.setPassword(String.valueOf(loginUserList.get(0).getPassword()));
				ServletActionContext.getRequest().getSession().setAttribute("sessionUser", sessionUser);
				hidden_login=String.valueOf(loginUserList.get(0).getLogin());
				hidden_password=String.valueOf(loginUserList.get(0).getPassword());
			}
		}else{
			SessionUser sessionUser = (SessionUser) ServletActionContext
			.getRequest().getSession().getAttribute("sessionUser");
			if(null!=sessionUser){
				hidden_login=sessionUser.getLogin();
				hidden_password=sessionUser.getPassword();
				chossedotype=sessionUser.getDotype();
			}else{
				hidden_login=null;
				hidden_password=null;
				chossedotype=null;
			} 
			//if(null!=sessionUser.getDotype()){
			//	dotype=sessionUser.getDotype();
			//}
		}

		if(null==hidden_login && null==hidden_password){
			
			
		}
		
		
		
		if(null != tempssnc && !tempssnc.equals("")){
			adeod.setSsnc(Long.valueOf(tempssnc));
			if(null != tempfromdate1 && !tempfromdate1.equals("")){
				if(dotype != null && (dotype.equals("cs") || dotype.equals("M"))){setsession(tempssnc);}
				//adeod.setDobc(tempfromdate1);
				//adeod.setDepno(0);
				tempadeodtemp=adeodService.selpatientuser(adeod);
				Adeod a=new Adeod();
				if(tempadeodtemp.size()>0){
					//if( tempadeodtemp.get(0).getDepno()==0 ){
						a.setGrpno(tempadeodtemp.get(0).getGrpno());
						a.setEmpno(tempadeodtemp.get(0).getEmpno());
					//}else{
					//	a.setGrpno(tempadeodtemp.get(0).getGrpno());
					//	a.setEmpno(tempadeodtemp.get(0).getEmpno());
					//	if(null != tempmemberIDc && !tempmemberIDc.equals("")){
					//		a.setIdaltc(memberID);
					//	}
					//	if(null != tempssnc && !tempssnc.equals("")){
					//		a.setSsnc(Long.valueOf(tempssnc));
					//	}
					//	a.setDobc(tempfromdate1);
					//}
					tempadeodtemp=adeodService.selpatientuser(a);
					a.setDobc(tempfromdate1);
					tempadeod=adeodService.selpatientuser(a);
					chossedepno=tempadeod.get(0).getDepno();
					tempadeod=tempadeodtemp;
				}else{
					tempadeod=tempadeodtemp;
				}
			}
		}
		
		
		if(null != tempmemberIDc && !tempmemberIDc.equals("")){
			adeod.setIdaltc(memberID);
			tempadeodtemp=adeodService.selpatientuser(adeod);
			adeod.setDobc(tempfromdate1);
			tempadeodtemp2=adeodService.selpatientuser(adeod);
			
			Adeod b=new Adeod();			
			if(tempadeodtemp.size()>0 && tempadeodtemp2.size()>0){
				chossedepno=tempadeodtemp2.get(0).getDepno();
				if( tempadeodtemp.get(0).getDepno()==0 ){
					b.setGrpno(tempadeodtemp.get(0).getGrpno());
					b.setEmpno(tempadeodtemp.get(0).getEmpno());
					if(dotype != null && (dotype.equals("cs") || dotype.equals("M"))){setsession(String.valueOf(tempadeodtemp.get(0).getSsn()));}
				}else{
					b.setGrpno(tempadeodtemp.get(0).getGrpno());
					b.setEmpno(tempadeodtemp.get(0).getEmpno());
					b.setDobc(tempfromdate1);
				}
				tempadeod=adeodService.selpatientuser(b);
			}else if(tempadeodtemp.size()>0 && tempadeodtemp2.size()==0){
				b.setGrpno(tempadeodtemp.get(0).getGrpno());
				b.setEmpno(tempadeodtemp.get(0).getEmpno());
				b.setDobc(tempfromdate1);
				tempadeod=adeodService.selpatientuser(b);
				chossedepno=tempadeod.get(0).getDepno();
				if(dotype != null && (dotype.equals("cs") || dotype.equals("M"))){setsession(String.valueOf(tempadeodtemp.get(0).getSsn()));}
			}else{
				tempadeod=tempadeodtemp;
			}
			
		}
		
		return "showlist";
	}
	
	public void setsession(String tempssn) {
		SessionUser sessionUser = (SessionUser) ServletActionContext
		.getRequest().getSession().getAttribute("sessionUser");
		Loginuser loginuser=new Loginuser();
		//SessionUser sessionUser=new SessionUser();
		loginuser.setSsn(Integer.valueOf(tempssn));
		loginUserList=loginService.findLoginuser(loginuser);
		if(loginUserList.size()>0){
			//sessionUser.setDotype(dotype);
			sessionUser.setSsn(String.valueOf(loginUserList.get(0).getSsn()));
			sessionUser.setGr_number(String.valueOf(loginUserList.get(0).getGr_number()));
			sessionUser.setSubgroup(String.valueOf(loginUserList.get(0).getSubgroup()));
			sessionUser.setLogintype(String.valueOf(loginUserList.get(0).getLogintype()));
			sessionUser.setPpo(String.valueOf(loginUserList.get(0).getPpo()));
			sessionUser.setCorporationid(String.valueOf(loginUserList.get(0).getCorporationid()));
			sessionUser.setLogin(String.valueOf(loginUserList.get(0).getLogin()));
			sessionUser.setPassword(String.valueOf(loginUserList.get(0).getPassword()));
			ServletActionContext.getRequest().getSession().setAttribute("sessionUser", sessionUser);
			hidden_login=String.valueOf(loginUserList.get(0).getLogin());
			hidden_password=String.valueOf(loginUserList.get(0).getPassword());
		}
	}
	
	public String showlist() {
		String tempTaxID=TaxID;
		String tempfromdate1=fromdate1;
		String tempfromdate2=fromdate2;
		String tempmemberIDc=memberIDc;
		String tempssnc=ssn;
		//Calendar cd = Calendar.getInstance();
		//cd.add(Calendar.YEAR, -18); 
		adeod= new Adeod();
		
		if(null != tempssnc){
			adeod.setSsnc(Long.valueOf(tempssnc));
		}

		if(null != memberIDc){
			adeod.setIdaltc(memberIDc);
		}
		if(null != fromdate2){
			adeod.setDobc(fromdate2);
		}
		
		if(null != tempssnc){
			// tempuser=userService.findAllUser();
			tempadeod=adeodService.findPatient(adeod);
		}
		
		return "showlist";
		
	}
	

	public String add() {
		tempFilecheck=new Filecheck();
		tempPdfcheck=new PdfCheck();
		String fileType ="";
		String error="";
		
		
		Long insertDone=Long.valueOf(0); 
		String doc_str="";
		String do_ssn=hidden_ssn;
		String do_altid=hidden_altid; 
		String do_memid=hidden_memid;
		System.out.println(hidden_grpno);
		System.out.println(hidden_depno);
		String do_grpno=hidden_grpno.toString();
		String do_empno=hidden_empno.toString();
		String do_depno=hidden_depno.toString();
		String do_dob=dob;
		String do_taxnumber="";
		if(null!=taxnumber){
			taxnumber=taxnumber.replaceAll("-", "");
			do_taxnumber=taxnumber;
		}
		do_altid=do_memid;
    	int num=0;
		String realpath=ServletActionContext.getServletContext().getRealPath("/fileadvenceEOB");
		File files=new File(realpath);
    	String realpathold=ServletActionContext.getServletContext().getRealPath("/fileadvenceEOB/history");
    	File f = new File(realpathold);
		if(!f.exists()){
			f.mkdirs();
		}
		//***************************** 
		SessionUser sessionUser = (SessionUser) ServletActionContext
		.getRequest().getSession().getAttribute("sessionUser");
		String temp_ssn=sessionUser.getSsn();
		String temp_logintype=sessionUser.getLogintype();
		String do_memberid=sessionUser.getMsoid();  
		String do_dotype= sessionUser.getDotype();
		String do_Grnumber= sessionUser.getGr_number();
		String do_Subgroup = sessionUser.getSubgroup();
		String do_Ppo= sessionUser.getPpo();
		String do_Corporationid= sessionUser.getCorporationid();
		String do_Login= sessionUser.getLogin();
		String do_Password= sessionUser.getPassword();
		Long insertrequestid=null;
		
		/*SessionUser temFilenew = (SessionUser) ServletActionContext
		.getRequest().getSession().getAttribute("sessionUser");
		temFilenew.setLogin(hidden_login);
		temFilenew.setPassword(hidden_password);
		temFilenew.setDotype(do_dotype);
		*/
		//temFilenew.setSsn(do_ssn);
		//temFilenew.setGr_number(do_grpno);
		//temFilenew.setSubgroup(do_grpno);
		//temFilenew.setLogintype();
		//***********************************************************
		String tempFilenew="";
		if(fileupload != null){
		 
				Calendar calendar = Calendar.getInstance();
				String	calendarName = String.valueOf(calendar.getTimeInMillis());
				String HISTORYfileName = "";
				String HISTORYfileName2 = "";
				HISTORYfileName = "\\AdvanceEOB_"+do_ssn+do_altid + calendarName ;
				HISTORYfileName2 = "AdvanceEOB_" +do_ssn+do_altid+ calendarName  ; 
				//fileuploadSize="";
				
				for(int i=0;i<fileupload.size();i++){
						if(null!=fileupload.get(i)){ 
							fileType =tempFilecheck.getFileType(fileupload.get(i).getPath());
							if(null!=fileType){
								if(!fileType.equals("pdf")){
									fileupload.get(i).delete();
									error="wrong type";
									errorinfo="File type wrong! Can't update file! Only update pdf file.";
								}
							}else{
								fileupload.get(i).delete();
								error="wrong type";
								errorinfo="File type wrong! Can't update file!  Only update pdf file.";
							}
						}
					 
				}
				
				if(error.equals("")){
								for(int i=0;i<fileupload.size();i++){
									try {
										if(null!=fileupload.get(i)){ 
											if(fileupload.get(i).length()>2048000){
												try {
													tempPdfcheck.manipulatePdf(fileupload.get(i).getPath(), fileupload.get(i).getPath().replace(".tmp", "")+"temp.tmp");
													tempfile=new File(fileupload.get(i).getPath().replace(".tmp", "")+"temp.tmp");
												} catch (DocumentException e) {
													// TODO Auto-generated catch block
													e.printStackTrace();
												}
											}else{
												tempfile=fileupload.get(i);
											}
										//	pdfzip(fileupload.get(i).getPath());
										//	pdfimgzip(fileupload.get(i).getPath());
													if(i>0){
														FileUtils.copyFile(tempfile, new File(f,HISTORYfileName+"_"+i+ ".pdf"));
														FileUtils.copyFile(tempfile, new File(files,HISTORYfileName+"_"+i+ ".pdf"));
														
														insertDone=presssavefiles(Integer.valueOf(hidden_grpno),Integer.valueOf(hidden_depno),do_ssn,do_altid,HISTORYfileName2+"_"+i+ ".pdf",insertrequestid); 
														tempFilenew=tempFilenew+HISTORYfileName2+"_"+i+ ".pdf;";
														doc_str=doc_str+","+String.valueOf(insertDone);
													}else{
														FileUtils.copyFile(tempfile, new File(f,HISTORYfileName+ ".pdf"));
														FileUtils.copyFile(tempfile, new File(files,HISTORYfileName+ ".pdf"));

														Advanceeod advanceeod=new Advanceeod();
														temAdvanceeod=advanceeodService.findAdvanceeobid(advanceeod);
														insertrequestid=Long.valueOf(temAdvanceeod.get(0).getRequest_id());
														insertDone=presssavefiles(Integer.valueOf(hidden_grpno),Integer.valueOf(hidden_depno),do_ssn,do_altid,HISTORYfileName2+ ".pdf",insertrequestid); 
														tempFilenew=tempFilenew+HISTORYfileName2+ ".pdf;";
														doc_str=String.valueOf(insertDone);
													} 

													fileupload.get(i).delete();
										}
									} catch (IOException e) {
										// TODO Auto-generated catch block
										e.printStackTrace();
									}
									
								}
						insertMaintenance(Integer.valueOf(hidden_grpno),Integer.valueOf(hidden_depno),do_ssn,do_altid,HISTORYfileName2+ ".pdf",insertrequestid,doc_str,do_taxnumber); 
								
						error="";
						errorinfo=null;
						/*temFilenew.setFilenew(tempFilenew);
						ServletActionContext.getRequest().getSession().setAttribute("sessionUser", temFilenew);
						*/

						//***************************** 
						sessionUser.setDotype(do_dotype);
						sessionUser.setSsn(String.valueOf(temp_ssn));
						sessionUser.setGr_number(String.valueOf(do_Grnumber));
						sessionUser.setSubgroup(String.valueOf(do_Subgroup));
						sessionUser.setLogintype(String.valueOf(temp_logintype));
						sessionUser.setPpo(String.valueOf(do_Ppo));
						sessionUser.setCorporationid(String.valueOf(do_Corporationid));
						sessionUser.setLogin(String.valueOf(do_Login));
						sessionUser.setPassword(String.valueOf(do_Password));
						sessionUser.setFilenew(tempFilenew);
						ServletActionContext.getRequest().getSession().setAttribute("sessionUser", sessionUser);
						//***************************** 
				}else{
						/*temFilenew.setErrorinfo(error);
						ServletActionContext.getRequest().getSession().setAttribute("sessionUser", temFilenew);
						*/

						//***************************** 
						sessionUser.setDotype(do_dotype);
						sessionUser.setSsn(String.valueOf(temp_ssn));
						sessionUser.setGr_number(String.valueOf(do_Grnumber));
						sessionUser.setSubgroup(String.valueOf(do_Subgroup));
						sessionUser.setLogintype(String.valueOf(temp_logintype));
						sessionUser.setPpo(String.valueOf(do_Ppo));
						sessionUser.setCorporationid(String.valueOf(do_Corporationid));
						sessionUser.setLogin(String.valueOf(do_Login));
						sessionUser.setPassword(String.valueOf(do_Password));
						sessionUser.setErrorinfo(error);
						ServletActionContext.getRequest().getSession().setAttribute("sessionUser", sessionUser);
						//***************************** 
				}
				
				 
		}
		f=null;

		tempAdeods=new ArrayList<Advanceeod>();
		Advanceeod advanceeod =new Advanceeod();
		advanceeod.setRequest_id(insertrequestid);
		List<Advanceeod> temp=advanceeodService.findAdvanceeobadvpdf(advanceeod);
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
			A.setFile_name(temp.get(i).getFile_name());
			A.setDocids(temp.get(i).getDocids());
			tempAdeods.add(A);
		}
		temptotal=temp.size();
		successform="pdf";
		
		return "success";
	} 
	
	
	 public void pdfzip(String  path) {
	        //加载PDF示例文档
	        PdfDocument document = new PdfDocument(path);

	        //禁用incremental update
	        document.getFileInfo().setIncrementalUpdate(false);

	        //设置PDF文档的压缩级别
	        document.setCompressionLevel(PdfCompressionLevel.Best);

	        //保存并关闭文档
	        document.saveToFile(path);
	        document.close();
	        
	       
	    }
 
	

	  public void pdfimgzip(String  path) {
		  //加载PDF文档
	      PdfDocument document = new PdfDocument(path);
	
	      //禁用incremental update
	      document.getFileInfo().setIncrementalUpdate(false);
	
	      //遍历文档所有页面
	      for (int i = 0; i < document.getPages().getCount(); i++) {
	          //提取页面中的图片
	          PdfPageBase page = document.getPages().get(i);
	          PdfImageInfo[] images = page.getImagesInfo();
	          if (images != null && images.length > 0)
	              //遍历所有图片
	              for (int j = 0; j < images.length; j++) {
	                  PdfImageInfo image = images[j];
	                  PdfBitmap bp = new PdfBitmap(image.getImage());
	                  //降低图片的质量
	                  bp.setQuality(20);
	                  //用压缩后的图片替换原文档中的图片
	                  page.replaceImage(j, bp);
	              }
	      }
	      //保存并关闭文档
	      document.saveToFile(path);
	      document.close();
	   }
	  public void insertMaintenance(Integer grp,Integer dep,String str1,String str2,String filename,Long strid,String docstrid,String doctax) {
	        Long insertempssn=Long.valueOf(0); 
 
	        if("0".equals(dep)){
	        	insertempssn=Long.valueOf(str1);
	        }else{
	        	Adeod adeod=new Adeod();
	        	adeod.setGrpno(grp);
	        	adeod.setEmpno(Integer.valueOf(hidden_empno));
	        	adeod.setDepno(0);
	    		List<Adeod> tempadeodt=adeodService.selpatientuser(adeod);
	    		insertempssn=tempadeodt.get(0).getSsn();
	        }
	        
	       
			try {
				Advanceeod Adeodtemp=new Advanceeod(); 
				Adeodtemp.setDoc_id(docstrid); 
				Adeodtemp.setMaster_group(grp);
				Adeodtemp.setEmployee_ssn(insertempssn);
				Adeodtemp.setDep_no(dep);
				Adeodtemp.setLogin_area("S");
				Adeodtemp.setStatus(-1);
				if(null!=methodinfo){
					Adeodtemp.setDeliver_method(Integer.valueOf(methodinfo));
					if("0".equals(methodinfo)){
						Adeodtemp.setEmail_address(emailaddressinfo);
						Adeodtemp.setFax_number("");
						Adeodtemp.setMailing_address("");
					}
					if("1".equals(methodinfo)){
						Adeodtemp.setFax_number(faxnumberinfo);
						Adeodtemp.setEmail_address("");
						Adeodtemp.setMailing_address("");
					}
					if("2".equals(methodinfo)){ 
						Adeodtemp.setEmail_address("");
						Adeodtemp.setFax_number("");
							emailaddressinfo="";
							Claimfile email=new Claimfile(); 
							if(null!=grp){
								email.setGrp_no(Integer.valueOf(grp));
							}
							if(null!=hidden_empno){
								email.setEmp_no(Integer.valueOf(hidden_empno));
							} 
							email.setDep_no(Integer.valueOf(0));
							List<Claimfile> temp=claimfileService.findempEmaillist(email); 
							if(null!=temp && temp.size()>0){
						        for(int i=0;i<temp.size();i++){
						        	if(null!=temp.get(i)){
							        	if(null!=temp.get(i).getEmail()){
							        		emailaddressinfo=temp.get(i).getEmail();
							        	}
						        	}else{ 
						        		emailaddressinfo="";
						        	}
						        }
							}else{ 
								emailaddressinfo="";
							}
							Adeodtemp.setMailing_address(emailaddressinfo);
						}
					}
				 
				Adeodtemp.setToid(143717);
				Adeodtemp.setRequest_id(strid); 
				if(null!=doctax && !"".equals(doctax)){
					Adeodtemp.setFromid(Integer.valueOf(doctax));
				}
				advanceeodService.insertAeobMaintenances(Adeodtemp);
			} catch (Exception e) {
				// TODO Auto-generated catch block
			} 
		}  
	  
	public Long presssavefiles(Integer grp,Integer dep,String str1,String str2,String filename,Long strid) {
        SimpleDateFormat sdf =   new SimpleDateFormat("yyyy-MM-dd" ); 
        Long insertDone=Long.valueOf(0); 
        Long insertempssn=Long.valueOf(0); 
        claimfile=new Claimfile();
        if("0".equals(dep)){
        	insertempssn=Long.valueOf(str1);
        }else{
        	Adeod adeod=new Adeod();
        	adeod.setGrpno(grp);
        	adeod.setEmpno(Integer.valueOf(hidden_empno));
        	adeod.setDepno(0);
    		List<Adeod> tempadeodt=adeodService.selpatientuser(adeod);
    		insertempssn=tempadeodt.get(0).getSsn();
        }
        claimfile.setSsn(insertempssn);
        //claimfile.setSsn(Long.valueOf(str1));
        claimfile.setAltid(str2);
        claimfile.setFile_type("-1");
        claimfile.setFile_name(filename);
        Date temp_date = null;
        
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String currentDate = dateFormat.format(new Date());
        
		try {
			temp_date = sdf.parse(currentDate);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
        claimfile.setLast_updated(temp_date);
        claimfile.setRequestid(strid);
        claimfileService.insertFile(claimfile);
       // insertDone=claimfileService.insertFile(claimfile);
        insertDone=claimfile.getFileId();
      /*  String fileid="";
        List<Claimfile> claimfilet= claimfileService.findFileidmax(claimfile);
        if(null!=claimfilet){
         fileid=String.valueOf(claimfilet.get(0).getFileId());
        }*/
        /*
        SimpleDateFormat sdf2 =   new SimpleDateFormat("MM/dd/yyyy" ); 
		try {
			Advanceeod Adeodtemp=new Advanceeod();
			Long id = claimfile.getFileId();
			Adeodtemp.setDoc_id(id.intValue());
			//Integer mstno = adeodService.selectMstno(grpno);
			Adeodtemp.setMaster_group(grp);
			Adeodtemp.setEmployee_ssn(insertempssn);
			Adeodtemp.setDep_no(dep);
			Adeodtemp.setLogin_area("S");
			Adeodtemp.setStatus(0);
			if(null!=methodinfo){
				Adeodtemp.setDeliver_method(Integer.valueOf(methodinfo));
				if("0".equals(methodinfo)){
					Adeodtemp.setEmail_address(emailaddressinfo);
					Adeodtemp.setFax_number("");
					Adeodtemp.setMailing_address("");
				}
				if("1".equals(methodinfo)){
					Adeodtemp.setFax_number(faxnumberinfo);
					Adeodtemp.setEmail_address("");
					Adeodtemp.setMailing_address("");
				}
				if("2".equals(methodinfo)){ 
					Adeodtemp.setEmail_address("");
					Adeodtemp.setFax_number("");
						emailaddressinfo="";
						Claimfile email=new Claimfile(); 
						if(null!=grp){
							email.setGrp_no(Integer.valueOf(grp));
						}
						if(null!=hidden_empno){
							email.setEmp_no(Integer.valueOf(hidden_empno));
						} 
						email.setDep_no(Integer.valueOf(0));
						List<Claimfile> temp=claimfileService.findempEmaillist(email); 
						if(null!=temp && temp.size()>0){
					        for(int i=0;i<temp.size();i++){
					        	if(null!=temp.get(i)){
						        	if(null!=temp.get(i).getEmail()){
						        		emailaddressinfo=temp.get(i).getEmail();
						        	}
					        	}else{ 
					        		emailaddressinfo="";
					        	}
					        }
						}else{ 
							emailaddressinfo="";
						}
						Adeodtemp.setMailing_address(emailaddressinfo);
					}
				}
			 
			Adeodtemp.setToid(143717);
			Adeodtemp.setRequest_id(strid);
			//Adeodtemp.setFromid(Integer.valueOf(usernumberinfo));
			advanceeodService.insertAeobMaintenances(Adeodtemp);
		} catch (Exception e) {
			// TODO Auto-generated catch block
		}
		
        */
        
        
        return insertDone;
	}
	
	
	public String addpatientfile() {
		SessionUser sessionUser = (SessionUser) ServletActionContext
		.getRequest().getSession().getAttribute("sessionUser");
		String temp_ssn=sessionUser.getSsn();
		String temp_logintype=sessionUser.getLogintype();
		String do_ssn=hidden_ssn;
		String do_altid=hidden_altid; 
		String do_memberid=memberID; 
		String do_grpno=grpno.toString(); 
		String do_empno=empno.toString(); 
		String do_depno=depno.toString(); 
		String do_dotype1=dotype.toString(); 
		String do_dotype= sessionUser.getDotype();
		String do_dob=dob; 
		String do_taxnumber=taxnumber; 
		String do_path="addfile"; 
		
		
		
	        SimpleDateFormat sdf =   new SimpleDateFormat("yyyy-MM-dd" ); 
	        SimpleDateFormat df =   new SimpleDateFormat("MM/dd/yyyy" ); 
	        String temp_date = null;
	        String temp_date2 = null;
			try {
				if(null != fromdate && !"".equals(fromdate)){
					temp_date = String.valueOf(sdf.format(df.parse(fromdate)));
					fromdate=String.valueOf(df.format(df.parse(fromdate)));
				}else{
					String currentDate = sdf.format(new Date());
					temp_date = String.valueOf(sdf.parse(currentDate));
					fromdate=String.valueOf(df.format(new Date()));
				}
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				if(null != enddate && !"".equals(enddate)){
					temp_date2 = String.valueOf(sdf.format(df.parse(enddate)));
					enddate=String.valueOf(df.format(df.parse(enddate)));
				}else{
					String currentDate = sdf.format(new Date());
					temp_date2 = String.valueOf(sdf.parse(currentDate));
					enddate=String.valueOf(df.format(new Date()));
				}
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			//ServletActionContext.getRequest().getSession().setAttribute("sessionUser", sessionUser);
			
			if("Y".equals(dofileup)){
				
			}
			if("del".equals(dotype)){
				advanceeod=new Advanceeod();
				advanceeod.setRequest_id(Long.valueOf(delrequestid));
				advanceeod.setStatus(-1);
				advanceeodService.updateAeobclaim(advanceeod);
			}
			if("delAll".equals(dotype)){
				Claimfile claimfile=new Claimfile();
				claimfile.setRequestid(Long.valueOf(delrequestid)); 
				claimfileService.deleteMaintance(claimfile);
				String tempdelfilename="";
				List<Claimfile> tempClaimfile=claimfileService.findFilelist(claimfile);
					if(null!=tempClaimfile && tempClaimfile.size()>0){ 
						for(int i=0;i<tempClaimfile.size();i++){
							tempdelfilename=tempClaimfile.get(i).getFILE_NAME();
							deletefile(tempdelfilename);
						}
					}
				claimfileService.deleteFile(claimfile);
			}
			if("commit".equals(dotype)){
				advanceeod=new Advanceeod();
				advanceeod.setRequest_id(Long.valueOf(delrequestid));
				advanceeod.setStatus(0);
				advanceeodService.updateAeobclaim(advanceeod);
				advanceeodService.updateAeobclaimpdf(advanceeod);
				//do_path="addfile";
			}
		return do_path;
		
	}
	
	public String showstatu() {

		//***************************** 
		SessionUser sessionUser = (SessionUser) ServletActionContext
		.getRequest().getSession().getAttribute("sessionUser");
		String temp_ssn=sessionUser.getSsn();
		String temp_logintype=sessionUser.getLogintype();
		String do_memberid=sessionUser.getMsoid();  
		String do_dotype= sessionUser.getDotype();
		String do_Grnumber= sessionUser.getGr_number();
		String do_Subgroup = sessionUser.getSubgroup();
		String do_Ppo= sessionUser.getPpo();
		String do_Corporationid= sessionUser.getCorporationid();
		String do_Login= sessionUser.getLogin();
		String do_Password= sessionUser.getPassword();
		//***************************** 
	 
		
		String  loadstatus="<font>ready import!</font>";
		String  loadstatussize="";
		if(null != dotype && dotype.equals("add")){
			loadstatus="<font>Import doing......</font>";
		}

		fileuploadstatus=loadstatus; 
		
		SessionUser filestat1 = (SessionUser) ServletActionContext.getRequest().getSession().getAttribute("sessionUser");
		//if(filestat1!=null){
		//	if(null!=filestat1.getErrorinfo()){
		//		fileuploadstatus="<font>File type wrong! Can't import file!</font>";
		//	}
		//}
		
		String  reporting_entity_name=	null;
		String  reporting_entity_type=null;
		String  plan_name=null;
		String  plan_market_type=null;
		String  negotiation_arrangement= null;
		Long  temp_Fileid_=null;
		
		if(filestat1!=null){
			  reporting_entity_name=	filestat1.getReporting_entity_name();
			  reporting_entity_type=filestat1.getReporting_entity_type();
			  plan_name=filestat1.getPlan_name();
			  plan_market_type=filestat1.getPlan_market_type();
			  negotiation_arrangement= filestat1.getNegotiation_arrangement();
			  temp_Fileid_=filestat1.getFileId();
			}
		
		if(fileuploadpath!=null){	
			//File files=new File("C:\\PHCS\\20181207020711_RXPMJ.jpeg");
			//String realpath=ServletActionContext.getServletContext().getRealPath(fileuploadpath);
			//File files=new File(fileuploadpath);
			//fileuploadSize=String.valueOf(files.length());
			loadstatussize=fileuploadSize;
			SessionUser filestat=new SessionUser();
			filestat.setFileuploadname(fileuploadpath);
			filestat.setFileuploadstatus(loadstatus);
			filestat.setFileuploadSize(loadstatussize);
			
			if(filestat1!=null){
				filestat.setReporting_entity_name(reporting_entity_name);
				filestat.setReporting_entity_type(reporting_entity_type);
				filestat.setPlan_name(plan_name);
				filestat.setPlan_market_type(plan_market_type);
				filestat.setNegotiation_arrangement(negotiation_arrangement);
				filestat.setFileId(temp_Fileid_);
			}
			
			//***************************** 
			filestat.setDotype(do_dotype);
			filestat.setSsn(String.valueOf(temp_ssn));
			filestat.setGr_number(String.valueOf(do_Grnumber));
			filestat.setSubgroup(String.valueOf(do_Subgroup));
			filestat.setLogintype(String.valueOf(temp_logintype));
			filestat.setPpo(String.valueOf(do_Ppo));
			filestat.setCorporationid(String.valueOf(do_Corporationid));
			filestat.setLogin(String.valueOf(do_Login));
			filestat.setPassword(String.valueOf(do_Password));  
			//***************************** 
			
			ServletActionContext.getRequest().getSession().setAttribute("sessionUser", filestat);
			fileuploadpath="Choose file :"+fileuploadpath;
			filestat=null;
		}else{

		//if(!filestat.getFileuploadSize().equals("")){
		//if(filestat1!=null){
			fileuploadstatus=filestat1.getFileuploadstatus();
			fileuploadSize=filestat1.getFileuploadSize();
			fileuploadpath="Choose file :"+filestat1.getFileuploadname();
		}
		filestat1=null;
		return "showstatus";
	}
	
	
	public String showFiles()  {

		String realpath=ServletActionContext.getServletContext().getRealPath("/fileadvenceEOB");
		filename=realpath+"/"+filename;
		
		return "showfile";
		
	}
	

	public String showFilesbydocid()  {
		 String docfilename="";
		 
		 Claimfile docclaimfile=new Claimfile();
		 docclaimfile.setFileId(Long.valueOf(filename));
		List<Claimfile>   doctemfile=claimfileService.findFilelist(docclaimfile);
	        for(int i=0;i<doctemfile.size();i++){

	        	filename=doctemfile.get(i).getFile_name();
	        }  
		String realpath=ServletActionContext.getServletContext().getRealPath("/fileadvenceEOB");
		filename=realpath+"/"+filename;
		
		return "showfile";
		
	}
	
	public String delteFilebydocid()  {
	Advanceeod advanceeod =new Advanceeod();
	advanceeod.setRequest_id(Long.valueOf(delrequestid));
	String returnstr="success";
	//docid
	//delrequestid
	//dotype:del
	////delete//////////////////////////////////////////////////////////////////			
		if("del".equals(dotype)){
			Claimfile docclaimfile=new Claimfile();
			Claimfile docclaimfile1=new Claimfile();
			String tempdocids=docids;
			tempdocids=tempdocids.replace(","+docid, "");
			tempdocids=tempdocids.replace(docid, "");
				if(tempdocids.length()>0){
					if(",".equals(tempdocids.substring(0,1))){
						tempdocids=tempdocids.substring(1);
					}
					advanceeod.setForm_doc_id(tempdocids);
					advanceeodService.updateAeobclaim(advanceeod); 
					returnstr="success";
				}else{
					docclaimfile1.setRequestid(Long.valueOf(delrequestid));
					claimfileService.deleteMaintance(docclaimfile1);
					returnstr="addfile";
				}
			docclaimfile.setFileId(Long.valueOf(docid));
			claimfileService.deleteFile(docclaimfile);
			deletefile(delfilename);
		}
	////show//////////////////////////////////////////////////////////////////		
		tempAdeods=new ArrayList<Advanceeod>();
		List<Advanceeod> temp=advanceeodService.findAdvanceeobadvpdf(advanceeod);
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
			A.setFile_name(temp.get(i).getFile_name());
			A.setDocids(temp.get(i).getDocids());
			tempAdeods.add(A);
		}
		temptotal=temp.size();
		successform="pdf";
		return returnstr;
		
	}
	
	public String addFilelines()  {
		filelinenum=String.valueOf(Integer.valueOf(filelinenum)+1);
		
		return "addfileline";
		
	}

	public String delFilelines()  {
		return "delfileline";
		
	}
	
	
	public String showFileslist()  {
        SimpleDateFormat sdf =   new SimpleDateFormat("yyyy-MM-dd" ); 
        SimpleDateFormat df =   new SimpleDateFormat("MM/dd/yyyy" ); 
        String temp_date = null;
        String temp_date2 = null;
		try {
			if(null != fromdate && !"".equals(fromdate)){
				temp_date = String.valueOf(sdf.format(df.parse(fromdate)));
				fromdate=String.valueOf(df.format(df.parse(fromdate)));
			}else{
				String currentDate = sdf.format(new Date());
				//temp_date = String.valueOf(currentDate);
				fromdate=String.valueOf(df.format(new Date()));
			}
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			if(null != enddate && !"".equals(enddate)){
				temp_date2 = String.valueOf(sdf.format(df.parse(enddate)));
				enddate=String.valueOf(df.format(df.parse(enddate)));
			}else{
				String currentDate = sdf.format(new Date());
				//temp_date2 = String.valueOf(currentDate);
				enddate=String.valueOf(df.format(new Date()));
			}
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

        claimfile=new Claimfile();
        if(null!=hidden_ssn && !"".equals(hidden_ssn)){
            claimfile.setSsn(Long.valueOf(hidden_ssn));
        }
        if(null!=hidden_altid && !"".equals(hidden_altid)){
            claimfile.setAltid(hidden_altid);
        }
        claimfile.setFdate(temp_date);
        claimfile.setEdate(temp_date2);
        
        if(null != dotype && dotype.equals("del")){
            claimfile.setFileId(Long.valueOf(hidden_fileId)); 
        	deletefile(hidden_filename);
        	claimfileService.deleteFile(claimfile);
        	claimfileService.deleteMaintance(claimfile);
		}
        
        String[] temFilenew=null;
       SessionUser tempFilenew = (SessionUser) ServletActionContext.getRequest().getSession().getAttribute("sessionUser");
       if(null!=tempFilenew){
		   String tempstr=tempFilenew.getFilenew();
		   if(null!=tempstr){
			   temFilenew=tempstr.split(";");
		   }
       }
	   
	   
       temClaimfile=claimfileService.findFilelist(claimfile);
       temClaimfile.clear();
        temfile=claimfileService.findFilelist(claimfile);
        for(int i=0;i<temfile.size();i++){
        	Claimfile tf=new Claimfile();
        	tf.setFileId(temfile.get(i).getFileId());
        	tf.setRequestid(temfile.get(i).getRequestid());
        	tf.setFile_name(temfile.get(i).getFile_name());
        	tf.setUpdated(temfile.get(i).getUpdated());
        	tf.setAltid(null);
        	tf.setALTID(null);
        	tf.setEdate(null);
        	tf.setFdate(null);
        	tf.setFILE_ID(null);
        	tf.setFILE_NAME(null);
        	tf.setFile_type(null);
        	tf.setFILE_TYPE(null);
        	tf.setLast_updated(null);
        	tf.setSsn(null);
        	tf.setSSN(null);
        	tf.setLAST_UPDATED(null);
        	if(null!=temFilenew){
	            for(int ii=0;ii<temFilenew.length;ii++){
	            	if(temfile.get(i).getFile_name().equals(temFilenew[ii])){
	            		tf.setFlag("NEW");
	            	}
	            }
        	}else{
        		tf.setFlag(null);
        	} 
            temClaimfile.add(tf);
         
        }
		return "showfilelist";
	} 
	
	public void deletefile(String calendarName) {
	 
 
		String realpath=ServletActionContext.getServletContext().getRealPath("/fileadvenceEOB");
		File files=new File(realpath);
    	String realpathold=ServletActionContext.getServletContext().getRealPath("/fileadvenceEOB/history");
    	File f = new File(realpathold);
	 
		
		if(calendarName != null){
			 
				
				String HISTORYfileName = "";
				String HISTORYfileName2 = "";
				HISTORYfileName = "\\"+calendarName; 
				File files1=new File(f,HISTORYfileName);
				File files2=new File(files,HISTORYfileName);
				files1.delete();
				files2.delete();
				files1=null; 
				files2=null; 
			 
		}
		f=null; 
		files=null; 
	}

	
	public String advanceclaimsearch(){
		SimpleDateFormat sdf =   new SimpleDateFormat("yyyy-MM-dd" ); 
        SimpleDateFormat df =   new SimpleDateFormat("MM/dd/yyyy" ); 
        String temp_date = null;
        String temp_date2 = null;
		try {
			if(null != fromdate && !"".equals(fromdate)){
				temp_date = String.valueOf(sdf.format(df.parse(fromdate)));
				fromdate=String.valueOf(df.format(df.parse(fromdate)));
			}else{
				String currentDate = sdf.format(new Date());
				temp_date = String.valueOf(sdf.parse(currentDate));
				fromdate=String.valueOf(df.format(new Date()));
			}
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			if(null != enddate && !"".equals(enddate)){
				temp_date2 = String.valueOf(sdf.format(df.parse(enddate)));
				enddate=String.valueOf(df.format(df.parse(enddate)));
			}else{
				String currentDate = sdf.format(new Date());
				temp_date2 = String.valueOf(sdf.parse(currentDate));
				enddate=String.valueOf(df.format(new Date()));
			}
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "advanceclaimsearch";
	}
	
	public String showemaillist() {
		if(null==pageno || pageno.equals("")|| pageno==0){
			pageno=1;
		}
		//beginrow = pageno*20-20;
		//endrow = pageno*20;
		beginrow = pageno*rowsno-rowsno;
		endrow = pageno*rowsno;
		Claimfile email=new Claimfile();
		//email.setStatus(2);
		//email.setDeliver_method(1);
		email.setBeginrow(beginrow);
		email.setEndrow(endrow);
		List<Claimfile> temp=claimfileService.findEmaillist(email);
		List<Claimfile> EmailList=claimfileService.findEmaillistbyrow(email);
		emaillistpobj=new ArrayList<Claimfile>();
		if(EmailList != null && EmailList.size() > 0){
			for(int i=0;i<EmailList.size();i++){
			Claimfile A=new Claimfile();
			A.setRequestid(EmailList.get(i).getRequestid());
			A.setClaim_form_id(EmailList.get(i).getClaim_form_id());
			A.setClaim_number(EmailList.get(i).getClaim_number());
			A.setEmail_address(EmailList.get(i).getEmail_address());
			A.setMailing_address(EmailList.get(i).getMailing_address());
			A.setDatesubmitted(EmailList.get(i).getDatesubmitted());
			A.setDatecompleted(EmailList.get(i).getDatecompleted());
			emaillistpobj.add(A);
			}
		}
		
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
		return "emaillist";
	}
	 
	
	public void checkemail() {
		String returnstr="2";
		Claimfile email=new Claimfile();
		if(null!=hidden_ssn){
			email.setSsn(Long.valueOf(hidden_ssn));
		}
		if(null!=hidden_altid){
			email.setAltid(hidden_altid);
		}
		if(null!=hidden_memid){
			
		}
		if(null!=grpno){
			email.setGrp_no(Integer.valueOf(grpno));
		}
		if(null!=empno){
			email.setEmp_no(Integer.valueOf(empno));
		}
	//	if(null!=depno){
		//	email.setDep_no(Integer.valueOf(depno));
	//	}

		List<Claimfile> temp=claimfileService.findcheckEmaillist(email);
		//List<Claimfile> temp2=claimfileService.findcheckEmaillistbyrow(email);
		if(null!=temp && temp.size()>0){
	        for(int i=0;i<temp.size();i++){
	        	if(null!=temp.get(i)){
		        	if(null!=temp.get(i).getEmail().toUpperCase()){
		        		if( emailaddressinfo.toUpperCase().equals(temp.get(i).getEmail().toUpperCase())){
		        			returnstr="1";
		        		}else if(returnstr=="2" && !emailaddressinfo.toUpperCase().equals(temp.get(i).getEmail().toUpperCase())){
			        		returnstr="0";
			        	}
		        	}
	        	}
	        }
		} 
		ResponseOutTool.outputHtmlResult(returnstr, ServletActionContext.getResponse());
	}
	
	/*
    
      public static void www(String[] args) throws Exception {
        JsonNodeFactory f = new MappingJsonFactory();
        JsonParser jp = f.createJsonParser(new File(args[0]));
        JsonToken current;
        current = jp.nextToken();
        if (current != JsonToken.START_OBJECT) {
          System.out.println("Error: root should be object: quiting.");
          return;
        }
        while (jp.nextToken() != JsonToken.END_OBJECT) {
          String fieldName = jp.getCurrentName();
          // move from field name to field value
          current = jp.nextToken();
          if (fieldName.equals("records")) {
            if (current == JsonToken.START_ARRAY) {
              // For each of the records in the array
              while (jp.nextToken() != JsonToken.END_ARRAY) {
                // read the record into a tree model,
                // this moves the parsing position to the end of it
                JsonNode node = jp.readValueAsTree();
                // And now we have random access to everything in the object
                System.out.println("field1: " + node.get("field1").getValueAsText());
                System.out.println("field2: " + node.get("field2").getValueAsText());
              }
            } else {
              System.out.println("Error: records should be an array: skipping.");
              jp.skipChildren();
            }
          } else {
            System.out.println("Unprocessed property: " + fieldName);
            jp.skipChildren();
          }
        }                
      }
     

	*/
	
	
	
	public List<Adeod> getTempadeod() {
		return tempadeod;
	}

	public void setTempadeod(List<Adeod> tempadeod) {
		this.tempadeod = tempadeod;
	}




	public String getSsn() {
		return ssn;
	}

	public void setSsn(String ssn) {
		this.ssn = ssn;
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



	public String getFilepath() {
		return filepath;
	}



	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}



	public String getFilepath2() {
		return filepath2;
	}



	public void setFilepath2(String filepath2) {
		this.filepath2 = filepath2;
	}



	public String getFilepath3() {
		return filepath3;
	}



	public void setFilepath3(String filepath3) {
		this.filepath3 = filepath3;
	}



	public FileimportService getFileimportService() {
		return fileimportService;
	}



	public void setFileimportService(FileimportService fileimportService) {
		this.fileimportService = fileimportService;
	}



	public Fileimport getFileimport() {
		return fileimport;
	}



	public void setFileimport(Fileimport fileimport) {
		this.fileimport = fileimport;
	}



	 


	public List<File> getFileupload() {
		return fileupload;
	}


	public void setFileupload(List<File> fileupload) {
		this.fileupload = fileupload;
	}


	public String getFileuploadpath() {
		return fileuploadpath;
	}



	public void setFileuploadpath(String fileuploadpath) {
		this.fileuploadpath = fileuploadpath;
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



	public String getFiletype() {
		return Filetype;
	}



	public void setFiletype(String filetype) {
		Filetype = filetype;
	}


	public String getDotype() {
		return dotype;
	}


	public void setDotype(String dotype) {
		this.dotype = dotype;
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


	public List<Advanceeod> getTemAdvanceeod() {
		return temAdvanceeod;
	}


	public void setTemAdvanceeod(List<Advanceeod> temAdvanceeod) {
		this.temAdvanceeod = temAdvanceeod;
	}


	public List<Claimfile> getTemClaimfile() {
		return temClaimfile;
	}


	public void setTemClaimfile(List<Claimfile> temClaimfile) {
		this.temClaimfile = temClaimfile;
	}

	public String getHidden_filename() {
		return hidden_filename;
	}

	public void setHidden_filename(String hidden_filename) {
		this.hidden_filename = hidden_filename;
	}


	public String getHidden_fileId() {
		return hidden_fileId;
	}


	public void setHidden_fileId(String hidden_fileId) {
		this.hidden_fileId = hidden_fileId;
	}


	public String getFilename() {
		return filename;
	}


	public void setFilename(String filename) {
		this.filename = filename;
	}


	public String getFilelinenum() {
		return filelinenum;
	}


	public void setFilelinenum(String filelinenum) {
		this.filelinenum = filelinenum;
	}

 
	public List<Claimfile> getTemfile() {
		return temfile;
	}


	public void setTemfile(List<Claimfile> temfile) {
		this.temfile = temfile;
	}


	public String getErrorinfo() {
		return errorinfo;
	}


	public void setErrorinfo(String errorinfo) {
		this.errorinfo = errorinfo;
	}

	public String getMemberIDc() {
		return memberIDc;
	}

	public void setMemberIDc(String memberIDc) {
		this.memberIDc = memberIDc;
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

	public String getHidden_memid() {
		return hidden_memid;
	}

	public void setHidden_memid(String hidden_memid) {
		this.hidden_memid = hidden_memid;
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
 
	public String getUsernumber() {
		return usernumber;
	}

	public void setUsernumber(String usernumber) {
		this.usernumber = usernumber;
	}

	public String getUsernumberinfo() {
		return usernumberinfo;
	}

	public void setUsernumberinfo(String usernumberinfo) {
		this.usernumberinfo = usernumberinfo;
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


	public String getHidden_grpno() {
		return hidden_grpno;
	}


	public void setHidden_grpno(String hidden_grpno) {
		this.hidden_grpno = hidden_grpno;
	}


	public String getHidden_empno() {
		return hidden_empno;
	}


	public void setHidden_empno(String hidden_empno) {
		this.hidden_empno = hidden_empno;
	}


	public String getHidden_depno() {
		return hidden_depno;
	}


	public void setHidden_depno(String hidden_depno) {
		this.hidden_depno = hidden_depno;
	}


	public String getLogintype() {
		return logintype;
	}


	public void setLogintype(String logintype) {
		this.logintype = logintype;
	}


	public String getHidden_login() {
		return hidden_login;
	}


	public void setHidden_login(String hidden_login) {
		this.hidden_login = hidden_login;
	}


	public String getHidden_password() {
		return hidden_password;
	}


	public void setHidden_password(String hidden_password) {
		this.hidden_password = hidden_password;
	}


	public List<Claimfile> getEmaillistpobj() {
		return emaillistpobj;
	}


	public void setEmaillistpobj(List<Claimfile> emaillistpobj) {
		this.emaillistpobj = emaillistpobj;
	}

	public Integer getRowsno() {
		return rowsno;
	}

	public void setRowsno(Integer rowsno) {
		this.rowsno = rowsno;
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

	public Integer getChossedepno() {
		return chossedepno;
	}

	public void setChossedepno(Integer chossedepno) {
		this.chossedepno = chossedepno;
	}

	public String getChossedotype() {
		return chossedotype;
	}

	public void setChossedotype(String chossedotype) {
		this.chossedotype = chossedotype;
	}

	public String getReturndata() {
		return returndata;
	}

	public void setReturndata(String returndata) {
		this.returndata = returndata;
	}

	public String getDofileup() {
		return dofileup;
	}

	public void setDofileup(String dofileup) {
		this.dofileup = dofileup;
	}

	public List<Advanceeod> getTempAdeods() {
		return tempAdeods;
	}

	public void setTempAdeods(List<Advanceeod> tempAdeods) {
		this.tempAdeods = tempAdeods;
	}

	public String getDelrequestid() {
		return delrequestid;
	}

	public void setDelrequestid(String delrequestid) {
		this.delrequestid = delrequestid;
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

	public String getDocid() {
		return docid;
	}

	public void setDocid(String docid) {
		this.docid = docid;
	}

	public String getDocids() {
		return docids;
	}

	public void setDocids(String docids) {
		this.docids = docids;
	}

	public String getDelfilename() {
		return delfilename;
	}

	public void setDelfilename(String delfilename) {
		this.delfilename = delfilename;
	}

	public String getDobdep() {
		return dobdep;
	}

	public void setDobdep(String dobdep) {
		this.dobdep = dobdep;
	}

	public String getTaxnumber() {
		return taxnumber;
	}

	public void setTaxnumber(String taxnumber) {
		this.taxnumber = taxnumber;
	}

 
	
 
	
}
