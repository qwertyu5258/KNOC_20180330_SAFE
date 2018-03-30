<%@page import="kr.co.knoc.gov_public.GovPublicFileBean"%>
<%@page import="java.util.HashMap"%>
<%@page import="kr.co.knoc.sitectrl.mgr.MgrSession"%>
<%@page import="kr.co.knoc.gov_public.GovPublicBean"%>
<%@page import="kr.co.knoc.util.EtcUtil"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/sitetaglib.tld" prefix="stl" %>
<%@ taglib uri="/WEB-INF/tlds/sitectrltaglib.tld" prefix="sctrl" %>

<sctrl:auth loginPage="../login.jsp" sessionName="ADMINSESSION"/>
<jsp:useBean id="pp" class="kr.co.knoc.tags.pager.PageProperty" scope="request"/>
<jsp:useBean id="etcutil" scope="page" class="kr.co.knoc.util.EtcUtil" />
<jsp:useBean id="govPublicManager" scope="page" class="kr.co.knoc.gov_public.GovPublicManager" />

<% request.setCharacterEncoding("euc-kr"); %>

<%
	MgrSession ms = (MgrSession)request.getSession().getAttribute("ADMINSESSION");
	if(ms == null || (ms != null && (Integer.parseInt(ms.getUserLevel()) > 5))){
		out.print("<script>alert('���ٱ����� �����ϴ�.');history.back();</script>");
	}
%>

<%
	String gpk = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(request.getParameter("gpk")));
	String nowpage = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(request.getParameter("page")));
	String gov_public_nid = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(request.getParameter("gov_public_nid")));
	String search_type = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(request.getParameter("search_type")));
	String search_keyword = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(request.getParameter("search_keyword")));
	
	HashMap<String, Object> hashMap = null;
	
	if(gov_public_nid.length()>0){
		hashMap = govPublicManager.getGovPublicView(Integer.parseInt(gov_public_nid));	
	}
	
	String gov_public_kind = "";
	String title = "";
	String department = "";
	String public_time = "";
	String public_cycle = "";
	String public_link = "";
	
	String gov_public_file_seq = "";
	String org_file_nm = "";
	String save_file_nm = "";
	String file_path = "";
	
	if(hashMap != null && !hashMap.isEmpty()){
		GovPublicBean gb = (GovPublicBean)hashMap.get("gb");
 		GovPublicFileBean gfb = (GovPublicFileBean)hashMap.get("gfb");
		
		gov_public_kind = (gb.getGov_public_kind()>0)?Integer.toString(gb.getGov_public_kind()):"";
		title = EtcUtil.checkNull(gb.getTitle());
		department = EtcUtil.checkNull(gb.getDepartment());
		public_time = EtcUtil.checkNull(gb.getPublic_time());
		public_cycle = EtcUtil.checkNull(gb.getPublic_cycle());
		public_link = EtcUtil.checkNull(gb.getPublic_link());
		
		gov_public_file_seq = (gfb.getGov_public_file_seq()>0)?Integer.toString(gfb.getGov_public_file_seq()):"";
		org_file_nm = EtcUtil.checkNull(gfb.getOrg_file_nm());
		save_file_nm = EtcUtil.checkNull(gfb.getSave_file_nm());
		file_path = EtcUtil.checkNull(gfb.getFile_path());
	}
%>

<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
    application.setAttribute("gNavMenuDepth1","05");
	application.setAttribute("gNavMenuDepth2","01");
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>

<jsp:include flush="true" page="../inc/top.jsp" />

<script language="javascript">
	
	function goEditOkFn(){ 
		var fm = document.boardform01;
		if(fm.gov_public_kind.value == ""){
			alert("������ϱ����� �����ϼ���.");
			fm.gov_public_kind.focus();
			return;
		}
		if(fm.title.value == ""){
			alert("��������� �Է��ϼ���.");
			fm.title.focus();
			return;
		}
		if(fm.department.value == ""){
			alert("���μ��� �Է��ϼ���.");
			fm.department.focus();
			return;
		}
		
		if(confirm((fm.gov_public_nid.value == ""?"���":"����")+" �Ͻðڽ��ϱ�?")){
			fm.action="board_05_edit_ok.jsp";
			fm.submit();
		}
	}
	
	function goDeleteFn(){
		var fm = document.boardform01;
		if(confirm("���� �Ͻðڽ��ϱ�?")){
			fm.action="board_05_delete.jsp";
			fm.submit();
		}
	}

	function goCancelFn(){
		var fm = document.boardform01;
		location.href="/SiteControl/neoboard/board_05.jsp?gpk=" + fm.gpk.value + "&page=" + fm.page.value + "&search_type=" + fm.search_type.value + "&search_keyword=" + fm.search_keyword.value;
	}
	
	function fileCtl(p_obj){
		var fm = document.boardform01; 
		if(p_obj.checked){
			fm.gov_public_file.disabled = 0;
		}else{
			fm.gov_public_file.disabled = 1;
		}
	}
	
