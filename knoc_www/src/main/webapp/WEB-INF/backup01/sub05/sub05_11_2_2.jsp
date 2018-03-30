<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>    
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","07");
	application.setAttribute("gNavMenuDepth2","04");
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
				<%@include file="/include/subtop_07.jsp"%>
				<!--// location: start //-->
				<div class="locadv">
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>	
					&gt; <span>���</span>
                    &gt; <span>����������</span>
                    &gt; <span class="locanow">�������̹�</span>
				</div>
				<!--// location: end //-->
				
				<div class="pagetle">
					<h3><img src="/images/child/ttl_sub07_4_2.gif" alt="�������̹�" /></h3>
				</div>
				<!--����-->
				<div id="substar">
                	<ul class="tab">
                    <li><a href="sub07_4_2.jsp"><img src="/images/child/tab_sub07_4_2_1.gif" alt="��ĥ�ϱ�"/></a></li>
					<li><a href="sub07_4_2_1.jsp"><img src="/images/child/tab_sub07_4_2_2.gif" alt="��������"/></a></li>
					<li><a href="sub07_4_2_2.jsp"><img src="/images/child/tab_sub07_4_2_3r.gif" alt="���������"/></a></li>
					</ul>
					<h3 class="pt20"><img src="../images/child/img_sub07_4_2.gif" alt="������ ������ ����� ���� �׵��� ����� Ȯ���غ�����." /></h3>
                    <table width="100%" class="tb_base1" summary="2005�� 3�� 31�� KBS 1TV �ų��� ���г��󿡼� �濵�� �������� Ȯ���� �� �ֽ��ϴ�.">
					<caption>2005�� 3�� 31�� KBS 1TV �ų��� ���г��󿡼� �濵�� ������</caption>
					<colgroup>
					<col width="170px" />
					<col width="530px" />
					</colgroup>
					<tbody>
						<tr>
							<td class="sub1"><img src="../images/child/tab_sub07_4_2_3img.gif" alt="�ų��� ���г��� ���"/></td>
							<td style="vertical-align:top;padding-top:10px;">���� 2005�� 3�� 31�� KBS 1TV [�ų��� ���г���]���� �濵�Ǿ����ϴ�. �� ���������� ���Ǿ�� �ִ� ����������.<br />���� �Ҹ����� �츮���󿡼� ������ ã�� ����� �̾� �ø��� ������� �ֽ��ϴ�.<br />�ѱ��������� ����� ����, ������ ������ ����� ���� �׵��� ����� ���� Ȯ���غ�����.</td>
						</tr>
						</tbody>
					</table>
					<div class="pt20 pl20">
                        <table cellspacing="0" cellpadding="0" border="0" class="movie">
                        <colgroup>
						<col width="680px" />
						</colgroup>
						<tbody>
                            <tr>
                                <td class="white"><img src="../images/common/bullet_red_03.gif" alt="" class="pt03" /> ���ؿ��� �̾� �ø� ���!! �ѱ��������� ����� ���� 1�� (130ȸ 2005-03-31)<a href="mms://211.184.74.8:80/20050331.wmv" title="���ؿ��� �̾� �ø� ���!! �ѱ��������� ����� ���� 1�� 56k ������ ����(��â)"> <img src="../images/child/icon_56.gif" alt="���ؿ��� �̾� �ø� ���!! �ѱ��������� ����� ���� 1�� 56k ������ ����(��â)" style="vertical-align:absmiddle" /></a></td>
                            </tr>
                            <tr>
                                <td><img src="../images/common/bullet_red_03.gif" alt="" class="pt03" /> ���ؿ��� �̾� �ø� ���!! �ѱ��������� ����� ���� 2�� (130ȸ 2005-03-31) <a href="mms://211.184.74.8:80/20050407.wmv" title="���ؿ��� �̾� �ø� ���!! �ѱ��������� ����� ���� 2�� 56k ������ ����(��â)"><img src="../images/child/icon_56.gif" alt="���ؿ��� �̾� �ø� ���!! �ѱ��������� ����� ���� 2�� 56k ������ ����(��â)" style="vertical-align:absmiddle" /></a></td>
                            </tr>
							</tbody>
                        </table>
                    </div>
                </div>
				<!--//��-->
			</div>
		</div>
	</div>
	
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>