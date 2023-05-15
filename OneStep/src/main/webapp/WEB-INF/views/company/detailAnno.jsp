<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<div class="layout-px-spacing">
	<div class="row layout-spacing layout-top-spacing" id="cancel-row">
		<div class="col-lg-11" style="margin: 0 auto;">
			<div class="">
				<div class="widget-content searchable-container grid">
					<div class="card-box product-details">
						<div class="row">
							<div class="col-xl-7 col-lg-12 col-md-12 col-sm-12">
								<div class="mt-3 mt-xl-0">
									<a href="/company/insertForm/${anno.annoId }"
										class="text-primary mb-3 d-block"><i
										class="las la-arrow-left"></i>공고 다시 올리기</a>
									<h4 class="mb-3 text-black strong">${anno.annoTitle }</h4>
									<h4>
										<span class="text-success mb-4 font-13">${anno.annoStart }</span>
									</h4>
									<p class="text-muted mb-4">${anno.annoContent }</p>
									<div class="row mb-3">
										<div class="col-md-6">
											<p class="text-muted strong font-13">정보</p>
											<div>
												<p class="text-muted">
													<fmt:formatDate value="${anno.annoStartDate }"
														pattern="yyyy-MM-dd" var="annoStartDate" />
													시작날짜 : ${annoStartDate }
												</p>

											</div>
										</div>
										<div class="col-md-6">
											<p>&nbsp;</p>
											<div>
												<p class="text-muted" id="endDate">
													<fmt:formatDate value="${anno.annoEndDate }"
														pattern="yyyy-MM-dd" var="annoEndDate" />
													종료날짜 : ${annoEndDate }
												</p>
											</div>
										</div>
									</div>
								</div>
							</div>

						</div>
						<!-- end row -->
						<div
							class="w-100 animated-underline-content mt-2 details-tab-area">
							<ul class="nav nav-tabs  mb-3" id="lineTab" role="tablist">
								<li class="nav-item"><a class="nav-link active"
									id="underline-specification-tab" data-toggle="tab"
									href="#underline-specification" role="tab"
									aria-controls="underline-specification" aria-selected="false">정보</a>
								</li>
								<li class="nav-item"><a class="nav-link"
									id="underline-reviews-tab" data-toggle="tab"
									href="#underline-reviews" role="tab"
									aria-controls="underline-reviews" aria-selected="false">담당자
										정보</a></li>
							</ul>
							<div class="tab-content" id="lineTabContent-3">
								<!-- SPECIFICATION -->
								<div class="tab-pane fade show active"
									id="underline-specification" role="tabpanel"
									aria-labelledby="underline-specification-tab">
									<div class="d-flex flex-wrap p-2">
										<p class="text-muted mb-4">${anno.annoContent }</p>
										<div class="row mb-3 w-100">
											<div class="col-md-4">
												<p class="text-muted strong font-13">상세 정보</p>
												<div>
													<p class="text-muted">
														<i class="lar la-check-circle"></i> 모집 분야 : ${anno.annoMb }
													</p>
													<p class="text-muted">
														<i class="lar la-check-circle"></i> 모집인원 : ${anno.annoMem }
													</p>
													<p class="text-muted">
														<i class="lar la-check-circle"></i>근무환경 : ${anno.annoWork }
													</p>
													<p class="text-muted">
														<i class="lar la-check-circle"></i>수습기간 :
														${anno.annoProbation }
													</p>
												</div>
											</div>
											<div class="col-md-4">
												<p>&nbsp;</p>
												<div>
													<p class="text-muted">
														<i class="lar la-check-circle"></i> 담당업무 : ${anno.annoDm1 }
														
													</p>
													<p class="text-muted">
														<i class="lar la-check-circle"></i> 근무부서 : ${anno.annoGb }
													</p>
													<p class="text-muted">
														<i class="lar la-check-circle"></i> 근무요일 : ${anno.annoDay }
													</p>
													<p class="text-muted">
														<i class="lar la-check-circle"></i> 근무시간 : ${anno.annoTime }
													</p>
												</div>
											</div>
											<div class="col-md-4">
												<p>&nbsp;</p>
												<div>
													<p class="text-muted">
														<i class="lar la-check-circle"></i> 급여 : ${anno.annoSalary }
													</p>
													<p class="text-muted">
														<i class="lar la-check-circle"></i> 성별 : ${anno.annoGender }
													</p>
													<p class="text-muted">
														<i class="lar la-check-circle"></i> 고용형태 :
														${anno.annoStaly }
													</p>
												</div>
											</div>
											<div class="col-md-6">
												<div>
													<p class="text-muted">
														<i class="lar la-check-circle"></i>키워드 :
													</p>
													<c:forEach items="${keyword }" var="keyword">
														<span class="text-muted"> ${keyword.annoKwname } </span>
													</c:forEach>
												</div>
											</div>
											<div class="col-md-6"></div>

											<div class="col-md-12">
												<img src="/upload/${anno.attId }" alt="사진 떠라">
											</div>
										</div>
									</div>
								</div>
								<!-- REVIEWS -->
								<div class="tab-pane fade" id="underline-reviews"
									role="tabpanel" aria-labelledby="underline-reviews-tab">
									<div class="row w-100 m-0">
										<div class="accordion" id="accordion2">
											<div class="accordion-group">
												<div class="accordion-heading">
													<a class="accordion-toggle collapsed"
														data-toggle="collapse" data-parent="#accordion2"
														href="#collapseOne"> 담당자 정보 <span class="float-right"><i
															class="las la-angle-down"></i></span>
													</a>
												</div>
												<div id="collapseOne" class="accordion-body collapse">
													<div class="accordion-inner">
														담당자 이름 : ${anno.annoManager } <br> 담당자 전화번호 :
														${anno.annoTel }<br> 담당자 이메일 : ${anno.annoEmail }
													</div>
												</div>
											</div>
											<div class="accordion-group">
												<div class="accordion-heading">
													<a class="accordion-toggle collapsed"
														data-toggle="collapse" data-parent="#accordion2"
														href="#collapseTwo"> 근무환경 <span class="float-right"><i
															class="las la-angle-down"></i></span>
													</a>
												</div>
												<div id="collapseTwo" class="accordion-body collapse">
													<div class="accordion-inner">
														근무환경 : ${anno.annoWork } <br> 업종 :
														${anno.industryCode } <br> 지역 : ${anno.annoWd } <br>
														고용형태 : ${anno.annoStaly } <br>
													</div>
												</div>
											</div>
											<div class="accordion-group">
												<div class="accordion-heading">
													<a class="accordion-toggle collapsed"
														data-toggle="collapse" data-parent="#accordion2"
														href="#collapseThree"> 지원자 필수 정보 <span
														class="float-right"><i class="las la-angle-down"></i></span>
													</a>
												</div>
												<div id="collapseThree" class="accordion-body collapse">
													<div class="accordion-inner">
														연령제한 : ${anno.annoAge } <br> 경력 : ${anno.annoCareer }
														<br> 지원조건 : ${anno.annoJo } <br> 우대사항 :
														${anno.annoUd } <br> 성별 : ${anno.annoGender } <br>
														학력 : ${anno.annoStu } <br> 자기소개서 필수항목 :
														${anno.annoIntro }

													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<hr class="mb-5">
							<div class="table-responsive mt-4">
								<table class="table table-bordered table-centered mb-0">
									<thead class="thead-light">
										<tr>
											<th>지원자 이름</th>
											<th>지원자 주소</th>
											<th>지원자 이메일</th>
											<th>지원자 전화번호</th>
											<th> </th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${member }" var="member">
											<tr>
												<td
													onclick="location.href='/company/detailMem/${member.memId}'">${member.memName }</td>
												<td>${member.memAddr1 }${member.memAddr2 }</td>
												<td>${member.memEmail }</td>
												<td>${member.memTel }</td>
												<td>
													<button data-target="#scrollableModal${member.memId}"
														data-toggle="modal" class="btn btn-soft-primary btn-rounded  ">점수 입력하기</button>
												</td>
											</tr>
											<div id="scrollableModal${member.memId}" class="modal fade"
                        tabindex="-1" role="dialog" aria-labelledby=""
                        aria-hidden="true">
                        <div class="modal-dialog modal-dialog-scrollable modal-lg"
                           role="document">

                           <div class="modal-content" style="margin-top:50px; ">
                              <div class="modal-header">
                                 <h5 class="modal-title" id="exampleModalToggleLabel">끊임없이 공부하는 개발자가 되겠습니다.</h5>
                              </div>
                              <div align="right">
                                 <button type="button" onclick="fu_click();">자동완성</button>
                              </div>
                              <div class="modal-body">
                                 <div class="col-md-12">
                                    <div class="row">
                                       <div class="container p-0">
                                          <div class="row layout-top-spacing">
                                          <div class="col">
