<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","02");
	application.setAttribute("gNavMenuDepth2","01");
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
				<%@include file="/include/subtop_02.jsp"%>
				<!--// location: start //-->
				<div class="locadv">
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>
					&gt; <span>�����濵</span>
                    &gt; <span>�����濵</span>
					&gt; <span class="locanow">HOT_LINE</span>
				</div>
				<!--// location: end //-->
				
				<!-- [2009-09-21 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/management/ttl_sub02_1_5.gif" alt="HOT_LINE" /></h3>
				</div>
				<!--����-->
				<div class="hotLine">
					<div class="hotTxt">
						<p class="blindtext">�����濵 Hot-line�� ������ ������, ����ȸ��(����), ��/������ ����� ���� �������� �������� ������ �Ű��ϰų�, �����濵�� ȿ������ ������ ���Ͽ� �߸��� �����̳� ������ ���� ����(����)������ �����ϴ� �����Դϴ�.</p>
					</div>
					<div class="line01">
						<ul>
						<li>�Ǹ� �Ǵ� ��������� �Ű��ϴ� ���� �����մϴ�. �Ǹ����� �Ű� �ÿ��� ���� ���� ���� ����, ó���ϰ� ȸ���Ͽ� �帮�ڽ��ϴ�. ��������� �Ű� �ÿ��� ������ ���� �� ����,ó���ϰڽ��ϴ�.</li>
						<li>���� ����(����)���׿� ���ؼ��� �Ǹ� �Ǵ� ��������� �����մϴ�. ���� �ÿ��� ������ Ÿ�缺�� �����Ͽ� �ݿ����θ� ȸ���Ͽ� �帮�ڽ��ϴ�.</li>
						<li>�Ű�/�������� �ź��� �������� ������, �Ű�/�������� ���� ��� �����͵� ���� ������ �˷��帳�ϴ�.</li>
						<li>������ ���鿡���� ����/���������� <a href="/sub04/sub04_3.jsp"><span class="ce45108_b">[��/��������]</span></a>��, �ο��� ���õ� ������ <a href="/sub04/sub04_5.jsp"><span class="ce45108_b">[�ο�(������)����]</span></a>�� �̿��Ͽ� �ֽñ� �ٶ��ϴ�. </li>
						</ul>
					</div>
					<div class="line02">
						<ul>
						<li><a href="#guard1"><img src="/images/management/sub02_1_5_ta12_bt1.gif" alt="�Ű��� ��ȣ��ġ ���뺸��" border="0"/></a></li>
						<li><a href="/sub04/sub04_5_list.jsp?page=1&amp;mode=write&amp;bid=MINWON"><img src="/images/management/sub02_1_5_ta12_bt2.gif" alt="�ο�(������)���� �Ű� �����ϱ�" border="0"/></a></li>
						<li><a href="/sub04/sub04_5.jsp"><img src="/images/management/sub02_1_5_ta12_bt3.gif" alt="�ο�(������)���� ó�������ȸ" border="0"/></a></li>
						<li><a href="/member/privacy.jsp"><img src="/images/management/sub02_1_5_ta12_bt4.gif" alt="�������� ��ȣ��å���뺸��" border="0"/></a></li>
						<li><a href="/sub04/sub04_3_list.jsp?page=1&amp;mode=write&amp;bid=SUGEST"><img src="/images/management/sub02_1_5_ta12_bt5.gif" alt="��/�������������ϱ�" border="0"/></a></li>
						<li><a href="/sub04/sub04_3.jsp"><img src="/images/management/sub02_1_5_ta12_bt6.gif" alt="��/�������� ó�������ȸ" border="0"/></a></li>
						</ul>
					</div>
					
					<div style="clear:both ; padding-top:20px ; ">
						<ul style="width:400px ; padding-left:50px; color:#999 ;">
							<li><strong>��ȭ��ȣ</strong> : 052-216-2122</li>
							<li><strong>E-mail</strong> : moonwhan.lee@knoc.co.k</li>
							<li><strong>�� ��</strong> :(��:44538) ��걤���� �߱� ������ 305 �ѱ��������� �����</li>
						</ul>
					</div>
					
					<h4 class="mT20"><a name="guard1"><img src="/images/management/sub02_1_5_ta0.gif" alt="�Ű�������"/></a></h4>
					<ul class="line03">
					<li>���� : ���ͽŰ� ���� �μ�Ƽ�긦 ���������ν� �����Ű� ��ȭ�� Ȱ��ȭ�ϱ� ���� ����</li>
					<li>����ݾ�
					<p>1������� : �Ű���� 20%</p>
					<p>1����ʰ� 5������� : 2õ����+1��� �ʰ� �ݾ��� 10%</p>
					<p>5����ʰ� 20������� : 6õ����+5��� �ʰ� �ݾ��� 5%</p>
					<p>20����ʰ� : 1��3õ5�鸸��+20��� �ʰ� �ݾ��� 3%</p>
					<p>�ݾ׻����� �Ұ����� �� : ����� ������5�ܰ�� �����Ͽ� ���� (�鸸��/5�鸸��/õ����/3õ����/5õ����)</p>
					</li>
					</ul>
					<h4 class="mT30"><a name="guard1"><img src="/images/management/sub02_1_5_ta1.gif" alt="�Ű��� ��ȣ��ġ"/></a></h4>
					<ul class="line03">
					<li>�����ٰ� : ���й����� ��32��(�źк���) �� ��33��(�ź��� ��ȣ)</li>
					<li>�����(�͸�) ����, ó�� �� �źг��� ����</li>
					<li>���й����� ��27��(�Ű����� �����ǹ�)�� ���� �Ű��ڰ� �Ű����� ������� ����� �˾Ұų� �� �� �������� �Ű��� ��쿡�� ��ȣ�� ���� ����</li>
					<li>�źл� ������ �Ǵ� �ٹ����ǻ� ���� ����</li>
					<li>�ܺ����� ��� �Ҽ� ��ü�� ����� �忡�� ������ �źк��� ��ġ ��û</li>
					<li>�Ű�� ���� �ڽ��� ���������� �߰ߵ� ��� ���� �Ǵ� ����</li>
					</ul>
					
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
							<td class="contact_user"><strong>����� : </strong>�̹�ȯ</td>
							<td class="contact_tel"><strong>����ó : </strong>052-216-2122</td>
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