<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!-- 	<h3>ONESTEP</h3> -->
	<hr />
	
<!--  header의 시계가 나오는 부분 -->
<style>
#fontSize {
  font-size: 20px; 
} 
</style>
<div id="fontSize">
<div class="sub-header-container">
  <header class="header navbar navbar-expand-sm">
      <ul class="navbar-nav flex-row">
          <li>
              <div class="page-header">
                  <nav class="breadcrumb-one" aria-label="breadcrumb">
                      <ol class="breadcrumb">
                          <li class="breadcrumb-item"><a href="javascript:void(0);">Apps</a></li>
                          <li class="breadcrumb-item active" aria-current="page"><span>자유게시판</span></li>
                      </ol>
                  </nav>
              </div>
          </li>
      </ul>
      <ul class="navbar-nav d-flex align-center ml-auto right-side-filter">
          <li class="">
              <p class="current-time" id="currentTime"></p>
              <p class="current-date" id="currentDate"></p>
          </li>
      </ul>
  </header>
</div>


<!--  검색창이 나오는 부분 -->

   <div class="card-body px-0 pb-2">
	  <form class="row" id="searchForm">
	  	<input type="hidden" name="page" id="page" value=""/>
			<div class="col-md-6">
			</div>
		<div class="col-md-1">
		  <div class="input-group input-group-static mb-4">
			 <select class="form-control" id="exampleFormControlSelect1" name="searchType">
			   <option value="title" <c:if test="${searchType eq 'title' }">selected</c:if>>제목</option>
			   <option value="writer" <c:if test="${searchType eq 'writer' }">selected</c:if>>작성자</option>
			 </select>
		   </div>
		</div>
		<div class="col-md-3">
		  <div class="ms-md-auto">
		  	<div class="input-group input-group-outline">
				  <label class="form-label"></label>
				  <input type="text" class="form-control" name="searchWord" value="${searchWord }">
			</div>	  
		  </div>
		</div>
		<div class="col-md-2">
		  <button type="submit" class="btn btn-outline-secondary">검색</button>
		</div>
	  </form>
	</div>

<!--  검색창이 나오는 부분 -->










<!-- 				<h5 class="">자유게시판</h5> -->
	<div class="col-xl-10 col-lg-12 col-md-12 col-sm-12 layout-spacing text-center" style="margin: 0 auto;">
		<div class="widget dashboard-table">
			<div class="widget-heading">

			</div>
			<div class="widget-content">
				<div class="table-responsive">
					<table class="table" style="table-layout:fixed">
						<thead>
							<tr>
								<th><div class="th-content"><font size="3">NO</font></div></th>
								<th style="width:40%"><div class="th-content" align="left"><font size="3">제목</font></div></th>
								<th><div class="th-content"><font size="3">작성자</font></div></th>
								<th><div class="th-content"><font size="3">작성일</font></div></th>
								<th><div class="th-content"><font size="3">조회수</font></div></th>
<!-- 								<th><div class="th-content">좋아요</div></th> -->
							</tr>
						</thead>
						<tbody>
							<c:set value="${pagingVO.dataList }" var="boardList"/>
							<c:choose>
								<c:when test="${empty boardList }">
									<tr>
										<td colspan="1" class="d-flex">조회하신 게시글이 존재하지 않습니다.</td>
									</tr>
								</c:when>
								<c:otherwise>
									<c:forEach items="${boardList }" var="board">
										<tr>
											<td>${board.boardId }</td>
											<td style="overflow:hidden;white-space:nowrap;text-overflow:ellipsis;" align="left">
												<a href="/board/read?boardId=${board.boardId }">${board.boardTitle }
													<c:if test="${board.recnt >0 }">
														<span style="color: red;">(${board.recnt })</span>
													</c:if>
												</a>
											</td>
<%-- 											<td><c:out value="${board.boardContent }" escapeXml="false"/></td> --%>
											<td>${board.memId }</td>
											<td><fmt:formatDate value="${board.boardStart }" pattern="yyyy-MM-dd"/></td>
											<td>${board.boardHit }</td>
<!-- 											<td> -->
<%-- 												<c:if test="${board.goodcnt >0 }"> --%>
<%-- 														<span style="color: red;">(${board.goodcnt })</span> --%>
<%-- 												</c:if> --%>
<!-- 											</td> -->
	                                    </tr>
                                    </c:forEach>
								</c:otherwise>
							</c:choose>
						</tbody>
					</table>
				</div>
			</div>
			<div class="pagination p13 text-center mt-4">
                    <ul class="mx-auto">
               <!--        <a href="#" class="prev"><li>Prev</li></a>
                      <a class="is-active" href="#"><li>1</li></a>
                      <a href="#"><li>2</li></a>
                      <a href="#"><li>3</li></a>
                      <a href="#" class="next"><li>Next</li></a> -->
                      <nav aria-label="Page navigation example" id="pagingArea">
                      	${pagingVO.pagingHTML }
                      </nav>
                    </ul>
<!-- 	<div class="card-body"> -->
		<c:if test="${memberVO.memId !=null }">
<!-- 			<button type="button" class="btn btn-primary" id="newBtn">등록</button> -->
			<button type="button" class="btn btn-primary" onclick="javascript:location.href='/board/form/${boardVO.boardCategory}'"  style="float: right;">등록</button>
		</c:if>
<!-- 	</div> -->
            </div>
		</div>
	</div>
	</div>

<!-- page 버튼 이벤트 주는 부분 -->
<script type="text/javascript">
$(function(){
	var searchForm=$("#searchForm");
	var pagingArea=$("#pagingArea");
	var newBtn =$("#newBtn");
	
	pagingArea.on("click","a",function(e){
// 		alert("어ㅣㅏ리");
		e.preventDefault();
		var pageNo = $(this).data("page");
		searchForm.find("#page").val(pageNo);
		searchForm.submit();
	});
	
// 	newBtn.on("click", function(){
// 		location.href="/board/form?boardCategory=boardVO.boardCategory";
// 	});
});

</script>













