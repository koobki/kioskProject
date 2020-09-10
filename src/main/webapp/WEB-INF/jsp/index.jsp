<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Shop Homepage - Start Bootstrap Template</title>

  <!-- Bootstrap core CSS -->
  <link href="../static/vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="../static/css/shop-homepage.css" rel="stylesheet">
  <link href="../static/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
  <!-- Bootstrap core JavaScript -->
  <script src="../static/vendor/jquery-3.2.1.min.js"></script>
  <script src="../static/vendor/bootstrap-4.1/bootstrap.min.js"></script>
  <script type ="text/javascript">
	$(document).ready(function(){
	    $('.count').prop('disabled', true);
			$(document).on('click','.plus',function(){
				 $(this).siblings('.count').val(parseInt($(this).siblings('.count').val())+1);
		});
    	$(document).on('click','.minus',function(){
    		$(this).siblings('.count').val(parseInt($(this).siblings('.count').val())-1);
				if ($(this).siblings('.count').val() == 0) {
					$(this).siblings('.count').val(1);
				}
	    	});
		});
  </script>

</head>

<body>

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="#">수량 선택 후 주문 버튼을 클릭 하세요~</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
    </div>
  </nav>

  <!-- Page Content -->
  <div class="container">

    <div class="row" style="margin-top:10px">


      <div class="col-lg-12">

       

        <div class="row">

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="../static/media/1.PNG" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  춘천 국물 닭갈비 떡볶이
                </h4>
                <h5>2,000원</h5>
                <p class="card-text">닭갈비와 떡볶이의 오묘한 조화</p>
              </div>
              <div class="card-footer" >
                <div class="qty" style="display:inline;">
                        <span class="minus bg-dark">-</span>
                        <input type="number" class="count" name="qty1" value="1">
                        <span class="plus bg-dark">+</span>
                    </div>
                    <div style="display:inline; padding-top:0px">
                    <button type="button" class="btn btn-warning" style="margin-left:15px; padding:3px 15px 3px 15px"><i class="fa fa-cutlery"></i> 주문</button>
                    </div>
              </div>
            </div>
          </div>
                    <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="../static/media/1.PNG" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  춘천 국물 닭갈비 떡볶이
                </h4>
                <h5>2,000원</h5>
                <p class="card-text">닭갈비와 떡볶이의 오묘한 조화</p>
              </div>
              <div class="card-footer" >
                <div class="qty" style="display:inline;">
                        <span class="minus bg-dark">-</span>
                        <input type="number" class="count" name="qty" value="1">
                        <span class="plus bg-dark">+</span>
                    </div>
                    <div style="display:inline; padding-top:0px">
                    <button type="button" class="btn btn-warning" style="margin-left:15px; padding:3px 15px 3px 15px"><i class="fa fa-cutlery"></i> 주문</button>
                    </div>
              </div>
            </div>
          </div>
                    <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="../static/media/1.PNG" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  춘천 국물 닭갈비 떡볶이
                </h4>
                <h5>2,000원</h5>
                <p class="card-text">닭갈비와 떡볶이의 오묘한 조화</p>
              </div>
              <div class="card-footer" >
                <div class="qty" style="display:inline;">
                        <span class="minus bg-dark">-</span>
                        <input type="number" class="count" name="qty" value="1">
                        <span class="plus bg-dark">+</span>
                    </div>
                    <div style="display:inline; padding-top:0px">
                    <button type="button" class="btn btn-warning" style="margin-left:15px; padding:3px 15px 3px 15px"><i class="fa fa-cutlery"></i> 주문</button>
                    </div>
              </div>
            </div>
          </div>
                    <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="../static/media/1.PNG" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  춘천 국물 닭갈비 떡볶이
                </h4>
                <h5>2,000원</h5>
                <p class="card-text">닭갈비와 떡볶이의 오묘한 조화</p>
              </div>
              <div class="card-footer" >
                <div class="qty" style="display:inline;">
                        <span class="minus bg-dark">-</span>
                        <input type="number" class="count" name="qty" value="1">
                        <span class="plus bg-dark">+</span>
                    </div>
                    <div style="display:inline; padding-top:0px">
                    <button type="button" class="btn btn-warning" style="margin-left:15px; padding:3px 15px 3px 15px"><i class="fa fa-cutlery"></i> 주문</button>
                    </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /.row -->

      </div>
      <!-- /.col-lg-9 -->

    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Foods.com 2020</p>
    </div>
    <!-- /.container -->
  </footer>



</body>

</html>
