<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","02");
	application.setAttribute("gNavMenuDepth2","02");
	application.setAttribute("gNavMenuDepth3","06");
	application.setAttribute("gNavMenuDepth4","08");
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
                    &gt; <span>�濵����</span>
					&gt; <span>��Ÿ����</span>
                    &gt; <span class="locanow">�����ӿ� �����Ȳ</span>
				</div>
				<!--// location: end //-->
				
				<!--[2009-09-21 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/management/ttl_sub02_2_6.gif" alt="��Ÿ����" /></h3>
				</div>
				<!--����-->
				<div class="officer">
					<h4><img src="/images/management/sub02_2_1_5_ta1.gif" alt="�����ӱ� �����Ȳ"/></h4>
					<p class="offtxt">* �ֱ� 5�Ⱓ ���� �� ��ȸ�� �Ǵ� ����ȸ�翡 ����� �ӿ���Ȳ</p>
					<!--ǥ-->
					<table width="100%" class="chart4" summary="�ѱ��������� �����ӿ� �����Ȳ�� Ȯ���� �� �ֽ��ϴ�.">
					<caption>�ѱ��������� �����ӿ� �����Ȳ</caption>
					<colgroup>
					<col width="250px" />
					<col width="*" />
                    </colgroup>
					<tbody>
					<tr>
					<th scope="row">��ȸ�� (�� �ٹ����)</th>
					<td>�ѱ���������</td>
			
					</tr>					
					<tr>
					<th scope="row">�����ӿ� (����)</th>
					<td>������</td>
					
			
					</tr>
					<tr>
					<th scope="row">������</th>
					<td>2013.09.13</td>
					
											
					</tr>
					<tr>
					<th scope="row">�����ȸ���</th>
					<td>OKYC</td>
					
										
					</tr>
					<tr>
					<th scope="row">�������</th>
					<td>2013. 10. 01</td>
					
															
					</tr>
					<tr>
					<th scope="row">���� (��ȸ��/����ȸ��)</th>
					<td>����ȸ��</td>
					<tr>
					<th scope="row">�����߻���</th>
					<td>2013. 10. 01</td>
					
		
					</tr>
					</tr>
                    
					</tbody>
					</table>
					<!--//ǥ--><!--//ǥ-->
				  </div>
				<div class="new_officer">
					<table summary="���μ� �� ����ó ������">
					<caption>���μ� �� ����ó ������</caption>
					<colgroup>
						<col width="auto" />
						<col width="22%" />
						<col width="22%" />
					</colgroup>
					<tbody>
						<tr>
							<td><strong>���μ� : </strong>������ȹ�� ���ڰ�����</td>
							<td><strong>����ó : </strong>052-216-2367</td> 
							<td><strong>������ : </strong>2016-01-31</td>  
						</tr>
					</tbody>
					</table>
				</div><!-- new_officer end -->				
				<div class="infoCheck"><%@include file="/include/satisfy_link.jsp"%></div>				  
				<!--//��-->
			</div>
		</div>
	</div>
	
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>