<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "kr.co.knoc.util.*"%>
<%@ page import = "kr.co.knoc.survey.*"%>
<%@ page import = "java.util.*"%>
<%@ taglib uri="/WEB-INF/tlds/sitetaglib.tld" prefix="stl" %>
<%@ taglib uri="/WEB-INF/tlds/sitectrltaglib.tld" prefix="sctrl" %>
<sctrl:auth loginPage="../login.jsp" sessionName="ADMINSESSION"/>
<jsp:useBean id="etcutil" scope="page" class="kr.co.knoc.util.EtcUtil" />
<jsp:useBean id="SurveyMa" scope="page" class="kr.co.knoc.survey.SurveyManager" />
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
	String nowpage = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("page")));
	String schType = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("schType")));
	String schText = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("schText")));	
	int	survey_num	= (request.getParameter("survey_num")==null)?0:Integer.parseInt(request.getParameter("survey_num"));
	
	SurveyView view = new SurveyView();
	view = SurveyMa.getSurveyView(survey_num);
	if(view == null) {
%>		
		<stl:msgBack msg="�������� �ʴ� �����Դϴ�."/>
<%		
	}
	SurveyBean sb = view.getSurvey();	
	List questionViewList = view.getQuestions();
	
	/**
	 * 2016.3.21 JSM
	 * ���Ⱦ��� ��ġ
	 */	 
	String survey_title = etcutil.checkNull(sb.getTitle());
	String survey_purpose = etcutil.checkNull(sb.getPurpose());
	String start_date = etcutil.checkNull(sb.getStartDate());
	String end_date = etcutil.checkNull(sb.getEndDate());
	if(start_date.length()!=8 && end_date.length()!=8){
	%>		
		<stl:msgBack msg="������ �Ǵ� �������� �߸� �����Ǿ����ϴ�."/>
	<%			
	}
%>
<%@ include file="../inc/top.jsp" %> 

<table width="100%"  border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td width="195" valign="top">
			<%@ include file="left.jsp" %> 
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
		var sYear = parseInt("<%=sb.getStartDate().substring(0,4)%>");
		var eYear = parseInt("<%=sb.getEndDate().substring(0,4)%>");
		var sMonth = parseInt("<%=sb.getStartDate().substring(4,6)%>")-1;
		var eMonth = parseInt("<%=sb.getEndDate().substring(4,6)%>")-1;
		var sDay = parseInt("<%=sb.getStartDate().substring(6,8)%>");
		var eDay = parseInt("<%=sb.getEndDate().substring(6,8)%>");
		
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
		* ���� �������� �ʱ�ȭ
		*********************/
		viewEx(f.elements["initEx"]);
		listingQuestion();
		return true;
	}
	function listingQuestion() {
		var dd = document.getElementById("BOEX");
		var boHTML = dd.innerHTML;
		var f = document.writeform;
		var cnt = f.elements["questionCount"].value;
		if(cnt.value == "") cnt = 0;
		var ex = document.getElementById("EXAMPLE")
		ex.innerHTML = "";
		for(var i=0;i<cnt;i++) {
			var boex = document.getElementById( "BOEX" + (i+1) );
			if(boex) {
				var dv = document.createElement("div");
				dv.innerHTML = boex.innerHTML;
				ex.appendChild(dv);
			}
			else {
				var dv = document.createElement("div");
				dv.innerHTML = boHTML.replace("##N##",""+(i+1));
				ex.appendChild(dv);
			}
			
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
			if(confirm("������ �����Ͻðڽ��ϱ�?"))
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
			else if(examplelist.value =="") { alert("���⸦ �Է��� �ּ���."); examplelist.focus(); return false;}
			else return true;
		}
		else {
			/* ���� 2�� �̻� */
			for(i=0 ; i < qlist.length ; i++) {
				if(qlist[i].value == "") { alert("������ �Է��� �ּ���."); qlist[i].focus(); return false;}
				else if(examplelist[i].value =="") { alert("���⸦ �Է��� �ּ���."); examplelist[i].focus(); return false;}
			}
			return true;
		}
	}
	function viewEx(o) {
		var f = o.form;
		if(o.checked) {
			// enable
			f.elements["questionCount"].disabled = 0;
			var dd = document.getElementById("EXAMPLE");
			if(dd) dd.style.display = "block";
		}
		else {
			// disable
			f.elements["questionCount"].disabled = 1;
			var dd = document.getElementById("EXAMPLE");
			if(dd) dd.style.display = "none";
		}
	}
	function deleteSurvey() {
		var f = document.forms["deleteform"];
		if(confirm("������ �����Ͻðڽ��ϱ�?")) {
			if(confirm("������ ������ ������ �Ұ����մϴ�. ����Ͻðڽ��ϱ�?")) {
				f.submit();
			}
		}
	}

	function list() {
    	document.writeform.action = 'surveyList.jsp';
    	document.writeform.submit();
	}
