<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
	<head>
		<title>KB데이타시스템_TOYPROJECT</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="../assets/css/main.css" />
		<noscript><link rel="stylesheet" href="/assets/css/noscript.css" /></noscript>
	</head>
	<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper">
				<!-- Header -->
					<header id="header" class="alt">
						<a href="/" class="logo"><img src="/images/kb_data_logo.png" alt="" style="width: 300px; height: 45px; margin-top: 15px; margin-bottom:15px; margin-left: 20px;"/></a>
						<nav>
							<a href="#menu">Menu</a>
						</nav>
					</header>

				<!-- Menu -->
					<nav id="menu">
						<ul class="links">
							<li><a href="/index">Home</a></li>
							<!-- <li><a href="landing.html">Landing</a></li>
							<li><a href="generic.html">Generic</a></li>
							<li><a href="elements.html">Elements</a></li> -->
						</ul>
						<ul class="actions stacked">
							<!-- <li><a href="#" class="button primary fit">Get Started</a></li> -->
							<li><a href="/list" class="button fit">자유게시판</a></li>
						</ul>
					</nav>

			
				<!-- Main -->
			

				<!-- Contact -->
					<section id="contact" style="padding-top:30px;">
						<div class="inner">
							<section style="width:10%">
								<form id="msgForm">
									
									<ul class="actions">
										<li><input type="button" value="글쓰기" class="primary" onclick="location.href='/insert'"/></li>
										
									</ul>
								</form>
								
							</section>
							<section class="split" style="width:90%; padding:30px;">
								<table>
								
									<thead>
		
										<tr>
											<th scope="col" style="text-align:center;">번호</th>
											<th scope="col" style="text-align:center;">제목</th>
											<!-- <th scope="col" style="text-align:center;">내용</th> -->
											<th scope="col" style="text-align:center;">작성자</th>
											<th scope="col" style="text-align:center;">작성일</th>
											
										</tr>
										
									</thead>
									<tbody id="boardContent">
										<c:forEach var="l" items="${list}">
											<tr onclick="location.href='/detail/${l.bno}'">
												<td style="text-align:center;"> ${l.bno}</td>
												<td> ${l.subject}</td>
												<%--  <td >${l.content}</td> --%>
                  								<td style="text-align:center;">${l.writer}</td>
											
												<td style="text-align:center;">
													<fmt:formatDate value="${l.created_date}" pattern="yyyy.MM.dd HH:mm:ss"/>
												</td>
											</tr>
										</c:forEach>
										
										

									</tbody>
								</table>
							</section>
						</div>
					</section>

				<!-- Footer -->
					<!-- <footer id="footer">
						<div class="inner">
							<ul class="icons">
								<li><a href="#" class="icon brands alt fa-twitter"><span class="label">Twitter</span></a></li>
								<li><a href="#" class="icon brands alt fa-facebook-f"><span class="label">Facebook</span></a></li>
								<li><a href="#" class="icon brands alt fa-instagram"><span class="label">Instagram</span></a></li>
								<li><a href="#" class="icon brands alt fa-github"><span class="label">GitHub</span></a></li>
								<li><a href="#" class="icon brands alt fa-linkedin-in"><span class="label">LinkedIn</span></a></li>
							</ul>
							<ul class="copyright">
								<li>&copy; Untitled</li><li>Design: <a href="https://html5up.net">HTML5 UP</a></li>
							</ul>
						</div>
					</footer> -->

			</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
	
</html>