<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>    
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","08");
	application.setAttribute("gNavMenuDepth2","06");
	application.setAttribute("gNavMenuDepth3","04");
	application.setAttribute("gNavMenuDepth4","00");
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>          
<%@include file="/include/sub08_auth.jsp"%>     
<%@include file="/include/comheader.jsp"%>


	<%@include file="/include/subtopnavi_new.jsp"%><!--// subtopNavi: start //-->

	<div id="contents">
		<!--// leftmenu: start //-->
        <%@include file="/include/sub_leftmenu_new.jsp"%>
        <!--// leftmenu: end //-->
		
		<div id="rightarea">
			<div id="subcnts">
				<%@include file="/include/subtop_08.jsp"%>
				<!--// location: start //-->
				<div class="locadv">
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>	
					&gt; <span>�̻�ȸ</span>
					&gt; <span>�̻�ȸ����ó</span>
                    &gt; <span class="locanow">ã�ƿ��ô� ��</span>
				</div>
				<!--// location: end //-->
				
				<div class="pagetle">
					<h3><img src="/images/directors/ttl_sub08_6_4.gif" alt="ã�ƿ��ô� ��" /></h3>
				</div>
				<!--����-->
				<div id="substar">
                	<dl>
                    	<dt align="center"><img src="/images/directors/sub08_6-1.gif" alt="ã�ƿ��ô� ��" /><p><img src="/images/directors/sub08_6-2.gif" alt="ã�ƿ��ô� ��" /></dt>
                    </dl>
                 </div>
				 <!--//��-->
			</div>
		</div>
	</div>
	
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>