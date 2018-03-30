<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>
<%
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","04");
	application.setAttribute("gNavMenuDepth2","05");
	application.setAttribute("gNavMenuDepth3","06");
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
	<input type="hidden" name="callback" value="/sub04/sub04_5_6_list.jsp" />
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
					&gt; <span class="locanow">�ҹ��ϵ��� �Ű�</span>
				</div>
				<!--// location: end //-->

				<div class="pagetle">
					<h3 class="tleimg"><img src="/images/customer/ttl_sub04_5_6.gif" alt="�ҹ��ϵ��� �Ű�" /></h3>
				</div>
				<div class="customer">
					<h4 class="mT0 pb10"><img src="../images/customer/img_sub04_5_6_01.gif" alt="�ѱ��������� �ҹ��ϵ��� �Ű��͸� ã���ּż� �����մϴ�. ���� ����� �ҹ����Ұ��� �ϵ��� ������ ���� �ο����� �������  ���ɼ��ǲ� �ذ��Ͽ� �帮�ڽ��ϴ�." /></h4>
					<h4 class="mT10 pb10"><img src="../images/customer/img_sub04_5_6_02.gif" alt="�ҹ��ϵ��� �Ű�" /></h4>
					<div class="declaration pb05">
						<ul >
						<li><strong>�Ű���</strong><br />
							<ul>
								<li>- �츮���翡�� �����ϴ� ��� �Ǽ�����</li>
								<li>- �ϵ��� ���ù����� ������ ��� �ҹ� �ϵ��������� ���õ� ���� �� ����</li>
								<li> - ���� ���� �ذ����� �������� �Ű�Ǵ� ��쿡 �� ��</li>
							</ul></li>
						<li><strong>�Ű��� �� �������</strong><br />
							<ul>
								<li>- �Ű��� ���Ǵ� ����(������ ����) �� ��ü(���, ��) �� ��� ���� </li>
							    <li>- �Ű����� �湮, ����, ���ͳ�(�ҹ��ϵ��� �Ű���) �Ű� ����</li>
							    <li class="pb10">- �ҹ� �ϵ��� �ŷ������� Ȯ���� �� �ִ� �ٰ��ڷ�(���ü���, ���� ��)�� �����ϰ�<br />&nbsp;&nbsp; �Ű��� �� �ǽŰ����� �Ǹ�, �ּ�, ����ó �� �������� Ȯ���� ������ ���</li>
							 </ul></li>
						</ul>
					</div>
					<h4 class="pt10 pb10"><img src="../images/customer/img_sub04_5_6_03.gif" alt="����� ���� �ȳ�" /></h4>
					<div class="declaration pb05">
						<ul>
						<li><strong>���޽�û �� ���ް���</strong><br />
							<ul>
								<li>- �Ű��ڴ� �ҹ��ϵ��� �Ű� ���� ��������� ó���� Ȯ���Ǿ����� �� ���κ��� 1�� �̳� �Ǵ�<br />&nbsp;&nbsp; �������谡 Ȯ���� ���κ��� 2�� �̳��� ������μ��� ����� ��û ����</li>
								<li>- ���� ��������ȸ ���Ǹ� ���� ����� ������ ����</li>
							</ul></li>
						<li><strong>����� ���� ����</strong><br />
							<ul>
								<li>
									<table class="chart2 mT10" summary="������� ���� �ȳ��� Ȯ���� �� �ֽ��ϴ�.">
										<caption>����� ���� �ȳ�</caption>
										<colgroup>
										<col width="150px">
										<col width="275px">
									</colgroup>
										<thead>
											<tr>
											<th scope="col" class="first">��  ��</th>
											<th scope="col">��    ��</th>
											</tr>
										</thead>
										<tbody>
										<tr>
											<td class="first">��������</td>
											<td class="tdleft2">������ �������� ������</td>
										</tr>
										<tr>
											<td class="first">���ޱ���</td>
											<td class="tdleft2">
											�� ��������� ó�а���� ���� ����<br />
											  - �������� :<br />
											  &nbsp;&nbsp;�� �ϰ�,���������,���ϵ��� : 250����/�� �̳�<br />
											  &nbsp;&nbsp;�� �����뺸,����������� : 200����/�� �̳�<br />
											  - ��¡�� : �ΰ��ݾ��� 20% �̳�<br />
											  - ��  �� : �ΰ��ݾ��� 100% �̳�<br />
											  - ���·�, ������ġ �� ����� ó���� ���� ����
											</td>
										</tr>
										<tr>
											<td class="first">�����ѵ�</td>
											<td class="tdleft2">�ְ� 5�鸸��</td>
										</tr>
										</tbody>
										</table>
								</li>
							</ul></li>
							<li><strong>����� ���� ����</strong><br />
							<ul>
							   <li>- �Ű����� ����� �ƴ� ������ �Ǹ�ǰų� ���ź��� ������ ��ǿ��ΰ� Ȯ���� �� �Ǵ� ���</li>
							   <li>- �ܺα�� �Ǵ� ���翡�� �̹� �����Ͽ� ���簳�� �Ͽ��ų� �Ϸ�� ���</li>
							   <li>- ��������, ��� ���� ���� �����ǰų� ��Ȥ ���� ��ü������ ����� ����� �־��� ���</li>
							   <li>- �Ű��ڰ� ����� ������ ������ �ʴ� ���</li>
							   <li>- ���� �������� �������� �������� ������ ���</li>
							   <li>- ���� ������ �������� �������� �� ����,�δ��ϰ� �Ű��� ���</li>
							   <li>- �Ű��ڰ� �ڱ� ������ �����Ͽ� �Ű��� ���</li>
							   <li>- ��Ÿ ��������ȸ ���� ��� ������ �������� �ʴٰ� �����Ǵ� ���</li>
							</ul></li>
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
									&nbsp;&nbsp;&nbsp;&nbsp;-�ҹ��ϵ��� �Ű� �Խ��� �</li>
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
							<td style="padding-left:50px;text-align:center;"><a href="/sub04/sub04_5_6_list.jsp?page=1&amp;mode=write&amp;bid=MINWON&amp;rtype=IL"><img src="../images/customer/btn_06.gif" alt="�ҹ��ϵ��� �Ű�" /></a>&nbsp;<a href="#contents" onclick="popup_passwd(); return false;" title="��â"><img src="../images/customer/btn_04.gif" alt="ó�������ȸ" /></a></td>
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