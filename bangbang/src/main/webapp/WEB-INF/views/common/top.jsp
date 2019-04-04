<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
	</head>
	<body>
		<div class="adminHeader">
		    <div class="global_top">
				<h1 class="logo"><a href="">BANG GRAE</a></h1>
				<div class="myNavBox">
				<c:if test="${!empty sessionScope.loginMember }">
					<a href="logout.do" ><span>로그아웃</span></a>
					<c:if test="${ sessionScope.loginMember.type eq '개인' }" >
		    		<a href="userMyPage.do" class="btnLogin btnMyinfo"><span>내 계정</span></a>
		    		</c:if>
		    		<c:if test="${ sessionScope.loginMember.type ne '개인' }" >
		    		<a href="companyMyPage.do" class="btnLogin btnMyinfo"><span>계정 관리</span></a>
		    		</c:if>
		    		
		    	</c:if>
		    	<c:if test="${empty sessionScope.loginMember }">
					<a href="loginpage.do" ><span>로그인</span></a>
					<a href="javascript:void(0);" class="btnJoin"><span>회원가입</span></a>
				</c:if>
				</div>
		        <ul class="global_top_menu">
					<li class="navTab navTab_1"><a href="">MAP</a></li>
					<li class="navTab navTab_2"><a href="blist.do">BANG</a></li>
					<li class="navTab navTab_5"><a href="">ZZIM</a></li>
					<li class="navTab navTab_6"><a href="nlist.do">NOTICE</a></li>
					<li class="navTab navTab_6"><a href="qnalist.do">QNA</a></li>
		        </ul>
				<a href="" class="adminTab"><span>관리자</span></a>
		    </div>
		</div>
		<script type="text/javascript">
/* 			$(function(){
				
				// 로그인 팝업
				$("a.btnLogin").fancybox({
					type				: 'iframe',
					href				: 'logpage.do',
					frameWidth			: 430,
					frameHeight			: 350,
					hideOnContentClick	: false
				});
				
				// 회원가입 팝업
				$(".btnJoin").fancybox({
					src		: '../member/memberJoin',
					type	: 'iframe',
					opts	: {
						iframe : {
							css : {
								width       : '430px',
								height      : '350px'
							}
						}
					}
				});
				
			}); */
		</script>
	</body>
</html>
