<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "kr.co.knoc.util.*"%>
<%@ page import = "kr.co.knoc.survey.*"%>
<%@ page import = "java.util.*"%>
<%@ taglib uri="/WEB-INF/tlds/sitetaglib.tld" prefix="stl" %>
<jsp:useBean id="pp" class="kr.co.knoc.tags.pager.PageProperty" scope="request"/>
<jsp:useBean id="etcutil" scope="page" class="kr.co.knoc.util.EtcUtil" />
<jsp:useBean id="SurveyMa" scope="page" class="kr.co.knoc.survey.SurveyManager" />
<% request.setCharacterEncoding("euc-kr"); %>
<%
	String nowpage = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("page")));
	String schType = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("schType")),"8859_1");
	String schText = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("schText")),"8859_1");
	int	survey_num	= (request.getParameter("survey_num")==null)?0:Integer.parseInt(request.getParameter("survey_num"));
	int	exNum	= (request.getParameter("exNum")==null)?0:Integer.parseInt(request.getParameter("exNum"));
	
	SurveyView view = new SurveyView();
	view = SurveyMa.getSurveyView(survey_num);
	if(view == null) {
%>		
<script type="text/javascript">
	alert("�������� �ʴ� �����Դϴ�.");
	self.close();
</script>
<%	
		return;
	}
	SurveyBean sb = view.getSurvey();
	SurveyQuestionBean sqb = SurveyMa.getSurveyQuestion(survey_num, exNum);
	if(sqb == null) {
%>
<script type="text/javascript">
	alert("�������� �ʴ� �����Դϴ�.");
	self.close();
</script>		
<%	
		return;
	}	
	
	if(!"1".equals(sqb.getQuestionType())) {
		%>		
<script type="text/javascript">
	alert("�ְ��� ������ �ƴմϴ�.");
	self.close();
</script>		
<%	
		return;		
	}
	
	pp.setPage(nowpage);
	pp.setPageSize("10");
	pp.setPageUrl("");
	ArrayList al = SurveyMa.getSubjectiveAnswerList(schText, pp.getNPage(), pp.getNPageSize(), survey_num, exNum);		

	int count = SurveyMa.getSubjectiveAnswerListCount(schText, survey_num, exNum);	
%>
<html lang="en">
<head>
<title>������ ������</title>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<link href="/SiteControl/share/css/admin.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="/share/js/common.js"></script>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #ffffff;
}
.style12 {color: #FFFFFF}
.style2 {color: #FF9900}
.style4 {color: #FF9900; font-weight: bold; }
.style6 {color: #FF6600}
.style7 {color: #FF6600; font-weight: bold; }
.style9 {color: #003399; font-weight: bold; }
.style10 {color: #999999}
.style11 {
	color: #5884B8;
	font-weight: bold;
}
.style1 {color: #ff8a00}
-->
</style>
</head>
<body leftmargin="0" topmargin="0">
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
                   	<tr>
                       	<td valign="top">
                  		<table width="100%" border="0" cellpadding="0" cellspacing="0">
                    	<tr>
                        	<td valign="top">
                           		<table width="100%" height="30" border="0" cellspacing="0" cellpadding="0">
                               		<tr>
                                   		<td>
                                         	<img src="/mgr/images/admin_left_03.gif" width="11" height="11"> ��Ÿ ���� > ������� </td>
                                         <td align="right" style="padding-right:20;">
										HOME > ��Ÿ ���� > �������</span>
                                         </td>
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
    <table cellSpacing="0" cellPadding="0" border="1" borderColor="#B5B5B5" width="100%" class="link_board_1" style="margin-top:20; text-align:center; color:#5c5c5c;">
    <tr>
    <td width="50">���� : </td>
    <td align="left"><%=sb.getTitle() %></td>
    </tr>
    <tr>
    <td width="50">���� #<%=exNum %>: </td>
    <td align="left"><%=sqb.getQuestion() %></td>
    </tr>
    </table>
    <br />                      
    <table cellSpacing="0" cellPadding="0" border="1" borderColor="#B5B5B5" width="100%" class="link_board_1" style="margin-top:20; text-align:center; color:#5c5c5c;">
		<TR height="25" style="background:#E7E7E7; color:#000;">
			<TD width="50">��ȣ</td>
			<TD>�ְ��� �亯</td>
		</tr>
<%  if(count==0) { %>
		<TR height="25">
			<TD colspan="8" align="center" height="100">��ϵ� �ְ��� �亯�� �����ϴ�..</td>
		</tr>
<% 
	} else {
		Iterator iter = al.iterator();
		while(iter.hasNext()){
			SurveySubjectiveAnswer sqa = (SurveySubjectiveAnswer)iter.next();
%>	
		<TR height="25">
			<TD width="50"><%=sqa.getEntryNum() %></td>
			<TD align="left"><%=sqa.getAnswer() %></td>
		</tr>
<%				
		}
	}
%>		
		
	</table>
                          
                          
                          
                          
<br/>		
<stl:pager pageName="pp" prevPage="prevPage" nextPage="nextPage" prevBlock="prevBlock" nextBlock="nextBlock" pages="pages" firstPage="firstPage" lastPage="lastPage" blockSize="10" totalCount="<%=SurveyMa.getSubjectiveAnswerListCount(schText,survey_num,exNum)%>" />
	<table class="pagezig_table" align="center">
		<tr>
			<td><a href="<%=prevBlock.getAnchor("&survey_num="+survey_num+"&exNum="+exNum+"&schText="+schText)%>"><img src="../images/btn_list_first.gif" alt="ó����������" align="absmiddle"></a> <a href="<%=prevPage.getAnchor("&survey_num="+survey_num+"&exNum="+exNum+"&schText="+schText)%>"><img src="../images/btn_prev_1.gif" alt="������������" align="absmiddle"></a></td>
			<td class="pagezig">
			<% int ll = 1; %>
			<stl:loop name="pages" loopId="p" className="kr.co.knoc.tags.pager.PageAnchor">
			<% if ( p.getPage() == pp.getNPage()) { %>
			<span><b><%=p.getPage()%></b></span> <% if (ll != pages.size()) {%> / <% } %>
			<% } else { %>
			<a href="<%=p.getAnchor("&survey_num="+survey_num+"&exNum="+exNum+"&schText="+schText)%>" class="num01"><%=p.getPage()%></a> <% if (ll != pages.size()) {%> / <% } %> 
			<% } %>
			<% ll++; %>
			</stl:loop>
			</td>
			<td><a href="<%=nextPage.getAnchor("&survey_num="+survey_num+"&exNum="+exNum+"&schText="+schText)%>"><img src="../images/btn_next_1.gif" alt="������������" align="absmiddle"></a> <a href="<%=nextBlock.getAnchor("&survey_num="+survey_num+"&exNum="+exNum+"&schText="+schText)%>"><img src="../images/btn_list_last.gif" alt="�ǳ���������" align="absmiddle"></a></td>
		</tr>
	</table>	



						</td>
                      </tr>
                  </table>
</body>
</html>                  