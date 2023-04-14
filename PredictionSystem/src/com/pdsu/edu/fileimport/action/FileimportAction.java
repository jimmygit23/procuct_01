package com.pdsu.edu.fileimport.action;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.Writer;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


import net.sf.json.JSONObject; 

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.pdsu.edu.syscom.util.SessionUser;
import com.opensymphony.xwork2.ActionSupport;
import com.pdsu.edu.domain.Fileimport; 
import com.pdsu.edu.service.FileimportService;


import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
  
  



@Controller
@Scope("prototype")
public class FileimportAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String filepath,filepath2,filepath3;
	@Autowired 
	private FileimportService fileimportService;
	private Fileimport fileimport;
	private File fileupload;
	private String fileuploadpath,fileuploadstatus,fileuploadSize,Filetype;
	
	 
	
	public String showstatu() {
		String  loadstatus="<font>ready import!</font>";
		String  loadstatussize="";
		fileuploadstatus=loadstatus;
		fileuploadSize=loadstatussize;


		SessionUser filestat1 = (SessionUser) ServletActionContext.getRequest().getSession().getAttribute("sessionUser");
		
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
		return "statusline";
	}
	
	
	public String add() {
		
    	int num=0;

		String realpath=ServletActionContext.getServletContext().getRealPath("/fileupload");
    	String realpathold=ServletActionContext.getServletContext().getRealPath("/fileupload/history");
    	File f = new File(realpathold);
		if(!f.exists()){
			f.mkdirs();
		}
		
		if(fileupload != null){
			try {
				Calendar calendar = Calendar.getInstance();
				String	calendarName = String.valueOf(calendar.getTimeInMillis());
				String HISTORYfileName = "";
				if(Filetype.equals("inn")){
					 HISTORYfileName = "\\INN_Format_" + calendarName + ".JSON" ;
				}else if(Filetype.equals("oon")){
					 HISTORYfileName = "\\OON_Format_" + calendarName + ".JSON" ;
				}else if(Filetype.equals("cmsinn")){
					 HISTORYfileName = "\\CMSINN_Format_" + calendarName + ".JSON" ;
				}else if(Filetype.equals("cmsoon")){
					 HISTORYfileName = "\\CMSOON_Format_" + calendarName + ".JSON" ;
				}else{
					 HISTORYfileName = "\\INN_Format_" + calendarName + ".JSON" ;
				}
				FileUtils.copyFile(fileupload, new File(f,HISTORYfileName));
			
    	
				// File file = new File(realpath+"\\INN_Format2.json");
				 File file = new File(f+HISTORYfileName); 
		      
					if (file.isFile() && file.exists()) { 
						
						//----------change status-->>----------------------------------------------------------------------------
						String readfileName= file.getName();
						String readfileSize=String.valueOf(file.length());
						SessionUser filestat=new SessionUser();
						filestat.setFileuploadname(readfileName);
						filestat.setFileuploadstatus("&nbsp;&nbsp;<font>Start !</font>");
						filestat.setFileuploadSize(readfileSize);
						ServletActionContext.getRequest().getSession().setAttribute("sessionUser", filestat);
						filestat=null;
						//----------change status--<<---------------------------------------------------------------------------
						try{
							 InputStream in = new FileInputStream(file);
				             Reader reader = new InputStreamReader(in, "utf-8");
				             BufferedReader bufferedReader = new BufferedReader(reader);
				             String lineTxt = null;
		
				                    
				             try {
		                    	 
			                        while ((lineTxt = bufferedReader.readLine()) != null) {
			                			if(lineTxt != null)createFile("INN_ONN_Format",lineTxt,"FILE",Filetype);
			                        	num=num+1;
			                        }
			                        lineTxt = null;	
			                        bufferedReader.close();
			                        reader.close();
			                        in.close();
			                     }catch (IOException e) {
				                        System.out.println("error：file read error");
				                         e.printStackTrace();
				                }
			                     
			                     num=0;
				         		 File fileFormat = new File(realpath+"\\INN_ONN_Format.json");
			                     in = new FileInputStream(fileFormat);
					             reader = new InputStreamReader(in, "utf-8");
					             bufferedReader = new BufferedReader(reader);
					             try {
					            	 readlog("N");
				                        if(Filetype.equals("inn")){
					                        while ((lineTxt = bufferedReader.readLine()) != null) {
					                        	process(lineTxt);
					                        	num=num+1;
					                        }
					       				}else if(Filetype.equals("oon")){
					                        while ((lineTxt = bufferedReader.readLine()) != null) {
					                        	oonprocess(lineTxt);
					                        	num=num+1;
					                        }
					       				}else if(Filetype.equals("cmsinn")){
					                        while ((lineTxt = bufferedReader.readLine()) != null) {
					                        	cmsinnprocess(lineTxt);
					                        	num=num+1;
					                        }
					       				}else if(Filetype.equals("cmsoon")){
					                        while ((lineTxt = bufferedReader.readLine()) != null) {
					                        	cmsoonprocess(lineTxt);
					                        	num=num+1;
					                        }
					       				}else{
					                        while ((lineTxt = bufferedReader.readLine()) != null) {
					                        	process(lineTxt);
					                        	num=num+1;
					                        }
					       				}
				                        lineTxt = null;	
				                        bufferedReader.close();
				                        reader.close();
				                        in.close();
				                        	
				                     }catch (IOException e) {
					                        System.out.println("error：file read error");
					                         e.printStackTrace();
					                }
				                     
				  			System.out.println("\r\nIMPORT "+num+" FILES \r\n" );

							//----------change status-->>----------------------------------------------------------------------------
				  			filestat=new SessionUser();
				  			readfileName =filestat.getFileuploadname();
							filestat.setFileuploadname(readfileName);
				  			filestat.setFileuploadstatus("&nbsp;&nbsp;<font>Finish Import!</font>");
							ServletActionContext.getRequest().getSession().setAttribute("sessionUser", filestat);
							filestat=null;
							//----------change status--<<---------------------------------------------------------------------------
							
						}catch (IOException e) {

							//----------change status-->>----------------------------------------------------------------------------
							filestat=new SessionUser();
				  			readfileName =filestat.getFileuploadname();
							filestat.setFileuploadname(readfileName);
								if(Filetype.equals("inn")){ 
									filestat.setFileuploadstatus("&nbsp;&nbsp;Import INN_FILE error");
		           				}else if(Filetype.equals("oon")){ 
									filestat.setFileuploadstatus("&nbsp;&nbsp;Import OON_FILE error");
		           				}else{ 
									filestat.setFileuploadstatus("&nbsp;&nbsp;Import INN_FILE error");
		           				}
							ServletActionContext.getRequest().getSession().setAttribute("sessionUser", filestat);
							filestat=null;
							//----------change status--<<---------------------------------------------------------------------------
							
		                    System.out.println("error：file not exist!");
		                    e.printStackTrace();
		                }
					}
				//}
			} catch (IOException e) {

				//----------change status-->>----------------------------------------------------------------------------
				SessionUser filestat=new SessionUser();
	  			String readfileName =filestat.getFileuploadname();
				filestat.setFileuploadname(readfileName);
				if(Filetype.equals("inn")){ 
					filestat.setFileuploadstatus("&nbsp;&nbsp;Import INN_FILE error");
   				}else if(Filetype.equals("oon")){ 
   					filestat.setFileuploadstatus("&nbsp;&nbsp;Import OON_FILE error");
   				}else{ 
   					filestat.setFileuploadstatus("&nbsp;&nbsp;Import INN_FILE error");
   				}
				ServletActionContext.getRequest().getSession().setAttribute("sessionUser", filestat);
				filestat=null;
				//----------change status--<<---------------------------------------------------------------------------
				
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
			 	SessionUser sessionUser2=new SessionUser();
			    sessionUser2.setReporting_entity_name(null);
			    sessionUser2.setReporting_entity_type(null);
			    sessionUser2.setPlan_name(null);
			    sessionUser2.setPlan_market_type(null);
			    sessionUser2.setNegotiation_arrangement(null);
			    sessionUser2.setFileId(null);
				ServletActionContext.getRequest().getSession().setAttribute("sessionUser", sessionUser2);
				sessionUser2=null;

				f=null;
		return "success";
	}

	public void cmsinnprocess(String txtStr) throws IOException {
		 String temp_reporting_entity_name = null; 				// (1)
	     String temp_reporting_entity_type = null; 				// (2)
	     String temp_plan_name = null; 							// (3)
	     String temp_plan_market_type = null; 					// (4)
	     String temp_plan_id = null;//--<==for CMS INN  		// (5)
	     String temp_plan_id_type = null;//--<==for CMS INN  	// (6)
	     Long temp_Fileid_=null; 								// (7)
		 SessionUser sessionUser = (SessionUser) ServletActionContext.getRequest().getSession().getAttribute("sessionUser");
		 if(sessionUser!=null){
			  temp_reporting_entity_name = sessionUser.getReporting_entity_name();	// (1)
		      temp_reporting_entity_type = sessionUser.getReporting_entity_type();	// (2)
		      temp_plan_name = sessionUser.getPlan_name();							// (3)
		      temp_plan_market_type = sessionUser.getPlan_market_type();			// (4)
		      temp_plan_id = sessionUser.getPlan_id();								// (5)
		      temp_plan_id_type=sessionUser.getPlan_id_type();						// (6)
		      temp_Fileid_=sessionUser.getFileId();									// (7)
		 }
		  
		 String insertNew="N";
		 String realpath=ServletActionContext.getServletContext().getRealPath("/fileupload");
		 String SQLStrLog="";
	     Integer strL=txtStr.length();
	     String strF=txtStr.substring(0,1);
	     String strE=txtStr.substring(strL-1,strL);
	        if(strF.equals("[") && strE.equals("]")){
	        	txtStr=txtStr.substring(1,strL-1); 						// delete '[' and ']'
	        }

	        String jsonStr = txtStr;
	        JSONObject jsonObj = JSONObject.fromObject(jsonStr);
	        
	        String reporting_entity_name = jsonObj.getString("reporting_entity_name");		// (1)
	        String reporting_entity_type = jsonObj.optString("reporting_entity_type");		// (2)
	        String plan_name = jsonObj.getString("plan_name");								// (3)
	        String plan_id_type = jsonObj.getString("plan_id_type");						// (4)
	        String plan_id = jsonObj.getString("plan_id");									// (5)
	        String plan_market_type = jsonObj.optString("plan_market_type");				// (6)
	        String in_network = jsonObj.getString("in_network"); 							// 		(9)
	        String last_updated_on = jsonObj.optString("last_updated_on");					// (8)
	        SimpleDateFormat sdf =   new SimpleDateFormat("yyyy-MM-dd hh:mm:ss" );  
	        Integer insertDone=0; 
	        Long temp_fileid=null;
	        
	        if(!reporting_entity_name.equals(temp_reporting_entity_name))insertNew="Y";		// (1)
	        if(!reporting_entity_type.equals(temp_reporting_entity_type))insertNew="Y";		// (2)
	        if(!plan_name.equals(temp_plan_name))insertNew="Y";								// (3)
	        if(!plan_id_type.equals(temp_plan_id_type))insertNew="Y";						// (4)
	        if(!plan_id.equals(temp_plan_id))insertNew="Y";									// (5)
	        if(!plan_market_type.equals(temp_plan_market_type))insertNew="Y";				// (6)
	        
		   try {

			   System.out.println("json: SQLStrLog START CMSINN_FILE IMPORT!\r\n" );
			   if(insertNew.equals("Y")){
		        	
				   fileimport=new Fileimport();										// (1)
				   fileimport.setReporting_entity_name(reporting_entity_name);		// (2)
				   fileimport.setPlan_name(plan_name);								// (3)
				   fileimport.setPlan_id(plan_id);									// (4)
				   fileimport.setPlan_id_type(plan_id_type);						// (5)
				   fileimport.setPlan_market_type(plan_market_type);				// (6)
				   Date temp_date = sdf.parse(last_updated_on); 
				   fileimport.setLast_updated_on(temp_date);						// (8)
				   insertDone= fileimportService.insertCMSFile(fileimport); //  need change
				   temp_fileid=fileimport.getFileId();								// (7)
				   
				   String readfileName =null;
		  		   String readfileSize =null;
		  		   String readfileStat =null;
		  			
				   if(insertDone==1){
					   String SQLStr="insert into TBL_RATES_CMS_INN_FILE(FILE_ID,ENTITY_NAME,PLAN_NAME,PLAN_ID_TYPE,PLAN_ID,MARKET_TYPE,LAST_UPDATED_ON) ";
					   SQLStr=SQLStr+"values("+temp_fileid+",'"+reporting_entity_name+"','"+plan_name+"','"+plan_id_type+"','"+plan_id+"','"+plan_market_type+"','"+"','"+last_updated_on+"'); ";
					   SQLStrLog=readlog("R");//SQLStrLog=readlog("N");
					   SQLStrLog=SQLStrLog+"CMS_INN_FILE: FILE_ID="+temp_fileid+"\r\n";
					   SQLStrLog=SQLStrLog+SQLStr+ "\r\n";
					   writelog(SQLStrLog);  
	
					   System.out.println(" FILE_ID= "+temp_fileid+" \r\n "+SQLStr+" \r\n" ); 

						//----------change status-->>----------------------------------------------------------------------------
						SessionUser filestat1=(SessionUser) ServletActionContext.getRequest().getSession().getAttribute("sessionUser");
			  			readfileName =filestat1.getFileuploadname();
			  			readfileSize =filestat1.getFileuploadSize();
						readfileStat="Import <font>CMSINN_FILE</font>: FILE_ID="+temp_fileid;
						filestat1=null;
						//----------change status--<<---------------------------------------------------------------------------
						
				   }
				   fileimport=null;
				   SessionUser sessionUser1=new SessionUser();
				    temp_Fileid_=temp_fileid;
				   	sessionUser1.setReporting_entity_name(reporting_entity_name);	// (1)
			        sessionUser1.setReporting_entity_type(reporting_entity_type);	// (2)
			        sessionUser1.setPlan_name(plan_name);							// (3)
			        sessionUser1.setPlan_id_type(plan_id_type);						// (4)
			        sessionUser1.setPlan_id(plan_id);								// (5)
			        sessionUser1.setPlan_market_type(plan_market_type);				// (6)
			        sessionUser1.setFileId(temp_Fileid_);							// (7)
			        sessionUser1.setFileuploadname(readfileName);
			        sessionUser1.setFileuploadSize(readfileSize);
			        sessionUser1.setFileuploadstatus(readfileStat);
					ServletActionContext.getRequest().getSession().setAttribute("sessionUser", sessionUser1);

		        }
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		  Long temp_processProid=null;
          if(temp_Fileid_!=null){
  			   if(in_network != null)createFile("processinnetwork",in_network,"in_network","cmsinn");
			   if(in_network != null&&temp_Fileid_!=null){
					     File file1 = new File(realpath+"\\processinnetwork.json");
					     InputStream in1 = new FileInputStream(file1);
			             Reader reader1 = new InputStreamReader(in1, "utf-8");
			             BufferedReader bufferedReader1 = new BufferedReader(reader1);
			             String lineTxt1 = null;
		               try {
                 	 
	                        while ((lineTxt1 = bufferedReader1.readLine()) != null) {
	         				    temp_processProid=processInNetwork(lineTxt1,temp_Fileid_);
	         			        
	                        }
	                        	
	                     }catch (IOException e) {
		                        System.out.println("error：processinnetwork.json read error");
		                         e.printStackTrace();
		                }
		        }
          }
		System.out.println("json: SQLStrLog CMSINN_FORMAT FILE IMPORT COMPLETE! \r\n" );
	}
	
	public void cmsoonprocess(String txtStr) throws IOException {
		
	}
	 public Long processInNetwork(String txtStr,Long fileid) throws IOException {
		 	String realpath=ServletActionContext.getServletContext().getRealPath("/fileupload");
		    Integer strL=txtStr.length();
		    Integer Tin_total=0;
	        String strF=txtStr.substring(0,1);
	        String strE=txtStr.substring(strL-1,strL);
	        if(strF.equals("[") && strE.equals("]")){
	        	txtStr=txtStr.substring(1,strL-1);
	        }

	        String jsonStr = txtStr;
	        JSONObject jsonObj = JSONObject.fromObject(jsonStr);
	        String negotiation_arrangement=jsonObj.getString("negotiation_arrangement");
	        String name=jsonObj.getString("name");
	        String billing_code_type=jsonObj.getString("billing_code_type");
	        String billing_code_type_version=jsonObj.getString("billing_code_type_version");
	        String billing_code=jsonObj.getString("billing_code");
	        String description=jsonObj.getString("description");
	        String negotiated_rates=jsonObj.getString("negotiated_rates");
	        String bundled_codes=jsonObj.getString("bundled_codes");
	        String covered_services=jsonObj.getString("covered_services");
	       
	        
			fileimport=new Fileimport();
			Integer insertDone=0;
			Long temp_Innetworkid=null;
		    SimpleDateFormat sdf =   new SimpleDateFormat("yyyy-MM-dd" );  
			Date temp_date;
			String SQLStr="";
				fileimport.setInnetworkfileId(fileid);   
				   fileimport.setNegotiation_arrangement(negotiation_arrangement);
				   fileimport.setName(name);
				   fileimport.setBilling_code_type(billing_code_type);
				   fileimport.setBilling_code_type_version(billing_code_type_version);
				   fileimport.setBilling_code(billing_code);
				   fileimport.setDescription(description);
				  
				   insertDone= fileimportService.insertInnetwork(fileimport); //  need change
				   temp_Innetworkid=fileimport.getInnetworkid(); 
				fileimport=null;

				String SQLStrTINLog="";
				if(insertDone==1){
					SQLStr="insert into TBL_RATES_CMSINN_INNETWORK(NETWORK_ID,FILE_ID,NEGOTIATION_ARRANGEMENT,NAME,BILLING_CODE_TYPE,BILLING_CODE_TYPE_VERSION,BILLING_CODE,DESCRIPTION) ";
					SQLStr=SQLStr+"values("+temp_Innetworkid+","+fileid+",'"+negotiation_arrangement+"','"+name+"','"+billing_code_type+"','"+billing_code_type_version+"','"+billing_code+"','"+description+"'); ";
					System.out.println(" json: SQLStrLog\r\n INNETWORK: NETWORK_ID="+temp_Innetworkid+"\r\n "+SQLStr +" \r\n");
						
					//----------change status-->>----------------------------------------------------------------------------
					SessionUser filestat1=(SessionUser) ServletActionContext.getRequest().getSession().getAttribute("sessionUser");
				 
					String  reporting_entity_name=	filestat1.getReporting_entity_name();	// (1)
					String  reporting_entity_type=filestat1.getReporting_entity_type();		// (2)
					String  plan_name=filestat1.getPlan_name();								// (3)
					String  plan_id_type=filestat1.getPlan_id_type();						// (4)
					String  plan_id=filestat1.getPlan_id();									// (5)
					String  plan_market_type=filestat1.getPlan_market_type(); 				// (6)
					Long  temp_Fileid_=filestat1.getFileId();								// (7)
					
		  			String readfileName =filestat1.getFileuploadname();
		  			String readfileSize =filestat1.getFileuploadSize();
		  			SessionUser filestat=new SessionUser();
					filestat.setFileuploadname(readfileName);
					filestat.setFileuploadSize(readfileSize);
					filestat.setFileuploadstatus("&nbsp;&nbsp;Import <font>INNETWORK</font>: &nbsp;&nbsp;NETWORK_ID="+temp_Innetworkid);

					filestat.setReporting_entity_name(reporting_entity_name);	// (1)
					filestat.setReporting_entity_type(reporting_entity_type);	// (2)
					filestat.setPlan_name(plan_name);							// (3)
					filestat.setPlan_id_type(plan_id_type);						// (4)
					filestat.setPlan_id(plan_id);								// (5)
					filestat.setPlan_market_type(plan_market_type);				// (6)
					filestat.setFileId(temp_Fileid_);							// (7)
			        
			        
					ServletActionContext.getRequest().getSession().setAttribute("sessionUser", filestat);
					filestat=null;
					filestat1=null;
					//----------change status--<<---------------------------------------------------------------------------
					
					if(negotiated_rates!=null && temp_Innetworkid!=null){
						createFile("processnegotiated_rates",negotiated_rates,"negotiated_rates","cmsinn");
						File filenetwork = new File(realpath+"\\processnegotiated_rates.json");
						InputStream innetwork = new FileInputStream(filenetwork);
					    Reader readernetwork = new InputStreamReader(innetwork, "utf-8");
					    BufferedReader bufferedReadernetwork = new BufferedReader(readernetwork);
					    String lineTxtnetwork= null;
					    try {
				                        while ((lineTxtnetwork= bufferedReadernetwork.readLine()) != null) { 
					                        	JSONObject jsonObjnetwork = JSONObject.fromObject(lineTxtnetwork);
					                	        String negotiated_price=jsonObjnetwork.getString("negotiated_price");
					                	        String providers=jsonObjnetwork.getString("providers");
					                	        String tin=jsonObjnetwork.getString("tin");
					                	        String service_code=jsonObjnetwork.getString("service_code");
					                	        
					                	        
					                	        SQLStr=SQLStr+" insert into negotiated_rates() values() \r\n";
					                	        //-------->>>--------negotiated_price----------------------------------------------------
					                	        createFile("processnegotiated_price",negotiated_price,"negotiated_price","cmsinn");
					                	        File filenegotiated_price = new File(realpath+"\\processnegotiated_price.json");
					    						InputStream inprice = new FileInputStream(filenegotiated_price);
					    					    Reader readerprice = new InputStreamReader(inprice, "utf-8");
					    					    BufferedReader bufferedReaderprice= new BufferedReader(readerprice);
					    					    String lineTxtprice= null;
					    					    while ((lineTxtprice= bufferedReaderprice.readLine()) != null) {
						                        	JSONObject jsonObjnprice= JSONObject.fromObject(lineTxtprice);
						                	        String negotiated_type=jsonObjnprice.getString("negotiated_type");
						                	        String negotiated_rate=jsonObjnprice.getString("negotiated_rate");
						                	        String expiration_date=jsonObjnprice.getString("expiration_date");
						                	        SimpleDateFormat sdfprice =   new SimpleDateFormat("yyyy-MM-dd" );  
						         				   	Date temp_dateprice = sdfprice.parse(expiration_date); 

						                	        SQLStr=SQLStr+" insert into negotiated_rates_price() values() \r\n";
					    					    }
					                	        //--------<<<--------negotiated_price----------------------------------------------------
					    						 
					                	        
					                	        //-------->>>--------ProvidersLoop----------------------------------------------------
					    						String ProvidersLoop[]=providers.split(",");
					    						for(int i=0;i<ProvidersLoop.length;i++){
					    							insertDone=0;
					    							String tempProvider=ProvidersLoop[i].trim();
					    							

						                	        SQLStr=SQLStr+" insert into negotiated_rates_providers() values() \r\n";
					    						}
					    						//--------<<<--------ProvidersLoop----------------------------------------------------
					    						
					    						
				                        }
			    						System.out.println(" json: SQLStrLog  negotiated_price \r\n");
				        }catch (IOException e) {
					                    System.out.println("error：processnegotiated_rates.json read error");
					                    e.printStackTrace();
					    } catch (ParseException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					}
					if( bundled_codes!=null && temp_Innetworkid!=null){
						createFile("processbundled_codes",bundled_codes,"bundled_codes","cmsinn");
						File filenetwork = new File(realpath+"\\processbundled_codes.json");
						InputStream innetwork = new FileInputStream(filenetwork);
					    Reader readernetwork = new InputStreamReader(innetwork, "utf-8");
					    BufferedReader bufferedReadernetwork = new BufferedReader(readernetwork);
					    String lineTxtnetwork = null;
					    try {
				                        while ((lineTxtnetwork = bufferedReadernetwork.readLine()) != null) { 
				                        		JSONObject jsonObjnetwork = JSONObject.fromObject(lineTxtnetwork);
					                	        String bundledbilling_code_type=jsonObjnetwork.getString("billing_code_type");
					                	        String bundledbilling_code_type_version=jsonObjnetwork.getString("billing_code_type_version");
					                	        String bundledbilling_code=jsonObjnetwork.getString("billing_code");
					                	        String bundleddescription=jsonObjnetwork.getString("description");

					                	        SQLStr=SQLStr+" insert into bundled_codes() values() \r\n";
				                        }
			    						System.out.println(" json: SQLStrLog  bundled_codes \r\n");
					    }catch (IOException e) {
		                    System.out.println("error：processbundled_codes.json read error");
		                    e.printStackTrace();
					    }
					}
					if(covered_services!=null && temp_Innetworkid!=null){
						createFile("processcovered_services",covered_services,"covered_services","cmsinn");
						File filenetwork = new File(realpath+"\\processcovered_services.json");
						InputStream innetwork = new FileInputStream(filenetwork);
					    Reader readernetwork = new InputStreamReader(innetwork, "utf-8");
					    BufferedReader bufferedReadernetwork = new BufferedReader(readernetwork);
					    String lineTxtnetwork = null;
					    try {
				                        while ((lineTxtnetwork = bufferedReadernetwork.readLine()) != null) { 
				                        		JSONObject jsonObjnetwork = JSONObject.fromObject(lineTxtnetwork);
					                	        String coveredbilling_code_type=jsonObjnetwork.getString("billing_code_type");
					                	        String coveredbilling_code_type_version=jsonObjnetwork.getString("billing_code_type_version");
					                	        String coveredbilling_code=jsonObjnetwork.getString("billing_code");
					                	        String bundleddescription=jsonObjnetwork.getString("description");

					                	        SQLStr=SQLStr+" insert into covered_services() values() \r\n";
				                        }
			    						System.out.println(" json: SQLStrLog  covered_services \r\n");
					    }catch (IOException e) {
		                    System.out.println("error：processcovered_services.json read error");
		                    e.printStackTrace();
					    }
					}
					//---------------Add to log------------
					   String SQLStrLog=readlog("R");
					   SQLStrLog=SQLStrLog+"INNETWORK: NETWORK_ID="+temp_Innetworkid+" \r\n";
					   SQLStrLog=SQLStrLog+SQLStr+ "\r\n";
					 //  SQLStrLog=SQLStrLog+"PROVIDERLOOP: TIN TOTAL="+Tin_total+"\r\n";
					   SQLStrLog=SQLStrLog+SQLStrTINLog;
					   writelog(SQLStrLog); 
					//---------------Add to log------------ 

					System.out.println("\r\n TIN TOTAL="+Tin_total+" \r\n" );
					System.out.println(" json: SQLStrLog\r\n processInNetwork: complete! \r\n" );
				 }
				return temp_Innetworkid;
	 }
	 
	public void oonprocess(String txtStr) throws IOException {
		 String temp_reporting_entity_name = null;
	     String temp_reporting_entity_type = null;
	     String temp_plan_name = null;
	     String temp_plan_market_type = null;
	    // String temp_negotiation_arrangement = null;
	     Long temp_Fileid_=null;
		 SessionUser sessionUser = (SessionUser) ServletActionContext.getRequest().getSession().getAttribute("sessionUser");
		 if(sessionUser!=null){
		  temp_reporting_entity_name = sessionUser.getReporting_entity_name();
	      temp_reporting_entity_type = sessionUser.getReporting_entity_type();
	      temp_plan_name = sessionUser.getPlan_name();
	      temp_plan_market_type = sessionUser.getPlan_market_type();
	     // temp_negotiation_arrangement = sessionUser.getNegotiation_arrangement();
	      temp_Fileid_=sessionUser.getFileId();
		 }
		 String insertNew="N";
		   //String realpath=ServletActionContext.getServletContext().getRealPath("/"+filepath);
		   //String realpath="C:\\PHCS\\"; 
		   String realpath=ServletActionContext.getServletContext().getRealPath("/fileupload");
		    String SQLStrLog="";
	        Integer strL=txtStr.length();
	        String strF=txtStr.substring(0,1);
	        String strE=txtStr.substring(strL-1,strL);
	        if(strF.equals("[") && strE.equals("]")){
	        	txtStr=txtStr.substring(1,strL-1);
	        }

	        String jsonStr = txtStr;
	        JSONObject jsonObj = JSONObject.fromObject(jsonStr);
	        
	        String reporting_entity_name = jsonObj.getString("reporting_entity_name");
	        String reporting_entity_type = jsonObj.optString("reporting_entity_type");
	        String plan_name = jsonObj.getString("plan_name");
	        String plan_market_type = jsonObj.optString("plan_market_type");
	       // String negotiation_arrangement = jsonObj.getString("negotiation_arrangement");
	        String last_updated_on = jsonObj.optString("last_updated_on");
	        String PROVIDERLOOP = jsonObj.getString("PROVIDERLOOP");
	        String RATEDETAILS = jsonObj.optString("RATEDETAILS");
	        SimpleDateFormat sdf =   new SimpleDateFormat("yyyy-MM-dd" );  
	        Integer insertDone=0; 
	        Long temp_fileid=null;
	        
	        if(!reporting_entity_name.equals(temp_reporting_entity_name))insertNew="Y";
	        if(!reporting_entity_type.equals(temp_reporting_entity_type))insertNew="Y";
	        if(!plan_name.equals(temp_plan_name))insertNew="Y";
	        if(!plan_market_type.equals(temp_plan_market_type))insertNew="Y";
	       // if(!negotiation_arrangement.equals(temp_negotiation_arrangement))insertNew="Y";
	        
		   try {

			   System.out.println("json: SQLStrLog START OON_FILE IMPORT!\r\n" );
			   if(insertNew.equals("Y")){
		        	
				   fileimport=new Fileimport();
				   fileimport.setReporting_entity_name(reporting_entity_name);
				   fileimport.setPlan_name(plan_name);
				   fileimport.setPlan_market_type(plan_market_type);
				 //  fileimport.setNegotiation_arrangement(negotiation_arrangement);
				   Date temp_date = sdf.parse(last_updated_on); 
				   fileimport.setLast_updated_on(temp_date);
				   insertDone= fileimportService.insertoonFile(fileimport);
				   temp_fileid=fileimport.getFileId();
				   
				   String readfileName =null;
		  		   String readfileSize =null;
		  		   String readfileStat =null;
		  			
				   if(insertDone==1){
					   String SQLStr="insert into TBL_RATES_OON_FILE(FILE_ID,ENTITY_NAME,PLAN_NAME,MARKET_TYPE,LAST_UPDATED_ON)   ";
					   SQLStr=SQLStr+"values("+temp_fileid+",'"+reporting_entity_name+"','"+plan_name+"','"+plan_market_type+"','"+last_updated_on+"'); ";
					   SQLStrLog=readlog("R");//SQLStrLog=readlog("N");
					   SQLStrLog=SQLStrLog+"OON_FILE: FILE_ID="+temp_fileid+"\r\n";
					   SQLStrLog=SQLStrLog+SQLStr+ "\r\n";
					   writelog(SQLStrLog);  
	
					   System.out.println(" FILE_ID= "+temp_fileid+" \r\n "+SQLStr+" \r\n" ); 

						//----------change status-->>----------------------------------------------------------------------------
						SessionUser filestat1=(SessionUser) ServletActionContext.getRequest().getSession().getAttribute("sessionUser");
			  			readfileName =filestat1.getFileuploadname();
			  			readfileSize =filestat1.getFileuploadSize();
						readfileStat="Import <font>OON_FILE</font>: FILE_ID="+temp_fileid;
						filestat1=null;
						//----------change status--<<---------------------------------------------------------------------------
						
				   }
				   fileimport=null;
				   SessionUser sessionUser1=new SessionUser();
				    temp_Fileid_=temp_fileid;
				   	sessionUser1.setReporting_entity_name(reporting_entity_name);
			        sessionUser1.setReporting_entity_type(reporting_entity_type);
			        sessionUser1.setPlan_name(plan_name);
			        sessionUser1.setPlan_market_type(plan_market_type);
			      //  sessionUser1.setNegotiation_arrangement(negotiation_arrangement);
			        sessionUser1.setFileId(temp_Fileid_);
			        sessionUser1.setFileuploadname(readfileName);
			        sessionUser1.setFileuploadSize(readfileSize);
			        sessionUser1.setFileuploadstatus(readfileStat);
					ServletActionContext.getRequest().getSession().setAttribute("sessionUser", sessionUser1);

		        }
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		   Long temp_processProid=null;
          if(temp_Fileid_!=null){

  			   if(PROVIDERLOOP != null)createFile("processPROVIDERLOOP",PROVIDERLOOP,"PROVIDERLOOP","oon");
  			   if(RATEDETAILS != null)createFile("processRATEDETAILS",RATEDETAILS,"RATEDETAILS","oon");
			   if(PROVIDERLOOP != null&&temp_Fileid_!=null){
					     File file1 = new File(realpath+"\\processPROVIDERLOOP.json");
					     File file2 = new File(realpath+"\\processRATEDETAILS.json");
					     InputStream in1 = new FileInputStream(file1);
					     InputStream in2 = new FileInputStream(file2);
			             Reader reader1 = new InputStreamReader(in1, "utf-8");
			             Reader reader2 = new InputStreamReader(in2, "utf-8");
			             BufferedReader bufferedReader1 = new BufferedReader(reader1);
			             BufferedReader bufferedReader2 = new BufferedReader(reader2);
			             String lineTxt1 = null;
			             String lineTxt2 = null;
		               try {
                 	 
	                        while ((lineTxt1 = bufferedReader1.readLine()) != null) {
	                        	//temp_processProid=processPROVIDERLOOP(PROVIDERLOOP,temp_Fileid_);
	         				    temp_processProid=oonprocessPROVIDERLOOP(lineTxt1,temp_Fileid_);
	         			        
	         				   //-----TYPE 1----------------------------------->
	         				   //providerloop  VS  ratedetails = 1 VS 1 or N VS N
	         				    lineTxt2 = bufferedReader2.readLine();
	         			        if(lineTxt2 != null && temp_processProid!=null){
	         			        	oonprocessRATEDETAILS(lineTxt2,temp_processProid);
	         			        }
	         				   //-----TYPE 1-----------------------------------<
	         			        
	         				   //-----TYPE 2----------------------------------->
		         			   //providerloop  VS  ratedetails = 1 VS N
		                       // while ((lineTxt2 = bufferedReader2.readLine()) != null) {
		         			   //     if(lineTxt2 != null && temp_processProid!=null){
		         			   //     	processRATEDETAILS(lineTxt2,temp_processProid);
		         			   //     }
		                       // }
		         			    //-----TYPE 2-----------------------------------<
	                        }
	                        	
	                     }catch (IOException e) {
		                        System.out.println("error：file read error");
		                         e.printStackTrace();
		                }
		        }
          }
	        
	      //  System.out.println("json--->java\n reporting_entity_name=" + reporting_entity_name+ "\t reporting_entity_type=" + reporting_entity_type);
	      //  System.out.println("json--->java\n complete" );
         
			System.out.println("json: SQLStrLog OON_FORMAT FILE IMPORT COMPLETE! \r\n" );
	    }
	 
	 
	 public void process(String txtStr) throws IOException {
		 String temp_reporting_entity_name = null;
	     String temp_reporting_entity_type = null;
	     String temp_plan_name = null;
	     String temp_plan_market_type = null;
	     String temp_negotiation_arrangement = null;
	     Long temp_Fileid_=null;
		 SessionUser sessionUser = (SessionUser) ServletActionContext.getRequest().getSession().getAttribute("sessionUser");
		 if(sessionUser!=null){
		  temp_reporting_entity_name = sessionUser.getReporting_entity_name();
	      temp_reporting_entity_type = sessionUser.getReporting_entity_type();
	      temp_plan_name = sessionUser.getPlan_name();
	      temp_plan_market_type = sessionUser.getPlan_market_type();
	      temp_negotiation_arrangement = sessionUser.getNegotiation_arrangement();
	      temp_Fileid_=sessionUser.getFileId();
		 }
		 String insertNew="N";
		   //String realpath=ServletActionContext.getServletContext().getRealPath("/"+filepath);
		   //String realpath="C:\\PHCS\\"; 
		   String realpath=ServletActionContext.getServletContext().getRealPath("/fileupload");
		    String SQLStrLog="";
	        Integer strL=txtStr.length();
	        String strF=txtStr.substring(0,1);
	        String strE=txtStr.substring(strL-1,strL);
	        if(strF.equals("[") && strE.equals("]")){
	        	txtStr=txtStr.substring(1,strL-1);
	        }

	        String jsonStr = txtStr;
	        JSONObject jsonObj = JSONObject.fromObject(jsonStr);
	        
	        String reporting_entity_name = jsonObj.getString("reporting_entity_name");
	        String reporting_entity_type = jsonObj.optString("reporting_entity_type");
	        String plan_name = jsonObj.getString("plan_name");
	        String plan_market_type = jsonObj.optString("plan_market_type");
	        String negotiation_arrangement = jsonObj.getString("negotiation_arrangement");
	        String last_updated_on = jsonObj.optString("last_updated_on");
	        String PROVIDERLOOP = jsonObj.getString("PROVIDERLOOP");
	        String RATEDETAILS = jsonObj.optString("RATEDETAILS");
	        SimpleDateFormat sdf =   new SimpleDateFormat("yyyy-MM-dd" );  
	        Integer insertDone=0; 
	        Long temp_fileid=null;
	        
	        if(!reporting_entity_name.equals(temp_reporting_entity_name))insertNew="Y";
	        if(!reporting_entity_type.equals(temp_reporting_entity_type))insertNew="Y";
	        if(!plan_name.equals(temp_plan_name))insertNew="Y";
	        if(!plan_market_type.equals(temp_plan_market_type))insertNew="Y";
	        if(!negotiation_arrangement.equals(temp_negotiation_arrangement))insertNew="Y";
	        
		   try {

			   System.out.println("json: SQLStrLog START INN_FILE IMPORT!\r\n" );
			   if(insertNew.equals("Y")){
		        	
				   fileimport=new Fileimport();
				   fileimport.setReporting_entity_name(reporting_entity_name);
				   fileimport.setPlan_name(plan_name);
				   fileimport.setPlan_market_type(plan_market_type);
				   fileimport.setNegotiation_arrangement(negotiation_arrangement);
				   Date temp_date = sdf.parse(last_updated_on); 
				   fileimport.setLast_updated_on(temp_date);
				   insertDone= fileimportService.insertFile(fileimport);
				   temp_fileid=fileimport.getFileId();
				   
				   String readfileName =null;
		  		   String readfileSize =null;
		  		   String readfileStat =null;
		  			
				   if(insertDone==1){
					   String SQLStr="insert into TBL_RATES_INN_FILE(FILE_ID,ENTITY_NAME,PLAN_NAME,MARKET_TYPE,NEGOTIATION_ARRANGEMENT,LAST_UPDATED_ON) ";
					   SQLStr=SQLStr+"values("+temp_fileid+",'"+reporting_entity_name+"','"+plan_name+"','"+plan_market_type+"','"+negotiation_arrangement+"','"+last_updated_on+"'); ";
					   SQLStrLog=readlog("R");//SQLStrLog=readlog("N");
					   SQLStrLog=SQLStrLog+"INN_FILE: FILE_ID="+temp_fileid+"\r\n";
					   SQLStrLog=SQLStrLog+SQLStr+ "\r\n";
					   writelog(SQLStrLog);  
	
					   System.out.println(" FILE_ID= "+temp_fileid+" \r\n "+SQLStr+" \r\n" ); 

						//----------change status-->>----------------------------------------------------------------------------
						SessionUser filestat1=(SessionUser) ServletActionContext.getRequest().getSession().getAttribute("sessionUser");
			  			readfileName =filestat1.getFileuploadname();
			  			readfileSize =filestat1.getFileuploadSize();
						readfileStat="Import <font>INN_FILE</font>: FILE_ID="+temp_fileid;
						filestat1=null;
						//----------change status--<<---------------------------------------------------------------------------
						
				   }
				   fileimport=null;
				   SessionUser sessionUser1=new SessionUser();
				    temp_Fileid_=temp_fileid;
				   	sessionUser1.setReporting_entity_name(reporting_entity_name);
			        sessionUser1.setReporting_entity_type(reporting_entity_type);
			        sessionUser1.setPlan_name(plan_name);
			        sessionUser1.setPlan_market_type(plan_market_type);
			        sessionUser1.setNegotiation_arrangement(negotiation_arrangement);
			        sessionUser1.setFileId(temp_Fileid_);
			        sessionUser1.setFileuploadname(readfileName);
			        sessionUser1.setFileuploadSize(readfileSize);
			        sessionUser1.setFileuploadstatus(readfileStat);
					ServletActionContext.getRequest().getSession().setAttribute("sessionUser", sessionUser1);

		        }
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		   Long temp_processProid=null;
           if(temp_Fileid_!=null){

   			   if(PROVIDERLOOP != null)createFile("processPROVIDERLOOP",PROVIDERLOOP,"PROVIDERLOOP","");
   			   if(RATEDETAILS != null)createFile("processRATEDETAILS",RATEDETAILS,"RATEDETAILS","");
			   if(PROVIDERLOOP != null&&temp_Fileid_!=null){
					     File file1 = new File(realpath+"\\processPROVIDERLOOP.json");
					     File file2 = new File(realpath+"\\processRATEDETAILS.json");
					     InputStream in1 = new FileInputStream(file1);
					     InputStream in2 = new FileInputStream(file2);
			             Reader reader1 = new InputStreamReader(in1, "utf-8");
			             Reader reader2 = new InputStreamReader(in2, "utf-8");
			             BufferedReader bufferedReader1 = new BufferedReader(reader1);
			             BufferedReader bufferedReader2 = new BufferedReader(reader2);
			             String lineTxt1 = null;
			             String lineTxt2 = null;
		               try {
                  	 
	                        while ((lineTxt1 = bufferedReader1.readLine()) != null) {
	                        	//temp_processProid=processPROVIDERLOOP(PROVIDERLOOP,temp_Fileid_);
	         				    temp_processProid=processPROVIDERLOOP(lineTxt1,temp_Fileid_);
	         			        
	         				   //-----TYPE 1----------------------------------->
	         				   //providerloop  VS  ratedetails = 1 VS 1 or N VS N
	         				    lineTxt2 = bufferedReader2.readLine();
	         			        if(lineTxt2 != null && temp_processProid!=null){
	         			        	processRATEDETAILS(lineTxt2,temp_processProid);
	         			        }
	         				   //-----TYPE 1-----------------------------------<
	         			        
	         				   //-----TYPE 2----------------------------------->
		         			   //providerloop  VS  ratedetails = 1 VS N
		                       // while ((lineTxt2 = bufferedReader2.readLine()) != null) {
		         			   //     if(lineTxt2 != null && temp_processProid!=null){
		         			   //     	processRATEDETAILS(lineTxt2,temp_processProid);
		         			   //     }
		                       // }
		         			    //-----TYPE 2-----------------------------------<
	                        }
	                        	
	                     }catch (IOException e) {
		                        System.out.println("error：file read error");
		                         e.printStackTrace();
		                }
		        }
           }
	        
	      //  System.out.println("json--->java\n reporting_entity_name=" + reporting_entity_name+ "\t reporting_entity_type=" + reporting_entity_type);
	      //  System.out.println("json--->java\n complete" );
          
			System.out.println("json: SQLStrLog INN_FORMAT FILE IMPORT COMPLETE! \r\n" );
	    }

	 public Long oonprocessPROVIDERLOOP(String txtStr,Long fileid) throws IOException {
		    Integer strL=txtStr.length();
		    Integer Tin_total=0;
	        String strF=txtStr.substring(0,1);
	        String strE=txtStr.substring(strL-1,strL);
	        if(strF.equals("[") && strE.equals("]")){
	        	txtStr=txtStr.substring(1,strL-1);
	        }

	        String jsonStr = txtStr;
	        JSONObject jsonObj = JSONObject.fromObject(jsonStr);
	       // String negotiated_type = jsonObj.getString("negotiated_type");
	       // String negotiation_arrangement_type = jsonObj.optString("negotiation_arrangement_type");
	       // String expiration_date = jsonObj.getString("expiration_date");
	        String tin = jsonObj.optString("tin");
	        

			fileimport=new Fileimport();
			Integer insertDone=0;
			Long temp_providerid=null;
		    //SimpleDateFormat sdf =   new SimpleDateFormat("yyyy-MM-dd" );  
			//Date temp_date;
			String SQLStr="";
				fileimport.setProviderfileId(fileid);
				 //  fileimport.setNegotiated_type(negotiated_type);
				  // fileimport.setNegotiation_arrangement_type(negotiation_arrangement_type);
				  // temp_date = sdf.parse(expiration_date);
				 //  fileimport.setExpiration_date(temp_date);
				   insertDone= fileimportService.insertoonProvider(fileimport);
				   temp_providerid=fileimport.getProviderId(); 
				fileimport=null;

				String SQLStrTINLog="";
				if(insertDone==1){
					SQLStr="insert into TBL_RATES_OON_PROVIDER(PROVIDER_ID,FILE_ID)  ";
					SQLStr=SQLStr+"values("+temp_providerid+","+fileid+"); ";
					System.out.println(" json: SQLStrLog\r\n PROVIDER: PROVIDER_ID="+temp_providerid+"\r\n "+SQLStr +" \r\n");
						
					//----------change status-->>----------------------------------------------------------------------------
					SessionUser filestat1=(SessionUser) ServletActionContext.getRequest().getSession().getAttribute("sessionUser");
				 
					String  reporting_entity_name=	filestat1.getReporting_entity_name();
					String  reporting_entity_type=filestat1.getReporting_entity_type();
					String  plan_name=filestat1.getPlan_name();
					String  plan_market_type=filestat1.getPlan_market_type();
					//String  negotiation_arrangement= filestat1.getNegotiation_arrangement();
					Long  temp_Fileid_=filestat1.getFileId();
				        
		  			String readfileName =filestat1.getFileuploadname();
		  			String readfileSize =filestat1.getFileuploadSize();
		  			SessionUser filestat=new SessionUser();
					filestat.setFileuploadname(readfileName);
					filestat.setFileuploadSize(readfileSize);
					filestat.setFileuploadstatus("&nbsp;&nbsp;Import <font>OON_PROVIDER</font>: &nbsp;&nbsp;PROVIDER_ID="+temp_providerid);

					filestat.setReporting_entity_name(reporting_entity_name);
					filestat.setReporting_entity_type(reporting_entity_type);
					filestat.setPlan_name(plan_name);
					filestat.setPlan_market_type(plan_market_type);
					//filestat.setNegotiation_arrangement(negotiation_arrangement);
					filestat.setFileId(temp_Fileid_);
			        
			        
					ServletActionContext.getRequest().getSession().setAttribute("sessionUser", filestat);
					filestat=null;
					filestat1=null;
					//----------change status--<<---------------------------------------------------------------------------
					
					if(tin!=null && temp_providerid!=null){
						Long temp_Tinid=null;
						String TinLoop[]=tin.split(",");
						for(int i=0;i<TinLoop.length;i++){
							insertDone=0;
							String tenpTin=TinLoop[i].trim();
							
							fileimport=new Fileimport();
							fileimport.setProvId(temp_providerid);
							fileimport.setTinnum(Long.valueOf(tenpTin));
							insertDone=fileimportService.insertoonProvidertin(fileimport);
							Tin_total++;
							if(insertDone==1){
								temp_Tinid=fileimport.getProvidertinId();
						        String SQLStrTIN="insert into TBL_RATES_OON_PROVIDER_TIN(TIN_ID,PROVIDER_ID,TIN)";
						        SQLStrTIN=SQLStrTIN+"values("+temp_Tinid+","+temp_providerid+","+tenpTin+"); ";
						        SQLStrTINLog=SQLStrTINLog+SQLStrTIN+ "\r\n";
						        temp_Tinid=null;
							}
							fileimport=null;
							
							//System.out.println("json--->java\n "+SQLStrTIN );
						}
					}
					
					//---------------Add to log------------
					   String SQLStrLog=readlog("R");
					   SQLStrLog=SQLStrLog+"PROVIDER: PROVIDER_ID="+temp_providerid+" \r\n";
					   SQLStrLog=SQLStrLog+SQLStr+ "\r\n";
					   SQLStrLog=SQLStrLog+"PROVIDERLOOP: TIN TOTAL="+Tin_total+"\r\n";
					   SQLStrLog=SQLStrLog+SQLStrTINLog;
					   writelog(SQLStrLog); 
					//---------------Add to log------------ 

					System.out.println("\r\n TIN TOTAL="+Tin_total+" \r\n" );
					System.out.println(" json: SQLStrLog\r\n OONprocessPROVIDERLOOP: complete! \r\n" );
				 }
				return temp_providerid;
	 }
	 
	 public Long processPROVIDERLOOP(String txtStr,Long fileid) throws IOException {
		    Integer strL=txtStr.length();
		    Integer Tin_total=0;
	        String strF=txtStr.substring(0,1);
	        String strE=txtStr.substring(strL-1,strL);
	        if(strF.equals("[") && strE.equals("]")){
	        	txtStr=txtStr.substring(1,strL-1);
	        }

	        String jsonStr = txtStr;
	        JSONObject jsonObj = JSONObject.fromObject(jsonStr);
	        String negotiated_type = jsonObj.getString("negotiated_type");
	        String negotiation_arrangement_type = jsonObj.optString("negotiation_arrangement_type");
	        String expiration_date = jsonObj.getString("expiration_date");
	        String tin = jsonObj.optString("tin");
	        

			fileimport=new Fileimport();
			Integer insertDone=0;
			Long temp_providerid=null;
		    SimpleDateFormat sdf =   new SimpleDateFormat("yyyy-MM-dd" );  
			Date temp_date;
			String SQLStr="";
				try {
					   fileimport.setProviderfileId(fileid);
					   fileimport.setNegotiated_type(negotiated_type);
					   fileimport.setNegotiation_arrangement_type(negotiation_arrangement_type);
					   temp_date = sdf.parse(expiration_date);
					   fileimport.setExpiration_date(temp_date);
					   insertDone= fileimportService.insertProvider(fileimport);
					   temp_providerid=fileimport.getProviderId();
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} 
				fileimport=null;

				String SQLStrTINLog="";
				if(insertDone==1){
					SQLStr="insert into TBL_RATES_INN_PROVIDER(PROVIDER_ID,FILE_ID,NEGOTIATED_TYPE,NEGOTIATION_ARRANGEMENT_TYPE,EXPIRATION_DATE) ";
					SQLStr=SQLStr+"values("+temp_providerid+","+fileid+",'"+negotiated_type+"','"+negotiation_arrangement_type+"','"+expiration_date+"'); ";
					System.out.println(" json: SQLStrLog\r\n PROVIDER: PROVIDER_ID="+temp_providerid+"\r\n "+SQLStr +" \r\n");
						
					//----------change status-->>----------------------------------------------------------------------------
					SessionUser filestat1=(SessionUser) ServletActionContext.getRequest().getSession().getAttribute("sessionUser");
				 
					String  reporting_entity_name=	filestat1.getReporting_entity_name();
					String  reporting_entity_type=filestat1.getReporting_entity_type();
					String  plan_name=filestat1.getPlan_name();
					String  plan_market_type=filestat1.getPlan_market_type();
					String  negotiation_arrangement= filestat1.getNegotiation_arrangement();
					Long  temp_Fileid_=filestat1.getFileId();
				        
		  			String readfileName =filestat1.getFileuploadname();
		  			String readfileSize =filestat1.getFileuploadSize();
		  			SessionUser filestat=new SessionUser();
					filestat.setFileuploadname(readfileName);
					filestat.setFileuploadSize(readfileSize);
					filestat.setFileuploadstatus("&nbsp;&nbsp;Import <font>INN_PROVIDER</font>: &nbsp;&nbsp;PROVIDER_ID="+temp_providerid);

					filestat.setReporting_entity_name(reporting_entity_name);
					filestat.setReporting_entity_type(reporting_entity_type);
					filestat.setPlan_name(plan_name);
					filestat.setPlan_market_type(plan_market_type);
					filestat.setNegotiation_arrangement(negotiation_arrangement);
					filestat.setFileId(temp_Fileid_);
			        
			        
					ServletActionContext.getRequest().getSession().setAttribute("sessionUser", filestat);
					filestat=null;
					filestat1=null;
					//----------change status--<<---------------------------------------------------------------------------
					
					if(tin!=null && temp_providerid!=null){
						Long temp_Tinid=null;
						String TinLoop[]=tin.split(",");
						for(int i=0;i<TinLoop.length;i++){
							insertDone=0;
							String tenpTin=TinLoop[i].trim();
							
							fileimport=new Fileimport();
							fileimport.setProvId(temp_providerid);
							fileimport.setTinnum(Long.valueOf(tenpTin));
							insertDone=fileimportService.insertProvidertin(fileimport);
							Tin_total++;
							if(insertDone==1){
								temp_Tinid=fileimport.getProvidertinId();
						        String SQLStrTIN="insert into TBL_RATES_INN_PROVIDER_TIN(TIN_ID,PROVIDER_ID,TIN) ";
						        SQLStrTIN=SQLStrTIN+"values("+temp_Tinid+","+temp_providerid+","+tenpTin+"); ";
						        SQLStrTINLog=SQLStrTINLog+SQLStrTIN+ "\r\n";
						        temp_Tinid=null;
							}
							fileimport=null;
							
							//System.out.println("json--->java\n "+SQLStrTIN );
						}
					}
					
					//---------------Add to log------------
					   String SQLStrLog=readlog("R");
					   SQLStrLog=SQLStrLog+"PROVIDER: PROVIDER_ID="+temp_providerid+" \r\n";
					   SQLStrLog=SQLStrLog+SQLStr+ "\r\n";
					   SQLStrLog=SQLStrLog+"PROVIDERLOOP: TIN TOTAL="+Tin_total+"\r\n";
					   SQLStrLog=SQLStrLog+SQLStrTINLog;
					   writelog(SQLStrLog); 
					//---------------Add to log------------ 

					System.out.println("\r\n TIN TOTAL="+Tin_total+" \r\n" );
					System.out.println(" json: SQLStrLog\r\n processPROVIDERLOOP: complete! \r\n" );
				 }
				return temp_providerid;
	 }
	 
	 public void oonprocessRATEDETAILS(String txtStr,Long providerid) throws IOException {
		 Integer strL=txtStr.length();
		 Integer Rate_total=0;
	        String strF=txtStr.substring(0,1);
	        String strE=txtStr.substring(strL-1,strL);
	        if(strF.equals("[") && strE.equals("]")){
	        	txtStr=txtStr.substring(1,strL-1);
	        }

	        String jsonStr = txtStr;
	        JSONObject jsonObj = JSONObject.fromObject(jsonStr);
	        String service_code = jsonObj.getString("service_code");
	        String billing_code_type = jsonObj.optString("billing_code_type");
	        String billing_code_type_version = jsonObj.getString("billing_code_type_version");
	        //String negotiated_rate_type = jsonObj.getString("negotiated_rate_type");
	        

			Integer insertDone=0;
			Long temp_rateId=null;
			fileimport=new Fileimport();
			fileimport.setProvId(providerid);
			fileimport.setService_code(service_code);
			fileimport.setBilling_code_type(billing_code_type);
			fileimport.setBilling_code_type_version(billing_code_type_version);
			//fileimport.setNegotiated_rate_type(negotiated_rate_type);
			insertDone=fileimportService.insertoonRate(fileimport);
			temp_rateId=fileimport.getRateId();
			fileimport=null;
			String SQLStr="";
			if(insertDone==1){
				SQLStr="insert into TBL_RATES_OON_RATE(RATE_ID,PROVIDER_ID,SERVICE_CODE,BILLING_CODE_TYPE,BILLING_CODE_TYPE_VERSION) ";
				SQLStr=SQLStr+"values("+temp_rateId+","+providerid+",'"+service_code+"','"+billing_code_type+"','"+billing_code_type_version+"''); ";
				System.out.println(" json: SQLStrLog\r\n RATE: RATE_ID="+temp_rateId+"\r\n "+SQLStr+" \r\n" );
			}
			
			//----------change status-->>----------------------------------------------------------------------------
			SessionUser filestat1=(SessionUser) ServletActionContext.getRequest().getSession().getAttribute("sessionUser");

			String  reporting_entity_name=	filestat1.getReporting_entity_name();
			String  reporting_entity_type=filestat1.getReporting_entity_type();
			String  plan_name=filestat1.getPlan_name();
			String  plan_market_type=filestat1.getPlan_market_type();
			//String  negotiation_arrangement= filestat1.getNegotiation_arrangement();
			Long  temp_Fileid_=filestat1.getFileId();
		        
  			String readfileName =filestat1.getFileuploadname();
  			String readfileSize =filestat1.getFileuploadSize();
  			SessionUser filestat=new SessionUser();
			filestat.setFileuploadname(readfileName);
			filestat.setFileuploadSize(readfileSize);
			filestat.setFileuploadstatus("&nbsp;&nbsp;Import <font>OON_RATE</font>: &nbsp;&nbsp;RATE_ID="+temp_rateId);

			filestat.setReporting_entity_name(reporting_entity_name);
			filestat.setReporting_entity_type(reporting_entity_type);
			filestat.setPlan_name(plan_name);
			filestat.setPlan_market_type(plan_market_type);
			//filestat.setNegotiation_arrangement(negotiation_arrangement);
			filestat.setFileId(temp_Fileid_);
	        
			ServletActionContext.getRequest().getSession().setAttribute("sessionUser", filestat);
			filestat=null;
			filestat1=null;
			//----------change status--<<---------------------------------------------------------------------------
			
	        String SQLStrCONTRACTLog="";


	        String ALLOWEDLOOP = jsonObj.optString("ALLOWEDLOOP");
		    if(ALLOWEDLOOP!=null && temp_rateId!=null){
		    	Integer strL1=ALLOWEDLOOP.length();
		        String strF1=ALLOWEDLOOP.substring(0,1);
		        String strE1=ALLOWEDLOOP.substring(strL1-1,strL1);
		        if(strF1.equals("[") && strE1.equals("]")){
		        	ALLOWEDLOOP=ALLOWEDLOOP.substring(1,strL1-1);
		        }
		        ALLOWEDLOOP=ALLOWEDLOOP.replaceAll(",\\{", ";\\{");
		        String ALLOWEDLOOPStr[]=ALLOWEDLOOP.split(";");
		        for(int  i=0;i<ALLOWEDLOOPStr.length;i++){
		        	String jsonStr1 = ALLOWEDLOOPStr[i];
			        JSONObject jsonObj1 = JSONObject.fromObject(jsonStr1);
			        String billing_code = jsonObj1.getString("billing_code");
			        //String name = jsonObj1.optString("name");
			        String allowed_amount = jsonObj1.getString("allowed_amount");
			        String billed_charge = jsonObj1.getString("billed_charge");
				    

					insertDone=0;
					Long temp_rateALLOWEDId=null;
					fileimport=new Fileimport();
					fileimport.setContractrateId(temp_rateId);
					fileimport.setBilling_code(billing_code);
				//	fileimport.setNegotiated_rate(Double.valueOf(negotiated_rate.trim()));
					fileimport.setAllowedamount(Double.valueOf(allowed_amount.trim()));
					fileimport.setBilling_charge(Double.valueOf(billed_charge.trim()));
					insertDone=fileimportService.insertrateoonAllowed(fileimport);
					temp_rateALLOWEDId=fileimport.getContractId();
					Rate_total++;
					if(insertDone==1){
				        String SQLStrCONTRACT="insert into TBL_RATES_OON_ALLOWED(ALLOWED_ID,RATE_ID,BILLING_CODE,ALLOWED_AMOUNT,BILLED_CHARGE) ";
						SQLStrCONTRACT=SQLStrCONTRACT+"values("+temp_rateALLOWEDId+","+temp_rateId+",'"+billing_code+"',"+allowed_amount+"',"+billed_charge+"); ";
						//System.out.println("json--->java\n "+SQLStrCONTRACT );
						SQLStrCONTRACTLog=SQLStrCONTRACTLog+SQLStrCONTRACT+ "\r\n";
						
						//----------change status-->>----------------------------------------------------------------------------
			   			SessionUser filestat2=new SessionUser();
			   			filestat2.setFileuploadname(readfileName);
			   			filestat2.setFileuploadSize(readfileSize);
			   			filestat2.setFileuploadstatus("&nbsp;&nbsp;Import OON_RATE: &nbsp;&nbsp;RATE_ID="+temp_rateId+"<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font>ALLOWED_ID</font>:&nbsp;&nbsp;"+temp_rateALLOWEDId);
			   			filestat2.setReporting_entity_name(reporting_entity_name);
			   			filestat2.setReporting_entity_type(reporting_entity_type);
			   			filestat2.setPlan_name(plan_name);
			   			filestat2.setPlan_market_type(plan_market_type);
			   			//filestat2.setNegotiation_arrangement(negotiation_arrangement);
			   			filestat2.setFileId(temp_Fileid_);
						ServletActionContext.getRequest().getSession().setAttribute("sessionUser", filestat2);
						filestat2=null;
						//----------change status--<<---------------------------------------------------------------------------
					}
					   
		        }
			    
		        
		    }
		   //---------------Add to log------------
			   String SQLStrLog=readlog("R");
			   SQLStrLog=SQLStrLog+"RATEDETAILS: RATE_ID="+temp_rateId+" \r\n";
			   SQLStrLog=SQLStrLog+SQLStr+ "\r\n";
			   SQLStrLog=SQLStrLog+"RATEDETAILSLOOP: RATE TOTAL="+Rate_total+"\r\n";
			   SQLStrLog=SQLStrLog+SQLStrCONTRACTLog;
			   writelog(SQLStrLog); 
			//---------------Add to log------------ 
			System.out.println("\r\n RATE TOTAL="+Rate_total+" \r\n" );
		    System.out.println(" json: SQLStrLog\r\n OONprocessRATEDETAILS: complete! \r\n");
	 }

	 public void processRATEDETAILS(String txtStr,Long providerid) throws IOException {
		 Integer strL=txtStr.length();
		 Integer Rate_total=0;
	        String strF=txtStr.substring(0,1);
	        String strE=txtStr.substring(strL-1,strL);
	        if(strF.equals("[") && strE.equals("]")){
	        	txtStr=txtStr.substring(1,strL-1);
	        }

	        String jsonStr = txtStr;
	        JSONObject jsonObj = JSONObject.fromObject(jsonStr);
	        String service_code = jsonObj.getString("service_code");
	        String billing_code_type = jsonObj.optString("billing_code_type");
	        String billing_code_type_version = jsonObj.getString("billing_code_type_version");
	        String negotiated_rate_type = jsonObj.getString("negotiated_rate_type");
	        

			Integer insertDone=0;
			Long temp_rateId=null;
			fileimport=new Fileimport();
			fileimport.setProvId(providerid);
			fileimport.setService_code(service_code);
			fileimport.setBilling_code_type(billing_code_type);
			fileimport.setBilling_code_type_version(billing_code_type_version);
			fileimport.setNegotiated_rate_type(negotiated_rate_type);
			insertDone=fileimportService.insertRate(fileimport);
			temp_rateId=fileimport.getRateId();
			fileimport=null;
			String SQLStr="";
			if(insertDone==1){
				SQLStr="insert into TBL_RATES_INN_RATE(RATE_ID,PROVIDER_ID,SERVICE_CODE,BILLING_CODE_TYPE,BILLING_CODE_TYPE_VERSION,NEGOTIATED_RATE_TYPE) ";
				SQLStr=SQLStr+"values("+temp_rateId+","+providerid+",'"+service_code+"','"+billing_code_type+"','"+billing_code_type_version+"','"+negotiated_rate_type+"'); ";
				System.out.println(" json: SQLStrLog\r\n RATE: RATE_ID="+temp_rateId+"\r\n "+SQLStr+" \r\n" );
			}
			
			//----------change status-->>----------------------------------------------------------------------------
			SessionUser filestat1=(SessionUser) ServletActionContext.getRequest().getSession().getAttribute("sessionUser");

			String  reporting_entity_name=	filestat1.getReporting_entity_name();
			String  reporting_entity_type=filestat1.getReporting_entity_type();
			String  plan_name=filestat1.getPlan_name();
			String  plan_market_type=filestat1.getPlan_market_type();
			String  negotiation_arrangement= filestat1.getNegotiation_arrangement();
			Long  temp_Fileid_=filestat1.getFileId();
		        
  			String readfileName =filestat1.getFileuploadname();
  			String readfileSize =filestat1.getFileuploadSize();
  			SessionUser filestat=new SessionUser();
			filestat.setFileuploadname(readfileName);
			filestat.setFileuploadSize(readfileSize);
			filestat.setFileuploadstatus("&nbsp;&nbsp;Import <font>INN_RATE</font>: &nbsp;&nbsp;RATE_ID="+temp_rateId);

			filestat.setReporting_entity_name(reporting_entity_name);
			filestat.setReporting_entity_type(reporting_entity_type);
			filestat.setPlan_name(plan_name);
			filestat.setPlan_market_type(plan_market_type);
			filestat.setNegotiation_arrangement(negotiation_arrangement);
			filestat.setFileId(temp_Fileid_);
	        
			ServletActionContext.getRequest().getSession().setAttribute("sessionUser", filestat);
			filestat=null;
			filestat1=null;
			//----------change status--<<---------------------------------------------------------------------------
			
	        String SQLStrCONTRACTLog="";


	        String CONTRACTLOOP = jsonObj.optString("CONTRACTLOOP");
		    if(CONTRACTLOOP!=null && temp_rateId!=null){
		    	Integer strL1=CONTRACTLOOP.length();
		        String strF1=CONTRACTLOOP.substring(0,1);
		        String strE1=CONTRACTLOOP.substring(strL1-1,strL1);
		        if(strF1.equals("[") && strE1.equals("]")){
		        	CONTRACTLOOP=CONTRACTLOOP.substring(1,strL1-1);
		        }
		        CONTRACTLOOP=CONTRACTLOOP.replaceAll(",\\{", ";\\{");
		        String CONTRACTLOOPStr[]=CONTRACTLOOP.split(";");
		        for(int  i=0;i<CONTRACTLOOPStr.length;i++){
		        	String jsonStr1 = CONTRACTLOOPStr[i];
			        JSONObject jsonObj1 = JSONObject.fromObject(jsonStr1);
			        String billing_code = jsonObj1.getString("billing_code");
			        //String name = jsonObj1.optString("name");
			        String negotiated_rate = jsonObj1.getString("negotiated_rate");
				    

					insertDone=0;
					Long temp_rateContractId=null;
					fileimport=new Fileimport();
					fileimport.setContractrateId(temp_rateId);
					fileimport.setBilling_code(billing_code);
					fileimport.setNegotiated_rate(Double.valueOf(negotiated_rate.trim()));
					insertDone=fileimportService.insertrateContract(fileimport);
					temp_rateContractId=fileimport.getContractId();
					Rate_total++;
					if(insertDone==1){
				        String SQLStrCONTRACT="insert into TBL_RATES_INN_CONTRACT(CONTRACT_ID,RATE_ID,BILLING_CODE,NEGOTIATED_RATE) ";
						SQLStrCONTRACT=SQLStrCONTRACT+"values("+temp_rateContractId+","+temp_rateId+",'"+billing_code+"',"+negotiated_rate+"); ";
						//System.out.println("json--->java\n "+SQLStrCONTRACT );
						SQLStrCONTRACTLog=SQLStrCONTRACTLog+SQLStrCONTRACT+ "\r\n";
						
						//----------change status-->>----------------------------------------------------------------------------
			   			SessionUser filestat2=new SessionUser();
			   			filestat2.setFileuploadname(readfileName);
			   			filestat2.setFileuploadSize(readfileSize);
			   			filestat2.setFileuploadstatus("&nbsp;&nbsp;Import INN_RATE: &nbsp;&nbsp;RATE_ID="+temp_rateId+"<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font>CONTRACT_ID</font>:&nbsp;&nbsp;"+temp_rateContractId);
			   			filestat2.setReporting_entity_name(reporting_entity_name);
			   			filestat2.setReporting_entity_type(reporting_entity_type);
			   			filestat2.setPlan_name(plan_name);
			   			filestat2.setPlan_market_type(plan_market_type);
			   			filestat2.setNegotiation_arrangement(negotiation_arrangement);
			   			filestat2.setFileId(temp_Fileid_);
						ServletActionContext.getRequest().getSession().setAttribute("sessionUser", filestat2);
						filestat2=null;
						//----------change status--<<---------------------------------------------------------------------------
					}
					   
		        }
			    
		        
		    }
		   //---------------Add to log------------
			   String SQLStrLog=readlog("R");
			   SQLStrLog=SQLStrLog+"RATEDETAILS: RATE_ID="+temp_rateId+" \r\n";
			   SQLStrLog=SQLStrLog+SQLStr+ "\r\n";
			   SQLStrLog=SQLStrLog+"RATEDETAILSLOOP: RATE TOTAL="+Rate_total+"\r\n";
			   SQLStrLog=SQLStrLog+SQLStrCONTRACTLog;
			   writelog(SQLStrLog); 
			//---------------Add to log------------ 
			System.out.println("\r\n RATE TOTAL="+Rate_total+" \r\n" );
		    System.out.println(" json: SQLStrLog\r\n processRATEDETAILS: complete! \r\n");
	 }


		public void writelog(String txtStr) throws IOException {
			 
	         try {
				              

				 String realpathout=ServletActionContext.getServletContext().getRealPath("/fileupload");
				             realpathout=realpathout+"\\log.txt";
				              File outFile = new File(realpathout);
				              OutputStream out = new FileOutputStream(outFile);
				             try {
				                 Writer writer = new OutputStreamWriter(out, "utf-8");
				                 BufferedWriter bufferedWriter = new BufferedWriter(writer);
			      
				                 try {
				                 	 
				                     if (txtStr != null) {
				            
				                          bufferedWriter.write(txtStr);
				
					                   
				                      }
				                     bufferedWriter.close();
				                  } catch (IOException e) {
				                     System.out.println("error：IO ERROR");
				                      e.printStackTrace();
				                  } 
				             }catch (IOException e) {
				                 System.out.println("error：IO ERROR");
				                  e.printStackTrace();
				              } 
				             out.close(); 
				             outFile=null;
								
				}catch (IOException e) {
					System.out.println("error：IO ERROR");
					e.printStackTrace();
				}
			 
		 }
		 
		 public String readlog(String type) throws IOException {
			 //type:N,R
			 //String realpath="C:\\PHCS\\";

		    	String realpathlog=ServletActionContext.getServletContext().getRealPath("/fileupload/loghistory");
		    	File f = new File(realpathlog);
				if(!f.exists()){
					f.mkdirs();
				}
				
			 String realpath=ServletActionContext.getServletContext().getRealPath("/fileupload");
		     File file  = new  File(realpath+"\\log.txt"); 
		     
				if(type.equals("N")){
						 if (file.isFile() && file.exists()) { 
								String readfileName= file.getName();
								String ext = readfileName.substring(readfileName.lastIndexOf(".") +1,readfileName.length());
								String axt = readfileName.substring(0, readfileName.lastIndexOf("."));
								String calendarName ="";
								double ff=Math.random();
								calendarName = axt+ "_"+Integer.valueOf((int) Math.floor(ff*100000000))+"." +ext;
								//System.out.println("json--->java\n "+calendarName ); 
							     File outFile = new File(realpathlog+"\\"+calendarName);
								 try {
									 FileUtils.copyFile(file,outFile);
								 }catch (IOException e) {
				                     System.out.println("error：OLD LOG ERROR");
				                     e.printStackTrace();
				                 }
								 outFile=null;
						 }
				
						 try {
			                 OutputStream out = new FileOutputStream(file);
			                 Writer writer = new OutputStreamWriter(out, "utf-8");
			                 BufferedWriter bufferedWriter = new BufferedWriter(writer);
			                 bufferedWriter.close();
			                 out.close();
			
						 }catch (IOException e) {
			                 System.out.println("error：CREATE NEW LOG ERROR");
			                 e.printStackTrace();
			             }
				}

			 String lineTxtLog = "";
			 try {
				 InputStream in = new FileInputStream(file);
		         Reader reader = new InputStreamReader(in, "utf-8");
		         BufferedReader bufferedReader = new BufferedReader(reader);
		         String lineTxt = null;
		         while ((lineTxt = bufferedReader.readLine()) != null) {
		             	int num=lineTxt.length();
		             	lineTxtLog=lineTxtLog+String.valueOf(lineTxt)+ "\r\n";
			         }
		         
		         bufferedReader.close();
		         in.close();
			 }catch (IOException e) {
	             System.out.println("error：REWRITE LOG ERROR");
	             e.printStackTrace();
	         }
			 
			file=null;
			f=null;
			return lineTxtLog;
			 
		 }
		 

		 public void createFile(String filename,String txtStr,String txttype,String filetype) throws IOException {
			  //String realpath="C:\\PHCS\\";
			 String realpath=ServletActionContext.getServletContext().getRealPath("/fileupload");
		     File file  = new  File(realpath+"\\"+filename+".json"); 
						 
						 
						 try {
							 Integer strL=txtStr.length();
						     String strF=txtStr.substring(0,1);
						     String strE=txtStr.substring(strL-1,strL);
						     if(strF.equals("[") && strE.equals("]")){
						        txtStr=txtStr.substring(1,strL-1);
						     }
						     
						    if(txttype.equals("FILE")) txtStr=txtStr.replaceAll(",\\{\"reporting_entity_name", "\r\n\\{\"reporting_entity_name");
						    
						    if(txttype.equals("PROVIDERLOOP")){
						    	if(filetype.equals("inn")){
						    		txtStr=txtStr.replaceAll(",\\{\"negotiated_type", "\r\n\\{\"negotiated_type");
						    	}else if(filetype.equals("oon")){
						    		txtStr=txtStr.replaceAll("\"\\},\\{\"tin\":\"", ",");
						    		txtStr=txtStr.replaceAll(",\\{\\{\"tin", "\r\n\\{\\{\"tin");
						    	}else{
						    		txtStr=txtStr.replaceAll(",\\{\"negotiated_type", "\r\n\\{\"negotiated_type");
						    	}
						    }
						    
						    if(txttype.equals("RATEDETAILS")) txtStr=txtStr.replaceAll(",\\{\"service_code", "\r\n\\{\"service_code");
						    
						    if(txttype.equals("in_network")){
						    	if(filetype.equals("cmsinn")){
							    	txtStr=txtStr.replaceAll(",\\{\"negotiation_arrangement", "\r\n\\{\"negotiation_arrangement");
						    	}if(filetype.equals("cmsoon")){
							    	 
						    	}
						    }

						    //-------------------------------------------------------------------------------------------------
						    if(txttype.equals("negotiated_rates")){
						    	if(filetype.equals("cmsinn")){
							    	txtStr=txtStr.replaceAll(",\\{\"negotiated_price", "\r\n\\{\"negotiated_price");
						    	}if(filetype.equals("cmsoon")){
							    	 
						    	}
						    }
								    if(txttype.equals("negotiated_price")){
								    	if(filetype.equals("cmsinn")){
									    	txtStr=txtStr.replaceAll(",\\{\"negotiated_type", "\r\n\\{\"negotiated_type");
								    	}if(filetype.equals("cmsoon")){
									    	 
								    	}
								    }
						    //-------------------------------------------------------------------------------------------------
						    
						    if(txttype.equals("bundled_codes")){
						    	if(filetype.equals("cmsinn")){
							    	txtStr=txtStr.replaceAll(",\\{\"billing_code_type", "\r\n\\{\"billing_code_type");
						    	}if(filetype.equals("cmsoon")){
							    	 
						    	}
						    }
						    if(txttype.equals("covered_services")){
						    	if(filetype.equals("cmsinn")){
							    	txtStr=txtStr.replaceAll(",\\{\"billing_code_type", "\r\n\\{\"billing_code_type");
						    	}if(filetype.equals("cmsoon")){
							    	 
						    	}
						    }
						     
						    
			                 OutputStream out = new FileOutputStream(file);
			                 Writer writer = new OutputStreamWriter(out, "utf-8");
			                 BufferedWriter bufferedWriter = new BufferedWriter(writer);
	                         bufferedWriter.write(txtStr);
			                 bufferedWriter.close();
			                 out.close();
			
						 }catch (IOException e) {
			                 System.out.println("error：CREATE NEW file ERROR");
			                 e.printStackTrace();
			             }
				 

			 
		 } 
	//------------------------------------------------------------------------------	 
	public static String ReadFile(String path) { 
		 StringBuffer laststr = new StringBuffer();
	        File file = new File(path); 
	        BufferedReader reader = null;
	        try {
	            FileInputStream in = new FileInputStream(file);
	            reader = new BufferedReader(new InputStreamReader(in, "UTF-8")); 
	            String tempString = null;
	            while ((tempString = reader.readLine()) != null) {
	                laststr = laststr.append(tempString);
	            }
	            reader.close();
	        } catch (IOException e) {
	            e.printStackTrace();
	        } finally {
	            if (reader != null) {
	                try {
	                    reader.close();
	                } catch (IOException el) {
	                }
	            }
	        }
	        return laststr.toString();		
	}	 
	
	public static void Jasontest() {
        String filePath = "C:/PHCS/INN_Format2_.json";
        String jsonString = ReadFile(filePath);
        //--------------------------------
        JSONObject jsonObj = JSONObject.fromObject(jsonString);
        String reporting_entity_name1 = jsonObj.getString("reporting_entity_name");
        String last_updated_on1 = jsonObj.getString("last_updated_on");
        String PROVIDERLOOP1 = jsonObj.optString("PROVIDERLOOP");
        String PROVIDERLOOP2 = jsonObj.getString("PROVIDERLOOP");
        //---------------------------------
        JSONArray jsonArr = JSON.parseArray(PROVIDERLOOP1);
        Map<String, Object> resultMap = new HashMap<String, Object>();
        for (int i = 0; i < jsonArr.size(); i++) {

            Map data_map = (Map) jsonArr.get(i); 
            /*Integer customer_id = (Integer) data_map.get("customer_id");
            String customer_email = (String) data_map.get("customer_email");
            String customer_firstname = (String) data_map.get("customer_firstname");
            String customer_lastname = (String) data_map.get("customer_lastname");
            String sku = (String) data_map.get("sku");
            String created_at = (String) data_map.get("created_at");
            */
            String reporting_entity_name = (String) data_map.get("reporting_entity_name");
            String reporting_entity_type = (String) data_map.get("reporting_entity_type");
            String plan_name = (String) data_map.get("plan_name");
            String plan_market_type = (String) data_map.get("plan_market_type");
            String negotiation_arrangement = (String) data_map.get("negotiation_arrangement");
            String last_updated_on = (String) data_map.get("last_updated_on");
            String PROVIDERLOOP =  data_map.get("PROVIDERLOOP").toString();
            String RATEDETAILS = data_map.get("RATEDETAILS").toString();

            JSONArray PROVIDERLOOPjsonArr = JSON.parseArray(PROVIDERLOOP);
		            for (int ii = 0; ii < PROVIDERLOOPjsonArr.size(); ii++) {
		
		                Map PROVIDERLOOP_datamap = (Map) PROVIDERLOOPjsonArr.get(ii); 
		                String negotiated_type=(String) PROVIDERLOOP_datamap.get("negotiated_type");
		                String negotiation_arrangement_type=(String) PROVIDERLOOP_datamap.get("negotiation_arrangement_type");
		                String expiration_date=(String) PROVIDERLOOP_datamap.get("expiration_date");
		                String tin=(String) PROVIDERLOOP_datamap.get("tin");
		            }

		   JSONArray RATEDETAILSjsonArr = JSON.parseArray(RATEDETAILS);
				    for (int ii = 0; ii < RATEDETAILSjsonArr.size(); ii++) {
				
				        Map RATEDETAILS_datamap = (Map) RATEDETAILSjsonArr.get(ii); 
				        String service_code=(String) RATEDETAILS_datamap.get("service_code");
				        String billing_code_type=(String) RATEDETAILS_datamap.get("billing_code_type");
				        String billing_code_type_version=(String) RATEDETAILS_datamap.get("billing_code_type_version");
				        String negotiated_rate_type=(String) RATEDETAILS_datamap.get("negotiated_rate_type");
				        String CONTRACTLOOP=(String) RATEDETAILS_datamap.get("CONTRACTLOOP");
				   }

            /*
            Map level_1_map = (Map) resultMap.get(customer_id.toString());
            if (null == level_1_map || level_1_map.size() <= 0) {
                level_1_map = new HashMap<String, Object>();
                level_1_map.put("customer_id", customer_id);
                level_1_map.put("customer_email", customer_email);
                level_1_map.put("customer_firstname", customer_firstname);
                level_1_map.put("customer_lastname", customer_lastname);
            }

            List list = level_1_map.get("list") == null？new ArrayList<T>():(List)level_1_map.get("list");
            Map listMap = new HashMap<String, Object>();
            listMap.put("sku", sku);
            listMap.put("created_at", created_at);
            list.add(listMap);
            level_1_map.put("list", list);
            resultMap.put(customer_id.toString(), level_1_map);
		*/

            ////--------------insert change
            Map level_1_map = (Map) resultMap.get(reporting_entity_name);
            if (null == level_1_map || level_1_map.size() <= 0) {
                level_1_map = new HashMap<String, Object>();
                level_1_map.put("reporting_entity_name_change", reporting_entity_name);
                level_1_map.put("reporting_entity_type_change", reporting_entity_type);
                level_1_map.put("plan_name_change", plan_name);
                level_1_map.put("plan_market_type_change", plan_market_type);
                level_1_map.put("negotiation_arrangement_change", negotiation_arrangement);
                level_1_map.put("last_updated_on_change", last_updated_on);
            }
            
            resultMap.put("PROVIDERLOOP", level_1_map);
        }
        System.out.println(JSON.toJSONString(resultMap));


    }
	
	//------------------------------------------------------------------------------
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

	public File getFileupload() {
		return fileupload;
	}

	public void setFileupload(File fileupload) {
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

	 
	
}
