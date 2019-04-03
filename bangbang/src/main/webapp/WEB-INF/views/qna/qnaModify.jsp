<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<c:import url="/views/common/header.jsp"/>
	</head>
	<body>
		<c:import url="/views/common/top.jsp"/>
		<div id="notice-index">
			<div class="comuArea qnaArea">
				<div class="comuWrap qnaWrap">
					<div class="comuTitBox">
						<strong>질문 수정하기</strong>
						<div class="clr"></div>
					</div>
					<form name="modifyForm" id="" method="post" action="">
				        <input type="hidden" name="bNo" value="">
				        <div class="comuWriteWrap">
							<div class="writeTit">
								<div class="titCon">
									<label>제목</label>
									<div class="titBox">
										<input type="text" name="title">
									</div>
								</div>
								<ul>
									<li>
										<div class="titCon">
											<label>작성자</label>
											<div class="titBox">
												<input type="text" name="writer" value="master" readonly />
											</div>
										</div>
									</li>
									<li>
										<div class="titCon">
											<label>작성일</label>	
											<div class="titBox">
												<input type="text" name="date" value="2019.03.01" readonly />
											</div>
										</div>
									</li>
								</ul>
							</div>
				            <textarea name="">얍얍</textarea>
				            <div class="btnCtrl">
				                <a href="javascript:void(0);" class="btnOk"><span>확인</span></a>
				                <a href="javascript:void(0);" class="btnCancel"><span>취소</span></a>
				            </div>
				        </div>
				    </form>
				</div>
			</div>
		</div>
	</body>
</html>