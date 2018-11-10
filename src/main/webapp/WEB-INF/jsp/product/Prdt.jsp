<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Clean Blog - Start Bootstrap Theme</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

   
    <!-- 폰트 추가 -->
    <link href="https://fonts.googleapis.com/css?family=Jua" rel="stylesheet">
    <!-- Custom fonts for this template -->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

    <!-- Custom styles for this template -->
    <link href="css/clean-blog.css" rel="stylesheet">
    

 

  </head>

  <body>

    <!-- Navigation -->
    <div id="row" class="mainheader">
    <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand" href="index.html">하루</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
          <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto" style="margin-left: 1px">
            <li class="nav-item">
             <div id="row">
              <img src="../../../img/julme.PNG" alt="singup">
              <a class="nav-link" href="index.html">로그인</a>
                </div>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="about.html">장바구니</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="post.html">찜클래스</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    </div>
    

    <!-- Page Header -->
    <header class="masthead">
      
    </header>
    <!-- 카테고리 nav (스크립트로 임시 inclue) -->
    <div id="headerNav"></div>

    <!-- Main Content -->
    <div class="row">
    <div class="container">
        <div class="row">
          <div class="col-lg-12 col-md-10 mx-auto">
            <div class="site-heading">
                <div class="row">
              <ul>
               <h2>카테고리</h2>
                <li><a href="#">의류</a></li>
                <li><a href="#">생활용품</a></li>
                <li><a href="#">장식용품</a></li>
                <li><a href="#">가구</a></li>
                <li><a href="#">기타</a></li>
              </ul>
<!-- 오늘의 핫 아이템(카르셀) -->    
<div class="col-lg-9 col-md-6 mx-auto">

<h2>오늘의 핫 아이템</h2>
<div id="TodayItem" class="carousel slide my-4" data-ride="carousel">

<ol class="carousel-indicators">
    <li data-target="#TodayItem" data-slide-to="0" class="active"></li>
    <li data-target="#TodayItem" data-slide-to="1"></li>
    <li data-target="#TodayItem" data-slide-to="2"></li>
</ol>
<div class="carousel-inner" role="listbox">
    <div class="carousel-item active">
      <div class="col-lg-12 mx-5"  style="padding-left: 90px">
       <div class="test">
        <img class="d-block img-fluid" src="../../../img/product/900x350/julme.PNG" alt="First slide">
       </div>
       <div class="test">
        <img class="d-block img-fluid" src="../../../img/product/900x350/julme.PNG" alt="Second slide">
        </div>
        <div class="test">
        <img class="d-block img-fluid" src="../../../img/product/900x350/julme.PNG" alt="Third slide">
       </div>
       </div>
    </div>
    <div class="carousel-item">
      <div class="col-lg-12 mx-5"  style="padding-left: 90px">
       <div class="test">
        <img class="d-block img-fluid" src="../../../img/product/900x350/julme.PNG" alt="First slide">
       </div>
       <div class="test">
        <img class="d-block img-fluid" src="../../../img/product/900x350/julme.PNG" alt="Second slide">
        </div>
        <div class="test">
        <img class="d-block img-fluid" src="../../../img/product/900x350/julme.PNG" alt="Third slide">
       </div>
       </div>
    </div>
    <div class="carousel-item">
      <div class="col-lg-12 mx-5"  style="padding-left: 90px">
       <div class="test">
        <img class="d-block img-fluid" src="../../../img/product/900x350/julme.PNG" alt="First slide">
       </div>
       <div class="test">
        <img class="d-block img-fluid" src="../../../img/product/900x350/julme.PNG" alt="Second slide">
        </div>
        <div class="test">
        <img class="d-block img-fluid" src="../../../img/product/900x350/julme.PNG" alt="Third slide">
       </div>
       </div>
    </div>
    
    <a class="carousel-control-prev" href="#TodayItem" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#TodayItem" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
</div>
</div>
             </div>
            </div>
          </div>
        </div>
        <hr class="FhrBotMargin">
      </div>
    
    
   <!--   <div class="row"> -->
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="post-preview">
            <a href="post.html">
<div class="row">
<div class="col-lg-4 col-md-6 mb-4">
  <div class="card h-100">
    <a href="#"><img class="card-img-top" src="../../../img/product/700x400/julme.PNG" alt=""></a>
    <div class="card-body">
      <h4 class="card-title">
        <a href="#">절미1</a>
      </h4>
      <h5>1,000 ￦</h5>
      <p class="card-text">Lorem ipsum dolor sit amet, consectetur!</p>
    </div>
    <div class="card-footer">
      <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
    </div>
  </div>
</div>

<div class="col-lg-4 col-md-6 mb-4">
  <div class="card h-100">
    <a href="#"><img class="card-img-top" src="../../../img/product/700x400/julme.PNG" alt=""></a>
    <div class="card-body">
      <h4 class="card-title">
        <a href="#">절미1</a>
      </h4>
      <h5>1,000 ￦</h5>
      <p class="card-text">Lorem ipsum dolor sit amet, consectetur!</p>
    </div>
    <div class="card-footer">
      <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
    </div>
  </div>
</div>

<div class="col-lg-4 col-md-6 mb-4">
  <div class="card h-100">
    <a href="#"><img class="card-img-top" src="../../../img/product/700x400/julme.PNG" alt=""></a>
    <div class="card-body">
      <h4 class="card-title">
        <a href="#">절미1</a>
      </h4>
      <h5>1,000 ￦</h5>
      <p class="card-text">Lorem ipsum dolor sit amet consectetur!</p>
    </div>
    <div class="card-footer">
      <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
    </div>
  </div>
</div>

<div class="col-lg-4 col-md-6 mb-4">
  <div class="card h-100">
    <a href="#"><img class="card-img-top" src="../../../img/product/700x400/julme.PNG" alt=""></a>
    <div class="card-body">
      <h4 class="card-title">
        <a href="#">절미1</a>
      </h4>
      <h5>1,000 ￦</h5>
      <p class="card-text">Lorem ipsum dolor sit amet, consectetur!</p>
    </div>
    <div class="card-footer">
      <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
    </div>
  </div>
</div>

</div>
              
          </div>
          <hr>

          <!-- Pager -->
          <div class="clearfix">
            <a class="btn btn-primary float-right" href="#">Older Posts &rarr;</a>
          </div>
        </div>
   <!--   </div> -->
    </div>

    <hr>

    <!-- Footer -->
    <footer>
      <div class="container">
        <div class="row">
          <div class="col-lg-8 col-md-10 mx-auto">
            <ul class="list-inline text-center">
              <li class="list-inline-item">
                <a href="#">
                  <span class="fa-stack fa-lg">
                    <i class="fas fa-circle fa-stack-2x"></i>
                    <i class="fab fa-twitter fa-stack-1x fa-inverse"></i>
                  </span>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <span class="fa-stack fa-lg">
                    <i class="fas fa-circle fa-stack-2x"></i>
                    <i class="fab fa-facebook-f fa-stack-1x fa-inverse"></i>
                  </span>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <span class="fa-stack fa-lg">
                    <i class="fas fa-circle fa-stack-2x"></i>
                    <i class="fab fa-github fa-stack-1x fa-inverse"></i>
                  </span>
                </a>
              </li>
            </ul>
            <p class="copyright text-muted">Copyright &copy; Your Website 2018</p>
          </div>
        </div>
      </div>
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="js/clean-blog.min.js"></script>
    
    <!-- ??? -->
    <script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
    
    <script>
      $(document).ready(function(){
         $("#headerNav").load("headerNav.html")
      });
</script> 
  </body>

</html>