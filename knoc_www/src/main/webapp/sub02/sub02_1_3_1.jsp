<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","02");
	application.setAttribute("gNavMenuDepth2","01");
	application.setAttribute("gNavMenuDepth3","03");
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
					&gt; <span>�����濵����</span>
                    &gt; <span class="locanow">�����濵�ý���</span>
				</div>
				<!--// location: end //-->
				
				<!-- [2009-09-21 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/management/ttl_sub02_1_3_1.gif" alt="�����濵�ý���" /></h3>
				</div>
				<!--����-->				
				<div class="manageSys">
					<div>
						<ul class="tab">
							<li><a href="sub02_1_3_1.jsp" title="�ý���ü��" ><img src="/images/management/tab_sub02_1_3_1_1r.gif" alt="�ý���ü��" /></a></li>
							<li><a href="sub02_1_3_1_1.jsp" title="�Ű�������" ><img src="/images/management/tab_sub02_1_3_1_2.gif" alt="�Ű�������" /></a></li>
							<li><a href="sub02_1_3_1_2.jsp" title="û�Ű����" ><img src="/images/management/tab_sub02_1_3_1_3.gif" alt="û�Ű����" /></a></li>
							<li><a href="sub02_1_3_1_3.jsp" title="�ӿ�����û�Ű����" ><img src="/images/management/tab_sub02_1_3_1_4.gif" alt="�ӿ�����û�Ű����" /></a></li>
						</ul>
						<h4><img src="/images/management/sub02_1_3_1_ta1.gif" alt="�ý���ü��" /></h4>
						<div class="sysBox">
							<h5><img src="/images/management/h5_manageSys02_20100222.gif" alt="�����濵 ��������(Design &amp; Planning)" /></h5>
							<div>

								<ul>

<!--								<li><img src="/images/management/txt_manageSys0201.gif" alt="CEO�������� - �ְ�濵���� �����濵 �������� ǥ��" />
								</li>
-->

								<li><img src="/images/management/txt_manageSys0202.gif" alt="�����Թ� - ��������, �ൿ���� �������� ���ظ���" />
								</li>
								<li><img src="/images/management/txt_manageSys0203.gif" alt="�����濵 ���� �ⱸ/���� - �����濵����ȸ, �����濵 ���μ� ����, ���μ�, ��ȸ���� ���μ�" />
								</li>
								</ul>
							
							
							</div>
							<div class="arrow"><img src="/images/management/arrow_manageSys_down.gif" alt="" /></div>
						</div>

						<div class="sysBox">
							<h5><img src="/images/management/h5_manageSys01_20100222.gif" alt="�����濵 ���� �� ��õ(Education &amp; Reinforcement)" /></h5>

							<div>
							
							
								<ul>
								<li><img src="/images/management/txt_manageSys0101.gif" alt="�����Ʒ� ���α׷� - On,Off-line ���� �� ��ũ��" />
								</li>
<!--
								<li><img src="/images/management/txt_manageSys0102.gif" alt="CSR���α׷� - Matching Grant ���� �������� CSR�ݵ� ��� ����" />
								</li>
-->								
								<li><img src="/images/management/txt_manageSys0103.gif" alt="�������� ���α׷� - �Ű�������,û�Ű����,�ӿ�����û�Ű���� �ǽ�" />
								</li>
								</ul>
							
							
							</div>
							<div class="arrow"><img src="/images/management/arrow_manageSys_down.gif" alt="" /></div>
						</div>

						<div class="sysBox">
							<h5><img src="/images/management/h5_manageSys03.gif" alt="�����濵 Ȱ�� �����(Monitoring)" /></h5>
							<div>
								<ul>
								<li><img src="/images/management/txt_manageSys0301.gif" alt="����Ȱ�� Ŀ�´����̼� �ý��� - ����Ȱ�� ��㼾�� ������,�ൿ���� �����̵� �������!��" />
								</li>
								<li><img src="/images/management/txt_manageSys0302.gif" alt="�������� ���� ���α׷� - �������� ��ü����, ���¾�ü �������� ����" />
								</li>									
								</ul>
							</div>
							<div class="arrow"><img src="/images/management/arrow_manageSys_down.gif" alt="" /></div>
						</div>

						<div class="sysBox">
							<h5><img src="/images/management/h5_manageSys04.gif" alt="�����濵 �� �� ����(Improvment)" /></h5>
							<div>
								<ul>
								<li><img src="/images/management/txt_manageSys0401.gif" alt="�����濵 ��õ ������ - �����������λ��� �ݿ�" />
								</li>
								<li><img src="/images/management/txt_manageSys0402.gif" alt="�����濵 Ȱ�� �������� - ������ ������� ����" />
								</li>
								<li><img src="/images/management/txt_manageSys0403.gif" alt="�������� �߱� �ý��� - ����, ���¾�ü, �����ǰ��� ��� �����濵 �Ѹ��� ���� �������� �������� ����" />
								</li>	
								</ul>
							</div>
						</div>
						<div class="Cboth"></div>
					</div>

				</div>
				
				<!--//��-->
			</div>
			
			<div class="new_officer">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
					<tbody>
						<tr>
							<td class="write_day"><strong>�ۼ������� : </strong>2016-04-05</td>
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