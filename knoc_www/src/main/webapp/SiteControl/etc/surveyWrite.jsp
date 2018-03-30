<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "kr.co.knoc.util.*"%>
<%@ page import = "java.util.*"%>
<%@ taglib uri="/WEB-INF/tlds/sitetaglib.tld" prefix="stl" %>
<%@ taglib uri="/WEB-INF/tlds/sitectrltaglib.tld" prefix="sctrl" %>
<sctrl:auth loginPage="../login.jsp" sessionName="ADMINSESSION"/>
<jsp:useBean id="etcutil" scope="page" class="kr.co.knoc.util.EtcUtil" />
<% request.setCharacterEncoding("euc-kr"); %>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section ( ������ �ƴ�??Display )
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	String gNavSubTitle = "��Ÿ ����";  		// ���� Depth ����
    String gNavSubName = "etc";				// ���� Depth �̸�
    String gNavDepthTitle1 = "05"; 		// Ȩ > ���� > ����1 ����
    String gNavDepthName1 = "";				// Ȩ > ���� > ����1 �̹��� �±� �̸�
    String gNavDepthTitle2 = ""; 				// Ȩ > ���� > ����1 > ����2 ����

    application.setAttribute("gNavMenuDepth1", "01");
    application.setAttribute("gNavMenuDepth2", "01");
        
	String gNavPage = "���� ���";  					// ���� ������ ����
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>
<%
	Calendar now = Calendar.getInstance();
	int year = now.get(Calendar.YEAR);
	int month = now.get(Calendar.MONTH)+1;
	int day = now.get(Calendar.DATE);
	
	Calendar end = Calendar.getInstance();
	end.add(Calendar.MONTH, 1);
	int endYear = end.get(Calendar.YEAR);
	int endMonth = end.get(Calendar.MONTH)+1;
	int endDay = end.get(Calendar.DATE);
%>
<%@ include file="../inc/top.jsp" %>

<!-- �Ķ���� ����   -->

<table width="100%"  border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td width="195" valign="top">
			<%@ include file = "left.jsp" %>  
		</td>
		<td valign="top">
			<table width="100%" height="200"  border="0" cellpadding="0" cellspacing="0">
            	<tr>
              		<td valign="top">
                  		<table width="100%" border="0" cellpadding="0" cellspacing="0">
                      		<tr>
                          		<td valign="top">
                              		<table width="100%" height="30"  border="0" cellpadding="0" cellspacing="0">
									<tr>
									<td><img src="/SiteControl/images/admin_left_03.gif" width="11" height="11"> ��Ÿ ���� > �������</td>
									<td width="500" align="right" style="padding-right:20;">HOME > <span class="style6">��Ÿ ���� > �������</span></td>
									</tr>
									<tr>
									<td height="2" colspan="2" bgcolor="EAEAEC"></td>
									</tr>
									</table>
                                 </td>
                            </tr>
                            </table>
                            <table width="100%" height="15"  border="0" cellpadding="0" cellspacing="0">
                            	<tr>
                                	<td></td>
                                </tr>
                            </table>
