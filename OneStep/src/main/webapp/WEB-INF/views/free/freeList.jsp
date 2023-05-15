<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!--  Navbar Starts / Breadcrumb Area  -->
<div class="sub-header-container">
	<header class="header navbar navbar-expand-sm">
		<ul class="navbar-nav flex-row">
			<li>
				<div class="page-header">
					<nav class="breadcrumb-one" aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="javascript:void(0);">Apps</a></li>
							<li class="breadcrumb-item active" aria-current="page"><span>프리랜서
									찾기</span></li>
							<li style="margin-left: 10px"> 
							<button onclick="location.href='/free/insertFree'"
						class="btn btn-soft-primary btn-rounded  " style="float: right"
						type="button">프리랜서 등록하기</button></li>
						</ol>
					</nav>
				</div>
			</li>
		</ul>
</div>
<!--  Navbar Ends / Breadcrumb Area  -->

<div class="layout-px-spacing">
	<div class="row layout-spacing layout-top-spacing" id="cancel-row">
		<div class="col-lg-12">
			<div class="">
				<div class="widget-content searchable-container grid">
					<div class="card-box">
						<div class="row">
							<div
								class="col-xl-6 col-lg-6 col-md-6 col-sm-12 filtered-list-search align-self-center w-100">
								<form class="form-inline my-2 my-lg-0">
									<div class="">
										<i class="las la-search toggle-search"></i> <input type="text"
											id="input-search"
											class="form-control search-form-control  ml-lg-auto"
											placeholder="Search Companies">
									</div>
								</form>
							</div>
						</div>
					
					</div>


					<div class="searchable-items grid card-box">
						<c:forEach items="${freeList }" var="freeList">
							<div class="items grid" style="border: 2px solid #5165a7;">

								<div class="user-profile">
									<div class="user-meta-info">
										<p class="user-name">${freeList.memName }</p>
									</div>
									<fmt:formatDate value="${freeList.freeStart }" pattern="yyyy-MM-dd" var="start"/>
									<p class="font-12 text-center text-muted">${start }</p>
									<div
										class="d-flex company-small-details align-center justify-content-around mt-3">
										<div class="left text-center">
											<p class="font-12 text-muted  mb-0">관련기술</p>
											<p class="font-25 text-primary strong">${freeList.freeSkill }</p>
										</div>
										<div class="right text-center">
											<p class="font-12 text-muted  mb-0">경험유무</p>
											<p class="font-25 text-primary strong">${freeList.freeExper }</p>
										</div>
									</div>
									<div class="action-btn">
										<a class="btn btn-sm btn-dark"
											href="/free/detailMem/${freeList.memId }">Details</a>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>