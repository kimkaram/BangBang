<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<c:import url="../common/header.jsp"/>
		<script type="text/javascript">
			$(function(){
				// 게시판 액션
				$('.comuLit').mouseover(function(){
					$(this).addClass('hover');
					$('.arrow').addClass('hover');
				});
				$('.comuLit').mouseout(function(){
					$(this).removeClass('hover');
					$('.arrow').removeClass('hover');
				});
				$('.comuLit .titBox').click(function(){
					$(this).parents('.comuLit').removeClass('hover');
					$(this).closest('.comuLitWrap').find('.comuLit').removeClass('open');
					$('.contentBox').slideUp(300);
					if(!$(this).siblings('.contentBox').is(':visible')){
						$(this).siblings('.contentBox').slideDown(300);
						$(this).parent('.comuLit').addClass('open');	
					}
				});
			});
		</script>
	</head>
	<body>
		<c:import url="../common/top.jsp"/>
		<div id="notice-index">
			<div class="comuArea noticeArea">
				<div class="comuWrap noticeWrap">
					<div class="comuTitBox">
						<strong>공지사항</strong>
						<a href="javascript:void(0);" onclick="javascript:location.href='nwrite.do';" class="btnWrite"><span>글쓰기</span></a>
						<div class="clr"></div>
					</div>
	                <div class="writeArea" style="display:none;"></div>
	                <div class="comuLitWrap noticeLitWrap">
	                    <ul>
	                    	<c:forEach items="${noticeList }" var="notice">
	                        <li class="comuLit">
	                            <a href="javascript:void(0);" class="titBox">
	                                <span class="arrow"></span>
	                                <span class="tit">${notice.notice_title }</span>
	                                <span class="date">${notice.notice_date }</span>
	                            </a>
	                            <div class="contentBox" style="display:none;">
	                                <div class="txtBox">
	                                	${notice.notice_content }
	                                    <div class="comuModifyWrap">
	                                        <div class="btnCtrl">
	                                            <a href="javascript:void(0);" onclick="javascript:location.href='nupdate.do';" class="btnModify"><span>수정</span></a>
	                                            <a href="javascript:void(0);" onclick="javascript:location.href='ndelete.do';" class="btnDelete"><span>삭제</span></a>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
	                        </li>
	                        </c:forEach>
	                    </ul>
	                </div>
	                <div class="pagination">
	                	<div class="page-con">
	              		<a href="#;" class="btn-arrow btn-first"><span>맨처음</span></a>
	                    <a href="#;" class="btn-arrow btn-prev"><span>이전</span></a>
	                    <a href="#;" class="page page-on">1</a>
	                    <a href="#;" class="page">2</a>
	                    <a href="#;" class="page">3</a>
	                    <a href="#;" class="page">4</a>
	                    <a href="#;" class="page">5</a>
	                    <a href="#;" class="btn-arrow btn-next"><span>다음</span></a>
	                    <a href="#;" class="btn-arrow btn-last"><span>맨끝</span></a>
	                </div>
				</div>
			</div>
		</div>
	</body>
</html>