<!--                                              <div class="col-lg-9 layout-spacing"> -->
                                                <br>
                                                <div class="row">
                                                	<div class="col">
<!-- 	                                                	<picture> -->
<%-- 																		<source srcset="/upload/${member.resumeList[0].resumePhoto }" --%>
<!-- 																			type="image/svg+xml"> -->
<%-- 																		<img src="/upload/${member.resumeList[0].resumePhoto  }" --%>
<!-- 																			class="img-fluid img-thumbnail" alt="사진" width="80px;" height="80px;"> -->
<!-- 														</picture><br/> -->
														<h4>강한나</h4>
                                                	</div>
                                                </div>
                                                
                                                <div class="row">
<!--                                                 	<div class="col"> -->
                                                   <div class="col">
	                                                   <picture>
															<source srcset="/upload/${member.resumeList[0].resumePhoto }"
																type="image/svg+xml">
															<img src="/upload/${member.resumeList[0].resumePhoto  }"
																class="img-fluid img-thumbnail" alt="사진" width="80px;" height="100px;">
														</picture><br/>
                                                   </div>
                                                   
                                                   <div class="col-10">

                                                      <div class="row">
                                                         <div class="col-lg-4">
                                                            <label>성별:</label> 남자
                                                         </div>
                                                         <div class="col-lg-4">
                                                            <label>생년월일:</label> 2000-01-01
                                                         </div>
                                                         <div class="col-lg-4">
                                                            <label>주소:</label> 대전 유성구 봉명동 563-15
                                                         </div>
                                                      </div>
                                                      <div class="row">
                                                         <div class="col-lg-4">
                                                            <label>연락처:</label> 010-5548-1425
                                                         </div>
                                                         <div class="col">
                                                            <label>이메일:</label> dlaclxor@naver.com
                                                         </div>
                                                      </div>
                                                      
<!--                                                    <div class="col"> -->
<!--                                                    <picture> -->
<%-- 														<source srcset="/upload/${member.resumeList[0].resumePhoto }" --%>
<!-- 															type="image/svg+xml"> -->
<%-- 														<img src="/upload/${member.resumeList[0].resumePhoto  }" --%>
<!-- 															class="img-fluid img-thumbnail" alt="사진" width="80px;" height="100px;"> -->
<!-- 														</picture><br/> -->
<!--                                                    </div> -->
												</div>
                                                </div>
                                                <br> <br>
                                                <div class="row"></div>
                                                <br> <br>

                                             <form action="/company/updateApply" method="post"> 
                                                <div
                                                   class="w-100 animated-underline-content mt-2 details-tab-area">
                                                   <ul class="nav nav-tabs  mb-3" id="lineTab"
                                                      role="tablist">
                                                      <li class="nav-item"><a class="nav-link active"
                                                         id="underline-specification-tab" data-toggle="tab"
                                                         href="#underline-specification" role="tab"
                                                         aria-controls="underline-specification"
                                                         aria-selected="false">학력</a></li>
                                                      
                                                   </ul>
                                                   <div class="tab-content" id="lineTabContent-3">
														<div class="tab-pane fade show active" id="underline-specification" role="tabpanel" aria-labelledby="underline-specification-tab">
<%-- 															<c:forEach items="${resume.eduList }" var="eduList"> --%>
						                                   		<div class="d-flex flex-wrap p-2">
						                                    		<p class="strong mb-4" id="subTitle">충남대학교 컴퓨터공학과${eduList.eduSchoolName } ${eduList.eduMajor1 }</p>
						                                			<div class="row mb-3 w-100">
							                                        	<div class="col-md-4">
							                                            	<div>
							                                               		<p class="text-muted">• 구분: 대학교(4년)
							                                                   		<c:if test="${eduList.eduSchoolType == '1'}">고등학교</c:if>
							                                                    	<c:if test="${eduList.eduSchoolType == '2'}">대학교(2,3년)</c:if>
							                                                    	<c:if test="${eduList.eduSchoolType == '3'}">대학교(4년)</c:if>
							                                                    	<c:if test="${eduList.eduSchoolType == '4'}">대학원</c:if>
							                                                	</p>
							                                            	</div>
							                                            	<div>
							                                            		<p class="text-muted" >• 학적상태: 졸업
								                                             		<c:if test="${eduList.eduStatus == '1'}">졸업</c:if>
								                                   					<c:if test="${eduList.eduStatus == '2'}">졸업예정</c:if>
																					<c:if test="${eduList.eduStatus == '3'}">재학 중</c:if>
																					<c:if test="${eduList.eduStatus == '4'}">중퇴</c:if>
																					<c:if test="${eduList.eduStatus == '5'}">수료</c:if>
																					<c:if test="${eduList.eduStatus == '6'}">휴학</c:if>
								                                            	</p>
							                                            	</div>
																		</div>
							                                        	<div class="col-md-4">
							                                            	<div>
							                                               		<p class="text-muted">• 입학: 2009-03-02${eduList.eduStart } </p>
							                                            	</div>
							                                        		<c:if test="${eduList.eduScoreStandard != null }">
							                                            	<div>
							                                               		<p class="text-muted">• 학점: 4.2${resume.eduList[0].eduScore } / 4.5
							                                                       <c:if test="${eduList.eduScoreStandard == 1 }">4.5</c:if>
							                                                       <c:if test="${eduList.eduScoreStandard == 2 }">4.3</c:if>
							                                                       <c:if test="${eduList.eduScoreStandard == 3 }">4.0</c:if>
							                                                       <c:if test="${eduList.eduScoreStandard == 4 }">100</c:if>
							                                                   </p>
							                                         		</div>
							                                            	</c:if>
							                                   			</div>
							                              				<div class="col-md-4">
							                                      			<div>
							                                               		<p class="text-muted">• 졸업: 2009-03-02${eduList.eduEnd } </p>
							                                   				</div>
							                                      		</div>
							                      					</div>
						                     						</div>         
						                                   		<div class="d-flex flex-wrap p-2">
						                                    		<p class="strong mb-4" id="subTitle">현경고등학교${eduList.eduSchoolName } ${eduList.eduMajor1 }</p>
						                                			<div class="row mb-3 w-100">
							                                        	<div class="col-md-4">
							                                            	<div>
							                                               		<p class="text-muted">• 구분: 고등학교
