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
		<div id="qna-index">
			<div class="comuArea qnaArea">
				<div class="comuWrap qnaWrap">
					<div class="comuTitBox">
						<strong>Q&A</strong>
						<a href="javascript:void(0);" onclick="javascript:location.href='qnawrite.do';" class="btnWrite"><span>질문 작성하기</span></a>
						<div class="clr"></div>
					</div>
	                <div class="writeArea" style="display:none;"></div>
	                <div class="comuLitWrap qnaLitWrap">
	                    <ul>
	                    	<c:forEach items="${qnaList }" var="qna">
	                        <li class="comuLit">
	                            <a href="javascript:void(0);" class="titBox">
	                                <span class="arrow"></span>
	                                <c:if test="${!empty qna.qna_answer }">
	                                <span class="tit"><span class="titLabel a-on">답변완료</span>${qna.qna_title }</span>
	                                </c:if>
	                                <c:if test="${empty qna.qna_answer }">
	                                <span class="tit"><span class="titLabel a-on">미답변</span>${qna.qna_title }</span>
	                                </c:if>
	                                <span class="date">${qna.qna_date }</span>
	                            </a>
	                            <div class="contentBox" style="display:none;">
	                                <div class="txtBox qnaBox qBox">
	                                	${qna.qna_content }
	                                    <div class="comuModifyWrap">
	                                        <div class="btnCtrl">
	                                            <a href="javascript:void(0);" class="btnModify"><span>수정</span></a>
	                                            <a href="javascript:void(0);" class="btnDelete"><span>삭제</span></a>
	                                        </div>
	                                    </div>
	                                </div>
	                                <c:if test="${!empty qna.qna_answer }">
	                                <div class="txtBox qnaBox aBox">
	                                	${qna.qna_answer }
	                                </div>
	                                </c:if>
	                              </div>
	                              </li>
	                             </c:forEach>   
	                        
	                       <!--  <li class="comuLit">
	                            <a href="javascript:void(0);" class="titBox">
	                                <span class="arrow"></span>
	                                <span class="tit"><span class="titLabel a-on">미답변</span>Q&A 라구요</span>
	                                <span class="date">2019-03-28</span>
	                            </a>
	                            <div class="contentBox" style="display:none;">
	                                <div class="txtBox qnaBox qBox">
	                                	Q&A인데요<br>
	                                	이건 질문이구요.<br>
	                                	이렇게 작성하시면 될 것 같아여.
	                                    <div class="comuModifyWrap">
	                                        <div class="btnCtrl">
	                                            <a href="javascript:void(0);" class="btnModify"><span>수정</span></a>
	                                            <a href="javascript:void(0);" class="btnDelete"><span>삭제</span></a>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
	                        </li> -->
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