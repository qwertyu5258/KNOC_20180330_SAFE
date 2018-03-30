<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="kr.co.knoc.util.*"%>
<%@ page import="kr.co.knoc.search.*"%>
<%@ page import="com.neoboard.*"%>
<%@ page import="java.util.*"%>
<%@ taglib uri="/WEB-INF/tlds/sitetaglib.tld" prefix="stl"%>
<jsp:useBean id="pp" class="kr.co.knoc.tags.pager.PageProperty"
	scope="request" />
<jsp:useBean id="etcutil" scope="page" class="kr.co.knoc.util.EtcUtil" />
<jsp:useBean id="SearchMa" scope="page"
	class="kr.co.knoc.search.SearchManager" />
<jsp:useBean id="PropertyMa" scope="page"
	class="com.neoboard.PropertyManager" />
<%
	request.setCharacterEncoding("euc-kr");
%>
<%
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1", "10");
	application.setAttribute("gNavMenuDepth2", "01");
	application.setAttribute("gNavMenuDepth3", "00");
	application.setAttribute("gNavMenuDepth4", "00");
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<%
	String key_word = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("search")), "8859_1");
	String nowpage = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("page")));

	pp.setPage(nowpage);
	pp.setPageSize("10");
	pp.setPageUrl("");
	ArrayList al = SearchMa.getSearchList(key_word, pp.getNPage(), pp.getNPageSize());

	int count = SearchMa.getSearchListCount(key_word);
	int seq = count - (pp.getNPage() - 1) * pp.getNPageSize();
	/**
	 * 2016.3.21 JSM
	 * ���Ⱦ��� ��ġ
	 */
	if (seq < 0) {
		seq = 1;
	}
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
			<%@include file="/include/subtop_search.jsp"%>

			<!--// location: start //-->
			<div class="locadv">
				<a href="/" title="�ѱ��������� ������������ �̵�"><img
					src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a> &gt;
				<span class="locanow">����Ʈ�˻�</span>
			</div>
			<!--// location: end //-->

			<div class="pagetle">
				<h3>
					<img src="/images/search/ttl_search.gif" alt="����Ʈ �˻�" />
				</h3>
			</div>
		
		
		
			<div id="boardsec">
				<p align="center" class="pb20">
					Ȩ���������� <span class="cDD0902_b">��<%=key_word%>'
					</span>�� ����
					<%=count%>���� ������ ã�ҽ��ϴ�
				</p>
							
				<table cellspacing="0" cellpadding="0" class="listtype"
					summary="�ش�Խ����� �����ڷ��� ����� �����ݴϴ�">
					<caption>�ش�Խ��� ���</caption>
					<colgroup>
						<col width="65px" />
						<col width="410px" />
						<col width="160px" />
						<col width="85px" />
					</colgroup>
					<thead>
						<form name="bForm" method="post" action="list2.jsp">
							<legend>�˻� ���</legend>
							<input type=hidden name=page value="<%=nowpage%>" /> <input
								type="hidden" name="no" value="" /> <select id="select1"
								name="select1" onchange="itemChange()">
								<option>--��ü--</option>
								<option>Ȱ������</option>
								<option>���䴺��</option>
							</select>
						
						

						
							<input type="submit" value="Ȯ��" class="btn btn-default">


							<tr>
								<th scope="row">��ȣ</th>
								<th scope="row">����</th>
								<th scope="row">�Խ��Ǹ�</th>
								<th scope="row">�����<%=pp.getNPage()%></th>
							</tr>
					</thead>
					<tbody>
						<%
							//�߰��� 

							count = 1;
							//

							if (count == 0) {
						%>
						<tr>
							<td align=center colspan=4>��ϵ� �ڷᰡ �����ϴ�.</td>
						</tr>


						<%
							} else {

								//�߰���
								if (request.getParameter("select1") != null) {

									String parameter1 = request.getParameter("select1");
									out.println(parameter1);
									String tmp1 = "Ȱ������";

									Boolean tmp2 = parameter1.equals(tmp1);
									out.println(tmp2);
								}

								for (int i = 0; i < 5; i++) {
						%>

						<script>
							var option_select = $("<option>" + '�߰���111'
									+ "</option>");
							$('#select1').append(option_select);
						</script>

						<%
							}
								ArrayList<String[]> list2 = new ArrayList<String[]>();
								list2.add(new String[]{"1", "��", "��ȸ����>Ȱ������", "2017-02-14"});
								list2.add(new String[]{"2", "����", "��ȸ����>Ȱ������", "2017-02-14"});
								list2.add(new String[]{"3", "����", "��ȸ����>Ȱ������", "2017-02-14"});
								list2.add(new String[]{"4", "�ܿ�", "��ȸ����>Ȱ������", "2017-02-14"});

								Iterator iter = al.iterator();

								Iterator iter2 = list2.iterator();

								out.println(iter2.hasNext());

								while (iter.hasNext()) {

									SearchBean sb = (SearchBean) iter.next();

									//�߰���			
									String tmpBoardname = "tmp";
									tmpBoardname = "���䴺��";

									if (PropertyMa.getBoardName(sb.getBoardid()) != null) {
										tmpBoardname = PropertyMa.getBoardName(sb.getBoardid());
									}

									tmpBoardname = "���䴺��";

									if (tmpBoardname.equals(PropertyMa.getBoardName(sb.getBoardid())) == false)
						%>

						<tr>
							<td><%=seq%></td>
							<td class="subj"><a
								href="<%=PropertyMa.getBoardPageUrl(sb.getBoardid())%>?num=<%=sb.getBno()%>&amp;mode=view&amp;grp=<%=sb.getGrp()%>"><%=sb.getSubject()%></a></td>
							<td><%=PropertyMa.getBoardName(sb.getBoardid())%></td>
							<td><%=sb.getRegDateString("yyyy-MM-dd")%></td>
						</tr>
						<%
							seq--;
								}
							}
						%>
					</tbody>
				</table>

				<!--// paging: start //-->
				<stl:pager pageName="pp" prevPage="prevPage" nextPage="nextPage"
					prevBlock="prevBlock" nextBlock="nextBlock" pages="pages"
					firstPage="firstPage" lastPage="lastPage" blockSize="10"
					totalCount="<%=count%>" />
				<div class="pt10 ctxt">
					<a href="<%=prevBlock.getAnchor("&search=" + key_word)%>"><img
						src="/images/board/preview.gif" alt="ó��" /></a> <a
						href="<%=prevPage.getAnchor("&search=" + key_word)%>"><img
						src="/images/board/ppreview.gif" alt="����" /></a>
					<%
						int ll = 1;
					%>
					<stl:loop name="pages" loopId="p"
						className="kr.co.knoc.tags.pager.PageAnchor">
						<%
							if (p.getPage() == pp.getNPage()) {
						%>
						<span class="pagenow"><%=p.getPage()%></span>
						<%
							if (ll != pages.size()) {
						%>
						<%
							}
						%>
						<%
							} else {
						%>
						<a href="<%=p.getAnchor("&search=" + key_word)%>"><%=p.getPage()%></a>
						<%
							if (ll != pages.size()) {
						%>
						<%
							}
						%>
						<%
							}
						%>
						<%
							ll++;
						%>
					</stl:loop>
					<a href="<%=nextPage.getAnchor("&search=" + key_word)%>"><img
						src="/images/board/nnext.gif" alt="����" /></a> <a
						href="<%=nextBlock.getAnchor("&search=" + key_word)%>"><img
						src="/images/board/next.gif" alt="��" /></a>
				</div>
				<!--// paging: end //-->
			</div>
			</form>
		</div>
	</div>
</div>

<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->
<!--// footer: end //-->
</div>

</body>

<script>
	
</script>

</html>