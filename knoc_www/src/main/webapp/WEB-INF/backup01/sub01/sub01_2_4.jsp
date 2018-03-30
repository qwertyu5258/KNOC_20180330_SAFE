<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>    
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","01");
	application.setAttribute("gNavMenuDepth2","02");
	application.setAttribute("gNavMenuDepth3","04");
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
                    &gt; <span>�����ȭ</span>
                    &gt; <span class="locanow">��ó�����</span>
				</div>
				<!--// location: end //-->
				
				<!-- [2009-09-15 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/info/ttl_sub01_2_4.gif" alt="��ó�����" /></h3>
				</div>
				<!--����-->				
				<div class="culture">
					<div><img src="/images/info/imgin1_sub01_2_4.gif" alt="�ٽɰ�ġ�� ��ó�����" />
						<ul class="blindtext">
						<li><em>����</em>(Challenge) - �����ȹ, ����, ������ȹ</li>
						<li><em>������ ����</em>(Professionalism) - ��������, ����Ȯ��, �������</li>
						<li><em>���</em>(Respect) - �򰡺���, �ǿ����, �����Ļ�</li>
						<li><em>����</em>(Contribution) - ȸ���繫, ����ȯ��, ��ȸå��</li>
						</ul>
					</div>
					<ul>
						<li><img src="/images/directors/icon01.gif" alt="" /><strong> KNOC-Way�� </strong>�濵Ȱ���� �ʿ��� ���� �����ϴ� �⺻ö������ ������Դϴ�.</li>
					</ul>
					<ul class="knocway pl15">
						<li><strong> �����ȹ </strong>- �űԻ���� �߱��Ͽ� ���Ÿ�缺�� �����ϰ� ������ �ʿ��� �غ� �ϴ� ���Դϴ�.</li>
						<li><strong> ���� </strong>- �����������ڿ��� �����ϰ� �������� ������ �����Ͽ� ����� ȿ�������� ���������ν� �����ǥ�� �޼��ϴ� ���Դϴ�.</li>
						<li><strong> ������� </strong>- ����� �ʿ��� ����Ȱ���� �����ϰ� �濵���� ������ �ּ�ȭ �Ҽ� �ֵ��� �濵ȯ���� ���������� �����ϴ� ���Դϴ�.</li>
						<li><strong> �������� </strong>- �������������� ��� �� ������ �����ϰ� �����Ͽ� ��������°� �������� Ȯ���ϴ� ���Դϴ�.</li>
						<li><strong> ������ȹ </strong>- ���Ӱ����� ��������� â���ϵ��� ������ �����ϰ� �濵������ �����������ϴ� ���Դϴ�.</li>
						<li><strong> ����Ȯ�� </strong>- �����ڿ��� ü�������� �����Ͽ� �ɷ¿� �°� �������ҿ� ��ġ���� �����Ʒ��� ���� ���������� ��ȭ�ϴ� ���Դϴ�.</li>
						<li><strong> ȸ���繫 </strong>- �繫������ ���ذ����ڿ��� �����ϰ�, �ڱ��� ���⿡ �����Ͽ� �������̰� ȿ�������� ����ϴ� ���Դϴ�.</li>
						<li><strong> �򰡺��� </strong>- ���� �� �������� ������ �����ϰ� ���ϰ� �����Ͽ� �������� ��������� �����ϴ� ���Դϴ�.</li>
						<li><strong> �ǿ���� </strong>- �������� �ٹ��ǿ��� �����ϰ� �پ��� ���ذ����ڿ� ��Ȱ�� �����ϴ� ���Դϴ�.</li>
						<li><strong> �����Ļ� </strong>- ���������� ������ �ٹ����ǰ� �ٹ�ȯ���� �����Ͽ� �������� �������� �����ϴ� ���Դϴ�.</li>
						<li><strong> ����ȯ�� </strong>- �θ� �� �ü����� �������� ȯ�������� �̿��� �����ϰ� ���߻� �� �� ���ظ� �ּ�ȭ�ϴ� ���Դϴ�.</li>
						<li><strong> ��ȸå�� </strong>- ������ ���ذ����ڿ� ������踦 �����ϰ� ������ȸ���� �� ���Ϳ� �⿩�����ν� �ñ������� �η��ູ�� �̷�� ���Դϴ�.</li>
					</ul>
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