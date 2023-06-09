<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="sub-header-container">
            <header class="header navbar navbar-expand-sm">
                <ul class="navbar-nav flex-row">
                    <li>
                        <div class="page-header">
                            <nav class="breadcrumb-one" aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="javascript:void(0);">음</a></li>
                                    <li class="breadcrumb-item active" aria-current="page"><span> <img alt="" style="height: 150px; width: 150px;" src="/resources/upload/${companyVO.companyLogo}"> ${companyVO.companyName} 기업리뷰</span></li>
                                </ol>
                            </nav>
                        </div>
                    </li>
                </ul>
<!--                 <ul class="navbar-nav d-flex align-center ml-auto right-side-filter"> -->
<!--                     <li class=""> -->
<!--                         <p class="current-time" id="currentTime"></p> -->
<!--                         <p class="current-date" id="currentDate"></p> -->
<!--                     </li> -->
<!--                 </ul> -->
            </header>
        </div>
            <!--  Navbar Ends / Breadcrumb Area  -->
            <!-- Main Body Starts -->
            <div class="layout-px-spacing">                
                <div class="row layout-spacing layout-top-spacing" id="cancel-row">
                    <div class="col-lg-12">
                        <div class="">
                            <div class="widget-content searchable-container grid">
                                <div class="card-box add-product">
                                        <div class="row" style="width: 60%;">
                                            <div class="col-sm-6">
                                            <form action="/member/reviewInsert" id="myform" name="form" method="post" enctype="multipart/form-data">
                                            	<div class="form-group">
                                            	<div>
                                            	</div>
                                            	<input type="hidden" name="memId" value="${memberVO.memId }">
                                            	<input type="hidden" name="comId" value="${companyVO.companyId }">
                                                    <label for="exampleTextarea" class="strong">기업 총평점</label>
                                                    <div>
	                                                    <fieldset class="rate" >
							                                <input type="radio" id="z1" name="reviewScore" value="10"><label for="z1" title="5점"></label>
							                                <input type="radio" id="z2" name="reviewScore" value="9"><label  class="half" for="z2" title="4.5점"></label>
							                                <input type="radio" id="z3" name="reviewScore" value="8"><label  for="z3" title="4점"></label>
							                                <input type="radio" id="z4" name="reviewScore" value="7"><label  class="half" for="z4" title="3.5점"></label>
							                                <input type="radio" id="z5" name="reviewScore" value="6"><label  for="z5" title="3점"></label>
							                                <input type="radio" id="z6" name="reviewScore" value="5"><label  class="half" for="z6" title="2.5점"></label>
							                                <input type="radio" id="z7" name="reviewScore" value="4"><label  for="z7" title="2점"></label>
							                                <input type="radio" id="z8" name="reviewScore" value="3"><label  class="half" for="z8" title="1.5점"></label>
							                                <input type="radio" id="z9" name="reviewScore" value="2"><label  for="z9" title="1점"></label>
							                                <input type="radio" id="z10" name="reviewScore" value="1"><label  class="half" for="z10" title="0.5점"></label>
							                            </fieldset>
						                            </div>
                                                </div>  
                                                <div class="form-group">
                                                    <label for="exampleTextarea" class="strong">기업 한줄평</label>
                                                    <textarea class="form-control" name="reviewComent"  rows="3"></textarea>
                                                </div>
                                                <div class="form-group">
                                                    <label for="exampleTextarea" class="strong">기업의장점</label>
                                                    <textarea class="form-control" name="reviewGood"  rows="3"></textarea>
                                                </div>
                                                <div class="form-group">
                                                    <label for="exampleTextarea" class="strong">기업의 단점</label>
                                                    <textarea class="form-control"  name="reviewBad" rows="3"></textarea>
                                                </div>
                                                <div class="form-group">
                                                    <label for="exampleTextarea" class="strong">승진 및 가능성</label>
                                                    <div>
                                                    <fieldset class="rate">
						                                <input type="radio" id="a1" name="reviewVision" value="10"><label for="a1" title="5점"></label>
						                                <input type="radio" id="a2" name="reviewVision" value="9"><label class="half" for="a2" title="4.5점"></label>
						                                <input type="radio" id="a3" name="reviewVision" value="8"><label for="a3" title="4점"></label>
						                                <input type="radio" id="a4" name="reviewVision" value="7"><label class="half" for="a4" title="3.5점"></label>
						                                <input type="radio" id="a5" name="reviewVision" value="6"><label for="a5" title="3점"></label>
						                                <input type="radio" id="a6" name="reviewVision" value="5"><label class="half" for="a6" title="2.5점"></label>
						                                <input type="radio" id="a7" name="reviewVision" value="4"><label for="a7" title="2점"></label>
						                                <input type="radio" id="a8" name="reviewVision" value="3"><label class="half" for="a8" title="1.5점"></label>
						                                <input type="radio" id="a9" name="reviewVision" value="2"><label for="a9" title="1점"></label>
						                                <input type="radio" id="a10" name="reviewVision" value="1"><label class="half" for="a10" title="0.5점"></label>
						                            </fieldset>
						                            </div>
												</div>
                                                <div class="form-group">
                                                    <label for="exampleTextarea" class="strong">복지 및 급여</label>
                                                    <div>
                                                    <fieldset class="rate">
						                                <input type="radio" id="b1" name="reviewWelfare" value="10"><label for="b1" title="5점"></label>
						                                <input type="radio" id="b2" name="reviewWelfare" value="9"><label class="half" for="b2" title="4.5점"></label>
						                                <input type="radio" id="b3" name="reviewWelfare" value="8"><label for="b3" title="4점"></label>
						                                <input type="radio" id="b4" name="reviewWelfare" value="7"><label class="half" for="b4" title="3.5점"></label>
						                                <input type="radio" id="b5" name="reviewWelfare" value="6"><label for="b5" title="3점"></label>
						                                <input type="radio" id="b6" name="reviewWelfare" value="5"><label class="half" for="b6" title="2.5점"></label>
						                                <input type="radio" id="b7" name="reviewWelfare" value="4"><label for="b7" title="2점"></label>
						                                <input type="radio" id="b8" name="reviewWelfare" value="3"><label class="half" for="b8" title="1.5점"></label>
						                                <input type="radio" id="b9" name="reviewWelfare" value="2"><label for="b9" title="1점"></label>
						                                <input type="radio" id="b10" name="reviewWelfare" value="1"><label class="half" for="b10" title="0.5점"></label>
						                            </fieldset>
						                            </div>
												</div>
                                                <div class="form-group">
                                                    <label for="exampleTextarea" class="strong">업무와 삶의 균형</label>
                                                    <div>
                                                    <fieldset class="rate">
						                                <input type="radio" id="c1" name="reviewBalance" value="10"><label for="c1" title="5점"></label>
						                                <input type="radio" id="c2" name="reviewBalance" value="9"><label class="half" for="c2" title="4.5점"></label>
						                                <input type="radio" id="c3" name="reviewBalance" value="8"><label for="c3" title="4점"></label>
						                                <input type="radio" id="c4" name="reviewBalance" value="7"><label class="half" for="c4" title="3.5점"></label>
						                                <input type="radio" id="c5" name="reviewBalance" value="6"><label for="c5" title="3점"></label>
						                                <input type="radio" id="c6" name="reviewBalance" value="5"><label class="half" for="c6" title="2.5점"></label>
						                                <input type="radio" id="c7" name="reviewBalance" value="4"><label for="c7" title="2점"></label>
						                                <input type="radio" id="c8" name="reviewBalance" value="3"><label class="half" for="c8" title="1.5점"></label>
						                                <input type="radio" id="c9" name="reviewBalance" value="2"><label for="c9" title="1점"></label>
						                                <input type="radio" id="c10" name="reviewBalance" value="1"><label class="half" for="c10" title="0.5점"></label>
						                            </fieldset>
						                            </div>
												</div>
                                                <div class="form-group">
                                                    <label for="exampleTextarea" class="strong">사내문화</label>
                                                    <div>
                                                    <fieldset class="rate">
						                                <input type="radio" id="d1" name="reviewCulture" value="10"><label for="d1" title="5점"></label>
						                                <input type="radio" id="d2" name="reviewCulture" value="9"><label class="half" for="d2" title="4.5점"></label>
						                                <input type="radio" id="d3" name="reviewCulture" value="8"><label for="d3" title="4점"></label>
						                                <input type="radio" id="d4" name="reviewCulture" value="7"><label class="half" for="d4" title="3.5점"></label>
						                                <input type="radio" id="d5" name="reviewCulture" value="6"><label for="d5" title="3점"></label>
						                                <input type="radio" id="d6" name="reviewCulture" value="5"><label class="half" for="d6" title="2.5점"></label>
						                                <input type="radio" id="d7" name="reviewCulture" value="4"><label for="d7" title="2점"></label>
						                                <input type="radio" id="d8" name="reviewCulture" value="3"><label class="half" for="d8" title="1.5점"></label>
						                                <input type="radio" id="d9" name="reviewCulture" value="2"><label for="d9" title="1점"></label>
						                                <input type="radio" id="d10" name="reviewCulture" value="1"><label class="half" for="d10" title="0.5점"></label>
						                            </fieldset>
						                            </div>
												</div>
                                                <div class="form-group">
                                                    <label for="exampleTextarea" class="strong">경영진</label>
                                                    <div>
                                                    <fieldset class="rate">
						                                <input type="radio" id="e1" name="reviewManage" value="10"><label for="e1" title="5점"></label>
						                                <input type="radio" id="e2" name="reviewManage" value="9"><label class="half" for="e2" title="4.5점"></label>
						                                <input type="radio" id="e3" name="reviewManage" value="8"><label for="e3" title="4점"></label>
						                                <input type="radio" id="e4" name="reviewManage" value="7"><label class="half" for="e4" title="3.5점"></label>
						                                <input type="radio" id="e5" name="reviewManage" value="6"><label for="e5" title="3점"></label>
						                                <input type="radio" id="e6" name="reviewManage" value="5"><label class="half" for="e6" title="2.5점"></label>
						                                <input type="radio" id="e7" name="reviewManage" value="4"><label for="e7" title="2점"></label>
						                                <input type="radio" id="e8" name="reviewManage" value="3"><label class="half" for="e8" title="1.5점"></label>
						                                <input type="radio" id="e9" name="reviewManage" value="2"><label for="e9" title="1점"></label>
						                                <input type="radio" id="e10" name="reviewManage" value="1"><label class="half" for="e10" title="0.5점"></label>
						                            </fieldset>
						                            </div>
												</div>
                                                
                                    <button type="submit" id="submitBtn" class="mt-3 btn btn-sm btn-primary">리뷰 등록하기</button>
                                    </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
           </div>
          </div>
         </div>
         