<%-- 							                                                   		<c:if test="${eduList.eduSchoolType == '1'}">고등학교</c:if> --%>
<%-- 							                                                    	<c:if test="${eduList.eduSchoolType == '2'}">대학교(2,3년)</c:if> --%>
<%-- 							                                                    	<c:if test="${eduList.eduSchoolType == '3'}">대학교(4년)</c:if> --%>
<%-- 							                                                    	<c:if test="${eduList.eduSchoolType == '4'}">대학원</c:if> --%>
							                                                	</p>
							                                            	</div>
							                                            	<div>
							                                            		<p class="text-muted" >• 학적상태: 졸업
								                                             		<c:if test="${eduList.eduStatus == '1'}">졸업</c:if>
								                                   					<c:if test="${eduList.eduStatus == '2'}">졸업예정</c:if>
																					<c:if test="${eduList.eduStatus == '3'}">재학 중</c:if>
																					<c:if test="${eduList.eduStatus == '4'}">중퇴</c:if>
																					<c:if test="${eduList.eduStatus == '5'}">수료</c:if>
																					<c:if test="${eduList.eduStatus == '6'}">휴학</c:if>
								                                            	</p>
							                                            	</div>
																		</div>
							                                        	<div class="col-md-4">
							                                            	<div>
							                                               		<p class="text-muted">• 입학: 2006-03-02${eduList.eduStart } </p>
							                                            	</div>
<%-- 							                                        		<c:if test="${eduList.eduScoreStandard != null }"> --%>
<!-- 							                                            	<div> -->
<%-- 							                                               		<p class="text-muted">• 학점: 4.2${resume.eduList[0].eduScore } / 4.5 --%>
<%-- 							                                                       <c:if test="${eduList.eduScoreStandard == 1 }">4.5</c:if> --%>
<%-- 							                                                       <c:if test="${eduList.eduScoreStandard == 2 }">4.3</c:if> --%>
<%-- 							                                                       <c:if test="${eduList.eduScoreStandard == 3 }">4.0</c:if> --%>
<%-- 							                                                       <c:if test="${eduList.eduScoreStandard == 4 }">100</c:if> --%>
<!-- 							                                                   </p> -->
<!-- 							                                         		</div> -->
<%-- 							                                            	</c:if> --%>
							                                   			</div>
							                              				<div class="col-md-4">
							                                      			<div>
							                                               		<p class="text-muted">• 졸업: 2009-02-26${eduList.eduEnd } </p>
							                                   				</div>
							                                      		</div>
							                      					</div>
						                     						</div>         