</script>
<form name="deleteform" id="deleteform" method="post" action="survey.do">
<input type="hidden" name="surveyNum" value="<%=survey_num %>">
<input type=hidden name=page value="<%=nowpage%>">		
<input type="hidden" name="schType" value="<%=schType%>">	
<input type="hidden" name="schText" value="<%=schText%>">
</form>
<form name="writeform" id="writeForm" method="post" action="survey.do">
<input type="hidden" name="num" value="<%=survey_num %>">
<input type=hidden name=page value="<%=nowpage%>">		
<input type="hidden" name="schType" value="<%=schType%>">	
<input type="hidden" name="schText" value="<%=schText%>">
<table cellSpacing="0" cellPadding="0" border="1" borderColor="#B5B5B5" width="100%" style="margin-top:20; color:#000;">
	<TR height="30">
		<TD width="120" style="background:#EBEBEB; color:#000;padding-left:10px">��������</td>
		<TD style="padding-left:10;"><input type="text" name="title" value="<%=survey_title %>" size="64" maxlength="64" class="textBox"></td>
	</tr>
	<TR height="30">
		<TD width="120" style="background:#f9f9f9; color:#000;padding-left:10px">���� ����(����)</td>
		<TD style="padding-left:10;"><textarea name="purpose" rows="4" style="width:100%" ><%=survey_purpose %></textarea></td>
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
									<option value="<%=y %>" <% if (y == Integer.parseInt(sb.getStartDate().substring(0,4))) { %>selected<% } %>><%=y %></option>
								<% } %>
								</select>
							</td>
							<TD>
								<select name="startMonth"  onchange="changeSDate(this);">
								<% for(int m = 1; m <= 12; m++) { %>
									<option value="<%=m %>" <% if(m == Integer.parseInt(sb.getStartDate().substring(4,6))) { %>selected<% } %>><%=m %></option>
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
									<option value="<%=ey %>" <% if (ey == Integer.parseInt(sb.getEndDate().substring(0,4))) { %>selected<% } %>><%=ey %></option>
								<% } %>								
								</select>
							</td>
							<TD>
								<select name="endMonth"  onchange="changeEDate(this);">
								<% for(int em = 1; em <= 12; em++) { %>
									<option value="<%=em %>" <% if (em == Integer.parseInt(sb.getEndDate().substring(4,6))) { %>selected<% } %>><%=em %></option>
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
		<TD style="padding-left:10;"><input type="text" name="maxVote" value="<%=sb.getMaxVote() %>" size="7" maxlength="7" class="textBox"> 0 �� ������</td>
	</tr>
	<TR height="30">
		<TD  width="120" style="background:#EBEBEB; color:#000;padding-left:10px">�����׸��</td>
		<TD style="padding-left:10;">
			<select name="questionCount"  onchange="listingQuestion()">
					<option value="">= �����ϼ��� =</option>
					<% for (int i = 1; i <= 20; i++) { %>
					<option value="<%=i %>" <% if (questionViewList.size() == i) { %>selected<% } %>><%=i %></option>
					<% } %>
			</select>
			(���� �׸� ������ �׸���� �����ϸ� �Է��Ͻ� ������ ������ϴ�. <B>�׸��Է¿� �ռ� ������ ������ �ּ���.</b>)
		</td>
	</tr>
	<%
		/**
		 * 2016.3.21 JSM
		 * ���Ⱦ��� ��ġ
		 */	
		String service_flag = etcutil.checkNull(sb.getServiceFlag());
	%>	
	<TR height="30">
		<TD width="120" style="background:#f9f9f9; color:#000;padding-left:10px">��뿩��</td>
		<TD style="padding-left:10;">
			<input type="radio" name="serviceFlag" value="Y" <% if (service_flag.equals("Y")) { %>checked<% } %>>��� 
			<input type="radio" name="serviceFlag" value="N" <% if (service_flag.equals("N")) { %>checked<% } %>>�̻�� </td>
	</tr>
	<%
		/**
		 * 2016.3.21 JSM
		 * ���Ⱦ��� ��ġ
		 */	
		String dupletype = etcutil.checkNull(sb.getDupleType());
	%>
	<TR height="30">
		<TD  width="120" style="background:#EBEBEB; color:#000;padding-left:10px">�����ߺ� ����</td>
		<TD style="padding-left:10;">
		  <select name="dupleType" >
		 		<option value="0" <% if (dupletype.equals("0")) { %>selected<% } %>>�Ϸ翡 �ѹ� ��ǥ ����</option>
		 		<option value="1" <% if (dupletype.equals("1")) { %>selected<% } %>>�ѻ���� �ѹ�</option>
		 		<option value="2" <% if (dupletype.equals("2")) { %>selected<% } %>>������ �ߺ���ǥ ����</option>
		  </select>
		</td>
	</tr>
	<TR height="30">
		<TD width=120 style="background:#f9f9f9; color:#000;padding-left:10px">���� ����</td>
		<TD style="padding-left:10;"><input type=checkbox name="initEx" value="Y"  onclick="viewEx(this)">���⸦ �����Ϸ��� üũ�ϼ���.(��. ���⸦ �����ϰ� �Ǹ� ������ ��ǥ���� �ʱ�ȭ�˴ϴ�.</td>
	</tr>
	</table>
	<table  width=100%>
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
		<input type="button" onclick="writeSurvey()" style="cursor:pointer" value="����">	
		<input type="button" onclick="deleteSurvey()" style="cursor:pointer" value="����">	
		<a href="javascript:list();">���</a>
	</div>
	</td>
	</tr>
</table>	
</form>

	<div id="BOEX" style="display:none">
		<table cellSpacing="0" cellPadding="0" border="1" borderColor="#B5B5B5" width="100%" style="margin-top:20; color:#000;">
			<TR height="30">
				<TD  width="120" style="background:#f9f9f9; color:#000;padding-left:10px"> ���� �׸� ##N## </td>
				<td  colspan=3 style="padding-left:10;"><input type="text" name="form.question" maxlength="128" style="width:100%"></td>
			</tr>
			<TR height="30">
				<TD  width="120" style="background:#EBEBEB; color:#000;padding-left:10px"> ����</td>
				<td  width="100" style="padding-left:10;">&nbsp;
					<select name="form.questionType" >
						<option value="0" selected>������</option>
						<option value="1">�ְ���</option>
					</select>
				</td>
				<TD  width="140" style="background:#EBEBEB; color:#000;padding-left:10px"> �ִ� ���ð��� �����</td>
				<TD style="padding-left:10;">
					<select name="form.maxSelection" >
					<c:forEach var="i" begin="1" end="10">
						<c:choose>
							<c:when test="${i eq 1}">
								<option value="<c:out value="${i}" />" selected><c:out value="${i}" /></option>
							</c:when>
							<c:otherwise>
								<option value="<c:out value="${i}" />" ><c:out value="${i}" /></option>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					</select>��
				</td>
			</tr>
			<TR height="30" >
				<TD  width="120" style="background:#f9f9f9; color:#000;padding-left:10px"> ����</td>
				<td  colspan="3" style="padding-left:10;">
					<textarea name="form.example" rows="6" style="width:100%" ></textarea>
				</td>
			</tr>
		</table>
	</div>
	
<c:forEach var="questionItem" items="${surveyCommand.form.question}" varStatus="status">
	
	<c:set var="questionTypeItem" value="${surveyCommand.form.questionType[status.index] }" />
	<c:set var="maxSelectionItem" value="${surveyCommand.form.maxSelection[status.index] }" />
	<c:set var="exampleItem" value="${surveyCommand.form.example[status.index] }" />
	
		<div id="BOEX<c:out value="${status.index + 1}" />" style="display:none">
		<table cellSpacing="0" cellPadding="0" border="1" borderColor="#B5B5B5" width="100%" style="margin-top:20; color:#000;">
			<TR height="30">
				<TD  width="120" style="background:#f9f9f9; color:#000;padding-left:10px"> ���� �׸�  <c:out value="${status.index + 1 }" /> </td>
				<td  colspan="3" style="padding-left:10;"><input type="text" name="form.question" value="<c:out value="${questionItem}" />" maxlength="128" style="width:100%"></td>
			</tr>
			<TR height="30">
				<TD  width="120" style="background:#EBEBEB; color:#000;padding-left:10px"> ����</td>
				<td  width="100" style="padding-left:10;">&nbsp;
					<select name="form.questionType" >
						<option value="0" <c:if test="${ questionTypeItem eq '0'}">selected</c:if>>������</option>
						<option value="1" <c:if test="${ questionTypeItem eq '1'}">selected</c:if>>�ְ���</option>
					</select>
				</td>
				<TD  width="140" style="background:#EBEBEB; color:#000;padding-left:10px"> �ִ� ���ð��� �����</td>
				<TD style="padding-left:10;">
					<select name="form.maxSelection" >
					<c:forEach var="i" begin="1" end="10">
						<c:choose>
							<c:when test="${i eq maxSelectionItem}">
								<option value="<c:out value="${i}" />" selected><c:out value="${i}" /></option>
							</c:when>
							<c:otherwise>
								<option value="<c:out value="${i}" />" ><c:out value="${i}" /></option>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					</select>��
				</td>
			</tr>
			<TR height="30" >
				<TD  width="120" style="background:#f9f9f9; color:#000;padding-left:10px"> ����</td>
				<td  colspan="3" style="padding-left:10;">
					<textarea name="form.example" rows="6" style="width:100%" ><c:out value="${exampleItem }" /></textarea>
				</td>
			</tr>
		</table>
	</div>
</c:forEach> 

<!-- ���� �� -->
							<BR>
						</td>
                      </tr>
                  </table></td>
          </tr>
        </table>
<c:import  url="/mgr/inc/bottom.jsp" /> 