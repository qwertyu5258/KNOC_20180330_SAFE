<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>    
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","02");
	application.setAttribute("gNavMenuDepth2","04");
	application.setAttribute("gNavMenuDepth3","03");
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
					 &gt; <span class="locanow">ȯ��濵Ȱ��</span>
				</div>
				<!--// location: end //-->
				
				<!--[2009-09-21 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/management/ttl_sub02_4_2.gif" alt="ȯ��濵��Ȳ" /></h3>
				</div>				
				
				<!--����-->				
				<div class="environment02">
					<div>
						<ul class="tab">
							<li ><a href="sub02_4_3.jsp" title="ȯ������ �� ����" ><img src="/images/management/tab_sub02_4_3_1.gif" alt="ȯ������ �� ����" border="0"  /></a></li>
							<li><a href="sub02_4_3_1.jsp" title="ȯ����� ����Ȱ��" ><img src="/images/management/tab_sub02_4_3_2r.gif" alt="ȯ����� ����Ȱ��" border="0"  /></a></li>
						</ul>
						<h4><img src="/images/management/sub02_4_3_ta2_1.gif" alt="�½ǰ��� ����" /></h4>
						<h5>��� �� ����</h5>
						<p>��� �� �߻��� �� �ִ� ȯ�濵���� �ּ�ȭ�ϱ� ���� ���� ������ ���� ���� �� ���� ������ ö���� �ϰ� ������, �����ϰ����� ������ħ�� ��Ȯ�ϰ� �ؼ��Ͽ� �����Ǵ� ���������� ������ �����ϰ� �ֽ��ϴ�.������, ������ ���࿡ �־� �������� ��å�� �ؼ������ν� ��� �̿��� �����ϰ� �ֽ��ϴ�. ���� ���� �������� �ǽ��Ͽ� ���������� �½� ���� ���� ������ ���� Ȱ���� �����ϰ� �ֽ��ϴ�.</p>
						<h5>���ĺ�ȭ ���⿡ ���� �ν�</h5>
						<p>1980��� �� ���� �³�ȭ�� �������� �ı���� ���ο� ȯ�湮���� ���������� ��εǸ鼭 ������ ��������, �������� �� ������� �Ǽ� �� �ֿ��� ���� �������� ����� �� �ִ� ���һ�ȭ���� �����  Ȳ��ȭ��, VOC�� ���� ������ ������ ���� �Ǿ����ϴ�. �̸� ���� ��������Ǽ� ����ܰ���� ����ü����� ���� ���ȯ�濡 ������ ��ġ�� ���������� ����, �߻��� �� ���°� ��ȭ ���� ����Ͽ� ������ �������� ��ġ�Ͽ����ϴ�. �ƿ﷯ ���ĺ�ȭ�� ���������� ������ �� �� �ִ� ������ ��뷮, ������ ��뷮 �� ���ع��� ��뷮 ���� ���� ��� ȯ�溸ȣ�� ȿ������ �������� �ν��ϰ� �ֽ��ϴ�.</p>
						<h5>���� �³�ȭ ������ ���� Ȱ��</h5>
						<p>����ü� � �� �߻��Ǵ� ��� �������� ���� �ּ�ȭ�� ���� �������纰 Ư���� �´� ������ �������� � �߿� �ֽ��ϴ�. ���, ��������� ������ �Ұ�����(VCU)�� ��ϰ� ������ ��������� �ֹ��� �����ϴ� ������ �Ұ������ �Ϻ����Ϲ�� �ε����� ��ϰ� �ֽ��ϴ�. Ư�� �������翡���� ������ �Ұ��� ���� �½ǰ��� ������ �ּ�ȭ�ϰ� �����⸦ ������ ȸ���ϴ� �ֽ��� ������ ȸ������(VRU)�� 2009����� � �߿� �ֽ��ϴ�. <BR /> ���� ������������ ��� ������ ���� �����ϰ� ������ ������ ���������� �����Ͽ� ���� �ֽ��ϴ�. ����� �½ǰ����� ���������� ���Ա��� ���Ϸ� �����ϴ� �ұ����� �ڼ����� ��� �½ǰ��� ���� ��� �� ���� ������ �ڹ������� ���ذ����ڿ��� �����ϴ� ���� ������ ������ ����ϴ� ȯ����å�� ���� �����ڽ��ϴ�.</p>
					</div>
				</div>
				<!--//��-->
			</div>
			
			<div class="new_officer">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
				<colgroup>
					<col width="auto" />
					<col width="22%" />
					<col width="22%" />
				</colgroup>
				<tbody>
					<tr>
						<td><strong>���μ� : </strong>HSE�� ȯ����</td>
						<td><strong>����ó : </strong>031-380-2636</td>
						<td><strong>������ : </strong>2015-09-30</td>
					</tr>
				</tbody>
				</table>
			</div><!-- new_officer end -->
			
		</div>
	</div>
	
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>