<%-- 						            							</c:forEach> --%>
														</div>
							           				</div>
                                                </div>
                                                
                                                <br>
                                                <div class="strong" style="color: #e7515a">학력 평가점수 입력 :</div>
                                                <input type="number" class="form-control mt-3" max="10" min="1" name="applySchool" placeholder="1에서 10까지 입력해주세요"/>



                                                <div
                                                   class="w-100 animated-underline-content mt-2 details-tab-area">
                                                   <ul class="nav nav-tabs  mb-3" id="lineTab"
                                                      role="tablist">
                                                      <li class="nav-item"><a class="nav-link active"
                                                         id="underline-specification-tab" data-toggle="tab"
                                                         href="#underline-specification" role="tab"
                                                         aria-controls="underline-specification"
                                                         aria-selected="false">희망 직무</a></li>
                                                   </ul>
                                                   <div class="tab-content" id="lineTabContent-3">
                                                      <div class="tab-pane fade show active"
                                                         id="underline-specification" role="tabpanel"
                                                         aria-labelledby="underline-specification-tab">
                                                         <div class="d-flex flex-wrap p-2">
                                                            <p class="text-muted">
                                                              • 백엔드 웹개발	
                                                            </p>
                                                         </div>
                                                      </div>
                                                   </div>
                                                </div>
                                                <br>


                                                <div
                                                   class="w-100 animated-underline-content mt-2 details-tab-area">
                                                   <ul class="nav nav-tabs  mb-3" id="lineTab"
                                                      role="tablist">
                                                      <li class="nav-item"><a class="nav-link active"
                                                         id="underline-specification-tab" data-toggle="tab"
                                                         href="#underline-specification" role="tab"
                                                         aria-controls="underline-specification"
                                                         aria-selected="false">스킬</a></li>
                                                   </ul>
                                                   <div class="tab-content" id="lineTabContent-3">
                                                      <div class="tab-pane fade show active"
                                                         id="underline-specification" role="tabpanel"
                                                         aria-labelledby="underline-specification-tab">
                                                         <div class="d-flex flex-wrap p-2">
                                                            <p class="text-muted mb-5">
                                                            	<button type="button" class="btn btn-outline-primary btn-rounded "> Java</button>
																<button type="button" class="btn btn-outline-success btn-rounded  "> Spring</button>
																<button type="button" class="btn btn-outline-info btn-rounded  "> Oracle DB</button>
																<button type="button" class="btn btn-outline-warning btn-rounded  "> SVN</button>
																<button type="button" class="btn btn-outline-danger btn-rounded  "> Jquery</button>
																<button type="button" class="btn btn-outline-dark btn-rounded  "> Python</button>
																<button type="button" class="btn btn-outline-secondary btn-rounded "> TypeScript</button>
                                                            </p>
                                                         </div>
                                                      </div>
                                                   </div>
                                                </div>
                                                <br>
                                                <div class="strong" style="color: #e7515a">보유 기술 평가점수 입력 :</div>
                                                <input type="number" class="form-control mt-3" max="10" min="1" name="applySkill" placeholder="1에서 10까지 입력해주세요"/>

                                                


                                                <div
                                                   class="w-100 animated-underline-content mt-2 details-tab-area">
                                                   <ul class="nav nav-tabs  mb-3" id="lineTab"
                                                      role="tablist">
                                                      <li class="nav-item"><a class="nav-link active"
                                                         id="underline-specification-tab" data-toggle="tab"
                                                         href="#underline-specification" role="tab"
                                                         aria-controls="underline-specification"
                                                         aria-selected="false">경력</a></li>
                                                   </ul>
                                                   <div class="tab-content" id="lineTabContent-3">
                                                      <div class="tab-pane fade show active"
                                                         id="underline-specification" role="tabpanel"
                                                         aria-labelledby="underline-specification-tab">
                                                         <div class="d-flex flex-wrap p-2">
                                                            <p class="text-muted mb-4">
                                                               ${member.careerList[0].careerCmpName }</p>
                                                            <div class="row mb-3 w-100">
                                                               <div class="col-md-4">
                                                                  <p class="text-muted strong font-13">
                                                                     <c:if
                                                                        test="${member.careerList[0].careerResignDate == null}">
                                                                        <%--                                                          <fmt:formatDate value="${member.careerList[0].careerJoinDate}" pattern="yyyy-MM-dd"/> ~ 재직 중 --%>
                                                         ${member.careerList[0].careerJoinDate}" ~ 재직 중
                                                  </c:if>
                                                                     <%--                                                   <fmt:formatDate value="${member.careerList[0].careerJoinDate}" pattern="yyyy-MM-dd"/> ~ <fmt:formatDate value="${member.careerList[0].careerResignDate}" pattern="yyyy-MM-dd"/> --%>
                                                                     ${member.careerList[0].careerJoinDate} ~
                                                                     ${member.careerList[0].careerResignDate}
                                                                  </p>
                                                                  <div>
                                                                     <p class="text-muted">
                                                                        <i class="lar la-check-circle"></i> 부서:
                                                                        ${member.careerList[0].careerCmpDprtm }
                                                                     </p>
                                                                     <p class="text-muted">
                                                                        <i class="lar la-check-circle"></i> 연봉:
                                                                        ${member.careerList[0].careerSalary }만 원
                                                                     </p>
                                                                     <!--                                                       <p class="text-muted"><i class="lar la-check-circle"></i> </p> -->
                                                                  </div>
                                                               </div>
                                                               <div class="col-md-4">
                                                                  <p>&nbsp;</p>
                                                                  <div>
                                                                     <p class="text-muted">
                                                                        <i class="lar la-check-circle"></i> 직급:
                                                                        ${member.careerList[0].careerPosition }
                                                                     </p>
                                                                     <p class="text-muted">
                                                                        <i class="lar la-check-circle"></i> 업무 상세:
                                                                        ${member.careerList[0].careerDuties }
                                                                     </p>
                                                                     <!--                                                       <p class="text-muted"><i class="lar la-check-circle"></i> 프로젝트3</p> -->
                                                                  </div>
                                                               </div>
                                                               <div class="col-md-4">
                                                                  <p>&nbsp;</p>
                                                                  <div>
                                                                     <p class="text-muted">
                                                                        <i class="lar la-check-circle"></i> 담당 직무:
                                                                        ${member.careerList[0].careerWorkfield }
                                                                     </p>
                                                                     <!--                                                       <p class="text-muted"><i class="lar la-check-circle"></i> Multiple Color</p> -->
                                                                     <!--                                                       <p class="text-muted"><i class="lar la-check-circle"></i> Suitable for everyone</p> -->
                                                                  </div>
                                                               </div>
                                                            </div>
                                                         </div>
                                                      </div>
                                                   </div>
                                                </div>
                                                <br>
                                                <div class="strong" style="color: #e7515a">보유 경력 평가점수 입력 :</div>
                                                <input type="number" class="form-control mt-3" max="10" min="1" name="applyCareer" placeholder="1에서 10까지 입력해주세요"/>
                                                
                                                                        

                                                <div
                                                   class="w-100 animated-underline-content mt-2 details-tab-area">
                                                   <ul class="nav nav-tabs  mb-3" id="lineTab"
                                                      role="tablist">
                                                      <li class="nav-item"><a class="nav-link active"
                                                         id="underline-specification-tab" data-toggle="tab"
                                                         href="#underline-specification" role="tab"
                                                         aria-controls="underline-specification"
                                                         aria-selected="false">자격증</a></li>
                                                   </ul>
                                                   <div class="tab-content" id="lineTabContent-3">
                                                      <div class="tab-pane fade show active"
                                                         id="underline-specification" role="tabpanel"
                                                         aria-labelledby="underline-specification-tab">
                                                         <div class="d-flex flex-wrap p-2">
                                                            <div class="row mb-3 w-100">
                                                               <div class="col-md-4">
                                                                  <p class="text-muted strong font-13">${member.certList[0].certName }</p>
                                                                  <div>
                                                                     <%--                                                       <p class="text-muted"><i class="lar la-check-circle"></i> <fmt:formatDate value="${member.certList[0].certDate }" pattern="yyyy-MM"/></p> --%>
                                                                     <p class="text-muted">
                                                                        <i class="lar la-check-circle"></i>
                                                                        ${member.certList[0].certDate }
                                                                     </p>
                                                                     <p class="text-muted">
                                                                        <i class="lar la-check-circle"></i>
                                                                        ${member.certList[0].certInstitution }
                                                                     </p>
                                                                  </div>
                                                               </div>
                                                               <div class="col-md-4">
                                                                  <p class="text-muted strong font-13">${member.certList[1].certName }컴퓨터활용능력
                                                                     1급</p>
                                                                  <div>
                                                                     <%--                                                       <p class="text-muted"><i class="lar la-check-circle"></i> <fmt:formatDate value="${member.certList[1].certDate }" pattern="yyyy-MM"/>2023.05.</p> --%>
                                                                     <p class="text-muted">
                                                                        <i class="lar la-check-circle"></i>${member.certList[1].certDate }2023.05.</p>
                                                                     <p class="text-muted">
                                                                        <i class="lar la-check-circle"></i>
                                                                        ${member.certList[1].certInstitution }대한상공회의소
                                                                     </p>
                                                                  </div>
                                                               </div>
                                                               <div class="col-md-4">
                                                                  <p class="text-muted strong font-13">${member.certList[2].certName }한국사능력검정시험</p>
                                                                  <div>
                                                                     <%--                                                       <p class="text-muted"><i class="lar la-check-circle"></i> <fmt:formatDate value="${member.certList[2].certDate }" pattern="yyyy-MM"/>2022.06.</p> --%>
                                                                     <p class="text-muted">
                                                                        <i class="lar la-check-circle"></i>${member.certList[1].certDate }2023.05.</p>
                                                                     <p class="text-muted">
                                                                        <i class="lar la-check-circle"></i>
                                                                        ${member.certList[2].certInstitution }국사편찬위원회
                                                                     </p>
                                                                  </div>
                                                               </div>

                                                            </div>
                                                         </div>
                                                      </div>
                                                   </div>
                                                </div>
                                                <br>
                                                <div class="strong" style="color: #e7515a">보유 자격증 평가점수 입력 :</div>
                                                <input type="number" class="form-control mt-3" max="10" min="1" name="applyLicense" placeholder="1에서 10까지 입력해주세요"/>
                                                
                                                
                        

                                                <div
                                                   class="w-100 animated-underline-content mt-2 details-tab-area">
                                                   <ul class="nav nav-tabs  mb-3" id="lineTab"
                                                      role="tablist">
                                                      <li class="nav-item"><a class="nav-link active"
                                                         id="underline-specification-tab" data-toggle="tab"
                                                         href="#underline-specification" role="tab"
                                                         aria-controls="underline-specification"
                                                         aria-selected="false">어학</a></li>
                                                   </ul>
                                                   <div class="tab-content" id="lineTabContent-3">
                                                      <div class="tab-pane fade show active"
                                                         id="underline-specification" role="tabpanel"
                                                         aria-labelledby="underline-specification-tab">
                                                         <div class="d-flex flex-wrap p-2">
