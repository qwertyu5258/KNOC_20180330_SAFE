<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","05");
	application.setAttribute("gNavMenuDepth2","07");
	application.setAttribute("gNavMenuDepth3","06");
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
				<%@include file="/include/subtop_05.jsp"%>
				<!--// location: start //-->
				<div class="locadv">
					&gt; <span>��������</span> &gt; <span>���û���Ʈ</span> &gt; <span class="locanow">��������</span>
				</div>
				<!--// location: end //-->
				
				<!-- [2009-09-24 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3 class="tleimg"><img src="/images/information/ttl_sub05_7_6.gif" alt="��������" /></h3>
				</div>
				<div class="information">
					<div class="link mT0">
						<ul>
						<li> <a href="http://www.kangwon.ac.kr/~natursci/" target="_blank" title="������ ������ �����а� Ȩ�������� �̵�(��â)">������</a></li>
						<li> <a href="http://cns.knu.ac.kr/" target="_blank" title="��ϴ� ������ �����а� Ȩ�������� �̵�(��â)">��ϴ�</a></li>
						<li> <a href="http://cns.gsnu.ac.kr/" target="_blank" title="���� ������ �����а� Ȩ�������� �̵�(��â)">����</a></li>
						<li> <a href="http://science.korea.ac.kr/" target="_blank" title="������ ������ �����а� Ȩ�������� �̵�(��â)">������</a></li>
						<li> <a href="http://www2.kongju.ac.kr/natural/" target="_blank" title="���ִ� ������ �����а� Ȩ�������� �̵�(��â)">���ִ�</a></li>
						<li> <a href="http://enma.pknu.ac.kr/" target="_blank" title="�ΰ�� ������ �����а� Ȩ�������� �̵�(��â)">�ΰ��</a></li>
						<li> <a href="http://geology.pusan.ac.kr/" target="_blank" title="�λ�� ������ �����а� Ȩ�������� �̵�(��â)">�λ��</a></li>
						<li> <a href="http://sees.snu.ac.kr/" target="_blank" title="����� ������ �����а� Ȩ�������� �̵�(��â)">�����</a></li>
						<li> <a href="http://ees.andong.ac.kr/" target="_blank" title="�ȵ��� ������ �����а� Ȩ�������� �̵�(��â)">�ȵ���</a></li>
						<li> <a href="http://geo.yonsei.ac.kr/" target="_blank" title="������ ������ �����а� Ȩ�������� �̵�(��â)">������</a></li>
						<li> <a href="http://altair.chonnam.ac.kr/~eses/" target="_blank" title="������ ������ �����а� Ȩ�������� �̵�(��â)">������</a></li>
						<li> <a href="http://magma.chonbuk.ac.kr/" target="_blank" title="���ϴ� ������ �����а� Ȩ�������� �̵�(��â)">���ϴ�</a></li>
						</ul>
                    </div>
				</div>
			</div>
		</div>
	</div>
	
  <%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>