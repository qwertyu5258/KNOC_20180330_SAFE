<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>    
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","01");
	application.setAttribute("gNavMenuDepth2","07");
	application.setAttribute("gNavMenuDepth3","05");
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
					&gt; <span>����Ұ�</span>
                    &gt; <span>ä������</span>
                    &gt; <span class="locanow">�����Ұ�</span>
				</div>
				<!--// location: end //-->
				
				<!-- [2009-09-15 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/info/ttl_sub01_7_5.gif" alt="�����Ұ�" /></h3>
				</div>
				<!--����-->				
				<div class="recruit3">
					<ul class="tab">
					<li><a href="sub01_7_5.jsp"><img src="/images/info/tab_sub01_7_5_1on.gif" alt="�����Ұ�"/></a></li>

					</ul>
				<div class="recruit2" style="margin-top:-20px;">
					<ul>
						<li>
							<dl style="width:700px;">
								<dt>�츮 ����� ������ ���� ü������ ��°����� �η��� �ո����� ����� �������� ������ ����� �� ������ �����ϴµ�
								 �ʿ���<br/>�ڰݿ�� ���� ����м��Ͽ� ������ ������ �����ϰ� �ֽ��ϴ�. ���� ������ ������115�� �̸�,
								  �� ������ ������<br/>�������� �ٽ� 14�� ���ķ� �����ϰ� �ֽ��ϴ�.
								</dt>
							</dl>
						</li>
					</ul>
					
					<ul>
						<li>
							<dl style="width:700px;">
								<dt>�츮 ����� ������ ������ ���İ� �����Ͽ� ������ �ο��ϰ� �̵���ġ �ϸ�,
								 �ʼ����������� ������ν� ������ ������������ �����ϰ� ü������ �η¾缺�� �����ϰ� �ֽ��ϴ�.  
								</dt>
							</dl>
						</li>
					</ul>
						
					<table class="chart9" summary="�����Ұ��� Ȯ���� �� �ֽ��ϴ�." style="margin-top:20px;">
						<caption>����ü� �������</caption>
						<colgroup>
						<col width="" />
						<col width=""/>
						<col width="" />
						<col width="" />
						</colgroup>
						<thead>
							<tr>
								<th scope="col" class="first">����</th>
								<th scope="col">����</th>
								<th scope="col">����</th>
								<th scope="col">����</th>
							</tr>
						</thead>
						<tbody >
							<tr>
							<td class="first" rowspan="5">�濵����</td>
							<td>������ȹ/�濵����</td>
							<td rowspan="8" >�������(���)</td>
							<td>��������</td>
							</tr>
							
							<tr>
							<td>����</td>
							<td>����</td>
							</tr>
		
							<tr>
							<td>����/���/Logistics</td>
							<td>����</td>
							</tr>					
		
							<tr>
							<td>�λ�</td>
							<td>����</td>
							</tr>
							
							<tr>
							<td>�繫/ȸ��/����</td>
							<td>���߼��</td>
							</tr>	
							
							<tr>
							<td class="first" >�������</td>
							<td>���/������</td>
							<td>�ü�/�/HSE</td>
							</tr>				
		
							<tr>
							<td class="first" rowspan="2">�������</td>
							<td>����</td>
							<td>IT</td>
							</tr>									
						</tbody>
					</table>
				</div>							
                </div>
				<!--//��-->
			</div>
		
			<div class="new_officer" >
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
				<colgroup>
					<col width="auto" />
					<col width="22%" />
					<col width="22%" />
				</colgroup>
				<tbody>
					<tr>
						<td><strong>���μ� : </strong>������ȹ�� ����������</td>
						<td><strong>����ó : </strong>052-216-2114</td>
						<td><strong>������ : </strong>2015-09-30</td>
					</tr>
				</tbody>
				</table>
			</div><!-- new_officer end -->
			
		</div>
	</div>
	
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>