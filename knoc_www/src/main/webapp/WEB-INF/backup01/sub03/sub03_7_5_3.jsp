<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","03");
	application.setAttribute("gNavMenuDepth2","07");
	application.setAttribute("gNavMenuDepth3","05");
	application.setAttribute("gNavMenuDepth4","00");
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>     
<%@include file="/include/comheader.jsp"%>


<!--// subtopNavi: start //-->
<%@include file="/include/subtopnavi_new.jsp"%>
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
                   	&gt; <span>��Ưȸ��</span>
                  	&gt; <span class="locanow">�������, ���������ȳ�</span>
				</div>
				<!--// location: end //-->
				
				<!-- [2009-09-24 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
				<h3><img src="/images/business/ttl_sub03_7_5.gif" alt="�������, ���������ȳ�" /></h3>
				</div>
				<!--����-->
				<div class="business2">
					<div>
						<ul class="tab">
						<li><a href="sub03_7_5.jsp"><img src="/images/business/ab_sub03_7_5_1.gif" alt="�����Ϲ� ����ڱݴ���" /></a></li>
						<li><a href="sub03_7_5_1.jsp"><img src="/images/business/ab_sub03_7_5_2.gif" alt="�������� ����ڱݴ���" /></a></li>
<!--
						<li><a href="sub03_7_5_2.jsp"><img src="/images/business/ab_sub03_7_5_3.gif" alt="�ؿܼ��� �������纸��" /></a></li>
-->						
						<li><a href="sub03_7_5_3.jsp"><img src="/images/business/ab_sub03_7_5_4r.gif" alt="�������Լ��ٺ�ȭ ����" /></a></li>
						</ul>
						<h5>�������</h5>
	          				<p>���������� �ߵ��� ������ ���߰� �������Լ� �ٺ�ȭ�� ���� ���޿��� ������ Ȯ���� ���� �ߵ���ۺ� ���� �߰��� �ҿ�� �ٺ�ȭ ��������� ��ۺ� ����</p>
						<h5>������� �� ��������</h5>
	          				<p>������� : �ٺ�ȭ �������(����, ������ī, ����)�� ������ ���� �Ǵ� ���� ����ȸ��, ���� ������ �Ǵ� Ʈ���̵� ȸ��� ������� ü���ϰ� ������ �����ϴ� ����������������</p>
	          				<p>�������� : �������� �߰���ۺ� ������ذ� �߰���ۺ� �����ѵ��� ���Ͽ� �߰���ۺ� �����ѵ�(80%) ���������� ����</p>
						<h5>�������</h5>
	          				<p>���� ���Ժ� ���ݿ��� ����</p>
	          				<div><img src="../images/business/imgin1_sub03_7_5_4.gif" alt="�������Լ� �ٺ�ȭ ������ �������" />
								<p class="blindtext">�ٺ�ȭ ���� ���Ծ��� ��[������û] [������ ���ΰ����� ����]�� �ѱ��������� ��[������û���� ��û] [��������]�� ���İ�����</p>
							</div>
						<h5>������Ȳ</h5>
	          				<p>- �������Լ� �ٺ�ȭ �������� 85�� �ְ� 772����� ������ ���� �����ϴٰ�, 90�� ������������ �ٽ� ���������Ǿ����� 95�� ���� �����ݾ��� ���� ���<br />- �������Լ� �ٺ�ȭ������ �����ϱ� ���� 80�� ��� �ߵ��������� 99% �����̾�����, �������Լ� �ٺ�ȭ���� ���� ���� 85�⵵���� 57% ���ر��� ũ�� ��ҵǾ���, �ֱٿ��� �����Ը� ��ҷ� ���� 2009�� �� 82%�� �ߵ� �������� ���̰� ����.</p>
							<p>�� �ֱ� 5�Ⱓ �������� �� �ߵ������� ����</p>
							 <!--���̺�-->
                            <table class="chart2" summary="�������Լ� �ٺ�ȭ ������ ������ ���������� Ȯ���� �� �ֽ��ϴ�.">
							<caption>�������Լ� �ٺ�ȭ ������ ������ ��������</caption>
							<col width="80px" />
							<col width="31px" />
							<col width="31px" />
							<col width="31px" />
							<col width="31px" />
							<col width="31px" />
							<col width="31px" />
							<col width="31px" />
							<col width="31px" />
							<col width="31px" />
							<col width="31px" />
							<col width="31px" />
							<col width="31px" />
							<thead>
							<tr>
							<th scope="col" class="first">����</th>
							<th scope="col">1999</th>
							<th scope="col">2000</th>
							<th scope="col">2001</th>
							<th scope="col">2002</th>
							<th scope="col">2003</th>
							<th scope="col">2004</th>
							<th scope="col">2005</th>
							<th scope="col">2006</th>
							<th scope="col">2007</th>
							<th scope="col">2008</th>
							<th scope="col">2009</th>
							<th scope="col">2010</th>
							</tr>
							</thead>
							<tbody>
							<tr>
							<th scope="row" class="first">�����ݾ�(�鸸��)</th>
							<td>4,716</td>
							<td>4,530</td>
							<td>4,818</td>
							<td>4,818</td>
							<td>441</td>
							<td>-</td>
							<td>-</td>
							<td>-</td>
							<td>-</td>
							<td>-</td>
							<td>-</td>
							<td>-</td>
							</tr>
							<tr>
							<th scope="row" class="first">��������(��û�� ���,%)</th>
							<td>68.8</td>
							<td>84.7</td>
							<td>66.3</td>
							<td>66.1</td>
							<td>100</td>
							<td>-</td>
							<td>-</td>
							<td>-</td>
							<td>-</td>
							<td>-</td>
							<td>-</td>
							<td>-</td>
							</tr>
							<tr>
							<th scope="row" class="first">�ߵ� ������(%)</th>
							<td>72.3</td>
							<td>76.9</td>
							<td>77.0</td>
							<td>73.5</td>
							<td>79.5</td>
							<td>78.1</td>
							<td>81.8</td>
							<td>82.2</td>
							<td>80.7</td>
							<td>86.3</td>
							<td>84.5</td>
							<td>81.8</td>
							
							</tr>
							</tbody>
							</table>
	            			<!--���̺�-->
							<p>�� 2004�� ���� �������� ����</p>
						<h5>���ñ���</h5>
	          				<p>����ڿ��� ��� �� 2004-53ȣ(2004.05.11) "�������Լ� �ٺ�ȭ�� �����ϱ� ���� ���Ժ� ���ݿ� ���� ���"</p>
	          				<p>�� �ڼ��� ������ �ѱ��������� �濵����ó ��Ưȸ����(��ȭ : 031-380-2408)���� �����Ͻñ� �ٶ��ϴ�.</p>
                    </div>
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
						<td><strong>���μ� : </strong>�ѹ�����ó ��Ưȸ����</td>
						<td><strong>����ó : </strong>031-380-2402</td>
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