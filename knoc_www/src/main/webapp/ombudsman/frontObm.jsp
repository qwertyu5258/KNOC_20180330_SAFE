<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","04");
	application.setAttribute("gNavMenuDepth2","05");
	application.setAttribute("gNavMenuDepth3","03");
	application.setAttribute("gNavMenuDepth4","00");
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>
<%@include file="/include/comheader.jsp"%>
<script type="text/javascript">
	//<![CDATA[
	function submit_chk() {

		if(document.getElementById("user_id").value == ""){
			alert("���̵� �Է��� �ּ���");
			return false;
		}

		if(document.getElementById("user_pwd").value == ""){
			alert("�н����带 �Է��� �ּ���");
			return false;
		}
	}
	//]]>
</script>

	<!--// subtopNavi: start //-->
	<%@include file="/include/subtopnavi_new.jsp"%>
	<div id="contents">
    	<!--// leftmenu: start //-->
        <%@include file="/include/sub_leftmenu_new.jsp"%>
        <!--// leftmenu: end //-->

		<div id="rightarea">
			<div id="subcnts">

				<!--// location: start //-->
				<!-- �������� ������û[start] -->
				<%@include file="/include/subtop_04.jsp"%>
				<!-- �������� ������û[end] -->

				<!--// location: start //-->
				<div class="locadv">
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>
					&gt; <span>������</span>&gt; <span class="locanow">û�� �Ⱥ�� �Ű���</span>
				</div>
				<!--// location: end //-->

				<div class="pagetle">
				<h3><img src="/images/omb/ttl_sub04_8_10.gif" alt="û�� �Ⱥ�� �Ű���" /></h3>
                </div>


					<div class="customer">
					<div class="declaration pb05">
						<ul>
							<li><strong>û�ſȺ�� �Ű��� �Ұ�</strong><br />
								<ul>
									<li>- �ѱ��������硸û�ſȺ�����Ű��͸� ã�� �ּż� �����մϴ�.</li>
									<li>- �ѱ���������� �������� ���� �ܺ����� û�ſȺ������ �����Ͽ� �濵�� å�Ӽ��������� �����ϱ� ���� ����ϰ� �ֽ��ϴ�.</li>
									<li>- û�ſȺ�� �Ű��ʹ� ���� ������ ��������, ������ �Ұ��� ����, �������� �Ҹ���������׿� ���� �ο����� ������û�ſȺ�������� �Ű��ϱ� ���� ���õ� ���Դϴ�.</li>
								</ul>
							</li>

							<li><strong>�Ű���</strong><br />
								<ul>
									<li>- ������ ���С��������, ������ �Ұ��� ����, �������� �Ҹ���������� ��</li>
								</ul>
							</li>

							<li><strong>�Ű���</strong><br />
								<ul>
									<li>- ����Ȩ������ ��û�ſȺ�� �Ű��͡��� �̿��Ͻø� �˴ϴ�.</li>
									<li>- �Ű����� ����� ó���Ǹ�, �Ű����� �ź��� ö���� ������ �����Ͽ� �帳�ϴ�.</li>
								</ul>
							</li>
							<li class="clear_st"><strong>�� û�ſȺ�� �Ұ�</strong><br />
								<table summary="û�ſȺ�� �Ұ��� ���� ǥ�� �Ⱥ��, �Ҽ�/��� � ���� ������ �����մϴ�." class="chart2 mT10">
								<caption>û�ſȺ�� �Ұ�</caption>
								<colgroup>
								<col width="150px">
								<col width="275px">
								</colgroup>
								<thead>
								<tr>
									<th class="first" scope="col">�Ⱥ��</th>
									<th scope="col">�Ҽ�/���</th>
								</tr>
								</thead>
								<tbody>
								<tr>
									<td class="first"><img src="/images/management/img_obm_1.jpg"  border="0" alt="��ȣ�� �Ⱥ��" /></td>
									<td class="tdleft2">
										<ul class="st_n1">
											<li>- <strong>�Ҽ�</strong><br />
												<ul>
													<li> �� �������б� ����</li>
												</ul>
											</li>
											<li>- <strong>���</strong><br />
												<ul>
													<li> �� ��)�ѱ���������ȸ ȸ��</li>
													<li> �� ��)������Ʈ����ȸ����� ��ȸ��</li>
													<li> �� ��)����� ��������</li>
												</ul>
											</li>
										</ul>
									</td>
								</tr>
								<tr>
									<td class="first"><img src="/images/management/img_obm_2.jpg"  border="0" alt="�վ��� �Ⱥ��" /></td>
									<td class="tdleft2">
										<ul class="st_n1">
											<li>- <strong>�Ҽ�</strong><br />
												<ul>
													<li> �� ��õ���б� ����</li>
												</ul>
											</li>
											<li>- <strong>���</strong><br />
												<ul>
													<li> �� ��)�ѱ��ڿ�������ȸ��</li>
													<li> �� ��)���������������� ����</li>
													<li> �� ��)���ΰ����ڹ�ȸ�� â�������а� ����</li>
												</ul>
											</li>
										</ul>
									</td>
								</tr>
								<tr>
									<td class="first"><img src="/images/management/img_obm_3.jpg"  border="0" alt="������ �Ⱥ��" /></td>
									<td class="tdleft2">
										<ul class="st_n1">
											<li>- <strong>�Ҽ�</strong><br />
												<ul>
													<li> �� �߾ӵ����ο��� ��ǥ</li>
												</ul>
											</li>
											<li>- <strong>���</strong><br />
												<ul>
													<li> �� ��)�߾ӵ����ο��� ��ǥ</li>
													<li> �� ��)�߾��Ϻ� ���ǽ� ����</li>
													<li> �� ��)�߾��Ϻ� ������ ���������ο�����</li>
												</ul>
											</li>
										</ul>
									</td>
								</tr>
								</tbody>
								</table>
							</li>

							<li class="clear_st tx_cen btn_area"><span ><a href="frontControl.jsp" ><img src="/images/management/btn_ombudsman2.gif"  border="0" alt="û�ſȺ����� �Ű��Ϳ� �Ű��ϱ�" /></a></span></li>
						</ul>

					</div>

				</div>
			</div>

			<!-- new_officer -->
			<div class="new_officer">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
				<tbody>
				<tr>
					<td class="write_day"></td>
					<td class="contact_team"><strong>���μ� : </strong>����� û�Ű濵������</td>
					<td class="contact_user"><strong>����� : </strong>Ȳ��ö</td>
					<td class="contact_tel"><strong>����ó : </strong>052-216-2124</td>
				</tr>
				</tbody>
				</table>
			</div>
			<!-- new_officer -->

				</div>
				<!--//��-->
			</div>


	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>