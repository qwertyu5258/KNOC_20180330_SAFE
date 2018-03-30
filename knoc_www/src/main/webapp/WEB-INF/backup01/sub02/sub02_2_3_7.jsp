<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>    
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","02");
	application.setAttribute("gNavMenuDepth2","02");
	application.setAttribute("gNavMenuDepth3","03");
	application.setAttribute("gNavMenuDepth4","07");
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
					&gt; <span>�繫��Ȳ</span>
                    &gt; <span class="locanow">ä������</span>
				</div>
				<!--// location: end //-->
				
				<!--[2009-09-21 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/management/ttl_sub02_2_3.gif" alt="�繫��Ȳ" /></h3>
				</div>
				<!--����-->
				<div class="officer">
					<h4><img src="/images/management/sub02_2_3_3_ta1.gif" alt="ä������" border="0"/></h4>
					<p class="ctxt"><strong>Ÿ���ο� ���� ä������ ��Ȳ</strong></p>
					<!--ǥ-->
					<table class="chart2" summary="Ÿ���ο� ���� ä������ ��Ȳ�� Ȯ���� �� �ֽ��ϴ�.">
					<caption>Ÿ���ο� ���� ä������ ��Ȳ</caption>
					<col width="150px" />
					<col width="450px" />
					<thead>
					<tr>
					<th scope="col" class="first">ä����</th>
					<th scope="col">Harvest Operations Corp.</th>
					</tr>
					</thead>
					<tbody>
					<tr>
						<td class="first">����</td>
						<td>���ӱ��</td>
					  </tr>
					<tr>
						<td class="first">ä����</td>
						<td>-</td>
					  </tr>
					<tr>
						<td class="first">ä�������ܾ�(����:�鸸��)</td>
						<td>738,360</td>
					  </tr>
					<tr>
						<td class="first">ä�������Ⱓ</td>
						<td>2013-05-14~2018-05-14</td>
					  </tr>
					<tr>
						<td class="first">���</td>
						<td>ä�ǹ������޺���(12.6%)</td>
					  </tr>
					</tbody>
					</table>
                    
                    <table class="chart2" summary="Ÿ���ο� ���� ä������ ��Ȳ�� Ȯ���� �� �ֽ��ϴ�.">
					<caption>Ÿ���ο� ���� ä������ ��Ȳ</caption>
					<col width="150px" />
					<col width="450px" />
					<thead>
					<tr>
					<th scope="col" class="first">ä����</th>
					<th scope="col">Harvest Operations Corp.</th>
					</tr>
					</thead>
					<tbody>
					<tr>
						<td class="first">����</td>
						<td>���ӱ��</td>
					  </tr>
					<tr>
						<td class="first">ä����</td>
						<td>Canadian Imperial Bank of Commerce ��</td>
					  </tr>
					<tr>
						<td class="first">ä�������ܾ�(����:�鸸��)</td>
						<td>844,543</td>
					  </tr>
					<tr>
						<td class="first">ä�������Ⱓ</td>
						<td>2015-04-22~2017-04-30</td>
					  </tr>
					<tr>
						<td class="first">���</td>
						<td>���࿩�����޺���</td>
					  </tr>
					</tbody>
					</table>
					<div style="text-align:left ; padding-left:20px ; font-size:11px ; letter-spacing:-1px ; color:#777 ;">
					* ���ñ��� : ��15�� 12���� ���� <BR />
					</div>
					<!--//ǥ-->

				</div>
				<div class="new_officer">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
					<tbody>
						<tr>
							<td class="write_day"><strong>�ۼ������� : </strong>2015-12-31</td>
							<td class="contact_team"><strong>���μ� : </strong>�繫ó ȸ����</td>
							<td class="contact_user"><strong>����� : </strong>�̰���</td>
							<td class="contact_tel"><strong>����ó : </strong>052-216-2459</td>
						</tr>
					</tbody>
				</table>
				</div>
				<neo:neoboardFacade parentUri="<%=request.getServletPath()%>" mode="list" bid="DEBT" adminURL="" sessionName="USERSESSION"/>
										
				<div class="infoCheck"><div style="clear:both ; height:20px ;"></div><%@include file="/include/satisfy_link.jsp"%></div>					
				<!--//��-->
			</div>
		</div>
	</div>
	
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>