<!--                                                             <p class="text-muted mb-4"> -->
<%--                                                                <c:if test="${member.langList[0].langName == 1 }">영  어</c:if> --%>
<%--                                                                <c:if test="${member.langList[0].langName == 2 }">일본어</c:if> --%>
<%--                                                                <c:if test="${member.langList[0].langName == 3 }">중국어</c:if> --%>
<!--                                                             </p> -->
                                                            <div class="row mb-3 w-100">
                                                               <div class="col-md-4">
                                                                  <p class="text-muted strong font-13">${member.langList[0].langTestName }</p>
                                                                  <div>
                                                                     <%--                                                       <p class="text-muted"><i class="lar la-check-circle"></i> <fmt:formatDate value="${member.langList[0].langTestDate }" pattern="yyyy-MM-dd"/> </p> --%>
                                                                     <p class="text-muted">
                                                                        <i class="lar la-check-circle"></i>
                                                                        ${member.langList[0].langTestDate }
                                                                     </p>
                                                                     <p class="text-muted">
                                                                        <i class="lar la-check-circle"></i>
                                                                        ${member.langList[0].langTestScore }점
                                                                     </p>
                                                                  </div>
                                                               </div>
                                                               <div class="col-md-4">
                                                                  <p class="text-muted strong font-13">${member.langList[1].langTestName }TOEIC
                                                                     Speaking</p>
                                                                  <div>
                                                                     <p class="text-muted">
                                                                        <i class="lar la-check-circle"></i>
                                                                        ${member.langList[0].langTestDate }2023-04-17
                                                                     </p>
                                                                     <p class="text-muted">
                                                                        <i class="lar la-check-circle"></i>
                                                                        ${member.langList[1].langTestScore }level 8
                                                                     </p>
                                                                  </div>
                                                               </div>
                                                               <div class="col-md-4">
<%--                                                                   <p class="text-muted strong font-13">${member.langList[2].langTestName }TOEFL</p> --%>
<!--                                                                   <div> -->
<!--                                                                      <p class="text-muted"> -->
<!--                                                                         <i class="lar la-check-circle"></i> -->
<%--                                                                         ${member.langList[0].langTestDate }2023-04-17 --%>
<!--                                                                      </p> -->
                                                                     <p class="text-muted strong font-13">${member.langList[3].langTestName }新HSK</p>
                                                                  <div>
                                                                     <%--                                                       <p class="text-muted"><i class="lar la-check-circle"></i> <fmt:formatDate value="${member.langList[3].langTestDate }" pattern="yyyy-MM-dd"/>2023-04-17 </p> --%>
                                                                     <p class="text-muted">
                                                                        <i class="lar la-check-circle"></i>
                                                                        ${member.langList[3].langTestDate } 2023-04-17
                                                                     </p>
                                                                     <p class="text-muted">
                                                                        <i class="lar la-check-circle"></i>
                                                                        ${member.langList[3].langTestScore }6급 / 260점
                                                                     </p>
                                                                  </div>
                                                               </div>
                                                            </div>
                                                         </div>
                                                      </div>

                                                      <div class="tab-pane fade show active"
                                                         id="underline-specification" role="tabpanel"
                                                         aria-labelledby="underline-specification-tab">
                                                         <div class="d-flex flex-wrap p-2">
<!--                                                             <p class="text-muted mb-4"> -->
                                                               
<%--                                                                <c:if test="${member.langList[1].langName == 1 }">영어</c:if> --%>
<%--                                                                <c:if test="${member.langList[1].langName == 2 }">일본어</c:if> --%>
<%--                                                                <c:if test="${member.langList[1].langName == 3 }">중국어</c:if> --%>
<!--                                                             </p> -->
                                                            <div class="row mb-3 w-100">
