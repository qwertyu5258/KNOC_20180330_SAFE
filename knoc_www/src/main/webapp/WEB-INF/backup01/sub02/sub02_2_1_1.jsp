<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","02");
	application.setAttribute("gNavMenuDepth2","02");
	application.setAttribute("gNavMenuDepth3","01");
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
                    &gt; <span>�濵����</span>
					&gt; <span>�Ϲ���Ȳ</span>
					&gt; <span class="locanow">�����ٰ�, �������� �� ����</span>
				</div>
				<!--// location: end //-->
				
				<!--[2009-09-21 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/management/ttl_sub02_2_1.gif" alt="�Ϲ���Ȳ" /></h3>
				</div>
				<!--����-->
				<div class="status">
					<h4><img alt="����Ұ� �� ����" src="/images/management/sub02_2_1_1_ta1.gif"></h4>
					<ul class="status01">
					<li><strong>�����ٰ�</strong>
						<p>�ѱ����������(���� ��9162ȣ, 2008. 12. 19, �Ϻ� ����)</p></li>
					<li><strong>��������</strong>
						<p>�����ڿ��� ����, ������ ����, �������뱸���� ������ ���� ����� ȿ�������� ���������ν� 
 ���������� ������ �����԰� �ƿ﷯ ���ΰ��� ������ �̹�����</p></li>
					<li><strong>����</strong></li>
					</ul>

					<div>
						<ul class="tab">
						<li><a title="2000��� ����" href="sub02_2_1_1.jsp"><img alt="2000��� ����" src="/images/management/sub02_2_1_1_1r.gif"></a></li>
						<li><a title="1990��� ����" href="sub02_2_1_1_1.jsp"><img alt="1990��� ����" src="/images/management/sub02_2_1_1_2.gif"></a></li>
						<li><a title="1980��� ���� ����" href="sub02_2_1_1_2.jsp"><img alt="1980��� ���� ����" src="/images/management/sub02_2_1_1_3.gif"></a></li>
						</ul> 
						<div class="status02">							
							<p><img alt="" src="/images/management/sub07_1_1_1_te2.gif"></p>
							<ul>

							<li>
								<p>2014. 11</p>
								<span>�Ż�� ����(��걤����)</span>
							</li>
							
							<li>
								<p>2014. 06</p>
								<span>���߼� �μ�ȣ ���� 30�ֳ�</span>
							</li>


							<li>
								<p>2014. 01</p>
								<span>���Ͼ� ������� �����׻�� ���۹��� ���ڸ��ƿ����͹̳Ρ� ���
</span>
							</li>								
							<li>
								<p>2013. 06</p>
								<span>���Ͼƿ������ �������� �� ��������ü� �ذ�</span>
								<div><img alt="���Ͼƿ������ �������� �� ��������ü� �ذ� ���� �Դϴ�." src="/images/management/sub07_1_1_1_1_4.gif"></div>
							</li>							
							<li>
								<p>2013. 03</p>
								<span>���� ������ (���� - ������ �� �̻��� ��ġ�� �����ϴ� ���)</span>
							</li>
							<li>
								<p>2012. 07</p>
								<span>�ƺδٺ�繫�� ���� �� KADOC Ltd(��������) ����㰡�� ���</span>
							</li>
							<li>
								<p>2012. 06</p>
								<span>�̱� EP Energy�� �ڻ� �μ�</span>
							</li>	
						
							<li>
								<p>2011. 04</p>
								<span>�̱� Anadarko�� ���Ͽ����ڻ� ��������</span>
							</li>
							<li>
								<p>2011. 03</p>
								<span>ī���彺ź Altius�� �μ�</span>
							</li>
							<li>
								<p>2011. 02</p>
								<span>ĳ���� Hunt�� �μ�</span>
							</li>
								
							<li>
								<p>2010. 09</p>
								<span>���� Dana�� �μ�</span>
							</li>

							<li>
								<p>2009. 12</p>
								<span>ī���彺ź Sumbe�� �μ�</span>
							</li>
							<li>
								<p>2009. 10</p>
								<span>ĳ���� Harvest Energy�� �μ���� ü��</span>
							</li>

							<li>
								<p>2009. 02</p>
								<span>��� Petro-Tech�� �μ�</span>
								<div><img alt="2009�� 2�� ��� Petro-Tech�� �μ� ��� �� �Ǽ��ϴ� ����Դϴ�." src="/images/management/sub07_1_1_1_1_1.gif"></div>
							</li>
							<li>
								<p>2008. 05</p>
								<span>�̱� �������� ANKOR Energy ����</span>
							</li>
							<li>
								<p>2007. 08</p>
								<span>�ѱ���������� ����(�����ں��� 5������10����)</span>
							</li>
							<li>
								<p>2006. 11</p>
								<span>��Ʈ��11-2���� �������</span>
							</li>
							<li>
								<p>2006. 02</p>
								<span>����, ����������,ĳ���� �繫�� ����,�������߿����� �ż�</span>
							</li>
							<li>
								<p>2005. 10</p>
								<span>ī���彺ź �繫�� ����</span>
							</li>
							<li>
								<p>2005. 08</p>
								<span>�������� ��ġ</span>
							</li>
							<li>
								<p>2004. 09</p>
								<span>����-1 ���������� õ������ ������� ����</span>
								<div><img alt="2004�� 9�� ����-1 ���������� õ������ ������� ����ȸ ����Դϴ�." src="/images/management/sub07_1_1_1_1_2.gif"></div>
							</li>
							<li>
								<p>2004. 05</p>
								<span>����� ������Ʈ ���� ������� ����</span>
							</li>
							<li>
								<p>2003. 10</p>
								<span>��Ʈ��15-1���� SutuDen�������� �������갳��</span>
							</li>
							<li>
								<p>2001. 09</p>
								<span>�ѱ�, ��Ʈ�� �������߼������� �� ��Ʈ��15-1�������߼���</span>
								<div><img alt="2001�� 9�� �ѱ�, ��Ʈ�� �������߼������� �� ��Ʈ��15-1�������߼��� ����Դϴ�." src="/images/management/sub07_1_1_1_1_3.gif"></div>
							</li>
							<li>
								<p>2000. 07</p>
								<span>�������� ��ġ</span>
							</li>
							<li>
								<p>2000. 02</p>
								<span>����-1 ������ ���߼���</span>
							</li>
							</ul>
						</div>
					</div>

				</div>
				<div class="new_officer">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
					<tbody>
						<tr>
							<td class="write_day"><strong>�ۼ�������</strong> : 2016-04-05</td>
							<td class="contact_team"><strong>���μ� : </strong>��ȹ����ó ��ȹ������</td>
							<td class="contact_user"><strong>����� : </strong>Ȳ�ڿ�</td>
							<td class="contact_tel"><strong>����ó : </strong>052-216-2208</td>
						</tr>
					</tbody>
				</table>
				</div><!-- new_officer end -->

				<div class="infoCheck"><%@include file="/include/satisfy_link.jsp"%></div>
				<!--//��-->
			</div>
		</div>
	</div>
	
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>