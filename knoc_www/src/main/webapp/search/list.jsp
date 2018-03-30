<%@page import="java.nio.charset.StandardCharsets"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="kr.co.knoc.util.*"%>
<%@ page import="kr.co.knoc.search.*"%>
<%@ page import="com.neoboard.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.net.URLEncoder"%>
<%@ page import="java.net.URLDecoder"%>

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
<%
	String key_word = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("search")), "8859_1");

	if (key_word == null) {
		System.out.println("Ű���� ��1");

	}
System.out.println("key_word1::::"+key_word);
/* 	if (key_word.equals("")) {
		System.out.println("Ű���� ��2: ���ڴ���");
		String key_word1;
		key_word1 = URLDecoder.decode(request.getParameter("search1"), "UTF-8");
		System.out.println("keyword:" + key_word1);
		key_word1 = URLDecoder.decode(request.getParameter("search1"), StandardCharsets.UTF_8.toString());
		System.out.println(key_word1);

	}
	 */
	
	String nowpage = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("page")));
	String boardname = null;

	System.out.println("============list.jsp : 1===============");
	System.out.println("Log:" + "key_word:" + key_word);
	System.out.println("Log:" + "nowpage:" + nowpage);
	
	System.out.println("===========================");

	if (request.getParameter("key_word") != null) {
		
		key_word = request.getParameter("key_word");
	}
	if (request.getParameter("boardname") != null) {
		boardname = request.getParameter("boardname");
		System.out.println("Log:" + "boardname2:" + boardname);
	}
	if (request.getParameter("key_word") != null) {
	//	boardname = request.getParameter("key_word");
	}
	
	pp.setPage(nowpage);

	pp.setPageSize("10");
	pp.setPageUrl("");

	System.out.println("=============2==============");
	System.out.println("Log:" + "key_word:" + key_word);
	System.out.println("Log:" + "boardname:" + boardname);
	System.out.println("Log:" + "pp.getPage:" + pp.getPage());
	System.out.println("Log:" + "pp.getpageSize:" + pp.getPageSize());
	System.out.println("Log:" + "pp.getpageurl:" + pp.getPageUrl());
	System.out.println("Log:" + "pp.getNpage:" + pp.getNPage());
	System.out.println("Log:" + "pp.getNpageSize:" + pp.getNPageSize());
	System.out.println("===========================");

	ArrayList al = SearchMa.getSearchList(key_word, pp.getNPage(), pp.getNPageSize());
	if (request.getParameter("boardname") != null) {
		System.out.println(key_word +"::::" + pp.getNPage()+"::::" + pp.getNPageSize()+"::::" + boardname);
		al = SearchMa.getSearchList2(key_word, pp.getNPage(), pp.getNPageSize(), boardname);
	}

	//count �� ��ȣ��� ����!!!!!!!!!

	int count = SearchMa.getSearchListCount(key_word);

	System.out.println("=============3==============");
	System.out.println("Log:" + "count:" + count);

	if (count == 0) {
		count = SearchMa.getSearchListCount2(key_word);
	}

	int seq = count - (pp.getNPage() - 1) * pp.getNPageSize();

	System.out.println(count);
	System.out.println(seq);
	//count �� ������

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

			<table
				style="width: 100%; height: 80px; boarder-spacing: 0px; margin-top: 15px">
				<tr>
					<th style="height: 40px"><button onclick="searchboard('��ü')"
					
							style="background: url(/images/search/btn_2.png); width: 99%; height: 99%; margin-bottom: 2px">
							<p style="text-size: 100%; font-size: 15px">
								�� ü(<%=count%>)
							</p>
						</button></th>
					<th style="height: 40px"><button onclick="searchboard('Ȱ������')"
							style="background: url(/images/search/btn_2.png); width: 99%; height: 99%; margin-bottom: 2px">
							<p style="text-size: 100%; font-size: 15px;">Ȱ������</p>
						</button></th>
					<th style="height: 40px"><button onclick="searchboard('���䴺��')"
							style="background: url(/images/search/btn_2.png); width: 99%; height: 99%; margin-bottom: 2px">
							<p style="text-size: 100%; font-size: 15px">���䴺��</p>
						</button></th>
					<th style="height: 40px"><button
							onclick="searchboard('�ӿ���������')"
							style="background: url(/images/search/btn_2.png); width: 99%; height: 99%; margin-bottom: 2px">
							<p style="text-size: 100%; font-size: 15px">�ӿ���������</p>
						</button></th>
					<th style="height: 40px"><button onclick="searchboard('�����ڷ�')"
							style="background: url(/images/search/btn_2.png); width: 99%; height: 99%; margin-bottom: 2px">
							<p style="text-size: 100%; font-size: 15px">�����ڷ�</p>
						</button></th>

				</tr>
				<tr style="height: 40px">
					<th style="height: 40px"><button
							onclick="searchboard('������')"
							style="background: url(/images/search/btn_2.png); width: 99%; height: 99%;">
							<p style="text-size: 100%; font-size: 15px">������</p>
						</button></th>
					<th style="height: 40px"><button onclick="aaa()"
							style="background: url(/images/search/btn_2.png); width: 99%; height: 99%;">
							<p style="text-size: 100%; font-size: 15px">.</p>
						</button></th>
					<th style="height: 40px"><button onclick="aaa()"
							style="background: url(/images/search/btn_2.png); width: 99%; height: 99%;">
							<p style="text-size: 100%; font-size: 15px">.</p>
						</button></th>
					<th style="height: 40px"><button onclick="aaa()"
							style="background: url(/images/search/btn_2.png); width: 99%; height: 99%;">
							<p style="text-size: 100%; font-size: 15px">.</p>
						</button></th>
					<th style="height: 40px"><button onclick="aaa()"
							style="background: url(/images/search/btn_2.png); width: 99%; height: 99%;">
							<p style="text-size: 100%; font-size: 15px">.</p>
						</button></th>
				</tr>


			</table>


			<div id="boardsec">
				<p align="center" class="pb20">
					Ȩ���������� <span class="cDD0902_b">��<%=key_word%>'
					</span>�� ����
					<%=count%>���� ������ ã�ҽ��ϴ� 1
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
						<form name="bForm" method="post" action="list.jsp">
							<legend>�˻� ���</legend>
							<input type=hidden name=page value="<%=nowpage%>"> <input
								type="hidden" name="no" value="">
							<tr>
								<th scope="row">��ȣ</th>
								<th scope="row">����</th>
								<th scope="row">�Խ��Ǹ�</th>
								<th scope="row">�����<%=pp.getNPage()%></th>
							</tr>
					</thead>
					<%
						if (count == 0) {
					%>
					<tbody>
						<tr>
							<td align=center colspan=4>��ϵ� �ڷᰡ �����ϴ�.</td>
						</tr>
						<%
							} else {
								Iterator iter = al.iterator();
								while (iter.hasNext()) {
									SearchBean sb = (SearchBean) iter.next();
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
				<div class="paging pt10 ctxt">
				
						<%
						String encodeResult = URLEncoder.encode(key_word, StandardCharsets.UTF_8.toString());

						System.out.println("encodeResult" + encodeResult);
					%>
				
					<a href="<%=prevBlock.getAnchor("&search=" + encodeResult)%>"><img
						src="/images/board/preview.gif" alt="ó��" /></a> <a
						href="<%=prevPage.getAnchor("&search=" + encodeResult)%>"><img
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
						
				<%-- 			<%
						String encodeResult = URLEncoder.encode(key_word, StandardCharsets.UTF_8.toString());

						System.out.println("encodeResult" + encodeResult);
					%> --%>
						
						<a href="<%=p.getAnchor("&search=" + encodeResult)%>"><%=p.getPage()%></a>
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
					<%-- 			<a href="<%=nextPage.getAnchor("&search=" + key_word)%>"><img
						src="/images/board/nnext.gif" alt="����" /></a> <a
						href="<%=nextBlock.getAnchor("&search=" + key_word)%>"><img
						src="/images/board/next.gif" alt="��" /></a> --%>

				

					<!-- ������ ���İ��� ���� search1 �̾ƴ϶� search ���� -->
		<%-- 			<%
						String encodeResult = URLEncoder.encode(key_word, StandardCharsets.UTF_8.toString());
						System.out.println("encodeResult" + encodeResult);
					%>
 --%>
					<a href="<%=nextPage.getAnchor("&search=" + encodeResult)%>"><img
						src="/images/board/nnext.gif" alt="����" /></a> <a
						href="<%=nextBlock.getAnchor("&search=" + encodeResult)%>"><img
						src="/images/board/next.gif" alt="��" /></a>
				</div>



				<!--// paging: end //-->
			</div>
		</div>
	</div>
</div>

<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->
<!--// footer: end //-->
</div>
</body>

<script>
	function aaa(boardname) {
alert('a');
		window.location.href="http://localhost:8080/search/list.jsp?boardname="+encodeURI(boardname)+"&key_word="+encodeURI("<%=key_word%>");

	}
	
	function searchboard(boardname) {

		window.location.href="http://localhost:8080/search/list.jsp?boardname="+encodeURI(boardname)+"&key_word="+encodeURI("<%=key_word%>");
	}

	function search2() {

		alert('aaa');
	}
</script>
</html>