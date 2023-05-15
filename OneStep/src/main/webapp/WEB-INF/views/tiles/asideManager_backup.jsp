<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
<style>
.material-symbols-outlined {
margin-right: 5px; }

</style>

<div class="sidebar-wrapper sidebar-theme " >
    <div>
        <div class="sc-container" >
        </div>
        <a href="javascript:void(0);" class="sidebarCollapse" data-placement="bottom">
            <i class="las la-angle-left"></i>
        </a>
    </div>
    <nav id="sidebar">
        <ul class="navbar-item theme-brand flex-row  text-center">
            <li class="nav-item theme-logo">
                <a href="/manager/main">
                    <img src="${pageContext.request.contextPath }/resources/assets/img/onestep.png" class="navbar-logo" alt="logo">
                </a>
            </li>
            <li class="nav-item theme-text">
                <a href="/manager/main" class="nav-link"> ONESTEP </a>
            </li>
        </ul>
        <ul class="list-unstyled menu-categories" id="accordionExample">
            <li class="menu">
                <a href="#dashboard" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
                    <div class="">
                        <span class="material-symbols-outlined">
settings_account_box
</span>
                        <span onclick="location.href='/manager/management'">관리서비스</span>
                    </div>
                    
                </a>
          
            </li>
                   
            <li class="menu-title"></li>
            <li class="menu">
                <a href="#matching" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
                    <div class="">
                       <span class="material-symbols-outlined">
settings_panorama
</span>
                        <span onclick="location.href='/manager/matching'">매칭서비스</span>
                    </div>
                    </a>
                    </li>
            <li class="menu-title"></li>
            <li class="menu">
                <a href="#pages" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
                    <div class="">
                       <span class="material-symbols-outlined">
