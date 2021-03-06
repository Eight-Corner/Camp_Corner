<%--
  Created by IntelliJ IDEA.
  User: corne
  Date: 2021-03-05
  Time: 오후 5:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<c:set var = 'userStatus' value = "false"></c:set>
<c:if test="${param.type eq 'login' }">
	<c:set var = 'userStatus' value = 'true'/>
</c:if>

<header id="header">

    <!-- Nav -->
    <nav id="nav">
        <ul class="navbar">
           <img class="current" src="${pageContext.request.contextPath}/../images/menu-icon.png" alt="홈 바로가기" height="50">     
			<li>
			<a href="${pageContext.request.contextPath}/Main.me">HOME</a>
			</li>
            <li><a href="#">전체</a></li>
            <li><a href="#" class="dropdown">계정 메뉴</a>
                <ul>
                        <c:if test="${userStatus eq false}">
                    <li class="actions stacked" style="margin: 0 auto; width: fit-content;">
                        <a href="${pageContext.request.contextPath}/user/MemberJoin.me">회원가입</a></li>
                    <li class="actions stacked" style="margin: 0 auto; width: fit-content;">
                        <a href="${pageContext.request.contextPath}/user/MemberLogin.me">로그인</a></li>
                        </c:if>

                        <c:if test="${userStatus eq true}">
                    <li class="actions stacked" style="margin: 0 auto; width: fit-content;">
                        <a href="${pageContext.request.contextPath}/user/MemberEdit.me">마이페이지</a></li>
                        
                    <li class="actions stacked" style="margin: 0 auto; width: fit-content;">
                        <a href="${pageContext.request.contextPath}/user/MemberLogout.me">로그아웃</a></li>
                        </c:if>
                </ul>
            </li>
              <c:if test="${userStatus eq true}">
               <li><a href="#" class="dropdown">게시판 메뉴</a>
               		<ul>
			            <li><a href="#">자유게시판</a></li>
			            <li><a href="#">캠핑리뷰</a></li>
			            <li><a href="#">캠핑음식</a></li>
			            <li><a href="#">캠핑팁</a></li>
			            
		            </ul>
               </li>
              </c:if>
            <li><a href="#">공지사항</a></li>
            <li><a href="${pageContext.request.contextPath}/../../elements.jsp">고객센터</a></li>
            <!-- <li><a href="generic.html">Generic</a></li> -->
            <!-- <li><a href="elements.html">Elements</a></li> -->
        </ul>
    </nav>

    <!-- Logo -->


    <!-- <a class="logo" href="index.html">  <span>CORNER CAMP</span></a> -->
</header>


</body>
</html>
