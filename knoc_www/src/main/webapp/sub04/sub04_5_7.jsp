<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>
<%
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","04");
	application.setAttribute("gNavMenuDepth2","05");
	application.setAttribute("gNavMenuDepth3","07");
	application.setAttribute("gNavMenuDepth4","00");
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>
<%@include file="/include/comheader.jsp"%>
<script type="text/javascript">
	function popup_passwd() {
		window.open("","bform","width=305,height=205,top=0,left=0,scrollbars=no");
		document.bform.submit();
	}
</script>



	<%@include file="/include/subtopnavi_new.jsp"%><!--// subtopNavi: start //-->
<form name="bform" method="post" action="/sub04/pop_login.jsp" target="bform" onsubmit="do_search(this); return false;">
	<input type="hidden" name="bid" value="MINWON" />
	<input type="hidden" name="bno" value="" />
	<input type="hidden" name="callback" value="/sub04/sub04_5_7_list.jsp" />
	<input type="hidden" name="mode" value="list" />
</form>
	<div id="contents">
		<!--// leftmenu: start //-->
        <%@include file="/include/sub_leftmenu_new.jsp"%>
        <!--// leftmenu: end //-->

		<div id="rightarea">
			<div id="subcnts">
				<%@include file="/include/subtop_04.jsp"%>
				<!--// location: start //-->
				<div class="locadv">
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>
					&gt; <span>������</span>
					&gt; <span class="locanow">���ͽŰ�</span>
				</div>
				<!--// location: end //-->

				<div class="pagetle">
					<h3 class="tleimg"><img src="/images/customer/ttl_sub04_5_7.gif" alt="���� �Ű�" /></h3>
				</div>
				<div class="customer">
					<h4 class="mT0 pb10"><img src="../images/customer/img_sub04_5_7_01.gif" alt="�ѱ���������(�����)�� ���̹� �ο����� ã�� �ּż� �����մϴ�. ���� ������ ������ �����Ͽ� ����ó���� ���� ���ǽ�û�̳� �δ��ϰų� ����� ���׿� ���� ���� �� �ο����� ������� ���ɼ��ǲ� �ذ��Ͽ� �帮�ڽ��ϴ�." /></h4>
					<h4 class="mT10 pb10"><img src="../images/customer/img_sub04_5_7_02.gif" alt="����ħ������" /></h4>
					<div class="declaration pb05">
						<ul>
						<li>������ �ǰ��� ����, ȯ��, �Һ����� ���� �� ������ ������ ħ���ϴ� �����μ� �����ͽŰ��� ��ȣ���� ��ǥ�� ������ ����*�� ��Ģ�̳�,
						  �Ρ��㰡�� ���ó��, ����ó�� �� ����ó���� ����� �Ǵ� ����<br />
						 <ul>
						 	<li> *���ü����� ���������� ���� Ư������, ����ǰ��������, ���ڿ�ȯ�溸������, ���Ƿ������ 180��<br /> ������ �̿� �ش�Ǹ�
						   		���簡 ���������μ� ����ϴ� ������ ������ �� ������ü���� ���������
						   	</li>
						  </ul>
						</li>
						</ul>
					</div>
					<h4 class="mT20 pb10"><img src="../images/customer/img_sub04_5_7_03.gif" alt="����ħ������ ����" /></h4>
					<div class="declaration pb05">
						<ul>
							<li><strong>�ǰ��о�</strong>: �ҷ���ǰ ���������� ��</li>
							<li><strong>ȯ��о� </strong>: ��⹰ �ҹ� �Ÿ� ��</li>
							<li><strong>�����о�  </strong>: ��¥ �øŰ��� �Ǹ� ��</li>
							<li><strong>�Һ������ͺо�</strong> : �Ǿ�ǰ ������Ʈ ��</li>
						</ul>
					</div>
					<h4 class="mT20 pb10"><img src="../images/customer/img_sub04_5_7_04.gif" alt="���ͽŰ�" /></h4>
					<div class="declaration pb05">
						<ul>
							<li>��ħ�������� �߻� �Ǵ� �߻��� ����� �ִٴ� ����� �Ű��ϴ� ����</li>
						</ul>
					</div>

					<h4 class="mT20 pb10"><img src="../images/customer/img_sub04_5_7_04.gif" alt="���ͽŰ� �������" /></h4>
					<div class="declaration pb05">
						<ul>
							<li>���α�������ȸ, ������, ��ȸ�ǿ�</li>
							<li>����ħ�������� �ϴ� ����̳� �������ü����� ���� ��ǥ�� �Ǵ� �����</li>
							<li> ����ħ�������� ���� ���������������� �Ǵ� ���� ���� ������ ���� ��������̳� �������</li>
							<li> ����ħ�������� ���õ� ������ ���� ��ġ�� ���硤���� �� ������ü</li>
							<li> ����ħ�������� ���õ� ������ ���� ��ġ�� ���硤���� �� ������ü</li>
							<li><strong>����ó : ����� �ο���� ������ ����(�� 052-216-2164 / �ѽ� 052-216-5950)</strong></li>
						</ul>

					</div>
		

				<div class="declaration">
						<ul>
							<li>�ѱ���������� ������Ÿ� �̿����� �� ������ȣ � ���� ������ ����������ȣ�� �� �������� ���� ������ �ؼ��ϸ�,
