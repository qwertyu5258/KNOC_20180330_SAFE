<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>    
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","08");
	application.setAttribute("gNavMenuDepth2","06");
	application.setAttribute("gNavMenuDepth3","03");
	application.setAttribute("gNavMenuDepth4","00");
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>            
<%@include file="/include/sub08_auth.jsp"%>   
<%@include file="/include/comheader.jsp"%>

	<%@include file="/include/subtopnavi_new.jsp"%><!--// subtopNavi: start //-->

	<div id="contents">
		<!--// leftmenu: start //-->
        <%@include file="/include/sub_leftmenu_new.jsp"%>
        <!--// leftmenu: end //-->
		
		<div id="rightarea">
			<div id="subcnts">
				<%@include file="/include/subtop_08.jsp"%>
				<!--// location: start //-->
				<div class="locadv">
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>	
					&gt; <span>�̻�ȸ
</span>
					&gt; <span>�̻�ȸ����ó
/<span>
                    &gt; <span class="locanow">���� ��ȭ��ȣ��</span>
				</div>
				<!--// location: end //-->
				
				<!-- [2009-09-29 ǥ���ڵ��� ���� ����] �ۼ���:������-->
				<div class="pagetle">
					<h3><img src="/images/directors/ttl_sub08_6_3.gif" alt="���� ��ȭ��ȣ��" /></h3>
				</div>
				<!--����-->
				<div  class="director3">
					<p class="mB5">�ѱ��������翡 ���Ͽ� �ñ��� ������ �����ø� �Ʒ��� �оߺ� ���μ��� �����Ͽ� �ֽʽÿ�.
���� ���ǲ� ���͵帮�ڽ��ϴ�.</p>
                	<table class="chart2" summary="�ѱ��������� �оߺ� ���μ� �� ����ó�� Ȯ���� �� �ֽ��ϴ�.">
						<caption>�ѱ��������� �оߺ� ���μ� �� ����ó</caption>
							<colgroup><col width="220px" /><col width="320px" /><col width="160px" /></colgroup>
					<thead>
					<tr>
					<th scope="col" class="first">����</th>
					<th scope="col">���μ�</th>
					<th scope="col">����ó</th>
					</tr>
					</thead>
					<tbody>
					<tr>
					<th scope="row">�ؿܼ������߻�� �</th>
					<td>����ó �����ȹ��</td>
					<td>031) 380-2533~9</td>
					</tr>
					<tr>
					<th scope="row">�űԻ�� ����</th>
					<td>�űԻ��1ó �űԻ����ȹ��</td>
					<td>031) 380-2262~8</td>
					</tr>
					<tr>
					<th scope="row">���������Ž��</th>
					<td>Ž����ó ������</td>
					<td>031) 380-2502~9</td>
					</tr>
					<tr>
					<th scope="row">�������߱��</th>
					<td>�������������</td>
					<td>031) 380-2582~6</td>
					</tr>
					<tr>
					<th scope="row">���� ���������</th>
					<td>����ó ����2��</td>
					<td>031) 380-2661~9</td>
					</tr>
					<tr>
					<th scope="row">���߼� ���(�μ�ȣ)</th>
					<td>���߼����ó ���߼������</td>
					<td>031) 380-2622~8</td>
					</tr>
					<tr>
					<th scope="row">�����������</th>
					<td>��������ó ���������</td>
					<td>031) 380-2702~9</td>
					</tr>
					<tr>
					<th scope="row">����������</th>
					<td>�������ó ���������</td>
					<td>031) 380-2253~8</td>
					</tr>
					<tr>
					<th scope="row">�������ŷ�</th>
					<td>�������ó ����Ʈ���̵���</td>
					<td>031) 380-2732~6</td>
					</tr>
					<tr>
					<th scope="row">������� �Ǽ����</th>
					<td>����ü�ó �����</td>
					<td>031) 380-2822~9</td>
					</tr>
					<tr>
					<th scope="row">���,����</th>
					<td>�濵����ó ����ڻ���</td>
					<td>031) 380-2362~5</td>
					</tr>
					<tr>
					<th scope="row">ä�빮��</th>
					<td>��ȹ������ �λ���</td>
					<td>031) 380-2312~9</td>
					</tr>
					<tr>
					<th scope="row">��������</th>
					<td>������������ ���������</td>
					<td>031) 380-2787</td>
					</tr>
					<tr>
					<th scope="row">�����������</th>
					<td>������������ ��������������</td>
					<td>031) 380-2762~8</td>
					</tr>
					<tr>
					<th scope="row">�ؿܼ������</th>
					<td>������������ �ؿܼ���������</td>
					<td>031) 380-2752~9</td>
					</tr>
					<tr>
					<th scope="row">ȫ���ڷ�, ��к����ڷ�</th>
					<td>ȫ����</td>
					<td>031) 380-2152~9</td>
					</tr>
					<tr>
					<th scope="row">�濵��Ȳ</th>
					<td>��ȹ������ ��ȹ������</td>
					<td>031) 380-2163~4</td>
					</tr>
					<tr>
					<th scope="row">�繫��Ȳ</th>
					<td>�繫ó ȸ�輼����</td>
					<td>031) 380-2354~7</td>
					</tr>
					<tr>
					<th scope="row">����/�繫��</th>
					<td>�������<br />��������<br />��������<br />��������<br />��������<br />��������<br />��������<br />�����<br />��������<br />�����������繫��
					</td>
					<td>052) 238-3235~7<br />055) 681-0075~7<br />061) 688-8700<br />041) 660-4114<br />031) 683-4041~4<br />02) 452-9995~6<br />031) 329-4900<br />061)360-2114<br />033) 520-7800<br />052) 240-4700</td>
					</tr>
					</tbody>
					</table>
				</div>
				 <!--//��-->
			</div>
		</div>
	</div>
	
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>