<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","02");
	application.setAttribute("gNavMenuDepth2","01");
	application.setAttribute("gNavMenuDepth3","04");
	application.setAttribute("gNavMenuDepth4","01");
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
					&gt; <span>�����濵
</span>
                    &gt; <span>�����濵
</span>
					&gt; <span>�����Թ�</span>
                    &gt; <span class="locanow">��������</span>
				</div>
				<!--// location: end //-->
				
				<!-- [2009-09-21 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/management/ttl_sub02_1_4.gif" alt="�����Թ�" /></h3>
				</div>
				<!--����-->
				<div class="moralsRow">
					<h4><img src="/images/management/sub02_1_4_1_ta1.gif" alt="��������" /></h4>
					<ul>
					<li>�ѱ���������� �����ڿ��� ���߰� �������� �� �������뱸���� ������ ���� ����� ȿ�������� ���������ν� ���� �������� ������ ���ΰ��� ������ �⿩�ؿ� �ڶ������� ������ ����̴�. 
					�츮�� �̷��� ������ �ںν��� ���� ���� ������ �ڸ��� �����ϴ� ������ ���� ����ȸ�簡 �ǰ��� �ϸ�, å�Ӱ濵&bull;����濵&bull;�����濵�� ���� ������ȸ�� �Բ� �����ϰ� ���������ε� �ŷڹ޴� ����� �ǰ��� �Ѵ�. 
					�̿� �츮�� �ѱ��������� ���������� �����Ͽ� ��� �������� �ùٸ� �ൿ�� ��ġ�Ǵ��� �������� ������, �̸� ������ �ؼ��ϰ� ��õ�Ѵ�.
						<p>- �̿� �츮�� �ѱ��������� ���������� �����Ͽ� ��� �������� �ùٸ� �ൿ�� ��ġ�Ǵ��� �������� ������, �̸� ������ �ؼ��ϰ� ��õ�Ѵ�.</p>
						<p>- �츮�� ���� ������ ��ġ���� �������� �����ϰ� ������ �ڼ��� ������ ó���ϸ�, ���й��� �� ������ ����ǳ�� ������ ���弱��. </p>
						<p>- �츮�� �׻� ��(����)�� ���忡�� �����ϰ� �ൿ�ϸ�, ���� �䱸�� ��뿡 �����ϴ� ��ǰ���� ���񽺸� ���⿡ ���������ν� ������ ��ݰ� ������� �����Ѵ�.</p>
						<p>- �츮�� �����ϰ� ������ ���ǳ�並 �����ϰ�, ��ȣ �ŷڿ� ���°��踦 ���������ν� ��� ���ذ����ڿ� ������ ������ �߱��Ѵ�.</p>
						<p>- �츮�� ������ �������� �ΰ��� �����ϰ� ������츦 ���� ������, ������ ��ȸ�� ������ �򰡸� �޵��� �ϴ� ���� �������� �ǰ��� ���� �� ��� �ַ��Ѵ�.</p>
						<p>- �츮�� ������ ���� ���Ը� �ؼ��ϰ�, ������ ��ȸ�� �����ϰ� ǳ��ο�� ���� ������ �� �ֵ��� å�Ӱ� �ǹ��� ���Ѵ�. </p>
						<p>- �츮�� ������ �����ϰ� ������ �ڿ�ȯ���� �����ϱ� ���� ������� ���� �� ȯ����� ������ ����Ѵ�.</p>
					</li>
					</ul>
                </div>
				<!--//��-->
			</div>
			
			<div class="new_officer">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
					<tbody>
						<tr>
							<td class="write_day"><strong>�ۼ������� : </strong>2016-04-05</td>
							<td class="contact_team"><strong>���μ� : </strong>����� û�Ű濵������</td>
							<td class="contact_user"><strong>����� : </strong>������</td>
							<td class="contact_tel"><strong>����ó : </strong>052-216-2126</td>
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