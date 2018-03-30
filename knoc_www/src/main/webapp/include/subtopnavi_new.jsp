

<!-- ���[start] -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "java.util.*"%>
<%@ page import="kr.co.knoc.mgr.*" %>
<%@ page import="kr.co.knoc.content.MenuBean" %>
<%@ taglib uri="/WEB-INF/tlds/sitetaglib.tld" prefix="stl" %>

<%
	String gets = "";
	if(request.getQueryString() != null){
 		gets = "?"+request.getQueryString();
	}
	String currentPage = request.getRequestURL()+gets;
	if (currentPage == null || currentPage.equals("")) {
		currentPage = "/";
	}
	/**	����Ʈ��� �Ķ����
	StringBuffer sb = new StringBuffer();
	for (Enumeration en = request.getParameterNames(); en.hasMoreElements();) {
		String key = (String)en.nextElement();
		sb.append(key+"="+request.getParameter(key)+"&");
	}
	String paramStr = sb.toString();
	paramStr = paramStr.substring(0, paramStr.length()-1);
	**/

	MgrSession ses = (MgrSession)session.getAttribute("USERSESSION");
	String uid = "";
	String userlevel = "9";
	if (ses != null) {
		uid = ses.getUserID();
		userlevel = ses.getUserLevel();
	}
%>
</head>
<body> <!-- ���ΰ�ħ�ϸ� �������� 01~03���� ���� -->
<!-- div class="hidden"><h2>�ٷΰ���</h2></div>
<div id="accessibility" class="hidden">
	<ul>
	<li><a href="#util">�����޴� �ٷΰ���</a></li>
	<li><a href="#topNavi">�ָ޴� �ٷΰ���</a></li>
	<li><a href="#main_content">�������� �ٷΰ���</a></li>
	<li><a href="#footer_2011">�ϴܿ��� �ٷΰ���</a></li>
	</ul>
</div> 

