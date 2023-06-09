<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<div class="col-10  layout-spacing">
		<div class="col-10"
			style="background-color: #f7f7f7; margin-left: 150px;">
			<br> <span class="btn btn-primary"> 질문 </span> <span
				style="color: black; font-size: 18pt; vertical-align: middle;">${board.boardTitle }
				.</span> <span style="float: right;"> ${board.memId } </span> <br> <br>
		</div>
		<hr class="col-10" style="margin-left: 150px;">
		<div class="col-10" style="margin-left: 150px;">
		${board.boardStart }
		</div>
		<hr class="col-10" style="margin-left: 150px;">
		<div class="col-10" style="margin-left: 150px;">
			<span> <br>
			<br>
			<br> ${board.boardContent } <br>
			<br> <br>
			<br>
			<br>
			</span>
		</div>
		<hr class="col-10" style="margin-left: 150px;">
			<div class="col-10" style="margin-left: 150px;">
				<div class="p-2">
					<div class="row align-items-center">
						<div class="col pl-0">
							<c:if test="${not empty board.boardFileList }">
								<c:forEach items="${board.boardFileList }" var="boardFile">

								<li><span class="mailbox-attachment-icon"> <i
										class="far fa-file-pdf"></i>
								</span>
									<div class="mailbox-attachment-info">
										<i class="fas fa-paperclip"></i>${boardFile.attFileName } <span
											class="mailbox-attachment-size clearfix mt-1"> <span>${boardFile.attFancySize }</span>
											<c:url value="/board/download" var="downloadURL">
												<c:param name="attId" value="${boardFile.attId }" />
											</c:url> <a href="${downloadURL }"> <!-- a태그는 다운로드 할때 쓸 것 --> <span
												class="font-25 text-primary mr-2"> <i
													class="las la-download"></i>
											</span>
										</a>
										</span>
									</div></li>

								</c:forEach>
							</c:if>
						</div>
						<!--   <div class="col-auto">
                    Button
                    <a href="javascript:void(0);" class="font-25 text-primary mr-2">
                        <i class="las la-download"></i>
                    </a>
                </div> -->
					</div>
				</div>
			</div>
				<c:choose>
					<c:when test="${answer eq null }">
						<button class="dropdown-item col-10" type="button" id="btnModify"
	data-no="${inquirylist.boardId}" style="text-align: right;"
	onclick="location.href='/company/updateInquForm/${board.boardId}'">수정하기</button>
					</c:when>
					<c:otherwise>
						<div class="col-10" style="background-color: #f7f7f7; margin-left: 150px;">
							<br> 
							<span class="btn btn-primary container-disable"> 답변 </span> 
							<span style="color: black; font-size: 18pt; vertical-align: middle;">${answer.answerTitle } .</span> 
							<br> 
							<br>
						</div>
							<hr class="col-10" style="margin-left: 150px;">
								<div class="col-10" style="margin-left: 150px;">
								${answer.answerStart }
								</div>
							<hr class="col-10" style="margin-left: 150px;">
								<div class="col-10" style="margin-left: 150px;">
									<span> 
										<br>
										<br>
										<br> ${answer.answerContent } <br>
										<br> 
										<br>
									</span>
								</div>
					</c:otherwise>
				</c:choose>
		</div>

	<hr class="col-10" style="margin-left: 150px;">
		
