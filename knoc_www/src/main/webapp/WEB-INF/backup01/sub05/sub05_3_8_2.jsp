<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","05");
	application.setAttribute("gNavMenuDepth2","03");
	application.setAttribute("gNavMenuDepth3","02");
	application.setAttribute("gNavMenuDepth4","00");
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>    
<%@include file="/include/comheader.jsp"%>

	<%@include file="/include/subtopnavi_new.jsp"%><!--// subtopNavi: start //-->

	<div id="contents">
		<!--// leftmenu: start //-->
        <%@include file="/include/sub_leftmenu_new.jsp"%>
        <!--// leftmenu: end //-->
		
		<div id="rightarea">
			<div id="subcnts">
				<%@include file="/include/subtop_05.jsp"%>
				<!--// location: start //-->
				<div class="locadv">
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>	
					&gt; <span>��������</span> &gt; <span>���̹�ȫ����</span> &gt; <span class="locanow">�ڷ����</span>
				</div>
				<!--// location: end //-->
				
				<div class="pagetle">
					<h3 class="tleimg"><img src="/images/information/ttl_sub05_3_2.gif" alt="�ڷ����" /></h3>
				</div>
				<neo:neoboardFacade parentUri="<%=request.getServletPath()%>" mode="list" bid="HONGBOPT" adminURL="" sessionName="USERSESSION"/>
			</div>
		</div>
	</div>
	
  <%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>