<!-- ����  -->                    
<script type="text/javascript" language="javascript">
	window.onload = init_body;
	
	function init_body() {
		var sYear = parseInt("<%=year%>");
		var eYear = parseInt("<%=endYear%>");
		var sMonth = parseInt("<%=month%>")-1;
		var eMonth = parseInt("<%=endMonth%>")-1;
		var sDay = parseInt("<%=day%>");
		var eDay = parseInt("<%=endDay%>");
		
		var dtStart = new Date(sYear,sMonth,1);
		var dtEnd = new Date(eYear, eMonth, 1);
		var f = document.forms["writeform"];
		
		/*********************
		* �Ⱓ ���� ���� ����
		*********************/
		var sDaySelect = f.elements["startDay"];
		var nSMonth = dtStart.getMonth();
		var i = 0;
		sDaySelect.options.length = 0;
		while(dtStart.getMonth() == nSMonth) {
			sDaySelect.options[i++] = new Option(dtStart.getDate(),dtStart.getDate());
			dtStart.setTime(dtStart.getTime() + 1000*60*60*24);
		}
		sDaySelect.selectedIndex = parseInt(sDay) -1;
		
		/*********************
		* �Ⱓ  �� ���� ����
		*********************/
		var eDaySelect = f.elements["endDay"];
		var nEMonth = dtEnd.getMonth();
		i = 0;
		eDaySelect.options.length = 0;
		while(dtEnd.getMonth() == nEMonth) {
			eDaySelect.options[i++] = new Option(dtEnd.getDate(),dtEnd.getDate());
			dtEnd.setTime(dtEnd.getTime() + 1000*60*60*24);
		}
		eDaySelect.selectedIndex = parseInt(eDay) -1;
		
		/*********************
		* ���� �ʱ�ȭ
		*********************/
		listingQuestion();
	}
	function listingQuestion() {
		var dd = document.getElementById("BOEX");
		var boHTML = dd.innerHTML;
		var f = document.writeform;
		var cnt = f.elements["questionCount"].value;
		if(cnt.value == "") cnt = 0;
		var ex = document.getElementById("EXAMPLE")
		ex.innerHTML = "";
		for(i=0;i<cnt;i++) {
			var dv = document.createElement("div");
			dv.innerHTML = boHTML.replace("##N##",""+(i+1));
			ex.appendChild(dv);
		}
	}
	function changeSDate(o) {
		var f = o.form;
		var nYear = parseInt(f.elements["startYear"].value);
		var nMonth = parseInt(f.elements["startMonth"].value)-1;
		
		var dtDate = new Date(nYear,nMonth,1);
		
		var oDate = f.elements["startDay"];
		var i = 0;
		oDate.options.length = 0;
		while(dtDate.getMonth() == nMonth) {
			oDate.options[i++] = new Option(dtDate.getDate(),dtDate.getDate());
			dtDate.setTime(dtDate.getTime() + 1000*60*60*24);
		}
		oDate.selectedIndex = 0;
	}
	function changeEDate(o) {
		var f = o.form;
		var nYear = parseInt(f.elements["endYear"].value);
		var nMonth = parseInt(f.elements["endMonth"].value)-1;
		
		var dtDate = new Date(nYear,nMonth,1);
		
		var oDate = f.elements["endDay"];
		var i = 0;
		oDate.options.length = 0;
		while(dtDate.getMonth() == nMonth) {
			oDate.options[i++] = new Option(dtDate.getDate(),dtDate.getDate());
			dtDate.setTime(dtDate.getTime() + 1000*60*60*24);
		}
		oDate.selectedIndex = 0;
	}
	
	/*********************
	* �� Validation
	*********************/
	function writeSurvey() {
		var f = document.forms["writeform"];
		if(f.elements["title"].value =="") alert("���������� �Է��� �ּ���.");
		else if(f.elements["purpose"].value =="")alert("���� ������ �Է��� �ּ���.");
		else {
			if(!checkQuestion(f)) return;
			if(!checkTerm(f)) return;
			if(confirm("������ ����Ͻðڽ��ϱ�?"))
				f.submit();
		}
	}
	function checkTerm(f) {
		if( f.elements["startYear"].value 
				+ ((parseInt(f.elements["startMonth"].value)+100)+"").substring(1) 
				+ ((parseInt(f.elements["startDay"].value)+100)+"").substring(1) 
					> 
				f.elements["endYear"].value 
				+ ((parseInt(f.elements["endMonth"].value)+100)+"").substring(1) 
				+ ((parseInt(f.elements["endDay"].value)+100)+"").substring(1) ) { 
			alert("���� ���۳�¥�� ���ᳯ¥���� �����ϴ�."); return false; 
		} else {
			return true;
		}
	}
	function checkQuestion(f) {
		var qlist = f.elements["question"];
		var qtypelist = f.elements["questionType"];
		var maxselectlist = f.elements["maxSelection"];
		var examplelist = f.elements["example"];

		if(typeof(qlist) == "undefined") {
			alert("�����׸���� ������ �ּ���.");
			return false;
		}
		if(typeof(qlist.length) == "undefined") {
			/* ���� 1�� */
			if(qlist.value == "") { alert("������ �Է��� �ּ���."); qlist.focus(); return false;}
			else if(qtypelist.value == "0" && examplelist.value =="") { alert("���⸦ �Է��� �ּ���."); examplelist.focus(); return false;}
			else return true;
		}
		else {
			/* ���� 2�� �̻� */
			for(i=0 ; i < qlist.length ; i++) {
				if(qlist[i].value == "") { alert("������ �Է��� �ּ���."); qlist[i].focus(); return false;}
				else if(qtypelist[i].value == "0" && examplelist[i].value =="") { alert("���⸦ �Է��� �ּ���."); examplelist[i].focus(); return false;}
			}
			return true;
		}
	}

