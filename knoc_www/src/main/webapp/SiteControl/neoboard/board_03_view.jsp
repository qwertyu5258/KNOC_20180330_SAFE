<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "kr.co.knoc.participate.*"%>
<%@ page import = "kr.co.knoc.util.*"%>
<%@ page import = "java.util.*"%>
<%@ taglib uri="/WEB-INF/tlds/sitetaglib.tld" prefix="stl" %>
<%@ taglib uri="/WEB-INF/tlds/sitectrltaglib.tld" prefix="sctrl" %>
<sctrl:auth loginPage="../login.jsp" sessionName="ADMINSESSION"/>
<jsp:useBean id="pp" class="kr.co.knoc.tags.pager.PageProperty" scope="request"/>
<jsp:useBean id="etcutil" scope="page" class="kr.co.knoc.util.EtcUtil" />
<jsp:useBean id="ParticipateBa" scope="page" class="kr.co.knoc.participate.ParticipateManager" />

<% request.setCharacterEncoding("euc-kr"); %>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section ( ������ �ƴ�??Display )
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	String gNavSubTitle = "�纸��������";  		// ���� Depth ����
    String gNavSubName = "neoboard";				// ���� Depth �̸�
    String gNavDepthTitle1 = "04"; 		// Ȩ > ���� > ����1 ����
    String gNavDepthName1 = "";				// Ȩ > ���� > ����1 �̹��� �±� �̸�
    String gNavDepthTitle2 = ""; 				// Ȩ > ���� > ����1 > ����2 ����

    application.setAttribute("gNavMenuDepth1","03");
	application.setAttribute("gNavMenuDepth2","01");
        
	String gNavPage = "�Խ��ǻ���";  					// ���� ������ ����
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>
<%
	int pageNo = etcutil.checkNullInt(etcutil.checkNull(request.getParameter("page")).toString(), 1);  // ���Ⱦ��� ��ġ 2016.03.21 ECJ
	
	String schType = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("schType")), "8859_1");
	String schText = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("schText")), "8859_1");
	
	
	ParticipateManager pbm = new ParticipateManager(); 
	HashMap dataMap = pbm.getParticipateBbsInfo(etcutil.checkNullInt(etcutil.checkNull(request.getParameter("question_nid")).toString(), 0),etcutil.checkNullInt(etcutil.checkNull(request.getParameter("participate_bbs_nid")).toString(), 0));  // ���Ⱦ��� ��ġ 2016.03.21 ECJ
%>


<script language=javascript>
<!--
	function goDeletePage(questionSeq,participateSeq){
		if(confirm("���� �����Ͻðڽ��ϱ�?")){
			document.getElementById("questionSeq").value = questionSeq;
			document.getElementById("participateSeq").value = participateSeq;
			
			document.deleteForm.submit();
		}
	}
//-->
</script>