��������ó����ħ�� ���Ͽ� ������ ���� ���������� �����Ͽ� ó������ �˷��帳�ϴ�.
<br /><br />
								<ul class="align_01">
									<li style="text-align:center;"><strong>- �� �� -</strong></li>
									<li>
										<strong>1. �����ϴ� �������� �׸� </strong><br />&nbsp;&nbsp;&nbsp;&nbsp;����� ������ ���� �׸���� �����Ͽ� ó���մϴ�.<br />
										&nbsp;&nbsp;&nbsp;&nbsp;- �ʼ��׸� : ����, ��й�ȣ<br />&nbsp;&nbsp;&nbsp;&nbsp;- �����׸� : ��ȭ��ȣ, �̸���</li>
									<li><strong>2. ���������� �������̿� ����</strong><br />
									&nbsp;&nbsp;&nbsp;&nbsp;-���ͽŰ� �Խ��� �</li>
									<!-- <li>�� ���� ���� ����<br />
										���� : ȫ���� <span class="ce45108_b">(�� 031-380-2158)</span><br />
										���� : �� ���� ("<a href="/sub01/sub01_5.jsp" title="���� �� �ο� �������� �̵�"><span class="ce45108_b">����Ұ� > ���� �� �ο� > ����ó</span></a>" ����)
									</li>
									-->

									<li><strong>3. ���������� ���� �� �̿�Ⱓ</strong><br />
									&nbsp;&nbsp;&nbsp;&nbsp;-���� �Ⱓ : �Խù� ���� ��û�ñ��� �Ǵ� �Խñ� ��� �� 3�� �����(�ڵ��ı�)<br />
									&nbsp;&nbsp;&nbsp;&nbsp;-���� �ٰ� : ������ü�� ���� �� ���� ���(�������� ���ΰ������� ��3�� �������� ó��)
									</li>

								</ul>
							</li>

						</ul>
					</div>
					
					<div class="customer2">

						&nbsp;&nbsp;&nbsp;<BR />
						<div class="pt25" align="center">
						<table style="width:600px">
						<tr>
							<td style="padding-left:50px;text-align:center;"><a href="/sub04/sub04_5_7_list.jsp?page=1&amp;mode=write&amp;bid=MINWON&amp;rtype=PU"><img src="../images/customer/btn_07.gif" alt="�ҹ��ϵ��� �Ű�" /></a>&nbsp;<a href="#contents" onclick="popup_passwd(); return false;" title="��â"><img src="../images/customer/btn_04.gif" alt="ó�������ȸ" /></a></td>
							<td width="148"><a href="http://www.acrc.go.kr/acrc/board.do?command=searchDetail&menuId=0502" target="_blank"><img src="../images/customer/btn_030.gif" alt="���α�������ȸ ���нŰ��� Ȩ�������� �̵� (��â)" /></a></td>
	
						</tr>
						</table>
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
					<td class="contact_team"><strong>���μ� : </strong>����� ���న����</td>
					<td class="contact_user"><strong>����� : </strong>������</td>
					<td class="contact_tel"><strong>����ó : </strong>052-216-2164</td>
				</tr>
				</tbody>
				</table>
			</div>
			<!-- new_officer -->


		</div>
	</div>

	 </div>
    
        <!--// footer: start //-->
		<%@include file="/include/comfooter.jsp"%>
		<!--// footer: end //-->
    </div>
    
</body>
</html>