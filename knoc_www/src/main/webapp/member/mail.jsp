<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","09");
	application.setAttribute("gNavMenuDepth2","07");
	application.setAttribute("gNavMenuDepth3","00");
	application.setAttribute("gNavMenuDepth4","00");
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>    
<%@include file="/include/comheader.jsp"%>

  <!--// subtopNavi: start //-->
  <%@include file="/include/subtopnavi_new.jsp"%>

    <div id="contents">
        <%@include file="/include/sub_leftmenu_new.jsp"%><!--// leftmenu: start //-->
        <div id="rightarea">
            <div id="subcnts">
               <%@include file="/include/subtop_member.jsp"%>
                <!--// location: start //-->
                <div class="locadv">
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>	
                    &gt; <span>��Ÿ����</span> &gt; <span class="locanow">�̸����ּҹ��ܼ����ź�</span></div>
        <!--// location: end //-->
            
                <div class="pagetle">
                    <h3><img src="/images/member/ttl_mail.gif" alt="�̸����ּҹ��ܼ����ź�" /></h3>
                </div>
                <div class="customer">
					<div class="declaration2">
						<p class="stxt"><strong>�ѱ���������� ������Ÿ��� ��50���� 2��, ��50���� 7�� � �ǰ��Ͽ�, �ѱ��������簡 �, �����ϴ� �������� �󿡼�</strong></p>
						<ol>
						<li>1. �̸��� �ּ� ���� ���α׷��̳� �� ���� ����� ��ġ ���� �̿��Ͽ� �̸��� �ּҸ� �������� �����ϴ� ������ �ź��մϴ�.</li>
						<li>2. �ѱ����������� ���� ���� ���� ������ ���� ������ �Խ��ϴ� ������ �ź��մϴ�.</li>
						<li><p align="right" class="pr15"><strong>[�Խ��� : 2009�� 9�� 18��]</strong></p></li>
						</ol>
					</div>
				</div>
				
				<!-- new_officer -->
				<div class="new_officer">
					<table summary="���μ� �� ����ó ������">
					<caption>���μ� �� ����ó ������</caption>
					<tbody>
					<tr>
						<td class="write_day"><strong>�ۼ������� : </strong>2016-04-05</td>
						<td class="contact_team"><strong>���μ� : </strong>����ȯ��ó ����������</td>
						<td class="contact_user"><strong>����� : </strong>�̽ű�</td>
						<td class="contact_tel"><strong>����ó : </strong>052-216-2963</td>
					</tr>
					</tbody>
					</table>
				</div>
				<!-- new_officer -->

            </div>
      </div>
    
      </div>
	
		<!--// footer: start //-->
		<%@include file="/include/comfooter.jsp"%>
		<!--// footer: end //-->
	</div>
	
</body>
</html>