<hr /-->
<div id="wrap">

	<!-- header -->
	<div id="header">
	<!-- top_area -->
   	<div class="top_area">
		<!-- top_util -->
       	<ul class="top_util">
           	<li><a href="#rightarea"><img src="/img/btn/btn_go_container.png" alt="�����ٷΰ���" /></a></li>
               <li>
               	<div class="font_size">
                   	<span class="bline">����ũ��</span>
                       <button class="zoom_in"><span class="bline">����ũ�� ũ��</span></button>
                       <button class="zoom_out"><span class="bline">����ũ�� �۰�</span></button>
                   </div>
               </li>
               <li><button class="btn_print"><span class="bline">�μ�</span></button></li>
           </ul>
           <!-- //top_util -->
		<!-- top_quick_menu -->
           <p class="top_quick_menu">
               <a href="/">Ȩ</a>
               <span class="arrow">I</span>
               <%if(ses != null && ses.getId() != null && ses.getId().length() > 0){ %>
               <a href="/member/logout.jsp">�α׾ƿ�</a>
               <%}else{ %>
               <a href="/member/login.jsp">�α���</a>
               <%} %>
               
               <span class="arrow">I</span>
               <a href="/member/sitemap.jsp">����Ʈ��/��Ÿ����</a>
              
           </p>
           <!-- //top_quick_menu -->
		<!-- language -->
           <div class="language">
               <select id="langs" name="langs" class="langs" title="��� ����">
                   <option value="">Language</option>
                   <option value="/ENG/main.jsp">English</option>
               </select>
               <a href="#this" onclick="javascript:goSite(1);" title="��â" class="btn_go_site"><img src="/img/btn/btn_select.png" alt="����" /></a>
           </div>
		<!-- //language -->
       </div>
       <!-- //top_area -->
       
	<!-- core_area -->
       <div class="core_area">
       	<h1><a href="/"><img src="/img/common/logo.png" alt="�ѱ���������" title="�ѱ���������" /></a></h1>
		<!-- search_area -->
           <div class="search_area">
               <form  name="tsearchForm" id="tsearchForm" method="post" action="/search/list.jsp">
                   <div>
                       <fieldset>
                           <legend>���հ˻�</legend>
                           <input type="text" title="�˻��� �Է�" id="nsearch" name="search" class="search_input" style="background: url(/img/bg/search_txt.png) 0% 50% no-repeat;" onfocus="this.style.backgroundImage=''" onblur="if (this.value=='') this.style.backgroundImage='url(/img/bg/search_txt.png)';" />
                           <input type="image" src="/img/btn/btn_search.png" alt="�˻�" class="btn_search" />
                       </fieldset>
                   </div>
               </form>
           </div>
		<!-- //search_area -->
           <p class="core_txt"><a href="http://www.gov30.go.kr" target="_blank"><img src="/img/common/top_banner.png" alt="�ູ�� ���ѹα��� ���� ���� 3.0" title="�ູ�� ���ѹα��� ���� ���� 3.0" /></a></p>
       </div>
	<!-- //core_area -->        

       <!-- gnb -->
       <div id="gnb">
           <span class="bg">
           	<span></span>
           </span>
           <button class="btn_gnb_close"><span class="bline">�ݱ�</span></button>
           <ul>          
               <li>
                   <a href="/sub05/submain.jsp" class="gnb01"><span class="bline">����3.0��������</span></a>
                   <ul class="gnb_depth">
				<%
					ArrayList al05 = MenuMa.getMenuList("05","Y");	
					Iterator titer = al05.iterator();
					while(titer.hasNext()){		
						MenuBean mb = (MenuBean)titer.next();
						if (mb.getMCode() != null && mb.getMCode().substring(4,8).equals("0000")) {
							
				%>						
							<li><a href="<%=mb.getUrl() %>" title="<%=mb.getName() %> �������� �̵�"><%=mb.getName() %></a></li>
				<%				
						}
					}
				%>
                   </ul>    
               </li>		        

               <li>
                   <a href="/sub01/submain.jsp" class="gnb02"><span class="bline">����Ұ�</span></a>
                   <ul>
				<%
					ArrayList al01 = MenuMa.getMenuList("01","Y");	
					titer = al01.iterator();
					while(titer.hasNext()){		
						MenuBean mb = (MenuBean)titer.next();
						if (mb.getMCode() != null && mb.getMCode().substring(4,8).equals("0000")) { //0111 0112 mb.getMCode()
				%>						
							<li><a href="<%=mb.getUrl() %>" title="<%=mb.getName() %> �������� �̵�"><%=("0111".equals(mb.getMCode().substring(0,4)) || "0112".equals(mb.getMCode().substring(0,4)))?mb.getName().substring(0,4)+"<br />"+mb.getName().substring(4,mb.getName().length()):mb.getName() %></a></li>
				<%				
						}
					}
				%>	
                   </ul>    
               </li>
               
               <li>
                   <a href="/sub03/submain.jsp" class="gnb03"><span class="bline">����Ұ�</span></a>
                   <ul>
				<%
					ArrayList al03 = MenuMa.getMenuList("03","Y");	
					titer = al03.iterator();
					while(titer.hasNext()){		 
						MenuBean mb = (MenuBean)titer.next();
						if (mb.getMCode() != null && mb.getMCode().substring(4,8).equals("0000")) {
				%>						
							<li><a href="<%=mb.getUrl() %>" title="<%=mb.getName() %> �������� �̵�"><%=("0304".equals(mb.getMCode().substring(0,4)))?mb.getName().substring(0,6)+"<br />"+mb.getName().substring(6,mb.getName().length()):mb.getName() %></a></li>
				<%				
						}
					}
				%>
                   </ul>    
               </li>
               
               <li>
                   <a href="/sub02/submain.jsp" class="gnb04"><span class="bline">�����濵</span></a>
                   <ul>
				<%
					ArrayList al02 = MenuMa.getMenuList("02","Y");
					titer = al02.iterator();
					while(titer.hasNext()){		
						MenuBean mb = (MenuBean)titer.next();
						if (mb.getMCode() != null && mb.getMCode().substring(4,8).equals("0000")) {
				%>						
							<li><a href="<%=mb.getUrl() %>" title="<%=mb.getName() %> �������� �̵�"><%=mb.getName() %></a></li>
				<%				
						}
					}
				%>
                   </ul>    
               </li>
               
               <li>
                   <a href="/sub11/submain.jsp" class="gnb05"><span class="bline">���̹�ȫ����</span></a>
                   <ul>
				<%
					ArrayList al11 = MenuMa.getMenuList("11","Y");
					titer = al11.iterator();
					while(titer.hasNext()){		
						MenuBean mb = (MenuBean)titer.next();
						if (mb.getMCode() != null && mb.getMCode().substring(4,8).equals("0000")) {
				%>						
							<li><a href="<%=mb.getUrl() %>" title="<%=mb.getName() %> �������� �̵�"><%=mb.getName() %></a></li>
				<%				
						}
					}
				%>
                   </ul>    
               </li>
               
               <li>
                   <a href="/sub04/submain.jsp" class="gnb06"><span class="bline">������</span></a>
                   <ul>
				<%
					ArrayList al04 = MenuMa.getMenuList("04","Y");
					titer = al04.iterator();
					while(titer.hasNext()){		
						MenuBean mb = (MenuBean)titer.next();
						if (mb.getMCode() != null && mb.getMCode().substring(4,8).equals("0000")) {
				%>						
							<li><a href="<%=mb.getUrl() %>" title="<%=mb.getName() %> �������� �̵�"><%=mb.getName() %></a></li>
				<%				
						}
					}
				%>
                   </ul>    
               </li>                                                                

               <li>
                   <a href="/sub12/sub12_1_1.jsp" class="gnb07"><span class="bline">���簳�߼���</span></a>
                   <ul>
				<%
					ArrayList al07 = MenuMa.getMenuList("12","Y");
					titer = al07.iterator();
					while(titer.hasNext()){		
						MenuBean mb = (MenuBean)titer.next();
						if (mb.getMCode() != null && mb.getMCode().substring(4,8).equals("0000")) {
				%>						
							<li><a href="<%=mb.getUrl() %>" title="<%=mb.getName() %> �������� �̵�"><%=mb.getName() %></a></li>
				<%				
						}
					}
				%>
                   </ul>    
               </li>                	
           </ul>        	
       </div>
	<!-- //gnb -->
	</div>
	<!-- //header -->

		<hr />
		<div style="clear:both ; height:50px ;"></div>

		
<script type="text/javascript">

	//document.getElementById("snsTab").style.display="none";

	function facebook(){
	 	document.getElementById("sns_tab01").style.display="none";
	 	document.getElementById("sns_tab02").style.display="";
	}
	function twiter(){
	 	document.getElementById("sns_tab02").style.display="none";
	 	document.getElementById("sns_tab01").style.display="";
	}
	function openAll() {
		document.getElementById("more01b").style.display = "block";
		document.getElementById("more01a").style.display = "none";
		document.getElementById("smainvisual").style.display = "none";
		document.getElementById("smainvisual2").style.display = "block";
		return false;
	}
	function closeAll() {
		document.getElementById("more01b").style.display = "none";
		document.getElementById("more01a").style.display = "block";
		document.getElementById("smainvisual").style.display = "block";
		document.getElementById("smainvisual2").style.display = "none";
		return false;
	}

</script>

