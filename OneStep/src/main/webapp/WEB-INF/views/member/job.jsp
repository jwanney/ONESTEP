<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</html><%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<div class="sub-header-container">
	<header class="header navbar navbar-expand-sm">
		<ul class="navbar-nav flex-row">
			<li>
				<div class="page-header">
					<nav class="breadcrumb-one" aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="javascript:void(0);">Forms</a></li>
							<li class="breadcrumb-item active" aria-current="page"><span></span></li>
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
<div class="col-xl-12 col-lg-12 col-md-12" style="width: 70%; ">
	<div class="row">
		<div class="col-md-12">
			<div class="input-group m-t-10">
				<input type="text" id="text" class="form-control"
					placeholder="원하는기업을 검색해보세요"> <span
					class="input-group-append">
					<button type="button" class="btn btn-primary">Search</button>
				</span>
			</div>
			<div class="col-xl-12 col-lg-12 col-md-12">
				<table class="table mb-0" id="searchTable" style="display: none;">
					<thead>
						<tr>
							<th>기업명</th>
						</tr>
					</thead>
					<tbody id="table">
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<p class="display-4 " style="margin-top: 10%;">채용 정보</p>
	<div id="searchBtn" style="width: 100%;">
		<button type="button" class="btn btn-outline-info btn-rounded">기획·전략</button>
		<button type="button" class="btn btn-outline-info btn-rounded">법무·사무·총무</button>
		<button type="button" class="btn btn-outline-info btn-rounded">인사·HR</button>
		<button type="button" class="btn btn-outline-info btn-rounded">회계·세무</button>
		<button type="button" class="btn btn-outline-info btn-rounded">마케팅·광고·MD</button>
		<button type="button" class="btn btn-outline-info btn-rounded">개발·데이터</button>
		<button type="button" class="btn btn-outline-info btn-rounded">디자인</button>
		<button type="button" class="btn btn-outline-info btn-rounded">물류·무역</button>
		<button type="button" class="btn btn-outline-info btn-rounded">운전·운송·배송</button>
		<button type="button" class="btn btn-outline-info btn-rounded">영업</button>
		<button type="button" class="btn btn-outline-info btn-rounded">고객상담·TM</button>
		<button type="button" class="btn btn-outline-info btn-rounded">금융·보험</button>
		<button type="button" class="btn btn-outline-info btn-rounded">식·음료</button>
		<button type="button" class="btn btn-outline-info btn-rounded">고객서비스·리테일</button>
		<button type="button" class="btn btn-outline-info btn-rounded">엔지니어링·설계</button>
		<button type="button" class="btn btn-outline-info btn-rounded">제조·생산</button>
		<button type="button" class="btn btn-outline-info btn-rounded">교육</button>
		<button type="button" class="btn btn-outline-info btn-rounded">건축·시설</button>
		<button type="button" class="btn btn-outline-info btn-rounded">의료·바이오</button>
		<button type="button" class="btn btn-outline-info btn-rounded">미디어·문화·스포츠</button>
		<button type="button" class="btn btn-outline-info btn-rounded">공공·복지</button>
	</div>
	<select class="form-control col-lg-1 mt-3" id="select">
		<option value="new">최신순</option>
		<option value="score">평점순</option>
	</select>
	<div class="searchable-items grid card-box " >
		<div id="card" class="row w-100 m-0">
			<c:forEach var="annoList" items="${annoList}">
				<div class="col-xl-3 col-lg-3 col-md-3 mb-4">
					<div class="card single-seller"
						style="border-radius: 3%; z-index: 33;">
						<div style="position: relative;">
							<p id="comId" hidden="true">${annoList.comId}</p>

							<c:choose>
								<c:when test="${fn:contains(supList, annoList.comId)}">
									<c:set var="likeFlag"
										value="<i id='like' class='fa-solid fa-heart fa-lg' style='color: rgb(245, 66, 66);'></i>" />
								</c:when>
								<c:otherwise>
									<c:set var="likeFlag"
										value="<i id='unlike' class='fa-regular fa-heart fa-lg'></i>" />
								</c:otherwise>
							</c:choose>

							<img height="100px;"
								src="/resources/upload/${annoList.companyVO.companyLogo}"
								class="card-img-top" alt="widget-card-2"> <a
								style="position: absolute; top: 5px; right: 12px; cursor: pointer;">${likeFlag}</a>
						</div>
						<div class="card-body">
							<h5 class="card-title mt-3">
								<a href="">${annoList.annoTitle}</a>
							</h5>
							<h5 class="card-title mt-3">
								<a href="/member/detail/${annoList.comId}">${annoList.companyVO.companyName}</a>
								<i class="fa-solid fa-star" style="color: #f5d400;"></i>${annoList.reviewVO.reviewScore}
							</h5>
							<p class="card-text">지원조건 :${annoList.annoJo}</p>
							<p class="card-text">우대사항 :${annoList.annoUd}</p>
							<p class="card-text">모집분야 :${annoList.annoMb}</p>
							<p class="card-text">담당업무 :${annoList.annoDm1}${annoList.annoDm2}</p>
							<p class="card-text">
								복지 및 급여 : <i class="fa-solid fa-star" style="color: #6bf80d;"></i>${annoList.reviewVO.reviewWelfare}</p>
							<p class="card-text">
								업무와 삶의 균형 : <i class="fa-solid fa-star" style="color: #6bf80d;"></i>${annoList.reviewVO.reviewBalance}</p>
							<p class="card-text">
								승진 및 가능성 : <i class="fa-solid fa-star" style="color: #6bf80d;"></i>${annoList.reviewVO.reviewVision}</p>
							<div class="team"></div>
							<div class="meta-info">
								<div class="meta-action">
									<div class="meta-bottom-info">
										<span class="strong" style="color: #db1414;">마감일</span><span
											class="strong" style="color: #db1414;">${annoList.annoEndDate}</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>

		</div>
	</div>
	
	<div class="col-lg-3 layout-spacing">
	<h1>음</h1>
	</div>
	
