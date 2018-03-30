<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="kr.co.knoc.util.*"%>    
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>
<jsp:useBean id="etcutil" scope="page" class="kr.co.knoc.util.EtcUtil" />    
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","01");
	application.setAttribute("gNavMenuDepth2","07");
	application.setAttribute("gNavMenuDepth3","08");
	application.setAttribute("gNavMenuDepth4","00");
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>        
<% request.setCharacterEncoding("euc-kr"); %>
<%
	String grp = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("grp")));
	if (grp == null || grp.equals("")) {
		grp = "REC5";
	}
%>     
<%@include file="/include/comheader.jsp"%>


	<%@include file="/include/subtopnavi_new.jsp"%><!--// subtopNavi: start //-->

	<div id="contents">
    	<!--// leftmenu: start //-->
        <%@include file="/include/sub_leftmenu_new.jsp"%>
        <!--// leftmenu: end //-->
		
		<div id="rightarea">
			<div id="subcnts">
				<%@include file="/include/subtop_01.jsp"%>
				<!--// location: start //-->
				<div class="locadv">
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>
					&gt; <span>����Ұ�</span>
                    &gt; <span>ä������</span>
                    &gt; <span class="locanow">ä��FAQ</span>
				</div>
				<!--// location: end //-->
				<!-- [2009-09-15 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/info/ttl_sub01_7_8.gif" alt="ä��FAQ" /></h3>
				</div>
				<!--����-->
				<div class="recruit3">
					<div id='four1'>
						<ul class="tab">
							<li><a href="/sub01/sub01_7_8.jsp?grp=REC5"><img src="/images/faq/sub01_7_8_1<% if (grp.equals("REC5")) { %>r<% } %>.gif" alt="ä������" border="0"  id="four_button5"/></a></li>
							<li><a href="/sub01/sub01_7_8.jsp?grp=REC6"><img src="/images/faq/sub01_7_8_2<% if (grp.equals("REC6")) { %>r<% } %>.gif" alt="������(6��)ä�����" border="0" id="four_button6"/></a></li>
							<li><a href="/sub01/sub01_7_8.jsp?grp=REC7"><img src="/images/faq/sub01_7_8_3<% if (grp.equals("REC7")) { %>r<% } %>.gif" alt="������/�����/����Ư�� ä�����" border="0" id="four_button7"/></a></li>
							<li><a href="/sub01/sub01_7_8.jsp?grp=REC8"><img src="/images/faq/sub01_7_8_4<% if (grp.equals("REC8")) { %>r<% } %>.gif" alt="û������ä�����" border="0" id="four_button8"/></a></li>
							<li><a href="/sub01/sub01_7_8.jsp?grp=REC11"><img src="/images/faq/sub01_7_8_5<% if (grp.equals("REC11")) { %>r<% } %>.gif" alt="�λ�����" border="0" id="four_button11"/></a></li>
							<li><a href="/sub01/sub01_7_8.jsp?grp=REC9"><img src="/images/faq/sub01_7_8_6<% if (grp.equals("REC9")) { %>r<% } %>.gif" alt="����缺����" border="0" id="four_button9"/></a></li>
							<li><a href="/sub01/sub01_7_8.jsp?grp=REC10"><img src="/images/faq/sub01_7_8_7<% if (grp.equals("REC10")) { %>r<% } %>.gif" alt="�����Ļ�" border="0" id="four_button10"/></a></li>
						</ul>
						<neo:neoboardFacade parentUri="<%=request.getServletPath()%>" mode="list" bid="RECFAQ" adminURL="" sessionName="USERSESSION"/>
					</div>
				</div>
				<!--//��-->
			</div>
		<%
			String phone = "";
			String nic_name = "";
			if("REC9".equals(request.getParameter("grp"))){
				phone = "052-216-2742"; //����缺 ����
				nic_name = "��¸�";
			}else if("REC10".equals(request.getParameter("grp"))){
				phone = "052-216-2762"; //�����Ļ�
				nic_name = "������";
			}else{
				phone = "052-216-2706"; //������..
				nic_name = "�ڿ�ȯ";
			}
		%>
		
		<%
			String team = "";
			if("REC9".equals(request.getParameter("grp"))){
				team = "����������"; //����缺 ����
			}else if("REC10".equals(request.getParameter("grp"))){
				team = "�����Ļ���"; //�����Ļ�
			}else{
				team = "�λ���"; //������..
			}
		%>
		
			
			<div class="new_officer">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
				<tbody>
					<tr>
						<td class="write_day"></td>
						<td class="contact_team"><strong>���μ� : </strong>����濵ó <%=team %></td>
						<td class="contact_user"><strong>����� : </strong><%=nic_name %></td>
						<td class="contact_tel"><strong>����ó : </strong><%=phone %></td>
					</tr>
				</tbody>
				</table>
			</div>						
			<!-- new_officer end -->
		</div>
	</div>
	
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>