</script>
<form name="writeform" id="writeForm" method="post" action="surveyWriteOk.jsp">
<input type="hidden" name="mode" value="">
<input type="hidden" name="pageNum" value="">
<input type="hidden" name="schType" value="">
<input type="hidden" name="schText" value="">
<table cellSpacing="0" cellPadding="0" border="1" borderColor="#B5B5B5" width="100%" style="margin-top:20; color:#000;">
	<TR height="30">
		<TD width="120" style="background:#EBEBEB; color:#000;padding-left:10px">��������</td>
		<TD style="padding-left:10;"><input type="text" name="title" value="" size="64" maxlength="64" class="textBox"></td>
	</tr>
	<TR height="30">
		<TD width="120" style="background:#f9f9f9; color:#000;padding-left:10px">���� ����(����)</td>
		<TD style="padding-left:10;"><textarea name="purpose" rows="4" style="width:100%" ></textarea></td>
	</tr>
	<TR height="30">
		<TD width="120" style="background:#EBEBEB; color:#000;padding-left:10px">���� �Ⱓ</td>
		<TD style="padding-left:10;">
			<table>
				<TR>
					<td >
					<table cellpadding="1" cellspacing="0" border="0">
						<TR>
							<TD>
								<select name="startYear" >
								<% for(int y = 2006; y < year+1; y++) { %>
									<option value="<%=y %>" <% if (y == year) { %>selected<% } %>><%=y %></option>
								<% } %>
								</select>
							</td>
							<TD>
								<select name="startMonth"  onchange="changeSDate(this);">
								<% for(int m = 1; m <= 12; m++) { %>
									<option value="<%=m %>" <% if(m == month) { %>selected<% } %>><%=m %></option>
								<% } %>
								</select>
							</td>
							<td>
								<select name="startDay">
								</select>
							</td>
						</tr>
					</table>
				</td>
				<td  width="10">~</td>
				<td >
					<table cellpadding="1" cellspacing="0" border="0">
						<TR>
							<TD>
								<select name="endYear" >
								<% for(int ey = 2006; ey < endYear+1; ey++) { %>
									<option value="<%=ey %>" <% if (ey == endYear) { %>selected<% } %>><%=ey %></option>
								<% } %>
								</select>
							</td>
							<TD>
								<select name="endMonth"  onchange="changeEDate(this);">
								<% for(int em = 1; em <= 12; em++) { %>
									<option value="<%=em %>" <% if (em == endMonth) { %>selected<% } %>><%=em %></option>
								<% } %>
								</select>
							</td>
							<td>
								<select name="endDay" >
								</select>
							</td>
						</tr>
					</table>
				</td>
				</tr>
			</table>

	<TR height="30">
		<TD width="120" style="background:#f9f9f9; color:#000;padding-left:10px">����������</td>
		<TD style="padding-left:10;"><input type="text" name="maxVote" value="0" size="7" maxlength="7" class="textBox"> 0 �� ������</td>
	</tr>
	<TR height="30">
		<TD  width="120" style="background:#EBEBEB; color:#000;padding-left:10px">�����׸��</td>
		<TD style="padding-left:10;">
			<select name="questionCount"  onchange="listingQuestion()">
					<option value="">= �����ϼ��� =</option>
					<% for (int i = 1; i <= 20; i++) { %>
					<option value="<%=i %>"><%=i %></option>
					<% } %>
			</select>
			(���� �׸� �Է��� �׸���� �����ϸ� �Է��Ͻ� ������ ������ϴ�. <B>�׸��Է¿� �ռ� ������ ������ �ּ���.</b>)
		</td>
	</tr>
	<TR height="30">
		<TD width="120" style="background:#f9f9f9; color:#000;padding-left:10px">��뿩��</td>
		<TD style="padding-left:10;">
			<input type="radio" name="serviceFlag" value="Y">��� 
			<input type="radio" name="serviceFlag" value="N" checked="1">�̻�� </td>
	</tr>
	<TR height="30">
		<TD  width="120" style="background:#EBEBEB; color:#000;padding-left:10px">�����ߺ� ����</td>
		<TD style="padding-left:10;">
		  <select name="dupleType" >
		 		<option value="1">�ѹ��� ��ǥ����</option>
		 		<option value="2">������ �ߺ���ǥ ����</option>
		  </select>
		</td>
	</tr>
	<TR height="30">
		<TD  width="120" style="background:#EBEBEB; color:#000;padding-left:10px">�α��� üũ</td>
		<TD style="padding-left:10;">
		  <select name="isLogin" >
		 		<option value="Y">�α��� üũ��</option>
		 		<option value="N">�α��� üũ����</option>
		  </select>
		</td>
	</tr>
	</table>
	<table width="100%">
		<tr>
			<td >
				<li>�ְ����� ��� ���⸦ �Է��ϼŵ� ������� �ʽ��ϴ�.</li>
				<li><B>���Ⱑ ���� ��</b>�� ���� <b>�ٹٲ�</b>���� �����Ͻø� �˴ϴ�.</li>
			</td>
		</tr>
	</table>
	<div id="EXAMPLE">
	</div>
	<div style="text-align:center">
		<input type="button" onclick="writeSurvey()" style="cursor:pointer" value="���">	
		<input type="button" onclick="location.href='surveyList.jsp';" style="cursor:pointer" value="���">
	</div>
	</td>
	</tr>
