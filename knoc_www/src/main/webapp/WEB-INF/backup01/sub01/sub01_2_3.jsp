<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>    
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","01");
	application.setAttribute("gNavMenuDepth2","02");
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
				<%@include file="/include/subtop_01.jsp"%>
				<!--// location: start //-->
				<div class="locadv">
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>
					&gt; <span>����Ұ�</span>
                    &gt; <span>�����ȭ</span>
                    &gt; <span class="locanow">�濵��Ģ</span>
				</div>
				<!--// location: end //-->
				
				<!-- [2009-09-15 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/info/ttl_sub01_2_3.gif" alt="�濵��Ģ" /></h3>
				</div>
				<!--����-->
				<div class="culture">					
					<h4><img src="/images/info/imgin1_sub01_2_3_1.gif" alt="�濵��Ģ(Business Principles)" /></h4>
					<p class="pb30">����濵�� ��ħ�� �Ǵ� ��Ģ���� �濵Ȱ���� �⺻�ڼ��Դϴ�.</p>					
					<div><img src="/images/info/imgin1_sub01_2_3.gif" alt="7�� �濵��Ģ(Business Principles)" />
						<ul class="blindtext">
						<li>- ��ȭ�� ������ ���� <em>�������� ����</em></li>
						<li>- ������ �߽��ϰ� <em>��ġ�� â��</em></li>
						<li>- �������� �����ϰ� <em>���縦 ����</em></li>
						<li>- ���������� ��ȭ�ϰ� <em>������� Ȯ��</em></li>
						<li>- ���ϱ� ���� <em>�ٹ�ȯ�� ����</em></li>
						<li>- �⺻�� ��Ģ�� �´� <em>������ �濵</em></li>
						<li>- ��ȸ���������μ� <em>��ȸ�� å���� ����</em></li>
						</ul>
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
						<td><strong>���μ� : </strong>�񼭽� ȫ����</td>
						<td><strong>����ó : </strong>031-380-2157</td>
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