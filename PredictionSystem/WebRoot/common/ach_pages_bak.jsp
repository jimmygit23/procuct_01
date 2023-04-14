<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="webctx" value="${pageContext.request.contextPath}"/>
<s:push value="pageBean">
		<script language="javascript">

	function go_page(page){
		document.getElementsByName("pageBean.pageNo")[0].value=page;
		$("#pageSize").attr("value",$('#psize').val());
		
		$("#pageQuery").click(); //具体页面查询按钮
		// $("form").submit();
	}
	
	function goto_page(){
		var pageNo=$("#sel").val();
		$("#pageSize").attr("value",$('#psize').val());
		var exp1=new RegExp("\\(","gm")
		var exp2=new RegExp("\\)","gm")
		pageNo=pageNo.replace(exp1,"");
		pageNo=pageNo.replace(exp2,"");
		document.getElementsByName("pageBean.pageNo")[0].value=pageNo;
		$("form").submit();
	}
	
	function replace(value){
	
		value=value.replace(/[^(\d)]/g,'');
		var exp1=new RegExp("\\(","gm")
		var exp2=new RegExp("\\)","gm")
		value=value.replace(exp1,"");
		value=value.replace(exp2,"");
		$("#sel").val(value);
		if(event.keyCode==13){
               goto_page();
		}
	}
</script>
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
						<th align="right" >
                                      <span style="font-size: 12px">RowsPerPage<s:select list="{10,15,20,50}" id="psize" name="pageBean.maxResults" onchange="go_page(1)" theme="simple"  cssStyle="width: 40px"/>
                                      	&nbsp;&nbsp;Page&nbsp;${pageNo}/${totalPage}&nbsp;Pages
                                      &nbsp;&nbsp;${rowCount}&nbsp;Rows</span>							
								<s:if test="pageNo==1">
										<span style="font-size: 12px"> &nbsp;&nbsp;
											<img  src="${webctx}/img/table/firstPageDisabled.gif" alt="">&nbsp;&nbsp; 
											<img  src="${webctx}/img/table/prevPageDisabled.gif" alt="">&nbsp;&nbsp;
										</span>
								</s:if>
								<s:elseif test="pageNo>1">
										<a href="javascript:go_page(1)" class="a2">
											<img  src="${webctx}/img/table/firstPage.gif" alt="">
										</a>&nbsp;&nbsp;
       									<a href="javascript:go_page(${pageNo - 1})" class="a2">
       										<img  src="${webctx}/img/table/prevPage.gif" alt="">
       									</a>&nbsp;&nbsp;
       							</s:elseif>
								<s:if test="pageNo==totalPage">
										<span style="font-size: 12px">
											<img  src="${webctx}/img/table/nextPageDisabled.gif" alt="">&nbsp;&nbsp; 
											<img  src="${webctx}/img/table/lastPageDisabled.gif" alt="">&nbsp;&nbsp;
										</span>
								</s:if>
								<s:elseif test="pageNo < totalPage">
										<a href="javascript:go_page(${pageNo + 1})" class="a2">
											<img  src="${webctx}/img/table/nextPage.gif" alt="">
										</a>&nbsp;&nbsp;
       									<a href="javascript:go_page(${totalPage})" class="a2">
       										<img  src="${webctx}/img/table/lastPage.gif" alt="">
       									</a>&nbsp;&nbsp;
       							</s:elseif>
								<span style="font-size: 12px">Jump to</span>
								<input type="text" id="sel"  style="width: 40px" value="${pageNo }" onblur="value=value.replace(/[^(\d)]/g,'')" onkeyup="replace(this.value)" maxlength="5"/>
							    <input type="button" onclick="goto_page()" value="GO" />
								<!--   
								<a href="javascript:goto_page()"  class ="a2">
								<img src="${webctx}/img/table/go.gif" />
								</a> 
								-->
						</th>
						</tr>
				</table>
				<input type="hidden" name="pageBean.pageNo" id="p1" value="1" />
				<input type="hidden" name="pageBean.rowCount" value="${rowCount }" />
			
</s:push>
