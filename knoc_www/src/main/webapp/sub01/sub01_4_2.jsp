<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>    
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","01");
	application.setAttribute("gNavMenuDepth2","04");
	application.setAttribute("gNavMenuDepth3","00");
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
                    &gt; <span class="locanow">ȸ�翬��</span>
				</div>
				<!--// location: end //-->
				
				<div class="pagetle">
					<h3><img src="/images/info/ttl_sub01_4.gif" alt="ȸ�翬��" /></h3>
				</div>
				<!--����-->
				<!-- [2009-09-15 ����] :: �ۼ���: ������ -->
				<div class="great2">
					<div>
						<ul class="tab">
							<li><a href="sub01_4.jsp"><img src="/images/management/sub02_2_1_1_1.gif" alt="2000��� ����" border="0"  id="premier_button1"/></a></li>
							<li><a href="sub01_4_1.jsp"><img src="/images/management/sub02_2_1_1_2.gif" alt="1990��� ����" border="0"   id="premier_button2"/></a></li>
							<li><a href="sub01_4_2.jsp"><img src="/images/management/sub02_2_1_1_3r.gif" alt="1980��� ���� ����" border="0"   id="premier_button3"/></a></li>
							<li><a href="sub01_4_3.jsp"><img src="/images/management/sub02_2_1_1_4.gif" alt="��������30���" border="0"   id="premier_button4"/></a></li>

						</ul>
						<div>
							<div><img src="/images/info/sub01_4_img3.gif" alt="history 1980's" /></div>
							<ul>
								<li>
									<span>1989. 07</span>
									<p>�������� ��ġ</p>
								</li>
								<li>
									<span>1987. 12</span>
									<p>���� ����ؿ��� ���ʷ� �����߰�</p>
								</li>
								<li>
									<span>1986. 08</span>
									<p>����ȸ�� �ѱ�������(��) ����</p>
								</li>
								<li>
									<span>1985. 06</span>
									<p>�ε��׽þƻ繫�� ����</p>
								</li>
								<li>
									<span>1985. 01</span>
									<p>�������� ��ġ</p>
								</li>
								<li>
									<span>1982. 04</span>
									<p>����ȸ�� �ѱ���������(��) ����</p>
								</li>
								<li>
									<span>1981. 08</span>
									<p>�޽������� ��ġ</p>
								</li>
								<li>
									<span>1981. 07</span>
									<p>�������� �� ������� ��ġ</p>
								</li>
								<li>
									<span>1979. 03</span>
									<p>�������</p>
								</li>
								<li>
									<span>1978. 12</span>
									<p>�ѱ��������߰���� ����</p>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<!--//��-->
			</div>
			
			<div class="new_officer">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
				<tbody>
					<tr>
						<td class="write_day"></td>
						<td class="contact_team"><strong>���μ� : </strong>��ȹ����ó ��ȹ������</td>
						<td class="contact_user"><strong>����� : </strong>Ȳ�ڿ�</td>
						<td class="contact_tel"><strong>����ó : </strong>052-216-2208</td>
					</tr>
				</tbody>
				</table>
			</div>
			<!-- new_officer end -->
			
		</div>
	</div>
	
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>