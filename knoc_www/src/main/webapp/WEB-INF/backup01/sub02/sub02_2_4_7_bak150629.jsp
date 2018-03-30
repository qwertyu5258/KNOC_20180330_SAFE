<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","02");
	application.setAttribute("gNavMenuDepth2","02");
	application.setAttribute("gNavMenuDepth3","04");
	application.setAttribute("gNavMenuDepth4","07");
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>
<%@include file="/include/comheader.jsp"%>
<%@include file="/include/subtopnavi_new.jsp"%>
<!--// subtopNavi: start //-->

<div id="contents">
	<!--// leftmenu: start //-->
	<%@include file="/include/sub_leftmenu_new.jsp"%>
	<!--// leftmenu: end //-->
	<div id="rightarea">
		<div id="subcnts">
			<%@include file="/include/subtop_02.jsp"%>
			<!--// location: start //-->
			<div class="locadv">
				<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a> &gt; 
				<span>�����濵</span> &gt; <span>�濵����</span> &gt; <span>�����ڿ���Ȳ</span> &gt; <span class="locanow">�η°�����Ȳ</span>
			</div>
			<!--// location: end //-->
			<!--[2009-09-21 ����] :: �ۼ���: ������ -->
			<div class="pagetle">
				<h3><img src="/images/management/ttl_sub02_2_4.gif" alt="�����ڿ���Ȳ" /></h3>
			</div>
			<!--����-->
			<div class="officer">
				<h4><img src="/images/management/sub02_2_4_8.gif" alt="�η°�����Ȳ"/></h4>
				<h5>�ڰ��� ������Ȳ(��15�� 3���� ����)</h5>
				<!--ǥ-->
				<table class="chart2" summary="2015�� 3������ �ѱ��������� �ڰ��� ������Ȳ�� ����, �����, ��ȣ��, ȸ���, �����纰�� Ȯ���� �� �ֽ��ϴ�.">
					<caption>�ڰ��� ������Ȳ</caption>
					<col width="120px" />
					<col width="116px" />
					<col width="116px" />
					<col width="116px" />
					<col width="116px" />
					<col width="116px" />
					<thead>
						<tr>
							<th scope="col" class="first">����</th>
							<th scope="col">�ڻ�</th>
							<th scope="col">�����</th>
							<th scope="col">��ȣ��</th>
							<th scope="col">ȸ���</th>
							<th scope="col">������</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="first">�ο�</td>
							<td>52</td>
							<td>15</td>
							<td>6</td>
							<td>30</td>
							<td>7</td>
						</tr>
					</tbody>
				</table>
				</br>
				<div class="new_officer" style="margin-top:5px ;">
					<table summary="���μ� �� ����ó ������">
						<caption>���μ� �� ����ó ������</caption>
						<colgroup>
						<col width="auto" />
						<col width="22%" />
						<col width="22%" />
						</colgroup>
						<tbody>
							<tr>
								<td><strong>���μ� : </strong>����濵ó �λ���</td>
								<td><strong>����ó : </strong>052-216-2706</td>
								<td><strong>������ : </strong>2015-09-30</td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- new_officer end -->
				</br>
				<!--//ǥ-->
				<h5 class="mT20">�系�� ��������</h5>
				<dl class="mT20">
					<dt>�濵���� ��ȭ</dt>
					<dd>���� �濵�ɷ� ���� �� �濵���� ������ ���� �濵 ��������<br/>
						- �����, ����� �� �ֿ���� �濵�ڰ��� �� �߰������ڰ��� �İ� ����<br/>
						- ������ �濵�ɷ� �� ������ ���� ����� ���� ���޺� ������ ����<br/>
					</dd>
				</dl>
				<dl>
					<dt>�������� ��ȭ</dt>
					<dd>������� �� �������� ������ ���� ���� ��������<br/>
						- ������ ��� ���� �� ��ȸ�� �İ� ����OJT<br/>
						- �ؿܼ������ �İ� OJT(���)<br/>
						- ������ ���п� ������������(��������, MBA ���� ��)<br/>
						- �ؿ� ����������� �ܱ� ���� �� �ʺ� In-House ����</dd>
				</dl>
				<dl>
					<dt>�۷ι����� ��ȭ</dt>
					<dd>�۷ι� ���������� ���� ����ȭ ����<br />
                    	- ��ȭ�ܱ���, �系 ���б��� �� �<br />
						- �ؿ������(������) ����</dd>
				</dl>
			</div>
			<BR />
			</br>
			<BR />
			</br>
			<!-- new_officer end -->
			<div class="new_officer" style="margin-top:5px ;">
				<table summary="���μ� �� ����ó ������">
					<caption>���μ� �� ����ó ������</caption>
					<colgroup>
					<col width="auto" />
					<col width="22%" />
					<col width="22%" />
					</colgroup>
					<tbody>
						<tr>
							<td><strong>���μ� : </strong>����濵ó ����������</td>
							<td><strong>����ó : </strong>052-216-2742</td>
							<td><strong>������ : </strong>2015-09-30</td>
						</tr>
					</tbody>
				</table>
			</div>
			<!-- new_officer end -->
			<div class="infoCheck">
				<%@include file="/include/satisfy_link.jsp"%>
			</div>
			<!--//��-->
		</div>
	</div>
</div>
<%@include file="/include/comfooter.jsp"%>
<!--// footer: start //-->
<!--// footer: end //-->
</div>
</body>
</html>