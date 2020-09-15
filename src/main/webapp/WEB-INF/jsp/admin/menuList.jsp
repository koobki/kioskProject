<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
                                        <li class="list-inline-item">메뉴관리</li>
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
                            <h1 class="title-4">메뉴관리
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
                            <h3 class="title-5 m-b-35">메뉴목록</h3>
                            <div class="table-data__tool">
                                <div class="table-data__tool-left">
                                    <input type="text" id="schMenuNo" placeholder="메뉴번호" class="au-btn-filter">
                                    <input type="text" id="schMenuNm" placeholder="메뉴명" class="au-btn-filter">
                                </div>
                                <div class="table-data__tool-right">
                                    <button class="au-btn au-btn-icon au-btn--green au-btn--small" data-toggle="modal" data-target="#largeModal">
                                        <i class="zmdi zmdi-plus"></i>메뉴 추가</button>
                                    <button id="btnSearch" class="au-btn au-btn-icon au-btn--green au-btn--small">
                                        <i class="fa  fa-search"></i>검색</button>
                                </div>
                            </div>
                            <div class="table-responsive table-responsive-data2">
                                <table id="table"
                                 class="table table-data2">
                                    <thead>
                                        <tr>
                                            <th data-field="menuNo">메뉴번호</th>
                                            <th data-field="menuNm">메뉴명</th>
                                            <th data-field="menuPc">단가</th>
                                            <th data-field="menuDesc">메뉴설명</th>
                                            <th data-field="menuStock">메뉴재고</th>
                                            <th data-field="menuDispYn">전시여부</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="tr-shadow" onclick='showPopup(1)'  data-toggle="modal" data-target="#largeModal">
                                            <td>2</td>
                                            <td>춘천 국물 닭갈비 떡뽁이</td>
                                            <td>2,000</td>
                                            <td class="desc">닭갈비와 떡볶이의 오묘한 조화</td>
                                            <td>100</td>
                                            <td>전시</td>
                                        </tr>
                                        <tr class="spacer"></tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- END DATA TABLE-->
            
            <!-- modal large -->
			<div class="modal fade" id="largeModal" tabindex="-1" role="dialog" aria-labelledby="largeModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-lg" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="largeModalLabel">메뉴등록/수정</h5>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<div class="card-body card-block">
                                        <form  id="form" class="form-horizontal">
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label class=" form-control-label">메뉴번호</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <input type="text" id="menuNo" name="menuNo" class="form-control" readonly>
                                                    <small class="form-text text-muted"></small>
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="menuNm" class=" form-control-label">메뉴 명</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <input type="text" id="menuNm" name="menuNm" placeholder="메뉴 명" class="form-control">
                                                    <small class="form-text text-muted"></small>
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="price" class=" form-control-label">단가</label>
                                                </div>
                                                <div class="col-3 col-md-3">
                                                    <input type="number" id="menuPc" name="menuPc" placeholder="단가" class="form-control">
                                                    <small class="help-block form-text"></small>
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="menuDesc" class=" form-control-label">메뉴 설명</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <textarea name="menuDesc" id="menuDesc" rows="3" placeholder="메뉴 설명..." class="form-control"></textarea>
                                                    <small class="help-block form-text"></small>
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="menuStock" class=" form-control-label">메뉴 재고</label>
                                                </div>
                                                <div class="col-3 col-md-3">
                                                    <input type="number" id="menuStock" name="menuStock" placeholder="재고" class="form-control">
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="textarea-input" class=" form-control-label">전시여부</label>
                                                </div>
                                                <div class="col-12 col-md-9">
													<div class="form-check-inline">
													  <label class="form-check-label">
													    <input type="radio" class="form-check-input" name="menuDispYn" value="Y">전시													  </label>
													</div>
													<div class="form-check-inline">
													  <label class="form-check-label">
													    <input type="radio" class="form-check-input" name="menuDispYn" value="N">비전시
													  </label>
													</div>
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="file-input" class=" form-control-label">메뉴 이미지</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <input type="file" id="file" name="file" class="form-control-file">
                                                </div>
                                            </div>
                                        </form>
                                    </div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
							<button id="btnSave" type="button" class="btn btn-primary">저장</button>
						</div>
					</div>
				</div>
			</div>
			<!-- end modal large -->
			
             <%@ include file="/WEB-INF/jsp/admin/include/footer.jsp" %>   
    </div>
</body>
<script type ="text/javascript">
    var menuData=[];
    function showPopup(prdNo){
    }
    $(document).ready(function(){
        $('#table').bootstrapTable({
            data: menuData
        }); 
        
        $("#table").delegate("tr", "click", function(){
        	var str = "";
        	var tdArr = new Array();	// 배열 선언
        	// 현재 클릭된 Row(<tr>)
        	var tr = $(this);
        	var td = tr.children();
        	// td.eq(index)를 통해 값을 가져올 수도 있다.
        	var menuNo = td.eq(0).text();
        	console.log("menuNo = " + menuNo);
        	getMenuInfo(menuNo);
        	
        });
    });
    
    getMenuInfo = function(menuNo){
    	$.ajax({
	        url : '/admin/menu',
	        data: {
	        	menuNo: menuNo
	        },
	        dataType: "json",
	        method : 'post',
	        success : function(data) {
	        	if(data ===""){
	        		alert("상품이 존재하지 않습니다.")
	        	} else{
	        		$("#menuNo").val(data[0].menuNo);
		        	$("#menuNm").val(data[0].menuNm);
		        	$("#menuDesc").val(data[0].menuDesc);
	        	}
	        },
	        complete : function(data) {
	        	$('#largeModal').modal('toggle')
	            
	        }
	    });
    	
    	
    }

    
    $("#btnSave").click(function (event) {
        //preventDefault 는 기본으로 정의된 이벤트를 작동하지 못하게 하는 메서드이다. submit을 막음
        event.preventDefault();

        // Get form
        var form = $('#form')[0];

	    // Create an FormData object 
        var data = new FormData(form);

	   // disabled the submit button
        $("#btnSave").prop("disabled", true);

        $.ajax({
            type: "POST",
            enctype: 'multipart/form-data',
            url: "/admin/menu/save",
            data: data,
            processData: false,
            contentType: false,
            cache: false,
            timeout: 600000,
            success: function (data) {
            	alert("저장되었습니다.");
                $("#btnSave").prop("disabled", false);
                //폼데이터 초기화
                document.getElementById("form").reset();
            },
            error: function (e) {
                console.log("ERROR : ", e);
                $("#btnSave").prop("disabled", false);
                alert("저장에 실패했습니다.");
            }
        });

    });
    
	$("#btnSearch").click(function(){
	    $.ajax({
	        url : '/admin/menu',
	        data: {
	        	menuNo: $("#schMenuNo").val()
	           ,menuNm: $("#schMenuNm").val()
	        },
	        dataType: "json",
	        method : 'post',
	        success : function(data) {
	        	if(data ===""){
	        		alert("상품이 존재하지 않습니다.")
	        	} else{
	        		menuData = data;
	        	}
	        },
	        complete : function(data) {
	        	$('#table').bootstrapTable('load', menuData);
	            console.log(data.responseText);
	        }
	    });
	
	});

    </script>
</html>