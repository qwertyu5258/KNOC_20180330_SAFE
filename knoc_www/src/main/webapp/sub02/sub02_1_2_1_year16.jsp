
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","02");
	application.setAttribute("gNavMenuDepth2","01");
	application.setAttribute("gNavMenuDepth3","02");
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
					&gt; <span>�����濵</span>
                    &gt; <span>�����濵</span>
					&gt; <span>�����濵�ҽ�</span>
                    &gt; <span class="locanow">�����濵����Ȱ��</span>
				</div>
				<!--// location: end //-->
				
				<!-- [2009-09-15 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/management/ttl_sub02_1_2_1.gif" alt="�����濵����Ȱ��" /></h3>
				</div>
				<!--����-->			
				<div class="moralsNews">
					<div>
						<ul class="tab">
							<li><a href="sub02_1_2_1_year16.jsp" title="2016�� �����濵����Ȱ��" ><img src="/images/management/tab_sub02_1_2_1_2016r.gif" alt="2015�� �����濵����Ȱ��" id="six_button2016"/></a></li>
						    <li><a href="sub02_1_2_1_11.jsp" title="2015�� �����濵����Ȱ��" ><img src="/images/management/tab_sub02_1_2_1_2015.gif" alt="2015�� �����濵����Ȱ��" id="six_button2015"/></a></li>
							<li><a href="sub02_1_2_1_year14.jsp" title="2014�� �����濵����Ȱ��" ><img src="/images/management/tab_sub02_1_2_1_2014.gif" alt="2014�� �����濵����Ȱ��" id="six_button2014"/></a></li>
						    <li><a href="sub02_1_2_1_year13.jsp" title="2013�� �����濵����Ȱ��" ><img src="/images/management/tab_sub02_1_2_1_2013.gif" alt="2013�� �����濵����Ȱ��" id="six_button2013"/></a></li>
							<li><a href="sub02_1_2_1_year12.jsp" title="2012�� �����濵����Ȱ��" ><img src="/images/management/tab_sub02_1_2_1_2012.gif" alt="2012�� �����濵����Ȱ��" id="six_button2012"/></a></li>
							<li><a href="sub02_1_2_1_year11.jsp" title="2011�� �����濵����Ȱ��" ><img src="/images/management/tab_sub02_1_2_1_2011.gif" alt="2011�� �����濵����Ȱ��" id="six_button2011"/></a></li>
							<li><a href="sub02_1_2_1_year10.jsp" title="2010�� �����濵����Ȱ��" ><img src="/images/management/tab_sub02_1_2_1_2010_3.gif" alt="2003~10�� �����濵����Ȱ��" id="six_button2010"/></a></li>
						</ul>						
						<h4><img src="/images/management/sub02_1_2_1_ta2016.gif" alt="2016��" /></h4>
						<ul class="newsBox">
							<li><strong>���� �ӿ�����û�Ű�� ü��(4��)</strong>
							</li>							
							<li><strong>�����濵 ���� ����(6��)</strong>
								<p>- �ְ�����å���ڸ� ���� �����濵 �߿���å ���� ��</p>
							</li>
							<li><strong>�ൿ���� ���� ����(6��, 9��)</strong>
								<p>- ������� ������� �� ����ڿ� ���� ¡���� ���غ��� ���� �ż� ��</p>
								<p>- ��ûŹ�������� ���࿡ ���� ��ǰ�� ���� Ȯ��, �Ű� �ǹ�ȭ ��</p>
							</li>
							<li><strong>�ְ�����å���� �ְ� û���������� �ǽ�</strong>
								<p>- ������� : �������� �繫��, ���� ó���� �̻�</p>
							</li>
							<li><strong>e-hr ��� �ܺΰ��ǵ� �Ű� �ý��� ����(9��)</strong>
								<p>- Ƚ��/�밡 ���� �ʰ� �� �ڵ����� �Ű� ����</p>
							</li>
							<li><strong>����ûŹ �� ��ǰ�� ���� ���� ��(��)���� ����(10~11��)</strong>
							</li>
						</ul>
							
					</div>

                </div>
				<!--//��-->
			</div>
			
			<div class="new_officer">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
					<tbody>
						<tr>
							<td class="write_day"><strong>�ۼ������� : </strong>2016-11-25</td>
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