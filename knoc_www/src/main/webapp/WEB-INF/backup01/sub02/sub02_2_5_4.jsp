<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>    
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","02");
	application.setAttribute("gNavMenuDepth2","02");
	application.setAttribute("gNavMenuDepth3","05");
	application.setAttribute("gNavMenuDepth4","04");
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
					
					&gt; <span>�����ܺ���</span>
                    
					&gt; <span class="locanow">�濵���� �򰡰��</span>
				</div>
				<!--// location: end //-->
				
				<!--[2009-09-21 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/management/ttl_sub02_2_5_1.gif" alt="�����ܺ���" /></h3>
				</div>

				<div class="officer">
					<h4><img src="/images/management/sub02_2_5_5_ta01.gif" alt="����(���,�����) �濵�򰡰�� "/></h4>
				</div>
				<iframe src="sub02_2_5_4_1.jsp" width="100%" height="320" frameborder="0" scrolling="no"></iframe>

				<div class="officer">
					<h4><img src="/images/management/sub02_2_5_5_ta02.gif" alt="���ΰ濵���������� "/></h4>
					
				</div>				
				<iframe src="sub02_2_5_4_2.jsp" width="100%" height="320" frameborder="0" scrolling="no"></iframe>
				
				<div class="new_officer">
					<table summary="���μ� �� ����ó ������">
					<caption>���μ� �� ����ó ������</caption>
						<tbody>
							<tr>
								<td class="write_day"></td>
								<td class="contact_team"><strong>���μ� : </strong>��ȹ����ó �濵����</td>
								<td class="contact_user"><strong>����� : </strong>�迬��</td>
								<td class="contact_tel"><strong>����ó : </strong>052-216-2256</td>
							</tr>
						</tbody>
					</table>
				</div>
				
				<div class="infoCheck"><div style="clear:both ; height:20px ;"></div><%@include file="/include/satisfy_link.jsp"%></div>				
				<!--//��-->
			</div>
		</div>
	</div>
	
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>