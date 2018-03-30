<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>    
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","04");
	application.setAttribute("gNavMenuDepth2","04");
	application.setAttribute("gNavMenuDepth3","07");
	application.setAttribute("gNavMenuDepth4","00");
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>   

<%@ include file="../include/topmenu.jsp" %>
<!-- topmenu end -->

<!-- contents -->
<div id="container">
	<table width="100%" height="290" border="0" cellpadding="1" cellspacing="0">
	
	  <tr>
	    <td align="center" valign="top"><table width="1000" height="124" border="0" cellpadding="0" cellspacing="0">
	      <tr>
	       <td class="lnb_area">
			<!-- leftmenu -->
			<%@ include file="../include/leftmenu.jsp" %>
			<!-- //leftmenu -->
			</td>
			<td width="30">&nbsp;</td>
			<td valign="top">
			<table class="con_wrap" border="0" cellspacing="0" cellpadding="0">								
			  <tr>
				<td><!-- contimg --><%@ include file="../include/contimg04.jsp" %></td>
			  </tr>
	          <tr>
	            <td height="34" align="right"><img src="../images/ico_home.gif" alt="home" /> &gt; Investor Relations&gt; Annual report &gt;<span class="loca_text"> Annual Report</span></td>
	          </tr>
	           <tr>
	            <td height="24" align="left" background="../images/sub06/title_line_bg.gif"><img src="../images/sub04/ttl_sub04_4_7.gif" alt="Annual Report" width="93" height="24" /></td>
	          </tr>
	           <tr>
	            <td height="40" align="center">&nbsp;</td>
	          </tr>
	          <tr>
	            <td align="center" valign="top">
					<neo:neoboardFacade parentUri="<%=request.getServletPath()%>" mode="list" bid="ENGAN" adminURL="" sessionName="USERSESSION"/>
				</td>
	          </tr>
	          <tr>
	                  	<td>
	<div style="height:20px ;"></div>
	<div class="new_officer">
		<table summary="Department Contacts Updated">
		<caption>Department Contacts Updated</caption>
		<tbody>
			<tr>				
				<td class="write_day">&nbsp</td>
	       	 	<td class="contact_team"><strong>Department : </strong>Corporate Coordination</td>
	        	<td class="contact_tel"><strong>Contacts : </strong>+82)52-216-2228</td>	
			</tr>
		</tbody>
		</table>
	</div><!-- new_officer end -->                  	
	                  	</td>
	                  	</tr>
	        </table></td>
	      </tr>
	      
	    </table></td>
	  </tr>
	  
	</table>
</div>
<!-- contents end-->

<!-- footer -->
<%@ include file="../include/copyright.jsp" %>
<!-- footer end-->


</body>
</html>
