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
				
				<!-- [2009-09-24 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/business/ttl_sub03_2_2.gif" alt="����������Ȳ��" /></h3>
				</div>
				<!--����-->
				<div class="business2">
                	<%@include file="sub03_2_2_map.jsp"%>
                    
                   <h4><img src="../images/business/img_ttl_sub03_2_2_egizkara.gif" alt="ī���彺ź - Egizkara" /></h4>
                   <div class="mT10"><img src="../images/business/img_sub03_2_2_egizkara.gif" alt="ī���彺ź - Egizkara ������" /></div>
                    
                    <p class="rtxt">[2010�� 7�� ����]</p>
					<table class="chart2" summary="ī���彺ź - Egizkara ���� ������ Ȯ���� �� �ֽ��ϴ�.">
					<caption>ī���彺ź - Egizkara ���� ����</caption>
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
					<td class="first">Ž����</td>
					<td>ī�� Egizkara</td>
					<td>LG���</td>
					<td>'06.12</td>
					<td>50</td>
					<td>25</td>
					<td>LG���</td>
					</tr>
					</tbody>
					</table>
                        
                    <p class="mT20">Egizkara ������ ī���彺ź ���亣(��Ʃ��ũ)�ֿ� ��ġ�� ���󱤱��� 1,727��(���ų�ι���)�� ���� ������ ���ϰ� �ְ� Pre-Caspian basin �����̴�.</p>
					<p class="mT5">ī���彺ź�� ��ġ�� ADA LLP�� ������ �����ϰ� ������, ī���彺ź ���ο� �����ǰ���� �ΰ� Ž�� ���̴�. 2006�� 9���� ADA LLP�� ������ 25%(�ۼ�Ʈ)�� �μ��ϴ� SPA ����� ü���Ͽ���. ���� LG��簡 �ѱ����ҽþ��� ����ڷ� Ž�� �ڷ� ��� �� �ؼ� �۾��� ���������� �����Ͽ� ���߸� �����ϰ� �ִ�.</p>
                </div>
				<!--//��-->
		  </div>
		</div>
	</div>
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>