</div>



<script type="text/javascript">
$(function(){

	var text = $('#text');
	var select = $('#select');
	var card = $('#card');
	var memId = '${memberVO.memId}';
	var searchBtn = $('#searchBtn');
	var searchType =[];

	console.log('멤버아이디 : ' +memId);
	text.on("keyup",function(){
			
		
			if($('#text').val()!=""){
			$.ajax({
		 		url : "/company/searchCompanyList",
		 		type: "get",
		 		data:{companyName:text.val()},
		 		success: function(res){
					
			 		
		 			$("#table").html("");
		 			html="";
		 			
		 			for(let i=0; i<res.length; i++){

						
			 			html ="";
			 			
		 				console.log('기업명 : ' + res[i]['companyName']);	
						companyId = res[i]['companyId'];
		 				html += `<tr>`;
		 				html += "<td><a href= '/member/detail/"+companyId+"'"+">"+res[i]['companyName']+'</a></td>';
		 				html += `</tr>`;
	
		 				$("#table").append(html);
			 		}

						console.log($('#text').val());	
					
						if(res.length>0){
							$('#searchTable').css('display','table');
						}

						
						
	 					
						
						}
					
				});
			}else{
				$('#searchTable').css('display','none');
				}

});

	select.on("change",function(){
		
		searchType[0]=$('#select').val();
		console.log(searchType);
		var jsonObj = JSON.stringify(searchType);
		
		$.ajax({
			url: "/company/ajaxAnnoJobSearch",
			type :"post",
			contentType :"application/json;charset=UTF-8",
			data : jsonObj,
			success : function(res){
				var html = "";
				for(var i = 0; i < res.annoList.length; i++){
					html += "<div class='col-xl-3 col-lg-3 col-md-3 mb-4'  >";
					html += "    <div class='card single-seller' style='border-radius: 3%; z-index: 33;'  >";
					html += "	   <div style='position: relative;'>";
					html += "		 <p id='comId' hidden='true'>"+ res.annoList[i].comId + "</p>";
					html += "        <img height='100px;'   src='/resources/upload/" + res.annoList[i].companyVO.companyLogo + "' class='card-img-top' alt='widget-card-2'>";
					html += "		 <a style='position: absolute; top: 5px; right: 12px; cursor: pointer;'>";

					
					var comIdGroup = res.comIdGroup;
					

					
					var heart = ""; 
					if(comIdGroup.includes(",")){
						var comIdGroupSplit = comIdGroup.split(",");
						for(var j = 0; j < comIdGroupSplit.length; j ++){
							console.log(comIdGroupSplit);
							if(comIdGroupSplit[j] == res.annoList[i].comId){
								heart = "<i id='like' class='fa-solid fa-heart fa-lg' style='color: rgb(245, 66, 66);'></i>";
								break;
							}else{
								heart = "<i id='unlike' class='fa-regular fa-heart fa-lg'></i>";	
							}
						}
					}else{
						if(comIdGroup == res.annoList[i].comId){
							heart = "<i id='like' class='fa-solid fa-heart fa-lg' style='color: rgb(245, 66, 66);'></i>";
						}else{
							heart = "<i id='unlike' class='fa-regular fa-heart fa-lg'></i>";	
						}
					}
					html += "		 " + heart;
					html += "		 ";
					html += "		 </a>";
					html += " 	   </div>";
					html += "        <div class='card-body'>";
					html += "            <h5  class='card-title mt-3'>" + res.annoList[i].annoTitle +"</h5>";
					html += "            <h5  class='card-title mt-3'><a href='/member/detail/"+res.annoList[i].comId+"'>"+res.annoList[i].companyVO.companyName +"</a><i class='fa-solid fa-star' style='color: #f5d400; '></i>" + res.annoList[i].reviewVO.reviewScore + "</h5>";
					html += "            <p  class='card-text'>지원조건 :" + res.annoList[i].annoJo + "</p>";
					html += "            <p class='card-text'>우대사항 :" + res.annoList[i].annoUd + "</p>";
					html += "            <p  class='card-text'>모집분야 :" + res.annoList[i].annoMb + "</p>";
					html += "            <p  class='card-text'>담당업무 :" + res.annoList[i].annoDm1 + "</p>";
					html += "            <p  class='card-text'>복지 및 급여 : <i class='fa-solid fa-star' style='color: #6bf80d;'></i>" + res.annoList[i].reviewVO.reviewWelfare + "</p>";
					html += "            <p  class='card-text'>업무와 삶의 균형 : <i class='fa-solid fa-star'  style='color: #6bf80d;'></i>" + res.annoList[i].reviewVO.reviewBalance + "</p>";
					html += "            <p  class='card-text'>승진 및 가능성 : <i class='fa-solid fa-star'  style='color: #6bf80d;'></i>" + res.annoList[i].reviewVO.reviewVision + "</p>";
					html += "            <div  class='team'>";
					html += "            </div>";
					html += "            <div class='meta-info'>";
					html += "                <div class='meta-action'>";
					html += "                    <div class='meta-bottom-info'>";
					html += "                        <span class='strong' style='color: #db1414; '>마감일</span><span class='strong' style='color: #db1414; '>" + res.annoList[i].annoEndDate + "</span>";
					html += "                    </div>";
					html += "                </div>";
					html += "            </div>";
					html += "        </div>";
					html += "    </div>";
					html += "</div>";
				}
				$("#card").html(html);
				
			}
		});
	});



	card.on("click",function(event){

			
		if(event.target.id=='unlike'){
			console.log(event.target.parentNode.parentNode.firstChild.nextElementSibling.innerHTML);
			var comId = event.target.parentNode.parentNode.firstChild.nextElementSibling.innerHTML;
			
			
		 	 $.ajax({
	
				url : "/member/companyLike",
				type : "get",
				data : {memId : memId , comId : comId },
				success : function(res){

					console.log(res);
					$(event.target).attr('class','fa-solid fa-heart fa-lg');
					$(event.target).css('color','#f54242');
					$(event.target).attr('id','like');
					
					}
				
				
	
				});  

			}



		if(event.target.id=='like'){
			console.log(event.target.parentNode.parentNode.firstChild.nextElementSibling.innerHTML);
			var comId = event.target.parentNode.parentNode.firstChild.nextElementSibling.innerHTML;
			
			
		 	 $.ajax({
	
				url : "/member/companyDelLike",
				type : "get",
				data : {memId : memId , comId : comId },
				success : function(res){

					console.log(res);
					$(event.target).attr('class','fa-regular fa-heart fa-lg');
					$(event.target).css('color','');
					$(event.target).attr('id','unlike');
					}
				});  
			}
		});

	
	
	searchBtn.on("click",function(event){
		
		if(event.target.type =='button'){
			searchType.shift();
			if($(event.target).attr('class')=='btn btn-outline-info btn-rounded'){
				
				$(event.target).attr('class','btn btn-info btn-rounded');
				searchType.push($(event.target).text());
	
				
			}else if($(event.target).attr('class')=='btn btn-info btn-rounded'){
				
				$(event.target).attr('class','btn btn-outline-info btn-rounded');
			     var del = searchType.indexOf($(event.target).text());
			     searchType.splice(del,1);

			}


			searchType.unshift($('#select').val()); 
				
				
			console.log(searchType);
			var jsonObj = JSON.stringify(searchType);
			 
			

			$.ajax({
				url: "/company/ajaxAnnoJobSearch",
				type :"post",
				contentType :"application/json;charset=UTF-8",
				data : jsonObj,
				success : function(res){
					var html = "";
					for(var i = 0; i < res.annoList.length; i++){
						html += "<div class='col-xl-3 col-lg-3 col-md-3 mb-4'  >";
						html += "    <div class='card single-seller' style='border-radius: 3%; z-index: 33;'  >";
						html += "	   <div style='position: relative;'>";
						html += "		 <p id='comId' hidden='true'>"+ res.annoList[i].comId + "</p>";
						html += "        <img height='100px;'   src='/resources/upload/" + res.annoList[i].companyVO.companyLogo + "' class='card-img-top' alt='widget-card-2'>";
						html += "		 <a style='position: absolute; top: 5px; right: 12px; cursor: pointer;'>";

						
						var comIdGroup = res.comIdGroup;
						

						
						var heart = ""; 
						if(comIdGroup.includes(",")){
							var comIdGroupSplit = comIdGroup.split(",");
							for(var j = 0; j < comIdGroupSplit.length; j ++){
								console.log(comIdGroupSplit);
								if(comIdGroupSplit[j] == res.annoList[i].comId){
									heart = "<i id='like' class='fa-solid fa-heart fa-lg' style='color: rgb(245, 66, 66);'></i>";
									break;
								}else{
									heart = "<i id='unlike' class='fa-regular fa-heart fa-lg'></i>";	
								}
							}
						}else{
							if(comIdGroup == res.annoList[i].comId){
								heart = "<i id='like' class='fa-solid fa-heart fa-lg' style='color: rgb(245, 66, 66);'></i>";
							}else{
								heart = "<i id='unlike' class='fa-regular fa-heart fa-lg'></i>";	
							}
						}
						html += "		 " + heart;
						html += "		 ";
						html += "		 </a>";
						html += " 	   </div>";
						html += "        <div class='card-body'>";
						html += "            <h5  class='card-title mt-3'>" + res.annoList[i].annoTitle +"</h5>";
						html += "            <h5  class='card-title mt-3'><a href='/member/detail/"+res.annoList[i].comId+"'>"+res.annoList[i].companyVO.companyName +"</a><i class='fa-solid fa-star' style='color: #f5d400; '></i>" + res.annoList[i].reviewVO.reviewScore + "</h5>";
						html += "            <p  class='card-text'>지원조건 :" + res.annoList[i].annoJo + "</p>";
						html += "            <p class='card-text'>우대사항 :" + res.annoList[i].annoUd + "</p>";
						html += "            <p  class='card-text'>모집분야 :" + res.annoList[i].annoMb + "</p>";
						html += "            <p  class='card-text'>담당업무 :" + res.annoList[i].annoDm + "</p>";
						html += "            <p  class='card-text'>복지 및 급여 : <i class='fa-solid fa-star' style='color: #6bf80d;'></i>" + res.annoList[i].reviewVO.reviewWelfare + "</p>";
						html += "            <p  class='card-text'>업무와 삶의 균형 : <i class='fa-solid fa-star'  style='color: #6bf80d;'></i>" + res.annoList[i].reviewVO.reviewBalance + "</p>";
						html += "            <p  class='card-text'>승진 및 가능성 : <i class='fa-solid fa-star'  style='color: #6bf80d;'></i>" + res.annoList[i].reviewVO.reviewVision + "</p>";
						html += "            <div  class='team'>";
						html += "            </div>";
						html += "            <div class='meta-info'>";
						html += "                <div class='meta-action'>";
						html += "                    <div class='meta-bottom-info'>";
						html += "                        <span class='strong' style='color: #db1414; '>마감일</span><span class='strong' style='color: #db1414; '>" + res.annoList[i].annoEndDate + "</span>";
						html += "                    </div>";
						html += "                </div>";
						html += "            </div>";
						html += "        </div>";
						html += "    </div>";
						html += "</div>";
					}
					$("#card").html(html);
					
				}
			});	
		}
});





		




	





	
});
</script>