<!--                                                                <div class="col-md-4"> -->
<%--                                                                   <p class="text-muted strong font-13">${member.langList[3].langTestName }新HSK</p> --%>
<!--                                                                   <div> -->
<%--                                                                                                                            <p class="text-muted"><i class="lar la-check-circle"></i> <fmt:formatDate value="${member.langList[3].langTestDate }" pattern="yyyy-MM-dd"/>2023-04-17 </p> --%>
<!--                                                                      <p class="text-muted"> -->
<!--                                                                         <i class="lar la-check-circle"></i> -->
<%--                                                                         ${member.langList[3].langTestDate } 2023-04-17 --%>
<!--                                                                      </p> -->
<!--                                                                      <p class="text-muted"> -->
<!--                                                                         <i class="lar la-check-circle"></i> -->
<%--                                                                         ${member.langList[3].langTestScore }6급 / 260점 --%>
<!--                                                                      </p> -->
<!--                                                                   </div> -->
<!--                                                                </div> -->
                                                            </div>
                                                         </div>
                                                      </div>
                                                   </div>
                                                </div>
                                                <br>
                                                
                                                <div class="strong" style="color: #e7515a">보유 어학 평가점수 입력 :</div>
                                                <input type="number" class="form-control mt-3" max="10" min="1" name="applyLanguage" placeholder="1에서 10까지 입력해주세요"/>

                        

                                                <div
                                                   class="w-100 animated-underline-content mt-2 details-tab-area">
                                                   <ul class="nav nav-tabs  mb-3" id="lineTab"
                                                      role="tablist">
                                                      <li class="nav-item"><a class="nav-link active"
                                                         id="underline-specification-tab" data-toggle="tab"
                                                         href="#underline-specification" role="tab"
                                                         aria-controls="underline-specification"
                                                         aria-selected="false">인턴 · 대외활동</a></li>
                                                   </ul>
                                                   <div class="tab-content" id="lineTabContent-3">
                                                      <div class="tab-pane fade show active"
                                                         id="underline-specification" role="tabpanel"
                                                         aria-labelledby="underline-specification-tab">
                                                         <div class="d-flex flex-wrap p-2">
                                                            <div class="row mb-3 w-100">
                                                               <div class="col-md-4">
                                                                  <p class="text-muted strong font-13">
                                                                     <c:if
                                                                        test="${member.activityList[0].actCategory == 1}">인턴&nbsp</c:if>
                                                                     <c:if
                                                                        test="${member.activityList[0].actCategory == 2}">아르바이트&nbsp</c:if>
                                                                     <c:if
                                                                        test="${member.activityList[0].actCategory == 3}">동아리&nbsp</c:if>
                                                                     <c:if
                                                                        test="${member.activityList[0].actCategory == 4}">자원봉사&nbsp</c:if>
                                                                     <c:if
                                                                        test="${member.activityList[0].actCategory == 5}">사회활동&nbsp</c:if>
                                                                     <c:if
                                                                        test="${member.activityList[0].actCategory == 6}">교내활동&nbsp</c:if>
                                                                  </p>
                                                                  <div>
                                                                     <p class="text-muted">
                                                                        <i class="lar la-check-circle"></i> 기관명:
                                                                        ${member.activityList[0].actInstitution }
                                                                     </p>
                                                                     <%--                                                       <p class="text-muted"><i class="lar la-check-circle"></i> <fmt:formatDate value="${member.activityList[0].actStart }" pattern="yyyy-MM-dd"/> ~ <fmt:formatDate value="${member.activityList[0].actEnd }" pattern="yyyy-MM-dd"/> </p> --%>
                                                                     <p class="text-muted">
                                                                        <i class="lar la-check-circle"></i>
                                                                        ${member.activityList[0].actStart } ~
                                                                        ${member.activityList[0].actEnd }
                                                                     </p>
                                                                     <p class="text-muted">
                                                                        <i class="lar la-check-circle"></i>
                                                                        ${member.activityList[0].actContent }
                                                                     </p>
                                                                  </div>
                                                               </div>
                                                               <div class="col-md-4">
                                                                  <p class="text-muted strong font-13">
                                                                     <c:if
                                                                        test="${member.activityList[1].actCategory == 1}">인턴&nbsp</c:if>
                                                                     <c:if
                                                                        test="${member.activityList[1].actCategory == 2}">아르바이트&nbsp</c:if>
                                                                     <c:if
                                                                        test="${member.activityList[1].actCategory == 3}">동아리&nbsp</c:if>
                                                                     <c:if
                                                                        test="${member.activityList[1].actCategory == 4}">자원봉사&nbsp</c:if>
                                                                     <c:if
                                                                        test="${member.activityList[1].actCategory == 5}">사회활동&nbsp</c:if>
                                                                     <c:if
                                                                        test="${member.activityList[1].actCategory == 6}">교내활동&nbsp</c:if>
                                                                  </p>
                                                                  <div>
                                                                     <p class="text-muted">
                                                                        <i class="lar la-check-circle"></i> 기관명:
                                                                        ${member.activityList[1].actInstitution }
                                                                     </p>
                                                                     <%--                                                       <p class="text-muted"><i class="lar la-check-circle"></i> <fmt:formatDate value="${member.activityList[1].actStart }" pattern="yyyy-MM-dd"/> ~ <fmt:formatDate value="${member.activityList[1].actEnd }" pattern="yyyy-MM-dd"/> </p> --%>
                                                                     <p class="text-muted">
                                                                        <i class="lar la-check-circle"></i>
                                                                        ${member.activityList[1].actStart } ~
                                                                        ${member.activityList[1].actEnd }
                                                                     </p>
                                                                     <p class="text-muted">
                                                                        <i class="lar la-check-circle"></i>
                                                                        ${member.activityList[1].actContent }
                                                                     </p>
                                                                  </div>
                                                               </div>
                                                               <div class="col-md-4">
                                                                  <p class="text-muted strong font-13">
                                                                     <c:if
                                                                        test="${member.activityList[2].actCategory == 1}">인턴&nbsp</c:if>
                                                                     <c:if
                                                                        test="${member.activityList[2].actCategory == 2}">아르바이트&nbsp</c:if>
                                                                     <c:if
                                                                        test="${member.activityList[2].actCategory == 3}">동아리&nbsp</c:if>
                                                                     <c:if
                                                                        test="${member.activityList[2].actCategory == 4}">자원봉사&nbsp</c:if>
                                                                     <c:if
                                                                        test="${member.activityList[2].actCategory == 5}">사회활동&nbsp</c:if>
                                                                     <c:if
                                                                        test="${member.activityList[2].actCategory == 6}">교내활동&nbsp</c:if>
                                                                  </p>
                                                                  <div>
                                                                     <p class="text-muted">
                                                                        <i class="lar la-check-circle"></i> 기관명:
                                                                        ${member.activityList[2].actInstitution }
                                                                     </p>
                                                                     <%--                                                       <p class="text-muted"><i class="lar la-check-circle"></i> <fmt:formatDate value="${member.activityList[2].actStart }" pattern="yyyy-MM-dd"/> ~ <fmt:formatDate value="${member.activityList[2].actEnd }" pattern="yyyy-MM-dd"/> </p> --%>
                                                                     <p class="text-muted">
                                                                        <i class="lar la-check-circle"></i>
                                                                        ${member.activityList[2].actStart } ~
                                                                        ${member.activityList[2].actEnd }
                                                                     </p>
                                                                     <p class="text-muted">
                                                                        <i class="lar la-check-circle"></i>
                                                                        ${member.activityList[2].actContent }
                                                                     </p>
                                                                  </div>
                                                               </div>
                                                            </div>
                                                         </div>
                                                      </div>
                                                   </div>
                                                </div>
      
                                                <div class="strong" style="color: #e7515a">보유 인턴-대외활동 평가점수 입력 :</div>
                                                <input type="number" class="form-control mt-3" max="10" min="1" name="applyActivities" placeholder="1에서 10까지 입력해주세요"/>

                                                <div
                                                   class="w-100 animated-underline-content mt-2 details-tab-area">
                                                   <ul class="nav nav-tabs  mb-3" id="lineTab"
                                                      role="tablist">
                                                      <li class="nav-item"><a class="nav-link active"
                                                         id="underline-specification-tab" data-toggle="tab"
                                                         href="#underline-specification" role="tab"
                                                         aria-controls="underline-specification"
                                                         aria-selected="false">포트폴리오</a></li>
                                                   </ul>
                                                   <div class="tab-content" id="lineTabContent-3">
                                                      <div class="tab-pane fade show active"
                                                         id="underline-specification" role="tabpanel"
                                                         aria-labelledby="underline-specification-tab">
                                                         <div class="d-flex flex-wrap p-2">
                                                            <!--                                           <p class="text-muted mb-4">로레알코리아</p> -->
                                                            <div class="row mb-3 w-100">
                                                               <div class="col-md-8">
                                                                  <!--                                                   <p class="text-muted strong font-13">재직 중</p> -->
                                                                  <div>
                                                                     <p class="text-muted">
                                                                        <i class="lar la-check-circle"></i> 포트폴리오 URL │
                                                                        <a
                                                                           href="${member.portfolioList[0].portfolioUrl }">${member.portfolioList[0].portfolioUrl }</a>
                                                                     </p>
