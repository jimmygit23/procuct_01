	package com.pdsu.edu.action;


@javax.jws.WebService(
targetNamespace = 
	"http://action.edu.pdsu.com/"
,
serviceName = 
	"linktestService"
, 
portName =
	"linktestPort"
	,wsdlLocation = "WEB-INF/wsdl/linktestService.wsdl"
)



public class linktestDelegate {

	com.pdsu.edu.action.linktest linktest = new com.pdsu.edu.action.linktest();


}