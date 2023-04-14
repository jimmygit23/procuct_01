	package com.pdsu.edu.action;

	import java.util.List;
	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.context.annotation.Scope;
	import org.springframework.stereotype.Controller;
	import com.opensymphony.xwork2.ActionSupport;
	import com.pdsu.edu.domain.User;
	import com.pdsu.edu.service.UserService;

@javax.jws.WebService(
targetNamespace = 
	"http://action.edu.pdsu.com/"
,
serviceName = 
	"UserActionService"
, 
portName =
	"UserActionPort"
	,wsdlLocation = "WEB-INF/wsdl/UserActionService.wsdl"
)



public class UserActionDelegate {

	com.pdsu.edu.action.UserAction userAction = new com.pdsu.edu.action.UserAction();

			public String execute() throws Exception {		
			return userAction.execute();
		}
				public String login()  {		
			return userAction.login();
		}
				public String addUI()  {		
			return userAction.addUI();
		}
				public String updateUI()  {		
			return userAction.updateUI();
		}
				public String add()  {		
			return userAction.add();
		}
				public String delete()  {		
			return userAction.delete();
		}
				public String update()  {		
			return userAction.update();
		}
				public User getUser()  {		
			return userAction.getUser();
		}
				public void setUser(User user)  {		
			userAction.setUser(user);
		}
				public String queryAllUser()  {		
			return userAction.queryAllUser();
		}
				public List<User> getUserList()  {		
			return userAction.getUserList();
		}
				public void setUserList(List<User> userList)  {		
			userAction.setUserList(userList);
		}
	
}