<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>    
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","01");
	application.setAttribute("gNavMenuDepth2","07");
	application.setAttribute("gNavMenuDepth3","01");
	application.setAttribute("gNavMenuDepth4","00");
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>             
<%@include file="/include/comheader.jsp"%>


		<%@include file="/include/subtopnavi_new.jsp"%>
		<!--// subtopNavi: start //-->

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
                    &gt; <span class="locanow">�����</span>
				</div>
				<!--// location: end //-->
				
				<!-- [2009-09-15 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/info/ttl_sub01_7_1.gif" alt="�����" /></h3>
				</div>
				<!--����-->				
				<div class="recruit">
					<p style="letter-spacing: -0.1em;">"������ ���� �����Ϸ��� ������  Ÿ���� ����� �� �ƴ� ������ �������� �ְ� �Ǳ� ���� ���Ӿ��� �����ϴ� ���� ������"</p>
					<div><img src="/images/info/sub01_7_1_img1.gif" alt="�ѱ��������� �����" />
						<ul class="blindtext">
						<li>- ���� : ������ ��õ�ϴ� ������</li>
						<li>- ��� : ���� ���� �����ϴ� ������</li>
						<li>- ���� : ���и� �η������� �ʴ� ������</li>
						<li>- ���������� : �ְ� �߱��ϴ� ������</li>
						</ul>
					</div>
				</div>
				<!--//��-->
			</div>
			
			<div class="new_officer">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
				<tbody>
					<tr>
						<td class="write_day"></td>
						<td class="contact_team"><strong>���μ� : </strong>����濵ó �λ���</td>
						<td class="contact_user"><strong>����� : </strong>�ڿ�ȯ</td>
						<td class="contact_tel"><strong>����ó : </strong>052-216-2706</td>
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