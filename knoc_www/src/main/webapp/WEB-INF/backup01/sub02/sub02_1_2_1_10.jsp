
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
						    <li><a href="sub02_1_2_1_11.jsp" title="2013�� �����濵����Ȱ��" ><img src="/images/management/tab_sub02_1_2_1_2014.gif" alt="2014�� �����濵����Ȱ��" id="six_button2014"/></a></li>
						    <li><a href="sub02_1_2_1.jsp" title="2013�� �����濵����Ȱ��" ><img src="/images/management/tab_sub02_1_2_1_2013.gif" alt="2013�� �����濵����Ȱ��" id="six_button2013"/></a></li>
							<li><a href="sub02_1_2_1_10.jsp" title="2012�� �����濵����Ȱ��" ><img src="/images/management/tab_sub02_1_2_1_2012r.gif" alt="2012�� �����濵����Ȱ��" id="six_button2012"/></a></li>
							<li><a href="sub02_1_2_1_9.jsp" title="2011�� �����濵����Ȱ��" ><img src="/images/management/tab_sub02_1_2_1_2011.gif" alt="2011�� �����濵����Ȱ��" id="six_button2011"/></a></li>
							<li><a href="sub02_1_2_1_8.jsp" title="2010�� �����濵����Ȱ��" ><img src="/images/management/tab_sub02_1_2_1_2010_3.gif" alt="2003~10�� �����濵����Ȱ��" id="six_button2010"/></a></li>
						</ul>
						<h4><img src="/images/management/sub02_1_2_1_ta2012.gif" alt="2012��" /></h4>
						<ul class="newsBox">
							<li><strong>��������(�繫��) ��ȸ����(2��~3��)</strong>
								<p>- ����/�ع��濵 ���ȹ, û�ŵ� ���� ���� �ǰ� ����</p>
							</li>

							<li><strong>û���������� ����(3��)</strong>

                                <p>- ����, ��������(�繫��), �ؿܻ繫��  û����������  ����</p>

							</li>
							<li><strong>�ൿ���� ���ص� ����(3��, 6��)</strong>

							    <p>- ��������  �ൿ���� ���ص� ���� �� ���</p>

							</li>
							<li><strong>�ؿܻ繫�� �������� ��������(4��)</strong>

							    <p>- �ؿܻ繫�ҿ��� �ؼ��ؾ� �� ���� ���� �ȳ�</p>

							</li>
							<li><strong>���� �� ���߼� �¼� �������� ����/�ع�����(5��~6��)</strong>
								<p>- �����濵 �ʿ伺 �� �ൿ���� �ȳ�</p>
							</li>
							<li><strong>�ൿ���� ����(8��)</strong>
                                <p>- �������ñ�� �������� �ŷ� ����, �ܺΰ��� �밡���Ѽ� ��� ��</p>
							</li>
							<li><strong>�ؿ�����ä������ ��������(8��)</strong>
								<p>- ���� �����濵 ����, ü�� �� </p>
							</li>
							</li>
							<li><strong>û���������� ��ũ��(8��)</strong>
								<p>- �� �μ� û���������� ���� ������ȭ  </p>
							</li>							
							<li><strong>�ؿܻ繫�� �����濵 ��ȸ����(9��)</strong>
								<p>- ī��/�̶�ũ/�ƺδٺ�繫�� �湮���� �� �ǰ߼���  </p>
							</li>
							
							<li><strong>�ൿ���� �����ȸ(10��)</strong>
								<p>- �ൿ���� �� ���������� ���� ���� ���� �̺�Ʈ  </p>
							</li>
							
							<li><strong>�����濵 ��������(11��~12��) </strong>
								<p>- ������ �� �ܺ����ذ����� ������� ���� �����濵 ���� ����  </p>
							</li>
							
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
						<td><strong>���μ� : </strong>������ȹ�� �濵������</td>
						<td><strong>����ó : </strong>052-216-2333</td>
						<td></td>
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