<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>    
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","01");
	application.setAttribute("gNavMenuDepth2","08");
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
				<%@include file="/include/subtop_01.jsp"%>
				<!--// location: start //-->
				<div class="locadv">
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>
					&gt; <span>����Ұ�</span>
					&gt; <span>����ȸ</span>
                    &gt; <span class="locanow">���ȹ</span>
				</div>
				<!--// location: end //-->
				
				<!-- [2009-09-15 ����] ::  -->
				<div class="pagetle">
					<h3><img src="/images/info/ttl_sub01_8_2.gif" alt="���ȹ" /></h3>
				</div>
				<!--����-->				
				<div class="sukwoo2">
					<h4><img src="/images/info/sub01_8_2_ta1.gif" alt="���� ������ȹ" /></h4>
					<ul>
						<li>�ű� ȸ������ ��������</li>
						<li>
							<dl>
								<dt>ȸ�� ģ������ ������ Ȱ��ȭ- ������ ����ȸ</dt>
								<dd>������ ����ȸ</dd>
								<dd>������� ����ȸ</dd>
								<dd>��, ���� ����Ž��</dd>
							</dl>
						</li>
						<li>��λ��� � ����ȭ</li>
						<li>�ְ��(�ֻ�) �޴��� ���ں�����</li>
						<li>ȸ������ �� �������� ȸ�� �߰�</li>
						<li>
							<dl>
								<dt>����ȸ �ȸ�� ȿ��ȭ</dt>
								<dd>���� ��ȸ</dd>
								<dd>�̻�ȸ</dd>
							</dl>
						</li>
						<li>��� ���� ������ ���</li>
						<li>��Ȱ������ϼ�ø ���� ����</li>
					</ul>
				</div>
				<!--//��-->
			</div>
		</div>
	</div>
	
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>