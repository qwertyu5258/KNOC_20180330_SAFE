<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","02");
	application.setAttribute("gNavMenuDepth2","01");
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
					&gt; <span>�����濵</span>
                    &gt; <span>�����濵</span>
					&gt; <span>�����濵�Ұ�</span>
                    &gt; <span class="locanow">�����濵�� ����</span>
				</div>
				<!--// location: end //-->
				
				<div class="pagetle">
					<h3><img src="/images/management/ttl_sub02_1_1_2.gif" alt="�����濵�� ����" /></h3>
				</div>
				<!--����-->
				<div id="substar">
                	<dl>
                    	<dt><img src="/images/management/sub02_1_1_2_1_ta1.gif" alt="�����濵�̶�?" /></dt>
						<dd class="bo30"><span>�����濵�̶� ����� �������̰� ��ü���� �ڼ��� ��������� �ؼ��ϰ�, ���ư� ����� ������, ���� å�� ������ ���� ��ȸ�� å���� ������ ����� �ǹ���
						 �����ϴ� ���� ���ϸ�, ����̳� ������ �����߱� Ȱ���� ������� ���� ������ �߻��ϴ� ��� ������ ������ �켱 ����ϴ� ���� �ǹ��ϴ� ���Դϴ�. </span></dd>
                    </dl>
					<dl>
                    	<dt><img src="/images/management/sub02_1_1_2_2_ta1.gif" alt="�����濵�� �ʿ伺" /></dt>
						<dd><span>�ǽ��� ������� �˷��� �Դ� �̱� ������ ��� ���л簡 ȸ������������ �Ϸ� ��ħ�� �������� ���°� �߹��� ���� ����� �ع������� ���� �� �ִ�
						 ����� �������� �����ǰ� ������, �����濵�� �۷ι� ���Ĵ���� �λ��ϰ� �ֽ��ϴ�. <br /><br />
						 ���������δ� ��ȯ����, SK �۷ι����� ���� ��������� ���� �ν��� ��ȭ�Ǿ�����, ������ ��ȭ�� ���� ���� ������ ��ȭ�ǰ� �ֽ��ϴ�. 
						 ���� ����� ��ȸ�� å�� ������ ����� �翬�� �ǹ��� �޾Ƶ鿩���� ��ȸ�� �����Ⱑ �����ǰ� �ֽ��ϴ�. 
						 �̷��� ��ȭ�� �߸��� �����濵�� ������ ����� ū ������ �����ϰ� �ֽ��ϴ�. <br /><br />
						 �ѱ��������絵 �����濵�� �ϳ��� �濵������ �ƴ϶� ����� ������ �濵Ȱ���� �ǰ��ϰ� ưư�ϰ� �ϴ� �濵�̳��̸� ������ġ��� �ų��� ������ 
						 �� �������� �����濵�� ���� ��õ�ϰ� �ֽ��ϴ�. <br /><br />
						 ���� ������ �濵��Ģ�� �ŷ��� ����� �������� ���ϴ� ����� ��Ƴ��� �� ������, ������ ��ġ�� ����� 
						 ����� ���߾�߸� ��ȭ�� �濵ȯ�濡�� ��Ƴ��� �� �ְ� �Ǿ����ϴ�. <br /><br />
						 ������ �����濵�� �Ͻ����� ���࿡ ��ġ�� ���� �ƴ϶� ������� Ʈ����� �ڸ��ű��� ���Դϴ�. </span></dd>
                    </dl>
                 </div>
				<!--//��-->
			</div>
			
			<div class="new_officer">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
					<tbody>
						<tr>
							<td class="write_day"><strong>�ۼ������� : </strong>2016-04-05</td>
							<td class="contact_team"><strong>���μ� : </strong>����� û�Ű濵������</td>
							<td class="contact_user"><strong>����� : </strong>������</td>
							<td class="contact_tel"><strong>����ó : </strong>052-216-2126</td>
						</tr>
					</tbody>
				</table>
			</div>
			
		</div>
	</div>
	
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>