</table>	
</form>

<div id="BOEX" style="display:none">
	<table cellSpacing="0" cellPadding="0" border="1" borderColor="#B5B5B5" width="100%" style="margin-top:20; color:#000;">
		<TR height="30">
			<TD  width="120" style="background:#f9f9f9; color:#000;padding-left:10px"> ���� �׸� ##N## </td>
			<td  colspan=3 style="padding-left:10;"><input type="text" name="question" maxlength="128" style="width:100%"></td>
		</tr>
		<TR height="30">
			<TD  width="120" style="background:#EBEBEB; color:#000;padding-left:10px"> ����</td>
			<td  width="100" style="padding-left:10;">&nbsp;
				<select name="questionType" >
					<option value="0" selected>������</option>
					<option value="1">�ְ���</option>
				</select>
			</td>
			<TD  width="140" style="background:#EBEBEB; color:#000;padding-left:10px"> �ִ� ���ð��� �����</td>
			<TD style="padding-left:10;">
				<select name="maxSelection" >
				<% for (int i = 1; i <= 10; i++) { %>
					<option value="<%=i %>"><%=i %></option>
				<% } %>
				</select>��
			</td>
		</tr>
		<TR height="30" >
			<TD  width="120" style="background:#f9f9f9; color:#000;padding-left:10px"> ����</td>
			<td  colspan="3" style="padding-left:10;">
				<textarea name="example" rows="6" style="width:100%" ></textarea>
			</td>
		</tr>
	</table>
</div>



<!-- ���� �� -->
							<BR>
						</td>
                      </tr>
                  </table></td>
            </tr>
        </table>
<%@ include file="../inc/bottom.jsp" %>	