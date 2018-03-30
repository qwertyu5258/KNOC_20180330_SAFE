<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>    
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","02");
	application.setAttribute("gNavMenuDepth2","05");
	application.setAttribute("gNavMenuDepth3","02");
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
				<%@include file="/include/subtop_02.jsp"%>
				<!--// location: start //-->
				<div class="locadv">
					<a href="/" title="�ѱ��������� ������������ �̵�"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>	
					&gt; <span>�����濵</span>
					&gt; <span>Annual Report</span>
					 &gt; <span class="locanow">Financial highlights</span>
				</div>
				<!--// location: end //-->
				
				<!--[2009-09-21 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/management/ttl_sub02_5_3.gif" alt="Financial highlights" /></h3>
				</div>				
				
				<!--����-->				
				<div class="annual">
					<div class="annTit mT0">
						<h4><img src="/images/management/sub02_5_2_ta1_4.gif" alt="����繫����ǥ" border="0"/></h4>
						<p>(���� : �鸸��)</p>
					</div>
					<!--ǥ-->
					<table  class="chart3" summary="�ѱ��������� ����繫����ǥ�� �������� Ȯ���� �� �ֽ��ϴ�.">
					<caption>�ѱ��������� ����繫����ǥ</caption>
					<colgroup>
						<col width="400px" />
						<col width="150px" />
						<col width="150px" />
					</colgroup>
					<thead>
					<tr>
						<th scope="col" class="first">����</th>
						<th scope="col">2011</th>
	     				<th scope="col">2010</th>
					</tr>
					</thead>
					<tbody>
					<tr>
						<td class="first">�����ڻ�</td>
						<td>3,610,186</td>
						<td>2,654,584</td>
					</tr>
					<tr>
						<td class="first">�������ڻ�</td>
						<td>27,957,216</td>
						<td>23,382,129</td>
					</tr>
					<tr>
						<td class="first">�ڻ��Ѱ�</td>
						<td>31,567,402</td>
						<td>26,036,713</td>
					</tr>
					<tr>
						<td class="first">������ä</td>
						<td>5,490,320</td>
						<td>5,160,562</td>
					</tr>
					<tr>
						<td class="first">��������ä</td>
						<td>15,309,637</td>
						<td>10,710,422</td>
					</tr>
					<tr>
						<td class="first">��ä�Ѱ�</td>
						<td>20,799,957</td>
						<td>15,870,984</td>
					</tr>
					<tr>
						<td class="first">�ں��Ѱ�</td>
						<td>10,767,445</td>
						<td>10,165,729</td>
					</tr>
					</tbody>
					</table>
					<!--//ǥ-->

			  <div class="annTit">
						<h4><img src="/images/management/sub02_5_2_ta1_2.gif" alt="�����Ͱ�꼭" border="0"/></h4>
						<p>(���� : �鸸��)</p>
					</div>

					<!--ǥ-->
					<table class="chart3" summary="�ѱ��������� �����Ͱ�꼭�� �������� Ȯ���� �� �ֽ��ϴ�.">
					<caption>�ѱ��������� �����Ͱ�꼭</caption>
					<colgroup>
						<col width="400px" />
						<col width="150px" />
						<col width="150px" />
					</colgroup>
					<thead>
					<tr>
						<th scope="col" class="first">����</th>
						<th scope="col">2011</th>
	     				<th scope="col">2010</th>
					</tr>
					</thead>
					<tbody>
					<tr>
						<td class="first">�����</td>
						<td>8,948,378</td>
						<td>7,167,681</td>
					</tr>
					<tr>
						<td class="first">����������</td>
						<td>1,601,399</td>
						<td>879,205</td>
					</tr>
					<tr>
						<td class="first">��������</td>
						<td>985,045</td>
						<td>577,546</td>
					</tr>
					<tr>
						<td class="first">��������</td>
						<td>(152,752)</td>
						<td>5,848</td>
					</tr>
					<tr>
						<td class="first">����������</td>
						<td>(199,460)</td>
						<td>(152,990)</td>
					</tr>
					</tbody>
					</table>
					<!--//ǥ-->

			  <div class="annTit">
						<h4><img src="/images/management/sub02_5_2_ta1_3.gif" alt="��������帧ǥ" border="0"/></h4>
						<p>(���� : �鸸��)</p>
					</div>

					<!--ǥ-->
					<table class="chart3" summary="�ѱ��������� ��������帧ǥ�� �������� Ȯ���� �� �ֽ��ϴ�.">
					<colgroup>
						<col width="400px" />
						<col width="150px" />
						<col width="150px" />
					</colgroup>
					<thead>
					<tr>
						<th scope="col" class="first">����</th>
						<th scope="col">2011</th>
	     				<th scope="col">2010</th>
					</tr>
					</thead>
					<tbody>
					<tr>
						<td class="first">����Ȱ������ ���� �����帧</td>
						<td>2,421,703</td>
						<td>5,738,405</td>
					</tr>
					<tr>
						<td class="first">����Ȱ������ ���� �����帧</td>
						<td>(6,392,178)</td>
						<td>(9,398,752)</td>
					</tr>
					<tr>
						<td class="first">�繫Ȱ������ ���� �����帧</td>
						<td>3,622,868</td>
						<td>4,217,791</td>
					</tr>
					<tr>
						<td class="first">���� �� ���ݼ��ڻ��� ������(����)</td>
						<td>(329,918)</td>
						<td>561,764</td>
					</tr>
					<tr>
						<td class="first">���� ���� �� ���ݼ��ڻ�</td>
						<td>1,522,982</td>
						<td>991,218</td>
					</tr>
					<tr>
						<td class="first">�⸻ ���� �� ���ݼ��ڻ�</td>
						<td>1,223,064</td>
						<td>1,552,982</td>
					</tr>
					</tbody>
					</table>
					<!--//ǥ-->
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
						<td><strong>���μ� : </strong>�񼭽� ȫ����</td>
						<td><strong>����ó : </strong>031-380-2153</td>
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