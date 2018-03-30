<%@page import="kr.co.knoc.gov_public_test.GovPublicFileBean"%>
<%@page import="java.util.HashMap"%>
<%@page import="kr.co.knoc.sitectrl.mgr.MgrSession"%>
<%@page import="kr.co.knoc.gov_public_test.GovPublicBean"%>
<%@page import="kr.co.knoc.util.EtcUtil"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/sitetaglib.tld" prefix="stl" %>
<%@ taglib uri="/WEB-INF/tlds/sitectrltaglib.tld" prefix="sctrl" %>

<sctrl:auth loginPage="../login.jsp" sessionName="ADMINSESSION"/>
<jsp:useBean id="pp" class="kr.co.knoc.tags.pager.PageProperty" scope="request"/>
<jsp:useBean id="etcutil" scope="page" class="kr.co.knoc.util.EtcUtil" />
<jsp:useBean id="govPublicManager" scope="page" class="kr.co.knoc.gov_public_test.GovPublicManager" />

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
	String gov_public_file_seq = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(request.getParameter("gov_public_file_seq")));
	String search_type = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(request.getParameter("search_type")));
	String search_keyword = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(request.getParameter("search_keyword")));
	
	GovPublicFileBean gfb = null;
	
	if(gov_public_file_seq.length()>0){
		gfb = govPublicManager.getGovPublicFileViewExt(Integer.parseInt(gov_public_file_seq));	
	}
	
	
	String org_file_nm = "";
	String save_file_nm = "";
	String file_path = "";
	String file_title= "";	
	if(gfb != null){
		org_file_nm = EtcUtil.checkNull(gfb.getOrg_file_nm());
		save_file_nm = EtcUtil.checkNull(gfb.getSave_file_nm());
		file_path = EtcUtil.checkNull(gfb.getFile_path());
		file_title = EtcUtil.checkNull(gfb.getFile_title());
	}
%>

<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
    application.setAttribute("gNavMenuDepth1","06");
	application.setAttribute("gNavMenuDepth2","01");
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>

<jsp:include flush="true" page="../inc/top.jsp" />

<script language="javascript">
	
	function goEditOkFn(){ 
		var fm = document.boardform01;
		
		
		if(confirm((fm.gov_public_file_seq.value == ""?"���":"����")+" �Ͻðڽ��ϱ�?")){
			fm.action="board_06_edit_file_ok.jsp";
			fm.submit();
		}
	}
	
	function goDeleteFn(){
		var fm = document.boardform01;
		if(confirm("���� �Ͻðڽ��ϱ�?")){
			fm.action="board_06_filedelete.jsp";
			fm.submit();
		}
	}

	function goCancelFn(){
		var fm = document.boardform01;
		location.href="/SiteControl/neoboard/board_06_filelist.jsp?gpk=" + fm.gpk.value + "&page=" + fm.page.value + "&search_type=" + fm.search_type.value + "&search_keyword=" + fm.search_keyword.value + "&gov_public_nid=" + fm.gov_public_nid.value;
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
										<input type="hidden" name="gov_public_file_seq"  value="<%=gov_public_file_seq %>" />
										
										<input type="hidden" name="search_type" value="<%=search_type %>" />
										<input type="hidden" name="search_keyword" value="<%=search_keyword %>" />
									
										<table width="100%" align="center" border="0" cellpadding="1" cellspacing="1" bgcolor="B5B5B5">
															
											<tr height="25">
												<td align="left" bgcolor="#e7e7e7" style="padding-left:10px;" >����</td>
												<td colspan="3" align="left" bgcolor="#FFFFFF" style="padding-left:10;">
													<p style="color:#a7a7a7; margin:0;">��ǥ�� ������ �Է����ּ���.</p>
													<input type="text" name="file_title" class="input" size="70%" value="<%=file_title %>" maxlength="200"  />
												</td>
											</tr>	
											<tr height="25">
												<td align="left" bgcolor="#e7e7e7" style="padding-left:10px;">÷������</td>
												<td colspan="3" align="left" bgcolor="#FFFFFF" style="padding-left:10;">
													<input type="file" name="gov_public_file" value="" <%=gov_public_file_seq.length() > 0?"disabled":"" %> />
												<%if(gov_public_file_seq.length() > 0){ %>
													<br /><%=org_file_nm %>
													<input type="checkbox" name="gov_public_file_seq" onclick="fileCtl(this);" style="vertical-align:middle;" value="<%=gov_public_file_seq %>" />
													���� üũ�ڽ��� �����Ͻø� �̹� ÷�ε� ������ �����˴ϴ�.
												<%} %>
												</td>
											</tr>	
										</table>
									</form>	
										
									<table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
										<tr>
											<td height="10px"></td>
										</tr>
										<tr>
											<td align="left"><input type=button onclick="goCancelFn();" style="width:80px; padding-top:4px; cursor:pointer;"  value="���" /></td>
											<td align="right">
												<input type=button onclick="goEditOkFn(); return false;" style="width:80px; padding-top:4px; cursor:pointer;" value="<%=gov_public_file_seq == null || gov_public_file_seq.length() == 0?"���":"����" %>" />
											<%if(gov_public_file_seq.length() > 0){ %>
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