package com.pdsu.edu.login.action;

import java.io.IOException;
import java.math.BigDecimal;
import java.text.ParseException;
import java.util.Date;
import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.aurorasoft.medi.common.util.DateDelUtil;
import com.aurorasoft.medi.common.util.LoggerInfoCommTool;
import com.aurorasoft.medi.common.util.ResponseOutTool;
import com.opensymphony.xwork2.ActionSupport;
import com.pdsu.edu.domain.Adeod;
import com.pdsu.edu.domain.Loginuser;
import com.pdsu.edu.service.AdeodService;
import com.pdsu.edu.service.LoginService;
import com.pdsu.edu.syscom.util.SessionUser;
 

@Controller
@Scope("prototype")
public class LoginAction extends ActionSupport {
	private String login;
	private String password;
	private String msoid;
	private BigDecimal grNumber;
	private String loginname;
	private List<Loginuser> loginUserList;
	private List<Loginuser> loginUserList1;
	@Autowired 
	private LoginService loginService; 
	@Autowired 
	private LoginService loginService1; 
	
	public void login(){ 
		SessionUser sessionUser=new SessionUser();
		String flag = "0";
		Loginuser loginuser=new Loginuser();
		Loginuser loginuser1=new Loginuser();
		loginuser.setLogin(login);
		loginuser.setPassword(password);
		loginUserList=loginService.findLoginuser(loginuser);
		Integer tssn=0;
		String tgp="";
		if(loginUserList.size()>0){
			flag="1";
			//gr_number,subgroup,logintype,ppo;
			sessionUser.setDotype(loginUserList.get(0).getLogintype());
			sessionUser.setLogin(login);
			sessionUser.setPassword(password);
			sessionUser.setSsn(String.valueOf(loginUserList.get(0).getSsn()));
			sessionUser.setGr_number(String.valueOf(loginUserList.get(0).getGr_number()));
			sessionUser.setSubgroup(String.valueOf(loginUserList.get(0).getSubgroup()));
			sessionUser.setLogintype(String.valueOf(loginUserList.get(0).getLogintype()));
			sessionUser.setPpo(String.valueOf(loginUserList.get(0).getPpo()));
			sessionUser.setCorporationid(String.valueOf(loginUserList.get(0).getCorporationid()));
			tssn=loginUserList.get(0).getSsn();
			tgp=String.valueOf(loginUserList.get(0).getSubgroup());
			loginuser1.setSsn(tssn);
			loginuser1.setGrpno(tgp);
			loginuser1.setDepno("0");
			loginUserList1=loginService1.findempLogin(loginuser1);
			if(loginUserList1.size()>0){
				sessionUser.setDob(String.valueOf(loginUserList1.get(0).getDob()));
			}
			ServletActionContext.getRequest().getSession()
			.setAttribute("sessionUser", sessionUser);
		}else{
			flag="0";
		}
		

		
		ResponseOutTool.outputHtmlResult(flag, ServletActionContext.getResponse());
	}
	public String loginlink(){
		SessionUser sessionUser=new SessionUser();
		String flag = "0";
		Loginuser loginuser=new Loginuser();
		loginuser.setLogin(login);
		loginuser.setPassword(password);
		loginUserList=loginService.findLoginuser(loginuser);
		if(loginUserList.size()>0){
		 
			//gr_number,subgroup,logintype,ppo;
			sessionUser.setDotype(loginUserList.get(0).getLogintype());
			sessionUser.setLogin(login+"jump");
			sessionUser.setPassword(password);
			sessionUser.setSsn(String.valueOf(loginUserList.get(0).getSsn()));
			sessionUser.setGr_number(String.valueOf(loginUserList.get(0).getGr_number()));
			sessionUser.setSubgroup(String.valueOf(loginUserList.get(0).getSubgroup()));
			sessionUser.setLogintype(String.valueOf(loginUserList.get(0).getLogintype()));
			sessionUser.setPpo(String.valueOf(loginUserList.get(0).getPpo()));
			sessionUser.setCorporationid(String.valueOf(loginUserList.get(0).getCorporationid()));
			ServletActionContext.getRequest().getSession()
			.setAttribute("sessionUser", sessionUser);
		} 
		return "success";
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

	public String getMsoid() {
		return msoid;
	}

	public void setMsoid(String msoid) {
		this.msoid = msoid;
	}
	
	
	
}
