<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>
<%
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","04");
	application.setAttribute("gNavMenuDepth2","02");
	application.setAttribute("gNavMenuDepth3","01");
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
	<input type="hidden" name="bid" value="SANGDAM" />
	<input type="hidden" name="bno" value="" />
	<input type="hidden" name="callback" value="/sub04/sub04_2_list.jsp" />
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
					&gt; <span>������</span> &gt; <span class="locanow">������</span>
				</div>
				<!--// location: end //-->

				<div class="pagetle">
					<h3 class="tleimg"><img src="/images/customer/ttl_sub04_2.gif" alt="������" /></h3>
				</div>
				<div class="customer1">
					<h4 class="mT0 pb10"><img src="../images/customer/img_sub04_2_01.gif" alt="�������� �ѱ��������翡 ���� ���ǡ�������� ��� �� ģ������ Ī���� ���� �����Դϴ�. ������ ��û�Ͻ� ��㳻���� �ִ��� �ż��� ���ɼ��ǲ� �ذ��� �帮���� �ϰڽ��ϴ�." /></h4>
					<div class="declaration">
						<ul>
							<li>�Խù��� �ø��ñ� ���� ���� <a href="/sub04/sub04_4_1.jsp" title="FAQ �������� �̵�"><span class="ce45108_b">FAQ</span></a>�� �ش� ������ �ִ��� Ȯ���� �ֽø� �����ϰڽ��ϴ�.</li>
							<li>���� ������ ������ ��θ� �̿��Ͻø� ���� ȿ�������� �亯�� �޾ƺ��� �� �ֽ��ϴ�.<br />
								<ul>
									<li>�� ����/���� ���� �� �������� ���� ���� : ���������� Petronet ������Ʈ <a href="http://www.petronet.co.kr/index.jsp" target="_blank" title="���������� Ȩ�������� �̵�(��â)"><span class="ce45108_b">(www.petronet.co.kr)</span></a></li>
									<li>�� ä��, �������� ���б�, ���� �� ä�� ���� ���� : �λ��� e-mail <a href="mailto:insa@knoc.co.kr"><span class="ce45108_b" title="���Ϻ�����(��â)">(insa@knoc.co.kr)</span></a></li>
									<!-- <li>�� ���� ���� ����<br />���� : ȫ���� <span class="ce45108_b">(�� 031-380-2158)</span><br />���� : �� ���� ("<a href="/sub01/sub01_5.jsp" title="���� �� �ο� �������� �̵�"><span class="ce45108_b">����Ұ� > ���� �� �ο� > ����ó</span></a>" ����)
									</li> -->
									<li>�� ���� ���� ���� : �� ���� ("����Ұ� > ������ �� �ֿ����" ����)</li>
								</ul>
							</li>
							<li>���� ������ �ѱ���������� ���谡 ������� �ش� ��� �Ǵ� ����� ������ �ֽñ� �ٶ��ϴ�.<br />
								<ul>
									<li>�� �ֹ���, ���� �� ��ǰ���� ����, ���� �� ���뿡 ���� ����<br />
									������ (SK������, GSĮ�ؽ�, S-Oil, ������Ϲ�ũ ��)</li>
									<li>�� ���缮����ǰ�� �Ű� �� ó���� ���� ����<br />
									�ѱ�����������<span class="ce45108_b">(</span><a href="http://www.kpetro.or.kr/" target="_blank" title="�ѱ����������� Ȩ�������� �̵�(��â)"><span class="ce45108_b">www.kpetro.or.kr</span></a><span class="ce45108_b">, �� 1588-5166)</span>
										<br /><br />
										<!--<strong>�� ���ǻ��� : �Խñ� �ۼ� �� �� ���뿡 ���������� ���Ե� �� ������ �����Ͻñ� �ٶ��ϴ�.<br /></strong>-->
									</li>
								</ul>
							</li>
						</ul>
					</div>

					<div class="customer2">
					<div class="declaration">
						<ul>
							<li>�ѱ���������� ������Ÿ� �̿����� �� ������ȣ � ���� ������ ����������ȣ�� �� �������� ���� ������ �ؼ��ϸ�, ��������ó����ħ�� ���Ͽ� ������ ���� ���������� �����Ͽ� ó������ �˷��帳�ϴ�.<br /><br />
								<ul class="align_01">
									<li style="text-align:center;"><strong>- �� �� -</strong></li>
									<li>
										<strong>1. �����ϴ� �������� �׸� </strong><br />&nbsp;&nbsp;&nbsp;&nbsp;����� ������ ���� �׸���� �����Ͽ� ó���մϴ�.<br />
										&nbsp;&nbsp;&nbsp;&nbsp;- �ʼ��׸� : ����, ��й�ȣ<br />&nbsp;&nbsp;&nbsp;&nbsp;- �����׸� : ��ȭ��ȣ, �̸���</li>
									<li><strong>2. ���������� �������̿� ����</strong><br />
									&nbsp;&nbsp;&nbsp;&nbsp;-����� �Խ��� �</li>
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
					
					<div class="pt25" align="center">
						<a href="/sub04/sub04_2_list.jsp?page=1&amp;mode=write&amp;bid=SANGDAM" title="�����"><img src="../images/customer/btn_08.gif" alt="�����" /></a> <a href="#contents" onclick="popup_passwd(); return false;" title="��â"><img src="../images/customer/btn_04.gif" alt="ó�����Ȯ��" /></a>
					</div>

					<!-- new_officer -->
					<div class="new_officer">
						<table summary="���μ� �� ����ó ������">
						<caption>���μ� �� ����ó ������</caption>
						<tbody>
						<tr>
							<td class="write_day"></td>
							<td class="contact_team"><strong>���μ� : </strong>��ȹ����ó ȫ����</td>
							<td class="contact_user"><strong>����� : </strong>������</td>
							<td class="contact_tel"><strong>����ó : </strong>052-216-2232</td>
						</tr>
						</tbody>
						</table>
					</div>
					<!-- new_officer -->

				</div>

			</div>
		</div>
	</div>
	
</div>

<!--// footer: start //-->
<%@include file="/include/comfooter.jsp"%>
<!--// footer: end //-->

</div>

</body>
</html>