<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","02");
	application.setAttribute("gNavMenuDepth2","01");
	application.setAttribute("gNavMenuDepth3","02");
	application.setAttribute("gNavMenuDepth4","02");
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
				<%@include file="/include/subtop_02.jsp"%>
				<!--// location: start //-->
				<div class="locadv">
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>
					&gt; <span>�����濵</span>
                    &gt; <span>�����濵</span>
					&gt; <span>�����濵�ҽ�</span>
                    &gt; <span class="locanow">�����濵NOW</span>
				</div>
				<!--// location: end //-->
				
				<div class="pagetle">
					<h3><img src="/images/management/ttl_sub02_1_2_2.gif" alt="�����濵NOW" /></h3>
				</div>
				<!--����-->
				<neo:neoboardFacade parentUri="<%=request.getServletPath()%>" mode="list" bid="BUSINOW" adminURL="" sessionName="USERSESSION"/>
				<!--//��-->
			</div>
		</div>
	</div>
	
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>