<jsp:include flush="true" page="../inc/top.jsp" />
	
	<table width="100%" height="100%"  border="0" cellpadding="0" cellspacing="0">
		<tr>
			<td width="195" valign="top">  
			<%@ include file = "left.jsp" %> 
			</td>
			<td valign="top">
				<table width="100%" height="200"  border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td valign="top">
							<table width="100%"  border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top">
										<table width="100%" height="30"  border="0" cellpadding="0" cellspacing="0">
											<tr>
												<td><img src="../images/admin_left_03.gif" width="11" height="11"> �Խ��� ���� > �纸 ���� ����</td>
												<td width="500" align="right" style="padding-right:20;">HOME > <span class="style6">�Խ��� ���� > �纸 ���� ����</span></td>
											</tr>
											<tr>
												<td height="2" colspan="2" bgcolor="EAEAEC"></td>
											</tr>
										</table>
										
										<table width="100%" height="15"  border="0" cellpadding="0" cellspacing="0">
											<tr>
												<td></td>
											</tr>
										</table>
										
										<form id="deleteForm" name="deleteForm" method="post" action="/SiteControl/neoboard/board_03_delete.jsp" >
											<input type="hidden" id="questionSeq" name="questionSeq" value="" />
											<input type="hidden" id="participateSeq" name="participateSeq" value="" />
										</form>
										
										<table width="80%"  border="0" align="center" cellpadding="0" cellspacing="0">
											<tr height=30>
												<td>�纸�������� �� ����</td>
											</tr>
										</table>
										
										<table width="80%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="B5B5B5">
											<tr>
												<td width="100px" height="25" bgcolor="E7E7E7" align="center">�� ��</td>
												<td bgcolor="#FFFFFF" style="padding-left:10;"><%=etcutil.checkNull(dataMap.get("BBS_TITLE").toString())  %></td>
											</tr>	
											<tr>
												<td width="100px" height="25" bgcolor="E7E7E7" align="center">���Ӹ�</td>
												<td bgcolor="#FFFFFF" style="padding-left:10;">
												<%
													if("qna".equals(etcutil.checkNull(dataMap.get("BEGIN_TITLE").toString()))){
														out.println("��������");
													}else if("cnq".equals(etcutil.checkNull(dataMap.get("BEGIN_TITLE").toString()))){
														out.println("�纸�ǰ�");
													}else{
														out.println("�纸��û");
													}
												%>
												</td>
											</tr>		
											<tr>
												<td width="100px" height="25" bgcolor="E7E7E7" align="center">�۾���</td>
												<td bgcolor="#FFFFFF" style="padding-left:10;"><%=etcutil.checkNull(dataMap.get("WRITER").toString())  %></td>
											</tr>
											<tr>
												<td width="100px" height="25" bgcolor="E7E7E7" align="center">��й�ȣ</td>
												<td bgcolor="#FFFFFF" style="padding-left:10;"><%=etcutil.checkNull(dataMap.get("BBS_PASS").toString())  %></td>
											</tr>
											<tr>
												<td width="100px" height="25" bgcolor="E7E7E7" align="center">�޴���</td>
												<td bgcolor="#FFFFFF" style="padding-left:10;"><%=etcutil.checkNull(dataMap.get("BBS_CELLPHONE").toString())  %></td>
											</tr>				
											<tr>
												<td width="100px" height="25" bgcolor="E7E7E7" align="center">�̸���</td>
												<td bgcolor="#FFFFFF" style="padding-left:10;"><%=etcutil.checkNull(dataMap.get("BBS_EMAIL").toString())  %></td>
											</tr>	
											<tr>
												<td width="100px" height="25" bgcolor="E7E7E7" align="center">�� ��</td>
												<td bgcolor="#FFFFFF" style="padding-left:10;"><%=etcutil.checkNull(dataMap.get("BBS_CONTENTS").toString().replaceAll("\r\n","<br />"))  %></td>
											</tr>	
										</table>
										
										<table width="80%"  border="0" align="center" cellpadding="0" cellspacing="0">
											<tr>
												<td height="10"></td>
											</tr>
											<tr>
												<td align="right">
													<table cellSpacing="0" cellPadding="0" border="0" style="color:#4c4c4c;">
														<tr>
															<td>
																<table cellSpacing="0" cellPadding="0" border="0" style="color:#4c4c4c;">
																	<tr>
																		<td>
																			<table cellSpacing="0" cellPadding="0" border="0">
																				<tr height="22">
																					<td></td>
																					<td><input type=button value="���" onclick="javascript:history.back()"></td>
																					<td></td>
																				</tr>
																			</table>
																		</td>
																	</tr>
																</table>
															</td>
															<td width="15"></td>
															<td>
																<table cellSpacing="0" cellPadding="0" border="0">
																	<tr height="22">
																		<td></td>
																		<td><input type=button onclick="goDeletePage('<%=etcutil.checkNull(dataMap.get("QUESTION_NID").toString())  %>','<%=etcutil.checkNull(dataMap.get("PARTICIPATE_BBS_NID").toString())  %>'); return false;" value="����" ></td>
																		<td></td>
																	</tr>
																</table>
															</td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<tr height=20px>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	<%@ include file="../inc/bottom.jsp" %>