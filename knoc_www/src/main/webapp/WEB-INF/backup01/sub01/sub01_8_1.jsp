<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>    
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","01");
	application.setAttribute("gNavMenuDepth2","08");
	application.setAttribute("gNavMenuDepth3","01");
	application.setAttribute("gNavMenuDepth4","00");
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
				<%@include file="/include/subtop_01.jsp"%>
				<!--// location: start //-->
				<div class="locadv">
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>
					&gt; <span>����Ұ� </span>
					&gt; <span>����ȸ </span>
                    &gt; <span class="locanow">�ӿ����</span>
				</div>
				<!--// location: end //-->
				
				<!-- [2009-09-15 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/info/ttl_sub01_8_1.gif" alt="�ӿ����" /></h3>
				</div>
				<!--����-->				
				<div class="sukwoo">
                	<!--ǥ-->
					<table width="100%" class="chart2" summary="����ȸ �ӿ� ��Ȳ�� ����, ����, ����ó���� Ȯ���� �� �ֽ��ϴ�.">
					<caption>����ȸ �ӿ� ��Ȳ</caption>
						<col width="100px" />
						<col width="100px" />
						<col width="250px" />
						<col width="250px" />
						<thead>
							<tr>
								<th scope="col" class="first">����</th>
								<th scope="col">�� ��</th>
								<th scope="col">����ó</th>
								<th scope="col">���</th>
							</tr>
						</thead>
						<tbody>
							<tr> 
								<td class="first">ȸ��</td>
								<td>������</td>
								<td>011-260-8183</td>
								<td></td>
							</tr>
							<tr> 
								<td rowspan="2"  class="first">����</td>
								<td>���½�</td>
								<td>010-4388-3557</td>
								<td></td>
							</tr>
							<tr> 
								<td>�����</td>
								<td>010-3619-8127</td>
								<td></td>
							</tr>
							<tr> 
								<td rowspan="5" class="first">��ȸ��</td>
								<td>�蹫��</td>
								<td>011-9005-2915</td>
								<td></td>
							</tr>
							<tr> 
								<td>��ȫ��</td>
								<td>016-253-9702</td>
								<td></td>
							</tr>
							<tr> 
								<td>��ȣö</td>
								<td>011-9084-7052</td>
								<td></td>
							</tr>
							<tr> 
								<td>���緮</td>
								<td>010-3066-7101</td>
								<td></td>
							</tr>
							<tr> 
								<td>�����</td>
								<td>017-270-9701</td>
								<td></td>
							</tr>
							<tr> 
								<td rowspan="9"  class="first">�̻�</td>
								<td>������</td>
								<td>010-6450-0060</td>
								<td></td>
							</tr>

							
							<tr> 
								<td>�踸��</td>
								<td>011-771-9258</td>
							
								<td></td>
							</tr>
							<tr> 
								<td>���ؿ�</td>
								<td>010-5000-5110</td>
								<td></td>
							</tr>

							<tr> 
								<td>������</td>
								<td>011-218-5323</td>
								<td></td>
							</tr>
							<tr> 
								<td>�۽�ȣ</td>
								<td>010-5239-4556</td>
								<td></td>
							</tr>

							
							<tr> 
								<td>������</td>
								<td>011-9784-0848</td>
								<td></td>
							</tr>

						<tr> 
								<td>���̼�</td>
								<td>011-260-2321</td>
								<td></td>
							</tr>
													<tr> 
								<td>�ֱԿ�</td>
								<td>010-8948-4064</td>
								<td></td>
							</tr>
													<tr> 
								<td>��ȸȯ</td>
								<td>031-380-2300</td>
								<td></td>
							</tr>

					
							<tr> 
								<td class="first">�繫����</td>
								<td>�赿��</td>
								<td>017-258-7758</td>
								<td></td>
							</tr>
						</tbody>
					</table>
					<!--//ǥ-->
				</div>
				<!--//��-->
			</div>
		</div>
	</div>
	
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>