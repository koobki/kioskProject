<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">

    <!-- Title Page-->
    <title>관리페이지</title>
</head>

<body class="animsition">
    <div class="page-wrapper">
    <%@ include file="/WEB-INF/jsp/admin/include/header.jsp" %>
        

        <!-- PAGE CONTENT-->
        <div class="page-content--bgf7">
            <!-- BREADCRUMB-->
            <section class="au-breadcrumb2">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="au-breadcrumb-content">
                                <div class="au-breadcrumb-left">
                                    <ul class="list-unstyled list-inline au-breadcrumb__list">
                                        <li class="list-inline-item active">
                                            <a href="#">Admin</a>
                                        </li>
                                        <li class="list-inline-item seprate">
                                            <span>/</span>
                                        </li>
                                        <li class="list-inline-item">주문관리</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- END BREADCRUMB-->

            <!-- WELCOME-->
            <section class="welcome p-t-10">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="title-4">주문관리
                            </h1>
                            <hr class="line-seprate">
                        </div>
                    </div>
                </div>
            </section>
            <!-- END WELCOME-->
            <!-- DATA TABLE-->
            <section class="p-t-20">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h3 class="title-5 m-b-35">주문목록</h3>
                            <div class="table-data__tool">
                                <div class="table-data__tool-left">
                                    <div class="rs-select2--light rs-select2--sm">
                                        <select id='schOrdDt' class="js-select2" name="time">
                                            <option selected="selected" value="0">오늘</option>
                                            <option value="3">3일전</option>
                                            <option value="7">일주일전</option>
                                        </select>
                                        <div class="dropDownSelect2"></div>
                                    </div>
                                     <div class="rs-select2--light rs-select2--sm">
                                        <select id = 'schOrdStat' class="js-select2" name="time">
                                            <option selected="selected" value="">주문상태</option>
                                            <option value="결제완료">결제완료</option>
                                            <option value="전달완료">전달완료</option>
                                        </select>
                                        <div class="dropDownSelect2"></div>
                                    </div>
                                    <input id = 'schOrdNo' type="text" placeholder="주문번호" class="au-btn-filter">
                                </div>
                                <div class="table-data__tool-right">
                                    <button id='btnSearch' class="au-btn au-btn-icon au-btn--green au-btn--small">
                                        <i class="fa  fa-search"></i>검색</button>
                                </div>
                            </div>
                            <div class="table-responsive table-responsive-data2">
                                <table class="table table-data2">
                                    <thead>
                                        <tr>
                                            <th>주문번호</th>
                                            <th>주문일시</th>
                                            <th>상품번호</th>
                                            <th>상품명</th>
                                            <th>주문수량</th>
                                            <th>주문금액</th>
                                            <th>주문상태</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody id="orderList">
                                        <template id="tempOrd">
	                                        <tr class="tr-shadow">
	                                            <td class="ordNo">2</td>
	                                            <td class="ordDt">2020-09-27 02:12</td>
	                                            <td class="menuNo">1</td>
	                                            <td class="menuNm">매운떡복이</td>
	                                            <td class="ordQty">2</td>
	                                            <td class="ordAmt">3,000</td>
	                                            <td><span class="ordStat">결제완료</span></td>
	                                            <td>
	                                                <div class="table-data-feature">
	                                                    <button name="btnCmp" class="btn btn-success">
	                                                                                                                완료</i>
	                                                    </button>
	                                                </div>
	                                            </td>
	                                        </tr>
	                                        <tr class="spacer"></tr>
                                        </template>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- END DATA TABLE-->
             <%@ include file="/WEB-INF/jsp/admin/include/footer.jsp" %>   
    </div>
</body>

<script type ="text/javascript">

$("#btnSearch").click(function(){
	search();
});

search  = function(){
	$.ajax({
        url : '/admin/order',
        data: {
            ordDt: $('#schOrdDt option:selected' ).val()
           ,ordStat: $('#schOrdStat option:selected' ).val()
           ,ordNo: $("#schOrdNo").val()
        },
        dataType: "json",
        method : 'post',
        success : function(data) {
        	if(data ===""){
        		alert("주문이 존재하지 않습니다.")
        	} else{
        		$('tbody tr').remove();
        		data.forEach(function (order) {
        			let tmpTr=$($('#tempOrd').html());
                    //tmpTr.find('.card-img-top').attr('src','../static/media/'+ menu.menuImgNm);
                    tmpTr.find('.ordNo').text(order.ordNo);
                    tmpTr.find('.menuNo').text(order.menuNo);
                    tmpTr.find('.menuNm').text(order.menuNm);
                    tmpTr.find('.ordDt').text(order.ordDt);
                    tmpTr.find('.ordAmt').text(order.orAmt);
                    tmpTr.find('.ordStat').text(order.ordStat);
                    if(order.ordStat==="결제완료"){
                    	tmpTr.find('.ordStat').addClass('status--denied');
                    	tmpTr.find("button[name=btnCmp]").attr('onclick','ordCpm('+order.ordNo+')');
                    } else {
                    	tmpTr.find('.ordStat').addClass('status--process');
                    	tmpTr.find("button[name=btnCmp]").attr('disabled','disabled');
                    }
                    tmpTr.find('.ordStat').text(order.ordStat);
                    
                     $('#orderList').append(tmpTr);
       		});
        	}
        },
        complete : function(data) {
            console.log(data.responseText);
        }
    });
}
ordCpm = function(ordNo){
	alert(ordNo);
}

</script>
</html>