<!--                                                                      <p class="text-muted"> -->
<!--                                                                         <i class="lar la-check-circle"></i> 첨부파일 │ -->
<!--                                                                      </p> -->
<!--                                                                      <div class="file doc"> -->
<!--                                                                         <i class="lar la-file-word file-icon"></i> -->
<!--                                                                      </div> -->

                                                                  </div>
                                                               </div>

                                                            </div>
                                                         </div>
                                                      </div>
                                                   </div>
                                                </div>
                                                <br>
                                                <div class="strong" style="color: #e7515a">포트폴리오 평가점수 입력 :</div>
                                                <input type="number" class="form-control mt-3" max="10" min="1" name="applyPortfolio" placeholder="1에서 10까지 입력해주세요"/>
                                                



                                                <div
                                                   class="w-100 animated-underline-content mt-2 details-tab-area">
                                                   <ul class="nav nav-tabs  mb-3" id="lineTab"
                                                      role="tablist">
                                                      <li class="nav-item"><a class="nav-link active"
                                                         id="underline-specification-tab" data-toggle="tab"
                                                         href="#underline-specification" role="tab"
                                                         aria-controls="underline-specification"
                                                         aria-selected="false">희망근무조건</a></li>
                                                   </ul>
                                                   <div class="tab-content" id="lineTabContent-3">
                                                      <div class="tab-pane fade show active"
                                                         id="underline-specification" role="tabpanel"
                                                         aria-labelledby="underline-specification-tab">
                                                         <div class="d-flex flex-wrap p-2">
                                                            <!--                                           <p class="text-muted mb-4">로레알코리아</p> -->
                                                            <div class="row mb-3 w-100">
                                                               <div class="col-md-8">
                                                                  <!--                                                   <p class="text-muted strong font-13">재직 중</p> -->
                                                                  <div>
                                                                     <p class="text-muted">
                                                                        <i class="lar la-check-circle"></i> 고용 형태 │
                                                                        <c:if
                                                                           test="${member.desiredList[0].desiredEmplForm == 1 }">
                                                               정규직
                                                            </c:if>
                                                                        <c:if
                                                                           test="${member.desiredList[0].desiredEmplForm == 2 }">
                                                               계약직
                                                            </c:if>
                                                                        <c:if
                                                                           test="${member.desiredList[0].desiredEmplForm == 3 }">
                                                               병역특례
                                                            </c:if>
                                                                        <c:if
                                                                           test="${member.desiredList[0].desiredEmplForm == 4 }">
                                                               프리랜서
                                                            </c:if>
                                                                        <c:if
                                                                           test="${member.desiredList[0].desiredEmplForm == 5 }">
                                                               헤드헌팅
                                                            </c:if>
                                                                        <c:if
                                                                           test="${member.desiredList[0].desiredEmplForm == 6 }">
                                                               파견대행
                                                            </c:if>
                                                                        <c:if
                                                                           test="${member.desiredList[0].desiredEmplForm == 7 }">
                                                               인턴직
                                                            </c:if>
                                                                     </p>
                                                                     <p class="text-muted">
                                                                        <i class="lar la-check-circle"></i> 희망근무지 │
                                                                        ${member.desiredList[0].desiredCity1 }&nbsp;&nbsp;${member.desiredList[0].desiredCity2 }&nbsp;
                                                                     </p>
                                                                     <p class="text-muted">
                                                                        <i class="lar la-check-circle"></i> 희망연봉 │
                                                                        ${member.desiredList[0].desiredSalary }만 원
                                                                     </p>
                                                                     <p class="text-muted">
                                                                        <i class="lar la-check-circle"></i> 지원 분야 │
                                                                        ${member.desiredList[0].desiredIndustry1 }&nbsp;&nbsp;${member.desiredList[0].desiredIndustry2 }&nbsp;&nbsp;${member.desiredList[0].desiredIndustry3}
                                                                     </p>
                                                                  </div>
                                                               </div>

                                                            </div>
                                                         </div>
                                                      </div>
                                                   </div>
                                                </div>
                                                <br>


                        	<h4  id="item-11"></h4>
	                    	<div class="w-100 animated-underline-content mt-2 details-tab-area">
								<ul class="nav nav-tabs  mb-3" id="lineTab" role="tablist">
								    <li class="nav-item">
								        <a class="nav-link active" id="underline-specification-tab" data-toggle="tab" href="#underline-specification" role="tab" aria-controls="underline-specification" aria-selected="false">취업우대 · 병역</a>
								    </li>
								</ul>
								<div class="tab-content" id="lineTabContent-3">
								    <div class="tab-pane fade show active" id="underline-specification" role="tabpanel" aria-labelledby="underline-specification-tab">
								        <div class="d-flex flex-wrap p-2">
								            <div class="row mb-3 w-100">
<%--                                                 <c:if test="${resume.prfrnList[0] != null }"> --%>
								                <div class="col-md-8">
								                    <div>
<%-- 							                   			<c:if test="${resume.prfrnList[0].prfrnVeterans != null}"> --%>
<!-- 							                   				<p class="text-muted">• 보훈 대상</a></p> -->
<%-- 							                   			</c:if> --%>
<%-- 							                   			<c:if test="${resume.prfrnList[0].prfrnProtection != null}"> --%>
							                   				<p class="text-muted">• 취업보호 대상</a></p>
