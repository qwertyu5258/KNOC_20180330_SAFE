<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","09");
	application.setAttribute("gNavMenuDepth2","02");
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
                    &gt; <span>��Ÿ����</span> &gt; <span class="locanow">����Ʈ��</span>
                 </div>
        <!--// location: end //-->
            
                <div class="pagetle">
                    <h3><img src="/images/member/ttl_site_map.gif" alt="����Ʈ��" /></h3>
                </div>
                <div id="boardsec">
					<div class="sitmap_section" style="height:710px;">                	
					<% 	//��������
						ArrayList site05 = MenuMa.getMenuList("05","Y");	
					%>                  
                	<table width="230" border="0" cellspacing="0" cellpadding="0">
                  	<tr>
                    <td height="48" align="center" background="../images/sitemap/titlebox_bg.gif" class="title_text">��������</td>
                  	</tr>
                  	<tr>
                    <td><img src="../images/sitemap/titlebox_bar.gif" width="230" height="17" alt="" /></td>
                  	</tr>
                  	<tr>
                    <td><img src="../images/sitemap/contbox_top.gif" width="230" height="13" alt="" /></td>
                  	</tr>
                  	<tr>
                    <td align="center" valign="top" background="../images/sitemap/contbox_bg.gif">
                    	<table width="200" border="0" cellspacing="0" cellpadding="2">
					<%
						Iterator iter = site05.iterator();
						int s = 1;
						int j = 1;
						int m = 1;
						while(iter.hasNext()){		
							MenuBean mb = (MenuBean)iter.next();
							if (mb.getMCode() != null) {
								if (mb.getMCode().substring(4,8).equals("0000")) {
									if (m > 1) {
					%>
													</table>
												</td>
												</tr>
					<%					
									}
									if (j > 1) {
					%>
												</table>
											</td>
											</tr>
					<%					
									}
									
									if (s > 1) { //out.println("</div>"); 
									}
									if (s <= 5) {
										//out.println("<div class=\"s_menu01\">");
									} else {
										//out.println("<div class=\"s_menu02\">");
									}				
					%>						
											<tr>
											<td width="12" align="left" class="table_titlebottom"><img src="../images/sitemap/img_bull.gif" width="18" height="18" alt="" /></td>
											<td align="left" class="table_titlebottom"><a href="<%=mb.getUrl() %>"><%=mb.getName() %></a></td>
											</tr>
					<%
									s = s + 1;
									j = 1;
									m = 1;
								} else if (mb.getMCode().substring(6,8).equals("00")) {
									if (m > 1) {
					%>
													</table>
												</td>
												</tr>
					<%					
									}
									if (j == 1) {
					%>
											<tr>
											<td width="12" align="left">&nbsp;</td>
											<td align="left">
												<table width="100%" border="0" cellspacing="0" cellpadding="2">
					<%					
									} 
					%>				
												<tr>
												<td width="12" align="left" class="table_bottom"><img src="../images/sitemap/sub_bullet.gif" width="10" height="7" alt="" /></td>
												<td align="left" class="table_bottom"><a href="<%=mb.getUrl() %>"><%=mb.getName() %></a></td>
												</tr>					
					<%				
									j = j + 1;
									m = 1;
								} else {
									if (m == 1) {
					%>
																			
												<tr>
												<td width="12" align="left" class="table_bottom">&nbsp;</td>
												<td align="left" class="table_bottom">
													<table width="100%" border="0" cellspacing="0" cellpadding="2">
					<%					
									} 
					%>
													<tr>
													<td width="10" align="left">-</td>
													<td align="left"><a href="<%=mb.getUrl() %>"><%=mb.getName() %></a></td>
													</tr>                              	
					<%				
									m = m + 1;
								}
							}
						}
						if (m > 1) {
					%>
														</table>
													</td>
													</tr>
					<%		
								} 		
						if (j > 1) {
					%>
												</table>
											</td>
											</tr>
					<%		
						} 					
					%>	 	                        	                        
											</table>
										</td>
										</tr>
										<tr>
										<td><img src="../images/sitemap/contbox_bottom.gif" width="230" height="13" alt="" /></td>
										</tr>
										</table>
					</div>

					<div class="sitmap_section">               
					<% 	//����Ұ�
						ArrayList site01 = MenuMa.getMenuList("01","Y");	
					%>	                
                	<table width="230" border="0" cellspacing="0" cellpadding="0">
                  	<tr>
                    <td height="48" align="center" background="../images/sitemap/titlebox_bg.gif" class="title_text">����Ұ�</td>
                  	</tr>
                  	<tr>
                    <td><img src="../images/sitemap/titlebox_bar.gif" width="230" height="17" alt="" /></td>
                  	</tr>
                  	<tr>
                    <td><img src="../images/sitemap/contbox_top.gif" width="230" height="13" alt="" /></td>
                  	</tr>
                  	<tr>
                    <td align="center" valign="top" background="../images/sitemap/contbox_bg.gif">
                    	<table width="200" border="0" cellspacing="0" cellpadding="2">
					<%
						iter = site01.iterator();
						s = 1;
						j = 1;
						m = 1;
						while(iter.hasNext()){		
							MenuBean mb = (MenuBean)iter.next();
							if (mb.getMCode() != null) {
								if (mb.getMCode().substring(4,8).equals("0000")) {
									if (m > 1) {
					%>
													</table>
												</td>
												</tr>
					<%					
									}
									if (j > 1) {
					%>
												</table>
											</td>
											</tr>
					<%					
									}
									
									if (s > 1) { //out.println("</div>"); 
									}
									if (s <= 5) {
										//out.println("<div class=\"s_menu01\">");
									} else {
										//out.println("<div class=\"s_menu02\">");
									}				
					%>						
											<tr>
											<td width="12" align="left" class="table_titlebottom"><img src="../images/sitemap/img_bull.gif" width="18" height="18" alt="" /></td>
											<td align="left" class="table_titlebottom"><a href="<%=mb.getUrl() %>"><%=mb.getName() %></a></td>
											</tr>
					<%
									s = s + 1;
									j = 1;
									m = 1;
								} else if (mb.getMCode().substring(6,8).equals("00")) {
									if (m > 1) {
					%>
													</table>
												</td>
												</tr>
					<%					
									}
									if (j == 1) {
					%>
											<tr>
											<td width="12" align="left">&nbsp;</td>
											<td align="left">
												<table width="100%" border="0" cellspacing="0" cellpadding="2">
					<%					
									} 
					%>				
												<tr>
												<td width="12" align="left" class="table_bottom"><img src="../images/sitemap/sub_bullet.gif" width="10" height="7" alt="" /></td>
												<td align="left" class="table_bottom"><a href="<%=mb.getUrl() %>"><%=mb.getName() %></a></td>
												</tr>					
					<%				
									j = j + 1;
									m = 1;
								} else {
									if (m == 1) {
					%>
																			
												<tr>
												<td width="12" align="left" class="table_bottom">&nbsp;</td>
												<td align="left" class="table_bottom">
													<table width="100%" border="0" cellspacing="0" cellpadding="2">
					<%					
									} 
					%>
													<tr>
													<td width="10" align="left">-</td>
													<td align="left"><a href="<%=mb.getUrl() %>"><%=mb.getName() %></a></td>
													</tr>                              	
					<%				
									m = m + 1;
								}
							}
						}
						if (m > 1) {
					%>
														</table>
													</td>
													</tr>
					<%		
								} 		
						if (j > 1) {
					%>
												</table>
											</td>
											</tr>
					<%		
						} 					
					%>	           	
											</table>
										</td>
										</tr>
										<tr>
										<td><img src="../images/sitemap/contbox_bottom.gif" width="230" height="13" alt="" /></td>
										</tr>
										</table>
					</div>

					<div class="sitmap_section">                 	
					<% 	//����Ұ�
						ArrayList site03 = MenuMa.getMenuList("03","Y");	
					%>	                
                	<table width="230" border="0" cellspacing="0" cellpadding="0">
                  	<tr>
                    <td height="48" align="center" background="../images/sitemap/titlebox_bg.gif" class="title_text">����Ұ�</td>
                  	</tr>
                  	<tr>
                    <td><img src="../images/sitemap/titlebox_bar.gif" width="230" height="17" alt="" /></td>
                  	</tr>
                  	<tr>
                    <td><img src="../images/sitemap/contbox_top.gif" width="230" height="13" alt="" /></td>
                  	</tr>
                  	<tr>
                    <td height="180" align="center" valign="top" background="../images/sitemap/contbox_bg.gif">
                    	<table width="200" border="0" cellspacing="0" cellpadding="2">
					<%
						iter = site03.iterator();
						s = 1;
						j = 1;
						m = 1;
						while(iter.hasNext()){		
							MenuBean mb = (MenuBean)iter.next();
							if (mb.getMCode() != null) {
								if (mb.getMCode().substring(4,8).equals("0000")) {
									if (m > 1) {
					%>
													</table>
												</td>
												</tr>
					<%					
									}
									if (j > 1) {
					%>
												</table>
											</td>
											</tr>
					<%					
									}
									
									if (s > 1) { //out.println("</div>"); 
									}
									if (s <= 5) {
										//out.println("<div class=\"s_menu01\">");
									} else {
										//out.println("<div class=\"s_menu02\">");
									}				
					%>						
											<tr>
											<td width="12" align="left" class="table_titlebottom"><img src="../images/sitemap/img_bull.gif" width="18" height="18" alt="" /></td>
											<td align="left" class="table_titlebottom"><a href="<%=mb.getUrl() %>"><%=mb.getName() %></a></td>
											</tr>
					<%
									s = s + 1;
									j = 1;
									m = 1;
								} else if (mb.getMCode().substring(6,8).equals("00")) {
									if (m > 1) {
					%>
													</table>
												</td>
												</tr>
					<%					
									}
									if (j == 1) {
					%>
											<tr>
											<td width="12" align="left">&nbsp;</td>
											<td align="left">
												<table width="100%" border="0" cellspacing="0" cellpadding="2">
					<%					
									} 
					%>				
												<tr>
												<td width="12" align="left" class="table_bottom"><img src="../images/sitemap/sub_bullet.gif" width="10" height="7" alt="" /></td>
												<td align="left" class="table_bottom"><a href="<%=mb.getUrl() %>"><%=mb.getName() %></a></td>
												</tr>					
					<%				
									j = j + 1;
									m = 1;
								} else {
									if (m == 1) {
					%>
																			
												<tr>
												<td width="12" align="left" class="table_bottom">&nbsp;</td>
												<td align="left" class="table_bottom">
													<table width="100%" border="0" cellspacing="0" cellpadding="2">
					<%					
									} 
					%>
													<tr>
													<td width="10" align="left">-</td>
													<td align="left"><a href="<%=mb.getUrl() %>"><%=mb.getName() %></a></td>
													</tr>                              	
					<%				
									m = m + 1;
								}
							}
						}
						if (m > 1) {
					%>
														</table>
													</td>
													</tr>
					<%		
								} 		
						if (j > 1) {
					%>
												</table>
											</td>
											</tr>
					<%		
						} 					
					%>	                         
											</table>
										</td>
										</tr>
										<tr>
										<td><img src="../images/sitemap/contbox_bottom.gif" width="230" height="13" alt="" /></td>
										</tr>
										</table>
					</div>

					<div class="sitmap_section">                	
					<% 	//�����濵
						ArrayList site02 = MenuMa.getMenuList("02","Y");	
					%>		                
                	<table width="230" border="0" cellspacing="0" cellpadding="0">
                  	<tr>
                    <td height="48" align="center" background="../images/sitemap/titlebox_bg.gif" class="title_text">�����濵</td>
                  	</tr>
                  	<tr>
                    <td><img src="../images/sitemap/titlebox_bar.gif" width="230" height="17" alt="" /></td>
                  	</tr>
                  	<tr>
                    <td><img src="../images/sitemap/contbox_top.gif" width="230" height="13" alt="" /></td>
                  	</tr>
                  	<tr>
                    <td height="180" align="center" valign="top" background="../images/sitemap/contbox_bg.gif">
                    	<table width="200" border="0" cellspacing="0" cellpadding="2">
					<%
						iter = site02.iterator();
						s = 1;
						j = 1;
						m = 1;
						while(iter.hasNext()){		
							MenuBean mb = (MenuBean)iter.next();
							if (mb.getMCode() != null) {
								if (mb.getMCode().substring(4,8).equals("0000")) {
									if (m > 1) {
					%>
													</table>
												</td>
												</tr>
					<%					
									}
									if (j > 1) {
					%>
												</table>
											</td>
											</tr>
					<%					
									}
									
									if (s > 1) { //out.println("</div>"); 
									}
									if (s <= 5) {
										//out.println("<div class=\"s_menu01\">");
									} else {
										//out.println("<div class=\"s_menu02\">");
									}				
					%>						
											<tr>
											<td width="12" align="left" class="table_titlebottom"><img src="../images/sitemap/img_bull.gif" width="18" height="18" alt="" /></td>
											<td align="left" class="table_titlebottom"><a href="<%=mb.getUrl() %>"><%=mb.getName() %></a></td>
											</tr>
					<%
									s = s + 1;
									j = 1;
									m = 1;
								} else if (mb.getMCode().substring(6,8).equals("00")) {
									if (m > 1) {
					%>
													</table>
												</td>
												</tr>
					<%					
									}
									if (j == 1) {
					%>
											<tr>
											<td width="12" align="left">&nbsp;</td>
											<td align="left">
												<table width="100%" border="0" cellspacing="0" cellpadding="2">
					<%					
									} 
					%>				
												<tr>
												<td width="12" align="left" class="table_bottom"><img src="../images/sitemap/sub_bullet.gif" width="10" height="7" alt="" /></td>
												<td align="left" class="table_bottom"><a href="<%=mb.getUrl() %>"><%=mb.getName() %></a></td>
												</tr>					
					<%				
									j = j + 1;
									m = 1;
								} else {
									if (m == 1) {
					%>
																			
												<tr>
												<td width="12" align="left" class="table_bottom">&nbsp;</td>
												<td align="left" class="table_bottom">
													<table width="100%" border="0" cellspacing="0" cellpadding="2">
					<%					
									} 


					/**
					* ������ : 2015. 02. 24
					* ������ : �����(milgam12@inplusweb.com)
					* ��  �� : �ܺθ�ũ �߰�
					*/

					String strTarget = "";
					String strLinkUrl = mb.getUrl();

					if(strLinkUrl != null && strLinkUrl.length() > 5 && strLinkUrl.substring(0, 4).equals("http")) {
						strTarget = " target=\"_blank\"";
					}
					%>
													<tr>
													<td width="10" align="left">-</td>
													<td align="left"><a href="<%=mb.getUrl()%>"<%=strTarget%>><%=mb.getName() %></a></td>
													</tr>                              	
					<%				
									m = m + 1;
								}
							}
						}
						if (m > 1) {
					%>
														</table>
													</td>
													</tr>
					<%		
								} 		
						if (j > 1) {
					%>
												</table>
											</td>
											</tr>
					<%		
						} 					
					%>	                   	
											</table>
										</td>
										</tr>
										<tr>
										<td><img src="../images/sitemap/contbox_bottom.gif" width="230" height="13" alt="" /></td>
										</tr>
										</table>
					 </div>

					<div class="sitmap_section">                	
					<% 	//���̹�ȫ����
						ArrayList site11 = MenuMa.getMenuList("11","Y");	
					%>		                
                	<table width="230" border="0" cellspacing="0" cellpadding="0">
                  	<tr>
                    <td height="48" align="center" background="../images/sitemap/titlebox_bg.gif" class="title_text">���̹�ȫ����</td>
                  	</tr>
                  	<tr>
                    <td><img src="../images/sitemap/titlebox_bar.gif" width="230" height="17" alt="" /></td>
                  	</tr>
                  	<tr>
                    <td><img src="../images/sitemap/contbox_top.gif" width="230" height="13" alt="" /></td>
                  	</tr>
                  	<tr>
                    <td height="180" align="center" valign="top" background="../images/sitemap/contbox_bg.gif">
                    	<table width="200" border="0" cellspacing="0" cellpadding="2">
					<%
						iter = site11.iterator();
						s = 1;
						j = 1;
						m = 1;
						while(iter.hasNext()){		
							MenuBean mb = (MenuBean)iter.next();
							if (mb.getMCode() != null) {
								if (mb.getMCode().substring(4,8).equals("0000")) {
									if (m > 1) {
					%>
													</table>
												</td>
												</tr>
					<%					
									}
									if (j > 1) {
					%>
												</table>
											</td>
											</tr>
					<%					
									}
									
									if (s > 1) { //out.println("</div>"); 
									}
									if (s <= 5) {
										//out.println("<div class=\"s_menu01\">");
									} else {
										//out.println("<div class=\"s_menu02\">");
									}				
					%>						
											<tr>
											<td width="12" align="left" class="table_titlebottom"><img src="../images/sitemap/img_bull.gif" width="18" height="18" alt="" /></td>
											<td align="left" class="table_titlebottom"><a href="<%=mb.getUrl() %>"><%=mb.getName() %></a></td>
											</tr>
					<%
									s = s + 1;
									j = 1;
									m = 1;
								} else if (mb.getMCode().substring(6,8).equals("00")) {
									if (m > 1) {
					%>
													</table>
												</td>
												</tr>
					<%					
									}
									if (j == 1) {
					%>
											<tr>
											<td width="12" align="left">&nbsp;</td>
											<td align="left">
												<table width="100%" border="0" cellspacing="0" cellpadding="2">
					<%					
									} 
					%>				
												<tr>
												<td width="12" align="left" class="table_bottom"><img src="../images/sitemap/sub_bullet.gif" width="10" height="7" alt="" /></td>
												<td align="left" class="table_bottom"><a href="<%=mb.getUrl() %>"><%=mb.getName() %></a></td>
												</tr>					
					<%				
									j = j + 1;
									m = 1;
								} else {
									if (m == 1) {
					%>
																			
												<tr>
												<td width="12" align="left" class="table_bottom">&nbsp;</td>
												<td align="left" class="table_bottom">
													<table width="100%" border="0" cellspacing="0" cellpadding="2">
					<%					
									} 
					%>
													<tr>
													<td width="10" align="left">-</td>
													<td align="left"><a href="<%=mb.getUrl() %>"><%=mb.getName() %></a></td>
													</tr>                              	
					<%				
									m = m + 1;
								}
							}
						}
						if (m > 1) {
					%>
														</table>
													</td>
													</tr>
					<%		
								} 		
						if (j > 1) {
					%>
												</table>
											</td>
											</tr>
					<%		
						} 					
					%>	                   	
											</table>
										</td>
										</tr>
										<tr>
										<td><img src="../images/sitemap/contbox_bottom.gif" width="230" height="13" alt="" /></td>
										</tr>
										</table>
					 </div>
					  <div class="sitmap_section">                	
					<% 	//������
						ArrayList site04 = MenuMa.getMenuList("04","Y");	
					%>                
										<table width="230" border="0" cellspacing="0" cellpadding="0">
										<tr>
										<td height="48" align="center" background="../images/sitemap/titlebox_bg.gif" class="title_text">������</td>
										</tr>
										<tr>
										<td><img src="../images/sitemap/titlebox_bar.gif" width="230" height="17" alt="" /></td>
										</tr>
										<tr>
										<td><img src="../images/sitemap/contbox_top.gif" width="230" height="13" alt="" /></td>
										</tr>
										<tr>
										<td align="center" valign="top" background="../images/sitemap/contbox_bg.gif">
											<table width="200" border="0" cellspacing="0" cellpadding="2">
					<%
						iter = site04.iterator();
						s = 1;
						j = 1;
						m = 1;
						while(iter.hasNext()){		
							MenuBean mb = (MenuBean)iter.next();
							if (mb.getMCode() != null) {
								if (mb.getMCode().substring(4,8).equals("0000")) {
									if (m > 1) {
					%>
													</table>
												</td>
												</tr>
					<%					
									}
									if (j > 1) {
					%>
												</table>
											</td>
											</tr>
					<%					
									}
									
									if (s > 1) { //out.println("</div>"); 
									}
									if (s <= 5) {
										//out.println("<div class=\"s_menu01\">");
									} else {
										//out.println("<div class=\"s_menu02\">");
									}				
					%>						
											<tr>
											<td width="12" align="left" class="table_titlebottom"><img src="../images/sitemap/img_bull.gif" width="18" height="18" alt="" /></td>
											<td align="left" class="table_titlebottom"><a href="<%=mb.getUrl() %>"><%=mb.getName() %></a></td>
											</tr>
					<%
									s = s + 1;
									j = 1;
									m = 1;
								} else if (mb.getMCode().substring(6,8).equals("00")) {
									if (m > 1) {
					%>
													</table>
												</td>
												</tr>
					<%					
									}
									if (j == 1) {
					%>
											<tr>
											<td width="12" align="left">&nbsp;</td>
											<td align="left">
												<table width="100%" border="0" cellspacing="0" cellpadding="2">
					<%					
									} 
					%>				
												<tr>
												<td width="12" align="left" class="table_bottom"><img src="../images/sitemap/sub_bullet.gif" width="10" height="7" alt="" /></td>
												<td align="left" class="table_bottom"><a href="<%=mb.getUrl() %>"><%=mb.getName() %></a></td>
												</tr>					
					<%				
									j = j + 1;
									m = 1;
								} else {
									if (m == 1) {
					%>
																			
												<tr>
												<td width="12" align="left" class="table_bottom">&nbsp;</td>
												<td align="left" class="table_bottom">
													<table width="100%" border="0" cellspacing="0" cellpadding="2">
					<%					
									} 
					%>
													<tr>
													<td width="10" align="left">-</td>
													<td align="left"><a href="<%=mb.getUrl() %>"><%=mb.getName() %></a></td>
													</tr>                              	
					<%				
									m = m + 1;
								}
							}
						}
						if (m > 1) {
					%>
														</table>
													</td>
													</tr>
					<%		
								} 		
						if (j > 1) {
					%>
												</table>
											</td>
											</tr>
					<%		
						} 					
					%>	                    	                        
											</table>
										</td>
										</tr>
										<tr>
										<td><img src="../images/sitemap/contbox_bottom.gif" width="230" height="13" alt="" /></td>
										</tr>
										</table>
					 </div>

					<!-- div class="sitmap_section02">                	
					<% 	//�������߿�����
						ArrayList site06 = MenuMa.getMenuList("06","Y");	
					%>                  
                	<table width="230" border="0" cellspacing="0" cellpadding="0">
                  	<tr>
                    <td height="48" align="center" background="../images/sitemap/titlebox_bg.gif" class="title_text">�������߿�����</td>
                  	</tr>
                  	<tr>
                    <td><img src="../images/sitemap/titlebox_bar.gif" width="230" height="17" alt="" /></td>
                  	</tr>
                  	<tr>
                    <td><img src="../images/sitemap/contbox_top.gif" width="230" height="13" alt="" /></td>
                  	</tr>
                  	<tr>
                    <td align="center" valign="top" background="../images/sitemap/contbox_bg.gif">
                    	<table width="200" border="0" cellspacing="0" cellpadding="2">
					<%
						iter = site06.iterator();
						s = 1;
						j = 1;
						m = 1;
						while(iter.hasNext()){		
							MenuBean mb = (MenuBean)iter.next();
							if (mb.getMCode() != null) {
								if (mb.getMCode().substring(4,8).equals("0000")) {
									if (m > 1) {
					%>
													</table>
												</td>
												</tr>
					<%					
									}
									if (j > 1) {
					%>
												</table>
											</td>
											</tr>
					<%					
									}
									
									if (s > 1) { //out.println("</div>"); 
									}
									if (s <= 5) {
										//out.println("<div class=\"s_menu01\">");
									} else {
										//out.println("<div class=\"s_menu02\">");
									}				
					%>						
											<tr>
											<td width="12" align="left" class="table_titlebottom"><img src="../images/sitemap/img_bull.gif" width="18" height="18" alt="" /></td>
											<td align="left" class="table_titlebottom"><a href="<%=mb.getUrl() %>"><%=mb.getName() %></a></td>
											</tr>
					<%
									s = s + 1;
									j = 1;
									m = 1;
								} else if (mb.getMCode().substring(6,8).equals("00")) {
									if (m > 1) {
					%>
													</table>
												</td>
												</tr>
					<%					
									}
									if (j == 1) {
					%>
											<tr>
											<td width="12" align="left">&nbsp;</td>
											<td align="left">
												<table width="100%" border="0" cellspacing="0" cellpadding="2">
					<%					
									} 
					%>				
												<tr>
												<td width="12" align="left" class="table_bottom"><img src="../images/sitemap/sub_bullet.gif" width="10" height="7" alt="" /></td>
												<td align="left" class="table_bottom"><a href="<%=mb.getUrl() %>"><%=mb.getName() %></a></td>
												</tr>					
					<%				
									j = j + 1;
									m = 1;
								} else {
									if (m == 1) {
					%>
																			
												<tr>
												<td width="12" align="left" class="table_bottom">&nbsp;</td>
												<td align="left" class="table_bottom">
													<table width="100%" border="0" cellspacing="0" cellpadding="2">
					<%					
									} 
					%>
													<tr>
													<td width="10" align="left">-</td>
													<td align="left"><a href="<%=mb.getUrl() %>"><%=mb.getName() %></a></td>
													</tr>                              	
					<%				
									m = m + 1;
								}
							}
						}
						if (m > 1) {
					%>
														</table>
													</td>
													</tr>
					<%		
								} 		
						if (j > 1) {
					%>
												</table>
											</td>
											</tr>
					<%		
						} 					
					%>	 	                        	                        
											</table>
										</td>
										</tr>
										<tr>
										<td><img src="../images/sitemap/contbox_bottom.gif" width="230" height="13" alt="" /></td>
										</tr>
										</table>
					</div-->
  
					<div class="sitmap_section">               	
					<% 	//���簳�߼���
						ArrayList site12 = MenuMa.getMenuList("12","Y");	
					%>                  
                	<table width="230" border="0" cellspacing="0" cellpadding="0">
                  	<tr>
                    <td height="48" align="center" background="../images/sitemap/titlebox_bg.gif" class="title_text">���簳�߼���</td>
                  	</tr>
                  	<tr>
                    <td><img src="../images/sitemap/titlebox_bar.gif" width="230" height="17" alt="" /></td>
                  	</tr>
                  	<tr>
                    <td><img src="../images/sitemap/contbox_top.gif" width="230" height="13" alt="" /></td>
                  	</tr>
                  	<tr>
                    <td align="center" valign="top" background="../images/sitemap/contbox_bg.gif">
                    	<table width="200" border="0" cellspacing="0" cellpadding="2">
					<%
						iter = site12.iterator();
						s = 1;
						j = 1;
						m = 1;
						while(iter.hasNext()){		
							MenuBean mb = (MenuBean)iter.next();
							if (mb.getMCode() != null) {
								if (mb.getMCode().substring(4,8).equals("0000")) {
									if (m > 1) {
					%>
													</table>
												</td>
												</tr>
					<%					
									}
									if (j > 1) {
					%>
												</table>
											</td>
											</tr>
					<%					
									}
									
									if (s > 1) { //out.println("</div>"); 
									}
									if (s <= 5) {
										//out.println("<div class=\"s_menu01\">");
									} else {
										//out.println("<div class=\"s_menu02\">");
									}				
					%>						
											<tr>
											<td width="12" align="left" class="table_titlebottom"><img src="../images/sitemap/img_bull.gif" width="18" height="18" alt="" /></td>
											<td align="left" class="table_titlebottom"><a href="<%=mb.getUrl() %>"><%=mb.getName() %></a></td>
											</tr>
					<%
									s = s + 1;
									j = 1;
									m = 1;
								} else if (mb.getMCode().substring(6,8).equals("00")) {
									if (m > 1) {
					%>
													</table>
												</td>
												</tr>
					<%					
									}
									if (j == 1) {
					%>
											<tr>
											<td width="12" align="left">&nbsp;</td>
											<td align="left">
												<table width="100%" border="0" cellspacing="0" cellpadding="2">
					<%					
									} 
					%>				
												<tr>
												<td width="12" align="left" class="table_bottom"><img src="../images/sitemap/sub_bullet.gif" width="10" height="7" alt="" /></td>
												<td align="left" class="table_bottom"><a href="<%=mb.getUrl() %>"><%=mb.getName() %></a></td>
												</tr>					
					<%				
									j = j + 1;
									m = 1;
								} else {
									if (m == 1) {
					%>
																			
												<tr>
												<td width="12" align="left" class="table_bottom">&nbsp;</td>
												<td align="left" class="table_bottom">
													<table width="100%" border="0" cellspacing="0" cellpadding="2">
					<%					
									} 
					%>
													<tr>
													<td width="10" align="left">-</td>
													<td align="left"><a href="<%=mb.getUrl() %>"><%=mb.getName() %></a></td>
													</tr>                              	
					<%				
									m = m + 1;
								}
							}
						}
						if (m > 1) {
					%>
														</table>
													</td>
													</tr>
					<%		
								} 		
						if (j > 1) {
					%>
												</table>
											</td>
											</tr>
					<%		
						} 					
					%>	 	                        	                        
											</table>
										</td>
										</tr>
										<tr>
										<td><img src="../images/sitemap/contbox_bottom.gif" width="230" height="13" alt="" /></td>
										</tr>
										</table>
					 </div>

					<!-- div class="sitmap_section">  
					<% 	//�̻�ȸ
						ArrayList site08 = MenuMa.getMenuList("08","Y");	
					%>                  
                	<table width="230" border="0" cellspacing="0" cellpadding="0">
                  	<tr>
                    <td height="48" align="center" background="../images/sitemap/titlebox_bg.gif" class="title_text">�̻�ȸ</td>
                  	</tr>
                  	<tr>
                    <td><img src="../images/sitemap/titlebox_bar.gif" width="230" height="17" alt="" /></td>
                  	</tr>
                  	<tr>
                    <td><img src="../images/sitemap/contbox_top.gif" width="230" height="13" alt="" /></td>
                  	</tr>
                  	<tr>
                    <td align="center" valign="top" background="../images/sitemap/contbox_bg.gif">
                    	<table width="200" border="0" cellspacing="0" cellpadding="2">
					<%
						iter = site08.iterator();
						s = 1;
						j = 1;
						m = 1;
						while(iter.hasNext()){		
							MenuBean mb = (MenuBean)iter.next();
							if (mb.getMCode() != null) {
								if (mb.getMCode().substring(4,8).equals("0000")) {
									if (m > 1) {
					%>
													</table>
												</td>
												</tr>
					<%					
									}
									if (j > 1) {
					%>
												</table>
											</td>
											</tr>
					<%					
									}
									
									if (s > 1) { //out.println("</div>"); 
									}
									if (s <= 5) {
										//out.println("<div class=\"s_menu01\">");
									} else {
										//out.println("<div class=\"s_menu02\">");
									}				
					%>						
											<tr>
											<td width="12" align="left" class="table_titlebottom"><img src="../images/sitemap/img_bull.gif" width="18" height="18" alt="" /></td>
											<td align="left" class="table_titlebottom"><a href="<%=mb.getUrl() %>"><%=mb.getName() %></a></td>
											</tr>
					<%
									s = s + 1;
									j = 1;
									m = 1;
								} else if (mb.getMCode().substring(6,8).equals("00")) {
									if (m > 1) {
					%>
													</table>
												</td>
												</tr>
					<%					
									}
									if (j == 1) {
					%>
											<tr>
											<td width="12" align="left">&nbsp;</td>
											<td align="left">
												<table width="100%" border="0" cellspacing="0" cellpadding="2">
					<%					
									} 
					%>				
												<tr>
												<td width="12" align="left" class="table_bottom"><img src="../images/sitemap/sub_bullet.gif" width="10" height="7" alt="" /></td>
												<td align="left" class="table_bottom"><a href="<%=mb.getUrl() %>"><%=mb.getName() %></a></td>
												</tr>					
					<%				
									j = j + 1;
									m = 1;
								} else {
									if (m == 1) {
					%>
																			
												<tr>
												<td width="12" align="left" class="table_bottom">&nbsp;</td>
												<td align="left" class="table_bottom">
													<table width="100%" border="0" cellspacing="0" cellpadding="2">
					<%					
									} 
					%>
													<tr>
													<td width="10" align="left">-</td>
													<td align="left"><a href="<%=mb.getUrl() %>"><%=mb.getName() %></a></td>
													</tr>                              	
					<%				
									m = m + 1;
								}
							}
						}
						if (m > 1) {
					%>
														</table>
													</td>
													</tr>
					<%		
								} 		
						if (j > 1) {
					%>
												</table>
											</td>
											</tr>
					<%		
						} 					
					%>	 	                        	                        
											</table>
										</td>
										</tr>
										<tr>
										<td><img src="../images/sitemap/contbox_bottom.gif" width="230" height="13" alt="" /></td>
										</tr>
										</table>
					  </div-->

					<div class="sitmap_section">                  	
					<% 	//��Ÿ����
						ArrayList site09 = MenuMa.getMenuList("09","Y");	
					%>                  
                	<table width="230" border="0" cellspacing="0" cellpadding="0">
                  	<tr>
                    <td height="48" align="center" background="../images/sitemap/titlebox_bg.gif" class="title_text">��Ÿ����</td>
                  	</tr>
                  	<tr>
                    <td><img src="../images/sitemap/titlebox_bar.gif" width="230" height="17" alt="" /></td>
                  	</tr>
                  	<tr>
                    <td><img src="../images/sitemap/contbox_top.gif" width="230" height="13" alt="" /></td>
                  	</tr>
                  	<tr>
                    <td align="center" valign="top" background="../images/sitemap/contbox_bg.gif">
                    	<table width="200" border="0" cellspacing="0" cellpadding="2">
					<%
						iter = site09.iterator();
						s = 1;
						j = 1;
						m = 1;
						while(iter.hasNext()){		
							MenuBean mb = (MenuBean)iter.next();
							if (mb.getMCode() != null) {
								if (mb.getMCode().substring(4,8).equals("0000")) {
									if (m > 1) {
					%>
													</table>
												</td>
												</tr>
					<%					
									}
									if (j > 1) {
					%>
												</table>
											</td>
											</tr>
					<%					
									}
									
									if (s > 1) { //out.println("</div>"); 
									}
									if (s <= 5) {
										//out.println("<div class=\"s_menu01\">");
									} else {
										//out.println("<div class=\"s_menu02\">");
									}				
					%>						
											<tr>
											<td width="12" align="left" class="table_titlebottom"><img src="../images/sitemap/img_bull.gif" width="18" height="18" alt="" /></td>
											<td align="left" class="table_titlebottom"><a href="<%=mb.getUrl() %>"><%=mb.getName() %></a></td>
											</tr>
					<%
									s = s + 1;
									j = 1;
									m = 1;
								} else if (mb.getMCode().substring(6,8).equals("00")) {
									if (m > 1) {
					%>
													</table>
												</td>
												</tr>
					<%					
									}
									if (j == 1) {
					%>
											<tr>
											<td width="12" align="left">&nbsp;</td>
											<td align="left">
												<table width="100%" border="0" cellspacing="0" cellpadding="2">
					<%					
									} 
					%>				
												<tr>
												<td width="12" align="left" class="table_bottom"><img src="../images/sitemap/sub_bullet.gif" width="10" height="7" alt="" /></td>
												<td align="left" class="table_bottom"><a href="<%=mb.getUrl() %>"><%=mb.getName() %></a></td>
												</tr>					
					<%				
									j = j + 1;
									m = 1;
								} else {
									if (m == 1) {
					%>
																			
												<tr>
												<td width="12" align="left" class="table_bottom">&nbsp;</td>
												<td align="left" class="table_bottom">
													<table width="100%" border="0" cellspacing="0" cellpadding="2">
					<%					
									} 
					%>
													<tr>
													<td width="10" align="left">-</td>
													<td align="left"><a href="<%=mb.getUrl() %>"><%=mb.getName() %></a></td>
													</tr>                              	
					<%				
									m = m + 1;
								}
							}
						}
						if (m > 1) {
					%>
														</table>
													</td>
													</tr>
					<%		
								} 		
						if (j > 1) {
					%>
												</table>
											</td>
											</tr>
					<%		
						} 					
					%>	 	                        	                        
											</table>
										</td>
										</tr>
										<tr>
										<td><img src="../images/sitemap/contbox_bottom.gif" width="230" height="13" alt="" /></td>
										</tr>
										</table>                	
										
									</div>

              </div>
            </div>
      </div>
    
        
    </div>
<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>