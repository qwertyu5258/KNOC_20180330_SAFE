<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>    
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","01");
	application.setAttribute("gNavMenuDepth2","02");
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
                    &gt; <span>�����ȭ</span>
                    &gt; <span class="locanow">�ٽɰ�ġ</span>
				</div>
				<!--// location: end //-->
				
				<!-- [2009-09-15 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/info/ttl_sub01_2_2.gif" alt="�ٽɰ�ġ" /></h3>
				</div>
				<!--����-->
				<div class="culture">
					<!-- [2009-10-25 ����] :: �ۼ���: ������ -->
					<div><img src="/images/info/imgin1_sub01_2_2.jpg" alt="4�� �ٽɰ�ġ �� ������ �ǹ�" />
						<dl class="blindtext">
							<dt>�ٽɰ�ġ (Core Values)</dt>
							<dd>'�ְ� �ǰڴٴ� ����' <em>����������</em>(Professionalism)</dd>
							<dd>'�̿��� ����ϰ��� �ϴ� ���' <em>����</em> (Contribution)</dd>
							<dd>'���� ���� �����ϴ� ����' <em>���</em> (Respect)</dd>
							<dd>'�ϸ� �ȴٴ� �ų�' <em>����</em> (Challenge)</dd>
						</dl>
					</div>
					<ul>
						<li>
							<img src="/images/info/imgin1_sub01_2_2_1.gif" alt="�ٽɰ�ġ(Core Values)��" />
							<p>���� �������� ���߾�� �� ���� �ൿ�� ������ �Ǵ� �ٽ����� ��ġ���Դϴ�.</p>							
						</li>
					</ul>
					<ul class="pl20">
						<li>
							<img src="/images/directors/icon01.gif" alt="" /> <strong>���� (Challenge) </strong>
							<p>���и� �η������� �ʰ� �̷��� �����ϴ� ������������ �ϸ�ȴٴ� �ų��Դϴ�.</p>							
						</li>
						<li>
							<img src="/images/directors/icon01.gif" alt="" /> <strong>���� (Contribution) </strong>
							<p>�ູ�� ������ �޲ٸ� ������ ��õ�ϴ� ������������ �̿��� ����ϰ����ϴ� ����Դϴ�.</p>
						</li>
						<li>
							<img src="/images/directors/icon01.gif" alt="" /> <strong>���������� (Professionalism) </strong>
							<p>���Ѱ���ô븦 ��ư��� ������������ �ְ� �ǰڴٴ� �����Դϴ�.</p>							
						</li>
						<li>
							<img src="/images/directors/icon01.gif" alt="" /> <strong>��� (Respect) </strong>
							<p>���踦 �����ϰ� �Ĺ踦 ����ϴ� ������������ ���� ���� �����ϴ� �����Դϴ�.</p>
						</li>
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