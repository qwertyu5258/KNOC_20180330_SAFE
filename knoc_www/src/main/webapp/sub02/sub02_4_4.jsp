<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>    
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","02");
	application.setAttribute("gNavMenuDepth2","04");
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
				<%@include file="/include/subtop_02.jsp"%>
				<!--// location: start //-->
				<div class="locadv">
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>	
					&gt; <span>�����濵</span>
					&gt; <span>ȯ��濵</span>
					&gt; <span class="locanow">ȯ��濵��Ȳ</span>
				</div>
				<!--// location: end //-->

				<!--[2009-09-21 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/management/ttl_sub02_4_2.gif" alt="ȯ��濵��Ȳ" /></h3>
				</div>				
				
				<!--����-->				
				<div class="environment02">
					<div>
						<!-- [2009-09-15 ����] :: �ۼ���: ������ -->
						<ul class="tab">
							<li ><a href="sub02_4_4.jsp" title="�ֿ��ڿ� �� ������" ><img src="/images/management/tab_sub02_4_2_4on.gif" alt="�ֿ��ڿ� �� ������" border="0"  /></a></li>
							<li><a href="sub02_4_5.jsp" title="ȯ����� �� ����" ><img src="/images/management/tab_sub02_4_2_5.gif" alt="ȯ����� �� ����" border="0"  /></a></li>
							<li ><a href="sub02_4_6.jsp" title="���ĺ�ȭ����" ><img src="/images/management/tab_sub02_4_2_6.gif" alt="ȯ����� �� ����" border="0"  /></a></li>
						</ul>
						<h4><img src="/images/management/sub02_4_2_ta4_1.gif" alt="�ֿ� �ڿ� �� ������ ��� ��Ȳ" /></h4>
						<p style="padding-top:8px;padding-bottom:8px; padding-right:2px;">����� ����, ���ð���, ���ڿ� �� ��ü ������ ��뿡 ���� ����Ȱ���� ��õ�ϰ� ������, �ǹ� �� ���ۺι��� ���� ������ ���� ������ ������ �ش�ȭ�ϰ� �ֽ��ϴ�.</p>
						
						<h5> ���ڿ� ��뷮</h5>
						<p>����� ���ڿ��� ȿ���� ����� ���� ����ϰ� �ֽ��ϴ�. 
						   �Ϻ� ���� ���������� Ư���� ���� ����� �ʿ��Կ� ���� ���, ���� �� �ڿ����� �ִ��� Ȯ�� ��ϰ� ������
						  ���ó�� �����踦 ��ġ�ϴ� �� ȿ�������� ����� �����ϰ� �ֽ��ϴ�.
						   ���� �ü���� ���Ǵ� ����� ��Ȱ���� ���� �����뷮 �ּ�ȭ�� ���� ����ϰ� �ֽ��ϴ�. </p>
						
						<h5>������ ���� �� ȫ��</h5>
						<p>�����ι� �½ǰ����������� ��ǥ�������� �������� ��� ���� �ֿ� ��������� �ǹ��ι��� ������ ������ ȿ���� �����ϰ� �ֽ��ϴ�.
						 ����, ��걤���÷� ���� ������ �Ż�� �Ǽ� ������ �־� ������ ȿ�� 1��� ���������� ����Ͽ�����,
						  �����̿뼳����¾籤���� ���� �ݿ��Ͽ� �Ϻ� ������ ��뷮�� ������������� �����ϵ��� �Ͽ����ϴ�.</p>
						
						<h5>������ ȿ�� ���</h5>
						<p>����� �������� ������ �����å�� ���Ͽ� ������ ������ ��õ�ϰ� �ֽ��ϴ�. �� �������� ��������Ŵ�� Ȱ��, ���� ���ÿ�����, ���� īǮ��, 
						      ���� �� ���̺긮�� �ڵ��� ���������弳ġ �� �پ��� ������ ����Ȱ���� ��Ȱȭ�ϰ� ������å�� ���������� �����ϰ� �ֽ��ϴ�.</p>
					</div>
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