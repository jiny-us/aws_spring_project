<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--
	Forty by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
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
					<section id="contact">
					
						<div class="inner">
							<section style="width:90%">
								<h4 style="padding-bottom:20px;"> [ 게시글 상세 ] </h4>
									<form>
										<div class="fields">
											<div class="field">
												<label for="subject">제목</label>
												<input type="text" name="subject" id="subject" disabled="disabled" value="${detail.subject}" />
											</div>
											<div class="field half">
												<label for="writer">작성자</label>
												<input type="text" name="writer" id="writer"  disabled="disabled"   value="${detail.writer}"/>
											</div>
											<div class="field half">
												<label for="date">작성일자</label>
												<input type="text" name="date" id="date" disabled="disabled"   value="${detail.strDate}" />
											</div>
											<div class="field">
												<label for="content">내용</label>
												<textarea name="content" id="content" rows="6" disabled="disabled" >${detail.content}</textarea>
											</div>
										</div>
										
						
									</form>
										<ul class="actions">
										
											<li><button class="btn btn-primary" onclick="location.href='/update/${detail.bno}'">수정</button></li>
											<li><button class="btn btn-danger" onclick="delContent(${detail.bno})">삭제</button></li>
											<li><button class="btn btn-danger" onclick="location.href='/list'">목록으로</button></li>
										</ul>
							</section>
						
						</div>
					</section>

			

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
<script type="text/javascript">

function delContent(bno){
	if(confirm("정말로 삭제하시겠습니까?")){
		location.href='/delete/'+bno;
	}else{
		return;
	}
	
}

</script>
</html>


