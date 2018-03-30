<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>    
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","02");
	application.setAttribute("gNavMenuDepth2","04");
	application.setAttribute("gNavMenuDepth3","01");
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
				<%@include file="/include/subtop_02.jsp"%>
				<!--// location: start //-->
				<div class="locadv">
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>	
					&gt; <span>�����濵</span>
					&gt; <span>ȯ��濵</span>
					 &gt; <span class="locanow">ȯ��濵�Ұ�</span>
				</div>
				<!--// location: end //-->

				<!--[2009-09-21 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/management/ttl_sub02_4_1.gif" alt="ȯ��濵�Ұ�" /></h3>
				</div>				
				<!--����-->
				<div class="environment">
					<h4><img src="/images/management/sub02_4_1_ta.gif" alt="ȯ��濵 ��ǥ �� ����"/></h4>
					<p style="padding-top:8px;padding-bottom:8px; padding-right:2px;">����� HSEQ ���� �濵�ý����� ������ ������ ������ ������� ȯ���ǥ ������ ���� ȯ��ģȭ���� �濵�� �߱��ϰ� �ֽ��ϴ�.</p>
					<p style="padding-top:8px;padding-bottom:8px; padding-right:2px;">����� �ڿ����°� ��ȣ �� ȯ��ģȭ���� �濵�� �߱��ϸ�, ���� �³�ȭ�� �����ϱ� ���� ������ ��¿� ���ص����ϰ� �ֽ��ϴ�.
					 HSEQ �濵�ý����� ���������� ������ ������ ���� �䱸������ �����ϸ�, �����ϰ� ģȯ������ �۾�ȯ���� �����ϰ� �ֽ��ϴ�.
					  ����, �������ߺо� HSE �濵�ý����� ȿ���� ��ȭ�� ���Ͽ� �������ߺо� HSE �ֿ� �̽� �� ���� ���� ������ �ݿ��� �������� ǥ�� HSE �濵�ý����� Ȯ���Ͽ�
					   ���� �� �ؿ� �������� ����忡 �����ϰ� �ֽ��ϴ�.</p>
                	<p style="padding-top:8px;padding-bottom:8px; padding-right:2px;">����� �� ����忡 ���Ͽ� ǰ�� �� ȯ��濵�ý���(ISO9001, ISO14001)�� �����ϰ� ������,
                	 �������� ����Ȱ���� ���Ͽ� ������� �����, �������� �޼��ϰ� �ֺ������� ȯ�溸���� ����� ����̰� �ֽ��ϴ�. 
                	 ����, ����ι��� ���Ǿ����濵�ý��� (KOSHA18001), ���߼��ι��� ���� ����/���ȿ� ���� ISM/ISPS �ڵ带 �߰� ���ࡤ�����ϰ� �ֽ��ϴ�.</p>
                
                
                	<p style="margin:20px 0 0 50px;"><img src="/images/management/img_environment0106.gif" alt="���������� �ڸ��� �����ϴ� ������ ��������ȸ��"/></p>
                

				</div>
				<!--//��-->
			</div>
			
			<div class="new_officer">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
					<tbody>
						<tr>
							<td class="write_day"><strong>�ۼ������� : </strong>2016-04-05</td>
							<td class="contact_team"><strong>���μ� : </strong>����ȯ��ó ȯ�溸����</td>
							<td class="contact_user"><strong>����� : </strong>������</td>
							<td class="contact_tel"><strong>����ó : </strong>052-216-2942</td>
						</tr>
					</tbody>
				</table>
			</div>
			
		</div>
	</div>
	
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>