<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--  Sidebar Starts  -->

<div class="sidebar-wrapper sidebar-theme">
	<div>
		<div class="sc-container"></div>
		<a href="javascript:void(0);" class="sidebarCollapse"
			data-placement="bottom"> <i class="las la-angle-left"></i>
		</a>
	</div>
	<nav id="sidebar">
		<ul class="navbar-item theme-brand flex-row  text-center">
			<li class="nav-item theme-logo"><a href="index.html"> <img
					src="${pageContext.request.contextPath }/resources/assets/img/onestep.png"
					class="navbar-logo" alt="logo">
			</a></li>
			<li class="nav-item theme-text"><a href="/member/mainn"
				class="nav-link"> ONESTEP </a></li>
		</ul>
		<!--         <div align="center"> -->
		<%--         <img alt="" src="${pageContext.request.contextPath }/resources/assets/img/user.png" width="50px" height="50px"  > --%>
		<%--            <h6 style="color: white;" align="center">${sessionScope.memberVO.memName } 님 </h6> --%>
		<!--            <br> -->
		<!--            </div> -->


		<ul class="list-unstyled menu-categories" id="accordionExample">
			<li class="menu"><a href="#anno" data-toggle="collapse"
				aria-expanded="false" class="dropdown-toggle">
					<div>
						<i class="las la-home"></i> <span
							onclick="location.href ='/member/login'">채용공고</span>
					</div>
			</a></li>

			<li class="menu"><a href="#app" data-toggle="collapse"
				aria-expanded="false" class="dropdown-toggle">
					<div>
						<i class="lab la-medapps"></i> <span
							onclick="location.href ='/member/login'">채용달력</span>
					</div>
			</a></li>


			<li class="menu-title"></li>
			<li class="menu"><a href="#authentication"
				data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
					<div class="">
						<i class="las la-lock"></i> <span>기업정보</span>
					</div>
					<div>
						<i class="las la-angle-right sidemenu-right-icon"></i>
					</div>
			</a></li>
			<ul class="collapse submenu list-unstyled" id="authentication"
				data-parent="#accordionExample">
				<li class="active"><a data-active="true" href="/member/login">
						기업리뷰 </a></li>
				<li><a href="/member/login">기업비교 </a></li>
			</ul>
			<!--             <li class="menu"> -->
			<!--                 <a href="#authentication" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"> -->
			<!--                     <div class=""> -->
			<!--                         <i class="lab la-medapps"></i> -->
			<!--                         <span></span> -->
			<!--                     </div> -->
			<!--                 </a> -->
			<!--             </li> -->
			<li class="menu"><a href="#mypage" data-toggle="collapse"
				aria-expanded="false" class="dropdown-toggle">
					<div class="">
						<i class="lab la-medapps"></i> <span
							onclick="location.href='/member/login'">마이페이지</span>
					</div>
			</a></li>
			<li class="menu-title"></li>
			<li class="menu"><a href="#cummunity" data-toggle="collapse"
				aria-expanded="false" class="dropdown-toggle">
					<div class="">
						<i class="las la-drafting-compass"></i> <span>커뮤니티</span>
					</div>
					<div>
						<i class="las la-angle-right sidemenu-right-icon"></i>
					</div>
			</a></li>
			<ul class="collapse submenu list-unstyled" id="cummunity"
				data-parent="#accordionExample">
				<li><a href="/board/list/01">자소서 커뮤니티 </a></li>
				<li><a href="/board/list/03">자유 커뮤니티 </a></li>
				<li><a href="basic_ui_animation.html"> 면접 커뮤니티 </a></li>
				<li><a href="basic_ui_cards.html"> 채용 커뮤니티 </a></li>
				<li><a href="basic_ui_lightbox.html"> 프리랜서 커뮤니티 </a></li>
			</ul>

			<li class="menu-title"></li>
			<li class="menu"><a href="#pages" data-toggle="collapse"
				aria-expanded="false" class="dropdown-toggle">
					<div class="">
						<i class="las la-file"></i> <span
							onclick="location.href='/member/login'">프리랜서</span>
					</div>
			</a></li>
			<li class="menu-title"></li>
			<li class="menu"><a href="#notice" data-toggle="collapse"
				aria-expanded="false" class="dropdown-toggle">
					<div class="">
						<i class="las la-file"></i> <span>고객센터</span>
					</div>
					<div>
						<i class="las la-angle-right sidemenu-right-icon"></i>
					</div>
			</a></li>
			<ul class="collapse submenu list-unstyled" id="notice"
				data-parent="#accordionExample">
				<li><a href="/member/notice"> 공지사항 </a></li>
				<li><a href="/member/faq"> 문의하기 </a></li>
				<li><a href="/member/inquirylist"> 나의 문의 내역 </a></li>
			</ul>

		</ul>
		<li class="menu-title"></li>
		<li class="menu"><a href="#pages" data-toggle="collapse"
			aria-expanded="false" class="dropdown-toggle">
				<div class="">
					<i class="las la-file"></i> <span
						onclick="location.href='/member/login'">프리랜서</span>
				</div>
		</a></li>
		</ul>
		<ul class="sidebar-bottom-options">
			<li class="nav-item dropdown message-dropdown"><a
				href="javascript:void(0);" class="nav-link dropdown-toggle"
				id="messageDropdown" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> <i class="las la-envelope"></i>
			</a>
				<div class="dropdown-menu position-absolute"
					aria-labelledby="messageDropdown">
					<div class="nav-drop is-notification-dropdown">
						<div class="inner">
							<div class="nav-drop-header mb-2 px-2">
								<span class="text-black font-12 strong">Recent mails</span>
							</div>
							<div class="nav-drop-body account-items pb-0">
								<a class="account-item" href="javascript:void(0);">
									<div class="media align-items-center">
										<div class="user-img mr-2">
											<img class="rounded-circle avatar-xs"
												src="${pageContext.request.contextPath }/resources/assets/img/profile-11.jpg"
												alt="profile">
										</div>
										<div class="media-body">
											<div class="">
												<h6 class="font-12 mb-0 strong">Jennifer Queen</h6>
												<p class="m-0 mt-1 font-10 text-muted">Permission
													Required</p>
											</div>
										</div>
									</div>
								</a> <a class="account-item marked-read" href="javascript:void(0);">
									<div class="media align-items-center">
										<div class="user-img mr-2">
											<img class="rounded-circle avatar-xs"
												src="${pageContext.request.contextPath }/resources/assets/img/profile-10.jpg"
												alt="profile">
										</div>
										<div class="media-body">
											<div class="">
												<h6 class="font-12 mb-0 strong">Lara Smith</h6>
												<p class="m-0 mt-1 font-10 text-muted">Invoice needed</p>
											</div>
										</div>
									</div>
								</a> <a class="account-item marked-read" href="javascript:void(0);">
									<div class="media align-items-center">
										<div class="user-img mr-2">
											<img class="rounded-circle avatar-xs"
												src="${pageContext.request.contextPath }/resources/assets/img/profile-9.jpg"
												alt="profile">
										</div>
										<div class="media-body">
											<div class="">
												<h6 class="font-12 mb-0 strong">Victoria Williamson</h6>
												<p class="m-0 mt-1 font-10 text-muted">Account Issue</p>
											</div>
										</div>
									</div>
								</a>
								<div class="text-center p-2 m-2">
									<a class="text-primary strong font-13" href="apps_mail.html">View
										All</a>
								</div>
							</div>
						</div>
					</div>
				</div></li>
			<li class="nav-item dropdown notification-dropdown"><a
				href="javascript:void(0);" class="nav-link dropdown-toggle"
				id="notificationDropdown" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false"> <i
					class="las la-bell"></i> <!-- 벨 숫자 안읽은 메일 -->
					<div class="notification-circle" id="cnt"></div>
			</a>
				<div class="dropdown-menu position-absolute"
					aria-labelledby="notificationDropdown">
					<div class="nav-drop is-notification-dropdown">
						<div class="inner">
							<div class="nav-drop-header mb-2 px-2">
								<!-- 안 읽은 메일 카운트  -->
								<span class="text-black font-12 strong" id="cnt2"></span> <a
									class="text-muted font-11" id="getPostMail"> 전체 읽음 </a>
							</div>
							<!-- 안읽은 메일함 -->
							<div class="nav-drop-body account-items pb-0" id="getM"></div>
						</div>
					</div>
				</div></li>
			<li class="nav-item dropdown user-profile-dropdown"><a
				href="javascript:void(0);" class="nav-link dropdown-toggle user"
				id="userProfileDropdown" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> <img
					src="${pageContext.request.contextPath }/resources/assets/img/user.png"
					alt="avatar">
			</a>
				<div class="dropdown-menu" aria-labelledby="userProfileDropdown">
					<div class="nav-drop is-account-dropdown">
						<div class="inner">
							<div class="nav-drop-header mb-2 px-2">
								<span class="text-primary font-13">Welcome ONESTEP !</span>
							</div>
							<div class="nav-drop-body account-items pb-0">
								<a id="profile-link" class="account-item" href="/myPage/main">
									<div class="media align-center">
										<div class="media-right">
											<i data-feather="check"></i>
										</div>
									</div>
								</a> <a class="account-item" href="/member/login">
									<div class="media align-center">
										<i class="las la-sign-out-alt font-20"></i>
										<div class="media-content ml-3">
											<h6 class="font-13 mb-0 strong ">login</h6>
										</div>
									</div>
								</a>
							</div>
						</div>
					</div>
				</div></li>
		</ul>




	</nav>
</div>

<!--  Sidebar Ends  -->