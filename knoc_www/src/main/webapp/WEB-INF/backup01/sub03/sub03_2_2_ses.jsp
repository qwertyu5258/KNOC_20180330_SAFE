<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","03");
	application.setAttribute("gNavMenuDepth2","02");
	application.setAttribute("gNavMenuDepth3","02");
	application.setAttribute("gNavMenuDepth4","00");
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
			  <%@include file="/include/subtop_03.jsp"%>
			  <!--// location: start //-->
				<div class="locadv">
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>	
					&gt; <span>����Ұ�</span>
                    &gt; <span>�ؿܻ��</span>
                    &gt; <span class="locanow">����������Ȳ��</span>
				</div>
				<!--// location: end //-->
				
				<!-- [2009-09-24 ����] ::  -->
				<div class="pagetle">
					<h3><img src="/images/business/ttl_sub03_2_2.gif" alt="����������Ȳ��" /></h3>
				</div>
				<!--����-->
				<div class="business2">
                	<%@include file="sub03_2_2_map.jsp"%>
                    
                   <h4><img src="../images/business/img_ttl_sub03_2_2_ses.gif" alt="�δ� SES" /></h4>
                   <div class="mT10"><img src="../images/business/img_sub03_2_2_ses.gif" alt="�δ� SES ������" /></div>
                    
                   <p class="rtxt">[2013�� 9���� ����]</p>
					<table class="chart2" summary="�δ� SES ���� ������ Ȯ���� �� �ֽ��ϴ�.">
					<caption>�δ� SES ���� ����</caption>
					<col width="60px" />
					<col width="60px" />
					<col width="70px" />
					<col width="70px" />
					<col width="50px" />
					<col width="50px" />
					<col width="60px" />
					<thead>
					<tr>
					<th scope="col" class="first">����</th>
					<th scope="col">������</th>
					<th scope="col">�����</th>
					<th scope="col">����� �Ű���</th>
					<th scope="col">�ѱ�������<br />(%(�ۼ�Ʈ))</th>
					<th scope="col">�ѱ�������<br />����</th>					
					<th scope="col">�����������</th>
					</tr>
					</thead>
					<tbody>
					<tr>
					<td class="first">������</td>
					<td>�δ� SES</td>
					<td>CNOOC(��)</td>
					<td>'02.12</td>
					<td>8.91</td>
					<td>8.91</td>
					<td>-</td>
					</tr>
					</tbody>
					</table>
                        
                    <p class="mT20">SES������ �ε��׽þ��� ����Ʈ�� ������ �ڹ��ؿ� ��ġ�� ���걤���Դϴ�. �� ������ ���� 20~50m(����)�� ��ġ�� ������, ���� ������ �� 8,098��(���ų�ι���)�Դϴ�. �׸��� 34���� ������ 360���� ���������� �����Ǿ� �ֽ��ϴ�.</p>
					<p class="mT5">SES������ 1968�� Pertamina(�ε��׽þ� ��������ȸ��)�� IIAPCO���� PSC��� ü�� ��, 1971����� ���� ������ �����Ͽ����ϴ�. �ѱ���������� 2002�� 12���� 8.91%(�ۼ�Ʈ)�� ������ ȹ���Ͽ���, ���� ���� ������δ� ��� ȸ���� CNOOC�縦 ����Ͽ�, Pertamina, Talisman, KUFPEC��  �ֽ��ϴ�. �� ������ ��ุ��� 2018������Դϴ�.</p>
					<p class="mT5">2004�� 12���� �ε��׽þ� ���°���(PLN) �� �����ŸŰ���� ü���� ��, 2006�� 5������ ZELDA, BANUWATI ���������� ���� ������ �����Ͽ����ϴ�. �׸��� ���� ������Ʈ�� ���Ͽ� ���� ���差 �� ���꼺 ���븦 ���� ����ϰ� �ֽ��ϴ�.</p>
					
                </div>
				<!--//��-->
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
						<td><strong>���μ� : </strong>����ó ���ƽþƻ�����</td>
						<td><strong>����ó : </strong>031-380-2661</td>
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