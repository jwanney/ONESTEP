<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!-- 결제관리 페이지 -->

            <!--  Navbar Ends / Breadcrumb Area  -->
            <!-- Main Body Starts -->
            <div class="layout-px-spacing">
                    <div class="col-md-11" style="margin: 0 auto;">
                        <div class="row">
                            <div class="container p-0">
                                <div class="row layout-top-spacing date-table-container">
                                    
                                    <!-- Datatable single column searching -->
                                    <div class="col-xl-12 col-lg-12 col-sm-12  layout-spacing">
                                        <div class="widget-content widget-content-area br-6">
                                            <div class="table-responsive mb-4">
                                                <table id="basic-dt" class="table table-hover" style="width:100%">
                                                    <thead>
                                                        <tr>
                                                            <th>회원</th>
                                                            <th>회사</th>
                                                            <th>상품명</th>
                                                            <th>상품분류</th>
                                                            <th>결제일</th>
                                                            <th>cs상태</th>
                                                            <th>가격</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                    <c:forEach items="${prodList }" var="prodList">
                                                        <tr>
                                                            <td>${prodList.memId }</td>
                                                            <td>${prodList.companyId }</td>
                                                            <td>${prodList.prodContent }</td>
                                                            <td>${prodList.prodStatus }</td>
                                                            <td><fmt:formatDate value="${prodList.prodDay }" pattern="yyyy-MM-dd"/></td>
                                                            <td>${prodList.prodCs }</td>
                                                            <td>${prodList.prodPrice }</td>
                                                        </tr>
                                                    </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
									<div class="widget-content widget-content-area">
									    <div class="row">
									        <div class="col-lg-12 col-md-12 col-sm-12">
									        	<div id="yearprice">
									        		<select id="year" class="form-control" style="width:150px; " name="year">
									        		<c:forEach step="1" begin="2020" end="2040" var="year">
<%-- 									        		<option value="${year }"<c:if test="${year == 2023 }">selected="selected"</c:if>>${year } --%>
									        		<option value="${year }">${year }
									        		</c:forEach>
									        		</select>
									        		<c:forEach items="${prodYear }" var="prodYear">
									        		<input type="text" value="${prodYear.prodMonth }">
									        		</c:forEach>
									        		<br><br>
									        		<span>월별합계</span>
									        	</div>
									            <div id="content_1" class="tabcontent"> 
									                <div id="prodchart"></div>
									            </div>
									        </div>
									    </div>
									</div>
                            </div>
                        </div>
                    </div>
                </div>
<script type="text/javascript">
var coin = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];

var chartOptions = {
        series: [{
            name: '매출액',
            data: coin
          }],
            chart: {
            type: 'bar',
            height: 350
          },
          plotOptions: {
            bar: {
              horizontal: false,
              columnWidth: '55%',
              endingShape: 'rounded'
            },
          },
          dataLabels: {
            enabled: false
          },
          stroke: {
            show: true,
            width: 2,
            colors: ['transparent']
          },
          xaxis: {
            categories: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
          },
          yaxis: {
            title: {
              text: '만원'
            }
          },
          fill: {
            opacity: 1
          },
          tooltip: {
            y: {
              formatter: function (val) {
                return + val + " 만원"
              }
            }
          }
          };



$(document).ready(function() {
	

	$("#yearprice").on("change", "#year", function(){
		var year = $(this).val();
		console.log(year);
		$.ajax({
			url : "/master/prodyear",
			type : 'post',
			dataType : 'text',			
			data : {
				"year" : year
			},
			success : function(data){
				var list = JSON.parse(data);
				var sumArray = new Array;
				var monArray = new Array;
				if(list?.prodYear && list.prodYear?.length > 0 ) {
					
					for(let i = 0; i < list.prodYear.length; i++) {
						var cnt = list.prodYear[i].prodSum;
						var mon = list.prodYear[i].prodMonth;
						sumArray.push(cnt);
						monArray.push(mon);						
					}					
				} else {
					sumArray = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
					monArray = ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'];
				}
				//chartOptions.series[0].data = sumArray;	
				//chartOptions.xaxis.categories = monArray;
				//var chart = new ApexCharts(document.querySelector("#prodchart"),chartOptions);
				var chart = basicLineChart2;
				chart.updateOptions({
					series: [{
			            name: '매출액',
			            data: sumArray
			          }],
			          xaxis: {
			              categories: monArray,
			            }
					});
				
				//chart.render();
				/* alert("변경되었습니다."); */
			}
		});
	});

	var basicLineChart2 = new ApexCharts(
			document.querySelector("#prodchart"),chartOptions);
		  basicLineChart2.render();	
});

</script>