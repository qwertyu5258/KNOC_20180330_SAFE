<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","02");
	application.setAttribute("gNavMenuDepth2","06");
	application.setAttribute("gNavMenuDepth3","01");
	application.setAttribute("gNavMenuDepth4","02");
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
					&gt; <span>���Ӱ��ɰ濵</span>
				    &gt; <span>���Ӱ��ɰ濵 �Ϲ�
</span>
					&gt; <span class="locanow">������ǥ �� ����</span>
				</div>
				<!--// location: end //-->
				
				<!--[2009-09-21 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/management/ttl_sub02_6_1_2.gif" alt="������ǥ �� ����" /></h3>
				</div>				
				
				<!--����-->				
				<div class="continuous">				
                	<div>
						<p><img src="../images/management/img_sub02_6_1_2_01.gif" alt="���������� �ڸ��� �����ϴ� ������ ��������ȸ��" /></p>
						<p><img src="../images/management/img_sub02_6_1_2_02.gif" alt="�� ��� �� �����ϰ� �� ���� ����! �ѱ��������簡 �����ϴ�." /></p>
					</div>
					<div class="mT20"><img src="../images/management/img_sub02_6_1_2_03.gif" alt="������ǥ �� ����" />
						<div class="blindtext">
							<table summary="�ѱ��������� ���Ӱ��ɰ濵 ������ǥ �� ������ Ȯ���� �� �ֽ��ϴ�.">
							
							<caption>�ѱ��������� ���Ӱ��ɰ濵 ������ǥ �� ����</caption>
								<col/>
								<col width="27%"/>
								<col width="27%"/>
								<col width="27%"/>
								<thead>
								<tr>
								<th scope="col"></th>
								<th scope="col">��ȸ</th>
								<th scope="col">����</th>
								<th scope="col">ȯ��</th>
								</tr>
								</thead>
								<tbody>
								<tr>
								<th scope="row" rowspan="2">������ǥ</th>
								<td>Caring(C)</td>
								<td>Dynamic(D)</td>
								<td>Proactive(P)</td>
								</tr>
								<tr>
								<td colspan="3">KNOC, Caring, Dynamic &amp; Proactive Energy Leader (CDP)</td>
								</tr>
								<tr>
								<th scope="row">��������</th>
								<td>������ ��Ʈ�ʷμ� ���ذ����ڿ� �Բ� ��ȸ������ ����</td>
								<td>�������� �濵Ȱ���� ���� ������ ��������� ����</td>
								<td>ȯ�� ����ũ ������ ���� ģȯ�� ���� ���</td>
								</tr>
								<tr>
								<th scope="row">����ü��</th>
								<td>- ���ذ����� Ŀ�´����̼�<br/>
								-�����η¾缺<br/>
								-����ȸ�� ���� ��ȭ<br/>
								- ���� �� ����濵<br/>
								- ��ȸ���� Ȱ��ȭ</td>
								<td>- ���强, ���ͼ�, ���ͼ�<br/>
								- �������� ����<br/>
								- ���ͻ�� �ش�ȭ<br/>
								- ���� �� â���濵 Ȱ��</td>
								<td>- �������� ��ȭ<br/>
								- HSEQ �ý��� ������ ����<br/>
								- ȯ�漺�� ����<br/>
								- ���ĺ�ȭ������ ���� ���<br/>
								- �۷ι� ȯ�� Ʈ���� ����</td>
								</tr>
								</tbody>
							</table>
						</div>
					</div>

                </div>
				<!--//��-->
			</div>
			
			<div class="new_officer">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
					<tbody>
						<tr>
							<td class="write_day"><strong>�ۼ������� : </strong>2016-04-05</td>
							<td class="contact_team"><strong>���μ� : </strong>��ȹ����ó ��ȹ������</td>
							<td class="contact_user"><strong>����� : </strong>Ȳ�ڿ�</td>
							<td class="contact_tel"><strong>����ó : </strong>052-216-2208</td>
						</tr>
					</tbody>
				</table>
			</div>
			
		</div>
	</div>
	
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //--><!--// footer: end //-->
</div>
</body>
</html>