settings_video_camera
</span>
                        <span onclick="location.href='/manager/video'">채팅</span>
                    </div>
                    </a>
           </li>
     
        </ul>
                <ul class="sidebar-bottom-options">
            <li class="nav-item dropdown message-dropdown">
                <a href="javascript:void(0);" class="nav-link dropdown-toggle" id="messageDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="las la-envelope"></i>
                </a>
                <div class="dropdown-menu position-absolute" aria-labelledby="messageDropdown">
                    <div class="nav-drop is-notification-dropdown">
                        <div class="inner">
                            <div class="nav-drop-header mb-2 px-2">
                                <span class="text-black font-12 strong">Recent mails</span>
                            </div>
                            <div class="nav-drop-body account-items pb-0">
                                <a class="account-item" href="javascript:void(0);">
                                    <div class="media align-items-center">
                                        <div class="user-img mr-2">
                                            <img class="rounded-circle avatar-xs" src="${pageContext.request.contextPath }/resources/assets/img/profile-11.jpg" alt="profile">
                                        </div>
                                        <div class="media-body">
                                            <div class="">
                                                <h6 class="font-12 mb-0 strong">Jennifer Queen</h6>
                                                <p class="m-0 mt-1 font-10 text-muted">Permission Required</p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                                <a class="account-item marked-read" href="javascript:void(0);">
                                    <div class="media align-items-center">
                                        <div class="user-img mr-2">
                                            <img class="rounded-circle avatar-xs" src="${pageContext.request.contextPath }/resources/assets/img/profile-10.jpg" alt="profile">
                                        </div>
                                        <div class="media-body">
                                            <div class="">
                                                <h6 class="font-12 mb-0 strong">Lara Smith</h6>
                                                <p class="m-0 mt-1 font-10 text-muted">Invoice needed</p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                                <a class="account-item marked-read" href="javascript:void(0);">
                                    <div class="media align-items-center">
                                        <div class="user-img mr-2">
                                            <img class="rounded-circle avatar-xs" src="${pageContext.request.contextPath }/resources/assets/img/profile-9.jpg" alt="profile">
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
                                    <a class="text-primary strong font-13" href="apps_mail.html">View All</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </li>
            <li class="nav-item dropdown notification-dropdown">
                <a href="javascript:void(0);" class="nav-link dropdown-toggle" id="notificationDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="las la-bell"></i>
                    <div class="notification-circle" id="cnt"></div>
                </a>
                <div class="dropdown-menu position-absolute" aria-labelledby="notificationDropdown">
                    <div class="nav-drop is-notification-dropdown">
                        <div class="inner">
                            <div class="nav-drop-header mb-2 px-2">
                                  <span class="text-black font-12 strong" id="cnt2"></span>
                                  <a class="text-muted font-11" id="getPostMail">
                                    	전체 읽음	
                                  </a>
                            </div>
                            <div class="nav-drop-body account-items pb-0"  id="getM">
                                
                            </div>
                        </div>
                    </div>
                </div>
            </li>
            <li class="nav-item dropdown user-profile-dropdown"><a
				href="javascript:void(0);" class="nav-link dropdown-toggle user"
				id="userProfileDropdown" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> <img
					src="${pageContext.request.contextPath }/resources/assets/img/manager1.png"
					alt="avatar">
			</a>
				<div class="dropdown-menu"
					aria-labelledby="userProfileDropdown">
					<div class="nav-drop is-account-dropdown">
						<div class="inner">
							<div class="nav-drop-header mb-2 px-2">
								<span class="text-primary font-13">Welcome ONESTEP !</span>
							</div>
							<div class="nav-drop-body account-items pb-0">
								<a id="profile-link" class="account-item" href="/myPage/main">
									<div class="media align-center">
										<div class="media-left">
											<div class="image">
												<img class="rounded-circle avatar-xs"
													src="${pageContext.request.contextPath }/resources/assets/img/manager1.png"
													alt="">
											</div>
										</div>
										<div class="media-content ml-2">
											<h6 class="font-12 mb-0 strong">${sessionScope.memberVO.memName }</h6>
										</div>
										<div class="media-right">
											<i data-feather="check"></i>
										</div>
									</div>
								</a> <a class="account-item" href="/member/logout">
									<div class="media align-center">
										<i class="las la-sign-out-alt font-20"></i>
										<div class="media-content ml-3">
											<h6 class="font-13 mb-0 strong ">Logout</h6>
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
<script type="text/javascript">
$(function(){
	var cnt = $("#cnt");   // 안읽은 메일 수
	var cnt2 = $("#cnt2"); // 안읽은 메일 수 안쪽
	var getM = $("#getM"); // 받은 메일 리스트
	var getMdiv = $('#getM div');
	var html = "";
	
	alarm();
	
	function alarm(){
		$.ajax({
			url : "/alarm/read",
			type : 'get',
			dataType : 'json',
			success : function(data){
				var postMail = data.postList; // 보낸 메일
				var getMail = data.getList;  // 받은 메일
				var cntMail = data.count.cnt; // 안읽은 메일 수
				var getMailOK = data.getListOK; // 받은 메일 중 안읽은 메일
				
				if(cntMail == 0){
					cnt.text(cntMail);
					cnt2.text(cntMail + "개의 안읽은 메일");
					getM.html("");
					html = "";
					html += "<div class='text-center p-2 mt-2'>";
	                html += "<a class='text-primary strong font-13' href='/alarm/alarmRead'>알림함</a>";
	                html += "</div>";
	                getM.append(html);
					return;
				}else{
				cnt.text(cntMail);
				cnt2.text(cntMail + "개의 안읽은 메일");
				getM.html(""); // 비우기
					for(var i = 0; i < getMailOK.length; i++){
						if(i < 1){
							html += "<a class='account-item' href=''>";
			                html +=	"<div class='media align-center'>";
			               	html +=	"<i class='font-20'>"+getMailOK[i].postId+"</i>";
			                html +=	"<div class='media-content ml-3'>";
			                html += "<h6 class='font-12 mb-0 strong'>"+getMailOK[i].notificationContent+"</h6>";
			                html +=	"</div></div></a>"; 
						}
					}
				}
					html += "<div class='text-center p-2 mt-2'>";
	                html += "<a class='text-primary strong font-13' href='/alarm/alarmRead'>알림함</a>";
	                html += "</div>";					
	            getM.append(html);					
			}
		});
	}
	
	$("#getPostMail").on("click",function(){
		$.ajax({
			url : "/alarm/change",
			type : "get",
			dataType : 'json',
			success : function(data){
				alarm();
			}
		})
	});
});
</script>
<!--  Sidebar Ends  -->