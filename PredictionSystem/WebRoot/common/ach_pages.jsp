<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="webctx" value="${pageContext.request.contextPath}"/>
<s:push value="pageBean">
		<script language="javascript">

	function go_page(page){
		document.getElementsByName("pageBean.pageNo")[0].value=page;
		$("#pageSize").attr("value",$('#psize').val());
		
		$("#pageQuery").click(); //page Query
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
		// $("form").submit();
		$("#pageQuery").click();
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
                                      <span style="font-size: 12px;font-family:Arial;">RowsPerPage<s:select  list="{50,75,100}" id="psize" name="pageBean.maxResults" onchange="go_page(1)" theme="simple"  cssStyle="width: 50px;border: 1px solid #b4b4b4;"/>
                                      	&nbsp;&nbsp;Page&nbsp;<font color="#ff6600">${pageNo}/${totalPage}</font>&nbsp;Pages
                                        &nbsp;&nbsp;<font color="#ff6600">${rowCount}</font>&nbsp;Rows&nbsp;
                                      </span>							
								<s:if test="pageNo==1">
								   <!--   
										<span style="font-size: 12px"> &nbsp;&nbsp;
											<img  src="${webctx}/img/table/firstPageDisabled.gif" alt="">&nbsp;&nbsp; 
											<img  src="${webctx}/img/table/prevPageDisabled.gif" alt="">&nbsp;&nbsp;
										</span>
								   -->	
								   	
								</s:if>
								<s:elseif test="pageNo>1">
								       <!--   
										<a href="javascript:go_page(1)" class="a2">
											<img  src="${webctx}/img/table/firstPage.gif" alt="">
											
										</a>&nbsp;
       									<a href="javascript:go_page(${pageNo - 1})" class="a2">
       										<img  src="${webctx}/img/table/prevPage.gif" alt="">
       									</a>&nbsp;
       									-->
       								 <input type="button" class="button_2" value="firstPage" onclick="go_page(1)"/>
       								 &nbsp;
       								 <input type="button" class="button_2" value="prevPage" onclick="go_page(${pageNo - 1})"/>
       								 &nbsp;
       							</s:elseif>
								<s:if test="pageNo==totalPage">
								       <!--  
										<span style="font-size: 12px">
											<img  src="${webctx}/img/table/nextPageDisabled.gif" alt="">&nbsp;&nbsp; 
											<img  src="${webctx}/img/table/lastPageDisabled.gif" alt="">&nbsp;&nbsp;
										</span>
									  -->
								</s:if>
								<s:elseif test="pageNo < totalPage">
								        <input type ="button" onclick="go_page(${pageNo + 1})" class="button_2"  value="nextPage"/>
								        &nbsp;
       								    <input type ="button" onclick="go_page(${totalPage})" class="button_2"  value="lastPage"/>
       									&nbsp;								        
								        <!--   
										<a href="javascript:go_page(${pageNo + 1})" class="a2">
											<img  src="${webctx}/img/table/nextPage.gif" alt="">
										</a>&nbsp;&nbsp;
       									<a href="javascript:go_page(${totalPage})" class="a2">
       										<img  src="${webctx}/img/table/lastPage.gif" alt="">
       									</a>&nbsp;&nbsp;
       									-->
       							</s:elseif>
       							<!--   
								<span style="font-size: 12px">Jump to</span>
								-->
								<input type="text" class="input001" id="sel"  style="width: 40px" value="${pageNo }" onblur="value=value.replace(/[^(\d)]/g,'')" onkeyup="replace(this.value)" maxlength="5"/>
							    <input type="button"  class="button_1" onclick="goto_page()" value="GO" />
								
						</th>
						</tr>
				</table>
				<input type="hidden" name="pageBean.pageNo" id="p1" value="1" />
				<input type="hidden" name="pageBean.rowCount" value="${rowCount }" />
			
</s:push>
