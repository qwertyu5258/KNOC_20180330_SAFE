<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "kr.co.knoc.sague.*"%>
<%@ page import = "kr.co.knoc.util.*"%>
<%@ page import = "java.util.*"%>
<%@ taglib uri="/WEB-INF/tlds/sitetaglib.tld" prefix="stl" %>
<%@ taglib uri="/WEB-INF/tlds/sitectrltaglib.tld" prefix="sctrl" %>
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>

<jsp:useBean id="pp" class="kr.co.knoc.tags.pager.PageProperty" scope="request"/>
<jsp:useBean id="etcutil" scope="page" class="kr.co.knoc.util.EtcUtil" />
<jsp:useBean id="Saguemanager" scope="page" class="kr.co.knoc.sague.SagueManager" />

<% request.setCharacterEncoding("euc-kr"); %>
<%
	String nowpage = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("page")));
	int sague_nid = Integer.parseInt(etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("sague_nid"))));
	
	SagueManager sague = new SagueManager();
	HashMap hash = sague.getSaguebeanView(sague_nid);
	
	hash.get("sagueBean"); 
	hash.get("sagueFileBean");
	
	SagueBean sb = (SagueBean)hash.get("sagueBean");
	SagueFileBean sfb = (SagueFileBean)hash.get("sagueFileBean");
	
	Saguemanager.updateSagueViewsCount(sague_nid);  //��ȸ�� ������Ʈ

%>
    
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","02");
	application.setAttribute("gNavMenuDepth2","02");
	application.setAttribute("gNavMenuDepth3","07");
	application.setAttribute("gNavMenuDepth4","04");
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>        
<%@include file="/include/comheader.jsp"%>
<script type="text/javascript">
function goListPage(p_page){
	location.href= "./sub02_2_1_8_list.jsp?page="+p_page;
}

function goFormPage(p_sague_nid){
	location.href = "./sub02_2_1_8_form.jsp?sague_nid="+p_sague_nid;
}
</script>

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
					&gt; <span>�Ϲ���Ȳ</span>
					&gt; <span class="locanow">��� �������� ����</span>
				</div>
				<!--// location: end //-->
				
				<div class="pagetle">
					<h3><img src="/images/management/ttl_sub02_2_1.gif" alt="�Ϲ���Ȳ" /></h3>
				</div>
				<!--����-->
				<div class="status">
					<h4><img src="/images/management/tit_2_2_1_8.gif" alt="��� �������� ����"/></h4>				
				</div>
				<div class="rules">
				
					<table class="cr_view" summary="��� �������� ���� �󼼺���">
					<caption>��� �������� ���� �󼼺���</caption>
					<colgroup>
						<col width="20%" />
						<col width="auto" />
						<col width="20%" />
						<col width="auto" />
					</colgroup>
					<tbody>
						<tr>
							<th scope="row">1.����� ��Ī</th>
							<td colspan="3"><%=etcutil.checkNull(sb.getSubject()) %></td>
						</tr>
						<tr>
							<th scope="row">2.�������� ����(����)</th>
							<td colspan="3"><%=etcutil.checkNull(sb.getReason()) %></td>
						</tr>
						<tr>
							<th scope="row">3.�ֿ� �������� ����</th>
							<td colspan="3">
								<div class="bbs_contents">
									<%=etcutil.checkNull(sb.getContents()) %>
								</div>
							</td>
						</tr>
						<tr>
							<th scope="row">4. �ǰ�����</th>
							<td colspan="3">
								<%=etcutil.checkNull(sb.getOpinion()) %>
							</td>
						</tr>
						<tr>
							<th scope="row">5.�ǰ� �������<br />(��������)</th>
							<td colspan="3"><%=etcutil.checkNull(sb.getOpinion_term()) %></td>
						</tr>
						<tr>
							<th scope="row">6.�����ǰ�</th>
							<td colspan="3" class="s_bg">&nbsp;</td>
						</tr>
						<tr>
							<th scope="row">- �����μ�</th>
							<td><%=etcutil.checkNull(sb.getDepartment()) %></td>
							<th scope="row">- �����</th>
							<td><%=etcutil.checkNull(sb.getRepresentatives()) %></td>
						</tr>
						<tr>
							<th scope="row">- ��ȭ��ȣ</th>
							<td><%=etcutil.checkNull(sb.getTel_no()) %></td>
							<th scope="row">- �ѽ���ȣ</th>
							<td><%=etcutil.checkNull(sb.getFax_no()) %></td>
						</tr>
						<tr>
							<th scope="row">- �̸���</th>
							<td colspan="3"><%=etcutil.checkNull(sb.getEmail()) %></td>
						</tr>
						<tr>
							<th scope="row">7. ÷������</th>
							<td colspan="3">
								<a href="/SiteControl/neoboard/board_04_filedown.jsp?sague_nid=<%=sb.getSague_nid() %>"><%=etcutil.checkNull(sfb.getOrg_filenm()) %></a>
							</td>
						</tr>
					</tbody>
					</table>
					
					<div class="r_btn">
						<a href="#goListPage" onclick="goListPage('<%=nowpage%>'); return false;"><img src="/images/management/btn_list08.gif" alt="���" /></a>
						<a href="#goFormPage" onclick="goFormPage('<%=sb.getSague_nid()%>'); return false;"><img src="/images/management/btn_rules08.gif" alt="��,����(��)�� ���� �ǰ�����" /></a>
					</div>
				
				</div><!-- rules end -->
	
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
							<td><strong>���μ� : </strong>�濵������ ������</td>
							<td><strong>����ó : </strong>052-216-2272</td>
							<td></td>
						</tr>
					</tbody>
					</table>
				</div><!-- new_officer end -->
				<!-- div class="infoCheck"><%@include file="/include/satisfy_link.jsp"%></div-->	
				<!--//��-->
			</div>
		</div>
	</div>
	
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>