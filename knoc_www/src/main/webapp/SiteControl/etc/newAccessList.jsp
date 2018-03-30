<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "kr.co.knoc.term.*"%>
<%@ page import = "kr.co.knoc.util.*"%>
<%@ page import = "java.util.*"%>
<sctrl:auth loginPage="../login.jsp" sessionName="ADMINSESSION"/>
<jsp:useBean id="mainMana" class="kr.co.knoc.etc.MainCountManager" scope="request"/>

<% request.setCharacterEncoding("euc-kr"); %>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section ( ������ �ƴ�??Display )
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	String gNavSubTitle = "��Ÿ ����";  		// ���� Depth ����
    String gNavSubName = "etc";				// ���� Depth �̸�
    String gNavDepthTitle1 = "05"; 			// Ȩ > ���� > ����1 ����
    String gNavDepthName1 = "";				// Ȩ > ���� > ����1 �̹��� �±� �̸�
    String gNavDepthTitle2 = ""; 			// Ȩ > ���� > ����1 > ����2 ����

	application.setAttribute("gNavMenuDepth1", "15");
	application.setAttribute("gNavMenuDepth2", "01");
        
	String gNavPage = "������ ����";  					// ���� ������ ����
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>
<%
		

	ArrayList list = mainMana.getYearList();

	String year = "";
	String month = "";
	if(request.getParameter("year") == null){
		year = DateUtil.getYear()+"";
	}else{
		year = request.getParameter("year");
	}
	
	if(request.getParameter("month") == null){
		month = DateUtil.getMonth()+""; 
	}else{
		month = request.getParameter("month");
	}
	
	/**
	 * 2016.3.21 JSM
	 * ���Ⱦ��� ��ġ
	 */	
	if(month == null){month = "";}
	
	if(month.length() < 2){
		month = "0"+month;
	}
	
	//int seq = count-(pp.getNPage()-1) * pp.getNPageSize();
%>
<%@ include file="../inc/top.jsp" %>
<script language="javascript">
	function goFind()
	{
		var t = document.schform;
		t.submit();
	}	
	function edit(no) {
         	document.bForm.action = 'termEdit.jsp';
         	document.bForm.no.value = no;
           	document.bForm.submit();
	}
	function jsWrite() {
		location.href = "termWrite.jsp";
	}
	
	
	function searchList(){
		document.getElementById("form01").submit();
	}
	
	function goExcel(year){
		location.href = "newAccessListExcel.jsp?year="+year;
	}
</script>

<table width="100%" height="100%"  border="0" cellpadding="0" cellspacing="0">
<tr>
<td width="195" valign="top">
<%@ include file = "left.jsp" %> 
</td>  
<td valign=top>
<form action="/SiteControl/etc/newAccessList.jsp" id="form01" name="form01">
	<table width="100%" height="200"  border="0" cellpadding="0" cellspacing="0">
		<tr>
			<td valign="top">
				<table width="100%"  border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td valign="top">			
							<table width="100%" height="30"  border="0" cellpadding="0" cellspacing="0">
								<tr>
									<td><img src="/SiteControl/images/admin_left_03.gif" width="11" height="11"> ��Ÿ ���� > ����������</td>
									<td width="500" align="right" style="padding-right:20;">HOME > <span class="style6"> ��Ÿ ���� > ����������</span></td>
								</tr>
								<tr>
									<td height="2" colspan="2" bgcolor="EAEAEC"></td>
								</tr>
							</table>
						<table width="100%" height="15"  border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td></td>
							</tr>
						</table>
						<table align=center class=tableBorder border="0" cellpadding="0" cellspacing="0" width="100%">			
							<tr>
								<td class=descBorder_r>
									<span>
									<select name="year" id="year" onchange="searchList();">
									<%
									
										
										
										HashMap hash = new HashMap();
										for(int i=0; i<list.size(); i++){
											hash = (HashMap)list.get(i);
									%>
										<option value="<%=hash.get("year") %>"  <%if(year.equals(hash.get("year"))){out.print("selected");} %>><%=hash.get("year") %></option>
										
									<%
										}
									%>	
									
									<%
										ArrayList monthList = new ArrayList();
										monthList = mainMana.getMonthList(year);										
									%>
									</select> ��
									</span>
									<span style="margin-left: 10px">
										
									</span>									
								</td>
							</tr>        
						</table>	
						<br>	
<%

	int totalCount = mainMana.getTotalAccessCount();
%>							 
			<div style="margin-bottom: 10px" align="right">TOTAL : <%=totalCount %></div>			
<!-- ROW ���� -->	
<div align="right">
	<h5>Ȩ������ ����</h5>
	
</div>
<%
	ArrayList accList = new ArrayList();
	accList =  mainMana.getNewAccessList(year);
	
	ArrayList s1 = new ArrayList();
	ArrayList s2 = new ArrayList();
	for(int i=0; i<accList.size(); i++){
		hash = (HashMap)accList.get(i);
		
		s1.add("["+hash.get("month")+", "+hash.get("avg_count")+"]");
		s2.add("["+hash.get("month")+", "+hash.get("acc_count")+"]");
	}
%>
<script type="text/javascript">
	var s1 = <%=s1.toString() %>;
	var s2 = <%=s2.toString() %>;	
</script>

<div id="graph" style="width:980px; height:300px">
	<iframe id="new_access_list_graph" src="newAccessListGraph.jsp" width="980" height="310" scrolling="no" frameborder="0"></iframe>
</div>
		</td>
		</tr>
	
		</table>
		<div style="margin-top: 10px" align="right">
			<input type="button" value="�����ٿ�ε�" onclick="goExcel('<%=year %>');"/>
		</div>
		<br>		

<%
	//if(){
%>		

<%
	//}
%>
	</td>
	</tr>
	</table>
	
	<br>
	
</td>
</tr>
</table>
</form>
<%@ include file="../inc/bottom.jsp" %>	