</script>

<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td width="195" valign="top">  
			<%@include file="left.jsp" %> 
		</td>
		<td valign="top">
			<table width="100%" height="200" border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td valign="top">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td valign="top">
									<table width="100%" height="30"  border="0" cellpadding="0" cellspacing="0">
										<tr>
											<td><img src="../images/admin_left_03.gif" width="11" height="11">�Խ��� ���� &gt; ������������</td>
											<td width="500" align="right" style="padding-right:20;">HOME &gt; <span class="style6">�Խ��� ���� &gt; ������������</span></td>
										</tr>
										<tr>
											<td height="2" colspan="2" bgcolor="EAEAEC"></td>
										</tr>
									</table>

									<div style="clear:both; height:45px;"></div>

									<form method="post" name="boardform01" enctype="multipart/form-data">
										
										<input type="hidden" name="gpk" value="<%=gpk %>" />
										<input type="hidden" name="page" value="<%=nowpage %>" />	
										<input type="hidden" name="gov_public_nid"  value="<%=gov_public_nid %>" />
										
										<input type="hidden" name="search_type" value="<%=search_type %>" />
										<input type="hidden" name="search_keyword" value="<%=search_keyword %>" />
									
										<table width="100%" align="center" border="0" cellpadding="1" cellspacing="1" bgcolor="B5B5B5">
											<tr height="25">
												<td width="120" align="left" bgcolor="#e7e7e7">������ϱ���</td>
												<td colspan="3" align="left" bgcolor="#FFFFFF" style="padding-left:10;">
													<select name="gov_public_kind">
														<option value="" <%="".equals(gov_public_kind)?"selected":"" %>>�����ϼ���.</option>
														<option value="1" <%="1".equals(gov_public_kind)?"selected":"" %>>ȸ����Ȳ</option>
														<option value="2" <%="2".equals(gov_public_kind)?"selected":"" %>>HSEQ</option>
														<option value="3" <%="3".equals(gov_public_kind)?"selected":"" %>>����</option>
														<option value="4" <%="4".equals(gov_public_kind)?"selected":"" %>>�����ȹ</option>
														<option value="5" <%="5".equals(gov_public_kind)?"selected":"" %>>������</option>
														<option value="6" <%="6".equals(gov_public_kind)?"selected":"" %>>��ȸ����</option>
														<option value="7" <%="7".equals(gov_public_kind)?"selected":"" %>>�λ纹��</option>
														<option value="8" <%="8".equals(gov_public_kind)?"selected":"" %>>�����繫</option>
														<option value="9" <%="9".equals(gov_public_kind)?"selected":"" %>>�������</option>
														<option value="10" <%="10".equals(gov_public_kind)?"selected":"" %>>�������</option>
														<option value="11" <%="11".equals(gov_public_kind)?"selected":"" %>>��������</option>
														<option value="12" <%="12".equals(gov_public_kind)?"selected":"" %>>��������</option>
														<option value="13" <%="13".equals(gov_public_kind)?"selected":"" %>>�˶�������</option>
														<option value="14" <%="14".equals(gov_public_kind)?"selected":"" %>>��������</option>
														<option value="15" <%="15".equals(gov_public_kind)?"selected":"" %>>ȫ��</option>
													</select>
												</td>
											</tr>	
											<tr height="25">
												<td align="left" bgcolor="#e7e7e7">�������</td>
											    <td colspan="3" align="left" bgcolor="#FFFFFF" style="padding-left:10;">
											  		<input type="text" name="title" class="input" size="70%" value="<%=title %>" maxlength="200" />
											  	</td>
											</tr>		
											<tr height="25">
											    <td align="left" bgcolor="#e7e7e7">���μ�</td>
											  	<td class="td1" colspan="3" align="left" bgcolor="#FFFFFF" style="padding-left:10;">
											 		<input type="text" name="department" class="input" size="70%" value="<%=department %>" maxlength="200" />
											  	</td>
											</tr>
											<tr height="25">
											  	<td align="left" bgcolor="#e7e7e7">�����ñ�</td>
											  	<td colspan="3" align="left" bgcolor="#FFFFFF" style="padding-left:10;">
											  		<input type="text" name="public_time" class="input" size="70%" value="<%=public_time %>" maxlength="200"  />
											  	</td>
											</tr>
											<tr height="25">
											  	<td align="left" bgcolor="#e7e7e7">�����ֱ�</td>
											  	<td colspan="3" align="left" bgcolor="#FFFFFF" style="padding-left:10;">
											  		<input type="text" name="public_cycle" class="input" size="70%" value="<%=public_cycle %>" maxlength="200"  />
											  	</td>
											</tr>				
											<tr height="25">
												<td align="left" bgcolor="#e7e7e7">��ũ</td>
												<td colspan="3" align="left" bgcolor="#FFFFFF" style="padding-left:10;">
													<p style="color:#a7a7a7; margin:0;">�� ���� ������ ������� �ʰ� ��ũ�� �� ���, http://www.knoc.co.kr/ ������ ��ü �ּҸ� �Է����ּ���.</p>
													<input type="text" name="public_link" class="input" size="70%" value="<%=public_link %>" maxlength="200"  />
												</td>
											</tr>	
											<!-- <tr height="25">
												<td align="left" bgcolor="#e7e7e7">÷������</td>
												<td colspan="3" align="left" bgcolor="#FFFFFF" style="padding-left:10;">
													<input type="file" name="gov_public_file" value="" <%=gov_public_file_seq.length() > 0?"disabled":"" %> />
												<%if(gov_public_file_seq.length() > 0){ %>
													<br /><%=org_file_nm %>
													<input type="checkbox" name="gov_public_file_seq" onclick="fileCtl(this);" style="vertical-align:middle;" value="<%=gov_public_file_seq %>" />
													���� üũ�ڽ��� �����Ͻø� �̹� ÷�ε� ������ �����˴ϴ�.
												<%} %>
												</td>
											</tr>-->	
										</table>
									</form>	
										
									<table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0">
										<tr>
											<td height="10px"></td>
										</tr>
										<tr>
											<td align="left"><input type=button onclick="goCancelFn();" style="width:80px; padding-top:4px; cursor:pointer;"  value="���" /></td>
											<td align="right">
												<input type=button onclick="goEditOkFn(); return false;" style="width:80px; padding-top:4px; cursor:pointer;" value="<%=gov_public_nid == null || gov_public_nid.length() == 0?"���":"����" %>" />
											<%if(gov_public_nid.length() > 0){ %>
												<input type=button onclick="goDeleteFn(); return false;" style="width:80px; padding-top:4px; cursor:pointer;" value="����" />
											<%} %>
											</td>
										</tr>
										<tr>
											<td height="30px"></td>
										</tr>
									</table>
									
								<%if(gov_public_nid != null && gov_public_nid.length() > 0){ %>
									<dl style="background-color:#dff2ff; padding:20px 30px 20px 0; line-height:1.5em; color:#000; ">
										<dd>* ÷�������� ��ü�ϰ� ���� ��� ÷������ �Ʒ��κ��� üũ �ڽ��� �����ϰ� ���� ����Ͻ� ������ ã�ƺ��� ��ư�� Ŭ���Ͽ� �����Ͻ� �� ǥ ���� �ϴ���  '����' ��ư�� Ŭ���Ͻñ� �ٶ��ϴ�. </dd>
										<dd style="margin-top:8px;">* ǥ ���� �ϴ��� ���� ��ư�� ���  Ŭ�� �� �ش� �Խù��� ��ü�� �����ǹǷ� �ش� ������������ �Խù��� ������ ���Ͻô� ��쿡�� '����' ��ư�� Ŭ���Ͻñ� �ٶ��ϴ�.</dd>
									</dl>
								<%} %>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>

<br /><br /><br /><br />

<%@ include file="../inc/bottom.jsp" %>