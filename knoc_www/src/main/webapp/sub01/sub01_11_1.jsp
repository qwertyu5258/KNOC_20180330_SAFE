<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>    
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","01");
	application.setAttribute("gNavMenuDepth2","10");
	application.setAttribute("gNavMenuDepth3","04");
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
				<%@include file="/include/subtop_01.jsp"%>
				<!--// location: start //-->
				<div class="locadv">
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>
					&gt; <span>����Ұ�</span>
					&gt; <span>�����ȭ</span>
                    &gt; <span class="locanow">7�� �濵��Ģ</span>
				</div>
				<!--// location: end //-->
				
				<!-- [2009-10-25 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/info/ttl_sub11_01.gif" alt="7�� �濵��Ģ" /></h3>
				</div>
				<!--����-->				
				<div class="business2">
					<h4><img src="/images/info/sub01_11_1.gif" alt="7�� �濵��Ģ" /></h4>
					<p>����濵�� ��ħ�� �Ǵ� ��Ģ���� �濵Ȱ���� �⺻�ڼ��Դϴ�.</p>
					<p><img src="/images/info/sub01_11_img01.gif" 
					alt="�濵��Ģ(business principles) ��ȭ�� ������ ���� �������� ����, �������߽��ϴ� ��ġ�� â��, ��������  �����ϰ� ���縦 ����, ���������� ��ȭ�ϰ� ������� Ȯ��, ���ϱ� ���� �ٹ�ȯ�� ����, �⺻�� ��Ģ�� �´� ������ �濵, ��ȸ���������μ� ��ȸ�� å���� ����"/></p>	
			</div>	 
				<!--//��-->
			
			
			<div class="new_officer">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
				<tbody>
					<tr>
						<td class="write_day"></td>
						<td class="contact_team"><strong>���μ� : </strong>��ȹ����ó ȫ����</td>
						<td class="contact_user"><strong>����� : </strong>������</td>
						<td class="contact_tel"><strong>����ó : </strong>052-216-2228</td>
					</tr>
				</tbody>
				</table>
			</div>
			<!-- new_officer end -->
			
		</div>
	</div>
	
	</div>
	
	<!--// footer: start //-->
	<%@include file="/include/comfooter.jsp"%>	
	<!--// footer: end //-->
	
	</div>
	
</body>
</html>