<%-- 							                   			</c:if> --%>
<%-- 							                   			<c:if test="${resume.prfrnList[0].prfrnSubsidy != null}"> --%>
<!-- 							                   				<p class="text-muted">• 고용지원금 대상</a></p> -->
<%-- 							                   			</c:if> --%>
<%-- 							                   			<c:if test="${resume.prfrnList[0].prfrnDisability != null}"> --%>
<!-- 							                   				<p class="text-muted">• 장애 등급	│	 -->
<%-- 							                   					<c:if test="${resume.prfrnList[0].prfrnDisabilityGrade == 1}" >중증</c:if> --%>
<%-- 							                   					<c:if test="${resume.prfrnList[0].prfrnDisabilityGrade == 2}" >경증</c:if> --%>
<%-- 							                   					<c:if test="${resume.prfrnList[0].prfrnDisabilityGrade == 3}" >1급</c:if> --%>
<%-- 							                   					<c:if test="${resume.prfrnList[0].prfrnDisabilityGrade == 4}" >2급</c:if> --%>
<%-- 							                   					<c:if test="${resume.prfrnList[0].prfrnDisabilityGrade == 5}" >3급</c:if> --%>
<%-- 							                   					<c:if test="${resume.prfrnList[0].prfrnDisabilityGrade == 6}" >4급</c:if> --%>
<%-- 							                   					<c:if test="${resume.prfrnList[0].prfrnDisabilityGrade == 7}" >5급</c:if> --%>
<%-- 							                   					<c:if test="${resume.prfrnList[0].prfrnDisabilityGrade == 8}" >6급</c:if> --%>
<!-- 							                   				</p> -->
<%-- 							                   			</c:if> --%>
<%-- 							                   			<c:if test="${resume.prfrnList[0].prfrnMilitary != null}"> --%>
							                   				<p class="text-muted">• 병역 구분	│	군필
							                   					<c:if test="${resume.prfrnList[0].prfrnMilitaryType == 1}" >군필</c:if>
							                   					<c:if test="${resume.prfrnList[0].prfrnMilitaryType == 2}" >미필</c:if>
							                   					<c:if test="${resume.prfrnList[0].prfrnMilitaryType == 3}" >면제</c:if>
							                   					<c:if test="${resume.prfrnList[0].prfrnMilitaryType == 4}" >해당없음</c:if>
							                   				</p>
							                   				<p class="text-muted">• 입대일	│	2018-02-01<!--  ${resume.prfrnList[0].prfrnMilitaryStart }--></p>
							                   				<p class="text-muted">• 제대일	│	2019-08-05<!-- ${resume.prfrnList[0].prfrnMilitaryEnd }--></p>
							                   				<p class="text-muted">• 군별	│	육군
							                   					<c:if test="${resume.prfrnList[0].prfrnMilitaryBranch == 1}" >육군</c:if>
							                   					<c:if test="${resume.prfrnList[0].prfrnMilitaryBranch == 2}" >해군</c:if>
							                   					<c:if test="${resume.prfrnList[0].prfrnMilitaryBranch == 3}" >공군</c:if>
							                   					<c:if test="${resume.prfrnList[0].prfrnMilitaryBranch == 4}" >해병</c:if>
							                   					<c:if test="${resume.prfrnList[0].prfrnMilitaryBranch == 5}" >전경</c:if>
							                   					<c:if test="${resume.prfrnList[0].prfrnMilitaryBranch == 6}" >의경</c:if>
							                   					<c:if test="${resume.prfrnList[0].prfrnMilitaryBranch == 7}" >공익</c:if>
							                   					<c:if test="${resume.prfrnList[0].prfrnMilitaryBranch == 8}" >기타</c:if>
							                   				</p>
							                   				<p class="text-muted">• 제대계급	│	병장
							                   					<c:if test="${resume.prfrnList[0].prfrnMilitaryRank == 1}" >이병</c:if>
							                   					<c:if test="${resume.prfrnList[0].prfrnMilitaryRank == 2}" >일병</c:if>
							                   					<c:if test="${resume.prfrnList[0].prfrnMilitaryRank == 3}" >상병</c:if>
							                   					<c:if test="${resume.prfrnList[0].prfrnMilitaryRank == 4}" >병장</c:if>
							                   					<c:if test="${resume.prfrnList[0].prfrnMilitaryRank == 5}" >하사</c:if>
							                   					<c:if test="${resume.prfrnList[0].prfrnMilitaryRank == 6}" >중사</c:if>
							                   					<c:if test="${resume.prfrnList[0].prfrnMilitaryRank == 7}" >상사</c:if>
							                   					<c:if test="${resume.prfrnList[0].prfrnMilitaryRank == 8}" >원사</c:if>
							                   					<c:if test="${resume.prfrnList[0].prfrnMilitaryRank == 9}" >준위</c:if>
							                   					<c:if test="${resume.prfrnList[0].prfrnMilitaryRank == 10}" >소위</c:if>
							                   					<c:if test="${resume.prfrnList[0].prfrnMilitaryRank == 11}" >중위</c:if>
							                   					<c:if test="${resume.prfrnList[0].prfrnMilitaryRank == 12}" >대위</c:if>
							                   					<c:if test="${resume.prfrnList[0].prfrnMilitaryRank == 13}" >소령</c:if>
							                   					<c:if test="${resume.prfrnList[0].prfrnMilitaryRank == 14}" >중령</c:if>
							                   					<c:if test="${resume.prfrnList[0].prfrnMilitaryRank == 15}" >대령</c:if>
							                   					<c:if test="${resume.prfrnList[0].prfrnMilitaryRank == 16}" >준장</c:if>
							                   					<c:if test="${resume.prfrnList[0].prfrnMilitaryRank == 17}" >소장</c:if>
							                   					<c:if test="${resume.prfrnList[0].prfrnMilitaryRank == 18}" >중장</c:if>
							                   					<c:if test="${resume.prfrnList[0].prfrnMilitaryRank == 19}" >대장</c:if>
							                   					<c:if test="${resume.prfrnList[0].prfrnMilitaryRank == 20}" >기타</c:if>
							                   				</p>
<%-- 							                   			</c:if> --%>
								                    </div>
								                </div>
<%-- 		           			</c:if> --%>
								            </div>
								        </div>         
								    </div>
		           				</div>
		           			</div>	
                                                <div class="strong" style="color: #e7515a">취업우대항목-병역 평가점수 입력 :</div>
                                                <input type="number" class="form-control mt-3" max="10" min="1" name="applyPoint" placeholder="1에서 10까지 입력해주세요"/>
                                                <br>
                                                <div class="strong" style="color: #e7515a">인재평가메모 :</div>
                                                <textarea name="applyResultComment" class="form-control" id="exampleTextarea" rows="3" placeholder="채용결정에서 확인할 인재정보평가 메모를 입력하세요"></textarea>
                                             </div>
<!--                                           </div> -->
                                       </div>
                                    </div>
                                    
                                       <input type="hidden" value="${member.memId }"> <input
                                          type="hidden" value="${member.annoList[0].annoId }">
                                       <input type="hidden"
                                          value="${member.applyList[0].applyId }" name="applyId">
                                       
                                       <br>
                                       <button class="btn btn-block btn-lg btn-primary "
                                          type="submit">평가점수 및 피드백하기</button>
                                    </form>
									</div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
	function fu_click() {

		$('input[name=applySchool]')
				.attr('value', "10");
		$('input[name=applySkill]')
				.attr('value', "5");
		$('input[name=applyCareer]').attr('value',
				"7");
		$('input[name=applyLicense]').attr('value', "5");
		$('input[name=applyLanguage]').attr('value', "4");
		$('input[name=applyActivities]').attr('value', "10");
		$('input[name=applyPortfolio]').attr('value', "8");
		$('input[name=applyPoint]').attr('value', "7");
		$('textarea[name="applyResultComment"]').html("언어 점수가 부족하네요");

	}
</script>
