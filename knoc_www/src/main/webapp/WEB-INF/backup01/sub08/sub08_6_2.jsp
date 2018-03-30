<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>    
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","08");
	application.setAttribute("gNavMenuDepth2","06");
	application.setAttribute("gNavMenuDepth3","02");
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
					<a href="/" title="�ѱ��������� ������������ �̵�"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>	
					&gt; <span>�̻�ȸ</span>
					&gt; <span>�̻�ȸ����ó</span>
                    &gt; <span class="locanow">�ӿ� ����ó</span>
				</div>
				<!--// location: end //-->
				
				<!-- [2009-09-29 ǥ���ڵ��� ���� ����] �ۼ���:������-->
				<div class="pagetle">
					<h3><img src="/images/directors/ttl_sub08_6_2.gif" alt="�ӿ� ����ó" /></h3>
				</div>
				<!--����-->
				<div class="director3">
                	<table class="chart2" summary="�̻�ȸ �ӿ� ����ó�� Ȯ���� �� �ֽ��ϴ�.">
						<caption>�̻�ȸ �ӿ� ����ó</caption>
							<colgroup><col width="150px" /><col width="100px" /><col width="210px" /><col width="240px" /></colgroup>
						<thead>
						<tr>
						<th scope="col" class="first">����</th>
						<th scope="col">����</th>
						<th scope="col">�ֿ���</th>
						<th scope="col">����ó</th>
						</tr>
						</thead>
						<tbody>
						<tr>
						<th scope="row">�� ��</th>
						<td>������</td>
						<td>031-380-2102</td>
						<td>010-9482-1333</td>
						</tr>
						<tr>
						<th scope="row">�� ��</th>
						<td>������</td>
						<td>031-380-2002</td>
						<td></td>
						</tr>
						<tr>
						<th scope="row">�λ���</th>
						<td>�輺��</td>
						<td>031-380-2035</td>
						<td>010-9199-6481</td>
						</tr>
						<tr>
						<th scope="row">��ȹ����������</th>
						<td>�����</td>
						<td>031-380-2036</td>
						<td>010-7135-5333</td>
						</tr>
						<tr>
						<th scope="row">����������ī������</th>
						<td>������</td>
						<td>031-380-2008</td>
						<td>010-9239-6509</td>
						</tr>
						<tr>
						<th scope="row">������������</th>
						<td>������</td>
						<td>031-380-2012</td>
						<td>010-9300-8803</td>
						</tr>
						<tr>
						<th scope="row">�ƽþƺ�����</th>
						<td>��ȫ��</td>
						<td>031-380-2020</td>
						<td>010-8669-2999</td>
						</tr>
						<tr>
						<th scope="row">���ֺ�����</th>
						<td>�̸���</td>
						<td>001-1-504-495-8765</td>
						<td></td>
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