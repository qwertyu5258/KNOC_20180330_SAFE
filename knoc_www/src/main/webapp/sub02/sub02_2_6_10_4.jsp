<%@ page language="java" contentType="text/html; charset=EUC-KR"

    pageEncoding="EUC-KR"%>

<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>    

<% 

    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

	' Page Navigator section

	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/

	application.setAttribute("gNavMenuDepth1","02");

	application.setAttribute("gNavMenuDepth2","02");

	application.setAttribute("gNavMenuDepth3","08");

	application.setAttribute("gNavMenuDepth4","06");

//	application.setAttribute("gNavMenuDepth3","06");

//	application.setAttribute("gNavMenuDepth4","10");

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
                    &gt; <span>�濵����</span>
					&gt; <span>����</span>
                    &gt; <span class="locanow">��������������</span>

				</div>

				<!--// location: end //-->

				

				<!--[2009-09-21 ����] :: �ۼ���: ������ -->

				<div class="pagetle">

					<h3><img src="/images/management/ttl_sub02_2_6.gif" alt="��Ÿ����" /></h3>

				</div>

				<!--����-->
				<h4 style="margin:30px 0 0 20px;"><img src="/images/management/sub02_2_1_2_ta2.gif" alt="��������������"/></h4>
				<jsp:include page="/sub02/sub02_2_6_10_4_contents.jsp" flush="true"/>
				<neo:neoboardFacade parentUri="<%=request.getServletPath()%>" mode="list" bid="BASIC" adminURL="" sessionName="USERSESSION"/>				
				<!-- div class="infoCheck"><div style="clear:both ; height:20px ;"></div><%@include file="/include/satisfy_link.jsp"%></div-->			  

				<!--//��-->

			</div>

		</div>

	</div>

	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->

</body>

</html>