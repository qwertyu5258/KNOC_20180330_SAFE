<%@page import="com.neoboard.data.AttachFile"%>
<%@page import="kr.co.knoc.gov_public.GovPublicBean"%>
<%@page import="kr.co.knoc.util.EtcUtil"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/sitetaglib.tld" prefix="stl" %>
<%@ taglib uri="/WEB-INF/tlds/sitectrltaglib.tld" prefix="sctrl" %>

<jsp:useBean id="pp" class="kr.co.knoc.tags.pager.PageProperty" scope="request"/>
<jsp:useBean id="etcutil" scope="page" class="kr.co.knoc.util.EtcUtil" />
<jsp:useBean id="govPublicManager" scope="page" class="kr.co.knoc.gov_public.GovPublicManager" />
<% request.setCharacterEncoding("euc-kr"); %>
<%

	String gpk2 = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(request.getParameter("gpk")));
	int gpk = 0;
	if(gpk2!=null && !gpk2.equals("")){
		gpk = Integer.parseInt(gpk2);
	}
	String sType = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(request.getParameter("sType")));
	String sWord = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(request.getParameter("sWord")),"8859_1");

	String gov_public_kind_nm = "";
	String[] gov_public_kind_nm_arr = {
			"���հ˻�","ȸ����Ȳ", "HSEQ", "����", "�����ȹ",
			"������", "��ȸ����", "�λ纹��", "�����繫",
			"�������", "�������", "��������", "��������",
			"�˶�������", "��������", "ȫ��"};

	String[] gNavMenuDepth4Arr = {
			"00", "01", "02", "03", "04",
			"05", "06", "07", "08",
			"09", "10", "11", "12",
			"13", "14", "15"
	};

	String[] imageArr = {
			"/images/information/ttl_sub05_3_total.gif", //���հ˻�
			"/images/information/ttl_sub04_9_2_1.gif", //ȸ����Ȳ
			"/images/information/ttl_sub04_9_2_2.gif", //HSEQ
			"/images/information/ttl_sub04_9_2_3.gif", //����
			"/images/information/ttl_sub04_9_2_4.gif", //�����ȹ
			"/images/information/ttl_sub04_9_2_5.gif", //������
			"/images/information/ttl_sub04_9_2_6.gif", //��ȸ����
			"/images/information/ttl_sub04_9_2_7.gif", //�λ纹��
			"/images/information/ttl_sub04_9_2_8.gif", //�����繫
			"/images/information/ttl_sub04_9_2_9.gif", //�������
			"/images/information/ttl_sub04_9_2_10.gif", //�������
			"/images/information/ttl_sub04_9_2_11.gif", //��������
			"/images/information/ttl_sub04_9_2_12.gif", //��������
			"/images/information/ttl_sub04_9_2_13.gif", //�˶�������
			"/images/information/ttl_sub04_9_2_14.gif", //��������
			"/images/information/ttl_sub04_9_2_15.gif" //ȫ��
	};

	if(gpk > 0){
		/**
		* 2016. 03. 21 / MYM
		* ���Ⱦ��� ��ġ
		*/
		if(gpk < 0) { gpk = 0; }
		gov_public_kind_nm = gov_public_kind_nm_arr[gpk];
	}

	else{
		gov_public_kind_nm = "���հ˻�";
	}

	String nowpage = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(request.getParameter("page")));

	pp.setPage(nowpage);
	pp.setPageSize("10");
	pp.setPageUrl("");

	ArrayList<HashMap<String, String>> govPublicList = govPublicManager.getGovPublicKindList2(gpk, pp.getNPage(), pp.getNPageSize(), sType, sWord);

	int count = govPublicManager.getGovPublicKindListCount2(gpk,sType,sWord);
	int seq = count-(pp.getNPage()-1) * pp.getNPageSize();
	/**
	* 2016. 03. 21 / MYM
	* ���Ⱦ��� ��ġ
	*/
	if(seq < 0) { seq = 1; }
%>

<%
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","05");
	application.setAttribute("gNavMenuDepth2","13");
	application.setAttribute("gNavMenuDepth3","11");

	/**
	* 2016. 03. 21 / MYM
	* ���Ⱦ��� ��ġ
	*/
	if(gpk < 0) { gpk = 0; }
	application.setAttribute("gNavMenuDepth4",gNavMenuDepth4Arr[gpk]);
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>

