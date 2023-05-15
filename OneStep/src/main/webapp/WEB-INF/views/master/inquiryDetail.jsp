<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!-- 문의 답변 -->

<style>
    .container-disable { 
      /* 클릭 불가능 none */
      pointer-events : none;
      background-color: lightsalmon;
    }
</style>

	<div class="col-10  layout-spacing">
		<div class="col-10" style="background-color: #f7f7f7; margin: 0 auto; margin-top: 3%">
			<br> 
			<span class="btn btn-primary container-disable"> 질문 </span> 
			<span style="color: black; font-size: 18pt; vertical-align: middle;">${inquiryDetail.boardTitle } .</span> 
			
			<br> 
			<br>
		</div>
			<hr class="col-10" style=" margin: 0 auto; "><br>
				<div class="col-10" style=" margin: 0 auto;">
				<span style="float: left;">작성자 : ${inquiryDetail.memId } </span> 
				<fmt:formatDate value="${inquiryDetail.boardStart }" pattern="yyyy_MM-dd" var="start"/>
				<span style="float: right;"> ${start } </span>
				</div><br> <br>
			<hr class="col-10" style=" margin: 0 auto;">
				<div class="col-10" style=" margin: 0 auto; ">
					<span>
					<br>
					<br>
					<br> <c:out value=" ${inquiryDetail.boardContent } " escapeXml="false"></c:out>  <br>
					<br> 
					<br>
					</span>
			<div class="col-10" style="margin: margin: 0 auto;">
				<div class="p-2">
					<div class="row align-items-center">
						<div class="col pl-0">
							<c:if test="${not empty inquiryDetail.boardFileList }">
								<c:forEach items="${inquiryDetail.boardFileList }" var="boardFile">

									<div class="mailbox-attachment-info">
										<i class="fas fa-paperclip"></i>${boardFile.attFileName } 
										<span class="mailbox-attachment-size clearfix mt-1"> <span>${boardFile.attFancySize }</span>
											<c:url value="/board/download" var="downloadURL">
												<c:param name="attId" value="${boardFile.attId }" />
											</c:url> <a href="${downloadURL }"> <!-- a태그는 다운로드 할때 쓸 것 --> 
											<span class="font-25 text-primary mr-2"> 
												<i class="las la-download"></i>
											</span>
										</a>
										</span>
									</div>
								</c:forEach>
							</c:if>
						</div>
					</div>
				</div>
			</div>
				</div>
		<hr class="col-10" style="margin: margin: 0 auto; margin-top: 3%;">
				<c:choose>
					<c:when test="${answer == null }">
						<div class="col-10" style=" margin: 0 auto; margin-top: 3%;">
							<span class="btn btn-primary" style="float: right;" id="insertBtn">답변</span>
						</div>
					</c:when>
					<c:otherwise>
						<div class="col-10" style="background-color: #f7f7f7;margin: 0 auto;">
							<br> 
							<span class="btn btn-primary container-disable"> 답변 </span> 
							<span style="color: black; font-size: 18pt; vertical-align: middle;">${answer.answerTitle } .</span> 
							<br> 
							<br>
						</div>
							<hr class="col-10" style="margin: 0 auto;">
								<div class="col-10" style="margin: 0 auto;">
								<br>
								<fmt:formatDate value="${answer.answerStart }" pattern="yyyy_MM-dd" var="astart"/>
								${astart}
								<br>
								</div>
							<hr class="col-10" style="margin: 0 auto;">
								<div class="col-10" style="margin: 0 auto;">
									<span> 
										<br>
										<br>
										<br> ${answer.answerContent } <br>
										<br> 
										<br>
									</span>
								</div>
								<div class="col-10" style="margin: 0 auto;">
									<span class="btn btn-primary" style="float: right;" id="updateBtn">수정</span>
									<span class="btn btn-primary" style="float: right;" id="deleteBtn">삭제</span>
								</div>
								
									<form action="/master/deleteAnswer" method="post" id="nFrm">
										<input type="hidden" name="boardId" value="${answer.boardId }">
										<input type="hidden" name="answerId" value="${answer.answerId }">
									</form>
					</c:otherwise>
				</c:choose>
	</div>
	
<script type="text/javascript">
var insertBtn = $("#insertBtn");
var updateBtn = $("#updateBtn");
var deleteBtn = $("#deleteBtn");
var nFrm = $("#nFrm");

insertBtn.on("click",function(){
	location.href="/master/answer?boardId=${inquiryDetail.boardId}";
});

updateBtn.on("click",function(){
	location.href="/master/updateAnswerForm?answerId=${answer.answerId}&&boardId=${inquiryDetail.boardId}"
});

deleteBtn.on("click",function(){
	if(confirm("정말로 삭제하시겠습니까?")){
		nFrm.submit();
	}else{
		nFrm.reset();
	}
});
</script>