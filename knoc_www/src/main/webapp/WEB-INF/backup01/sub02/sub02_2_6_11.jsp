<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>    
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","02");
	application.setAttribute("gNavMenuDepth2","02");
	application.setAttribute("gNavMenuDepth3","06");
	application.setAttribute("gNavMenuDepth4","11");
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
				<%@include file="/include/subtop_02.jsp"%>
				<!--// location: start //-->
				<div class="locadv">
					<a href="/"><img src="/images/common/loca_home.gif" alt="한국석유공사 메인페이지로 이동" /></a>	
					&gt; <span>열린경영</span>
                    &gt; <span>경영공시</span>
					&gt; <span>기타정보</span>
                    &gt; <span class="locanow">임원국외출장정보</span>
				</div>
				<!--// location: end //-->
				
				<!--[2009-09-21 수정] :: 작성자: 장정인 -->
				<div class="pagetle">
					<h3><img src="/images/management/ttl_sub02_2_6.gif" alt="기타정보" /></h3>
				</div>
				<!--시작-->
				<div class="officer">
					<h4><img src="/images/management/sub02_2_6_1_ta.gif" alt="임원국외출장정보" /> </h4>
					
				</div>
				<neo:neoboardFacade parentUri="<%=request.getServletPath()%>" mode="list" bid="ETCIMWON" adminURL="" sessionName="USERSESSION"/>
				<div class="new_officer">
					<table summary="담당부서 및 연락처 관리일">
					<caption>담당부서 및 연락처 관리일</caption>
						<tbody>
							<tr>
								<td class="write_day"></td>
								<td class="contact_team"><strong>담당부서 : </strong>비서팀</td>
								<td class="contact_user"><strong>담당자 : </strong>김미선</td>
								<td class="contact_tel"><strong>연락처 : </strong>052-216-2034</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="new_officer" style="margin-top:5px ;">
					<table summary="담당부서 및 연락처 관리일">
					<caption>담당부서 및 연락처 관리일</caption>
						<tbody>
							<tr>
								<td class="write_day"></td>
								<td class="contact_team"><strong>담당부서 : </strong>감사실 감사총괄팀</td>
								<td class="contact_user"><strong>담당자 : </strong>김의재</td>
								<td class="contact_tel"><strong>연락처 : </strong>052-216-2103</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="new_officer" style="margin-top:5px ;">
					<table summary="담당부서 및 연락처 관리일">
					<caption>담당부서 및 연락처 관리일</caption>
						<tbody>
							<tr>
								<td class="write_day"></td>
								<td class="contact_team"><strong>담당부서 : </strong>기획조정처 기획관리팀</td>
								<td class="contact_user"><strong>담당자 : </strong>강량화</td>
								<td class="contact_tel"><strong>연락처 : </strong>052-216-2210</td>
							</tr>
						</tbody>
					</table>
				</div>	
				<div class="new_officer" style="margin-top:5px ;">
					<table summary="담당부서 및 연락처 관리일">
					<caption>담당부서 및 연락처 관리일</caption>
						<tbody>
							<tr>
								<td class="write_day"></td>
								<td class="contact_team"><strong>담당부서 : </strong>석유비축처 비축관리팀</td>
								<td class="contact_user"><strong>담당자 : </strong>채성민</td>
								<td class="contact_tel"><strong>연락처 : </strong>052-216-5007</td>
							</tr>
						</tbody>
					</table>
				</div>		
				<div class="infoCheck"><%@include file="/include/satisfy_link.jsp"%></div>
				<!--//끝-->
			</div>
		</div>
	</div>
	
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>