<%!
	private String getFileImage(HttpServletRequest request, String fileName){

		String imgFileNm = fileName.toLowerCase();
		String mime = "";
		String imgSrc = "";

		if(imgFileNm.lastIndexOf(".") > -1)
	    	mime = imgFileNm.substring(imgFileNm.lastIndexOf(".")+1);
	    else
	    	mime = "unknown";

	    if(AttachFile.containsMime(mime))
	    	imgSrc = "/neoboard/skin/skin01/images/mime_" + mime + ".gif";
	    else
	    	imgSrc = "/neoboard/skin/skin01/images/mime_unknown.gif";

		return imgSrc;
	}
%>

<%@include file="/include/comheader.jsp"%>
<%@include file="/include/subtopnavi_new.jsp"%><!--// subtopNavi: start //-->

	<div id="contents">
		<!--// leftmenu: start //-->
        <%@include file="/include/sub_leftmenu_new.jsp"%>
        <!--// leftmenu: end //-->
		<div id="rightarea">
			<div id="subcnts">
				<%@include file="/include/subtop_05.jsp"%>

				<!--// location: start //-->
				<div class="locadv">
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>
					&gt; <span>��������</span>
					&gt; <span>����������ǥ</span>
					&gt; <span>ī�װ��� ����</span>
					&gt; <span class="locanow"><%=gov_public_kind_nm %></span>
				</div>
				<!--// location: end //-->

				<div class="pagetle">
					<h3 class="tleimg"><img src="<%=imageArr[gpk] %>" alt="<%=gov_public_kind_nm_arr[gpk] %>" /></h3>
				</div>
				<form name="searchform" action="./sub05_12_list.jsp" method="post">
				<input name="ses" type="hidden" value="USERSESSION">
				<input name="mode" type="hidden" value="list">
					<!--// searchbox: end //-->
					<div id="schsec" class="st_box1">
						<fieldset class="schset">
							<legend>Search Box</legend>

							<select name="sType" title="��ϰ˻�����" id="sType">
								<option value="TITLE"<%if(sType.equals("TITLE")){%> selected="selected"<%}%>>����</option>
								<option value="DEPARTMENT"<%if(sType.equals("DEPARTMENT")){%> selected="selected"<%}%>">�μ���</option>
							</select>

							<label class="nlabel" for="schinput">��ϰ˻�</label>
							<input name="sWord" class="input" id="schinput" type="text" value="<%=sWord%>">

							<div class="btndv"><input style="width: 33px; height: 19px;" type="image" alt="�˻�" src="/neoboard/skin/skin01/images/btn_search.gif"></div>
					  </fieldset>
					</div>
					<!--// searchbox: end //-->
				</form>

				<% if(!sWord.equals("")) { %>
				<!-- �˻� ����� -->
				<p class="results_area">�˻��� <strong>'<%=sWord%>'</strong> �� ���� <%=count%>���� ������ ã�ҽ��ϴ�.</p>
				<!-- //�˻� ����� -->
				<% } %>


				<!-- list -->
				<div id="boardsec">
					<table cellspacing="0" cellpadding="0" class="listtype" summary="">
						<caption></caption>
						<colgroup>
							<col width="10%" />
							<% if(gpk==0) { %>
							<col width="18%" />
							<% } %>
							<col width="*" />
							<col width="10%" />
							<col width="10%" />
							<col width="10%" />
							<col width="9%" />
							<col width="10%" />
						</colgroup>
						<thead>
							<tr>
								<th scope="col">��ȣ</th>
								<% if(gpk==0) { %>
								<th scope="col">�Խ��Ǹ�</th>
								<% } %>
								<th scope="col">����</th>
								<th scope="col">���μ�</th>
								<th scope="col">��ǥ�ñ�</th>
								<th scope="col">�����ֱ�</th>
								<th scope="col">��ǥ��ü</th>
							</tr>
						</thead>
						<tbody>
						<%if(count == 0){ %>
							<tr>
								<td colspan="7">��ϵ� ������ �����ϴ�.</td>
							</tr>
						<%
							}else{
								Iterator<HashMap<String, String>> iter = govPublicList.iterator();
								while(iter.hasNext()){
									HashMap<String, String> hashMap = iter.next();
						%>
							<tr>
								<td><%=seq %></td>
								<% if(gpk==0) { %>
								<td><%=gov_public_kind_nm_arr[Integer.parseInt(EtcUtil.checkNull(hashMap.get("GOV_PUBLIC_KIND")))] %></td>
								<% } %>
								<td class="subj">
									<%if(!"".equals(EtcUtil.checkNull(hashMap.get("PUBLIC_LINK")))){ %>
									<a href="<%=EtcUtil.checkNull(hashMap.get("PUBLIC_LINK")) %>" target="_blank">
										<%=EtcUtil.checkNull(hashMap.get("TITLE"))%>
									</a>
									<%} else {
									if(gpk==0){
										gpk2 = EtcUtil.checkNull(hashMap.get("GOV_PUBLIC_KIND"));
									}

									%>
									<a href="/sub05/sub05_12_filelist.jsp?gpk=<%=gpk2%>&page=<%=nowpage %>&gov_public_nid=<%=EtcUtil.checkNull(hashMap.get("GOV_PUBLIC_NID")) %>&sType=<%=sType%>&sWord=<%=sWord %>">
										<%=EtcUtil.checkNull(hashMap.get("TITLE")) %>
									</a>
									<%} %>
								</td>
								<td><%=EtcUtil.checkNull(hashMap.get("DEPARTMENT")) %></td>
								<td><%=EtcUtil.checkNull(hashMap.get("PUBLIC_TIME")) %></td>
								<td><%=EtcUtil.checkNull(hashMap.get("PUBLIC_CYCLE")) %></td>
								<td><%if(!"".equals(EtcUtil.checkNull(hashMap.get("PUBLIC_LINK")))){ %>
								<a href="<%=EtcUtil.checkNull(hashMap.get("PUBLIC_LINK")) %>" target="_blank"><img src="/images/information/btn_shift.gif" alt="�̵�" /></a>
									<%} else {}%>
								</td>
							</tr>
						<%
									seq--;
								}
							}
						%>
						</tbody>
					</table>
				</div>
				<div class="boardbtm" style="text-align: center; padding-top:10px;">
					<!--// paging: start //-->
					<stl:pager pageName="pp" prevPage="prevPage" nextPage="nextPage" prevBlock="prevBlock" nextBlock="nextBlock" pages="pages" firstPage="firstPage" lastPage="lastPage" blockSize="10" totalCount="<%=count %>" />
					<div class="paging">
						<a href="<%=prevBlock.getAnchor("&gpk="+gpk+"&sType="+sType+"&sWord="+sWord)%>"><img src="/images/board/preview.gif" alt="ó��" /></a>
						<a href="<%=prevPage.getAnchor("&gpk="+gpk+"&sType="+sType+"&sWord="+sWord)%>"><img src="/images/board/ppreview.gif" alt="����" /></a>
						<%int ll = 1; %>
						<stl:loop name="pages" loopId="p" className="kr.co.knoc.tags.pager.PageAnchor">
						<%if(p.getPage() == pp.getNPage()){ %>
							<span class="pagenow"><%=p.getPage()%></span> <%if(ll != pages.size()){%> <%} %>
						<%}else{%>
							<a href="<%=p.getAnchor("&gpk="+gpk+"&sType="+sType+"&sWord="+sWord)%>"><%=p.getPage()%></a> <% if (ll != pages.size()) {%> <%} %>
						<%} %>
						<% ll++; %>
						</stl:loop>
						<a href="<%=nextPage.getAnchor("&gpk="+gpk+"&sType="+sType+"&sWord="+sWord)%>"><img src="/images/board/nnext.gif" alt="����" /></a>
						<a href="<%=nextBlock.getAnchor("&gpk="+gpk+"&sType="+sType+"&sWord="+sWord)%>"><img src="/images/board/next.gif" alt="��" /></a>
					</div><!--// paging: end //-->
				</div>

				<div class="new_officer">
					<table summary="���μ� �� ����ó ������">
					<caption>���μ� �� ����ó ������</caption>
					<tbody>
						<tr>
							<td class="write_day"></td>
							<td class="contact_team"><strong>���μ� : </strong>�ѹ�����ó ���������</td>
							<td class="contact_user"><strong>����� : </strong>������</td>
							<td class="contact_tel"><strong>����ó : </strong>052-216-2607</td>
						</tr>
					</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>

</body>
</html>