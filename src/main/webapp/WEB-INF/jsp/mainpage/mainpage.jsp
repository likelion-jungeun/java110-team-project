<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%-- 부트스트랩 --%>
<link
    href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
    rel="stylesheet" id="bootstrap-css">
<script
    src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
    src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<%-- minicarousel --%>
<link rel="stylesheet"
    href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script
    src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
    src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script
    src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

<%-- 만든 css --%>
<link rel="stylesheet" href="/css/main-menu.css">

</head>
<body>
    <div class="container">
        <div class="row">

            <!-- 메인 carousel -->
            <div class="container" id="main-carousel">
                <div class="row">

                    <!--Carousel Wrapper-->
                    <div id="carousel-example-2" class="carousel slide carousel-fade" data-ride="carousel">
                        <!--Indicators-->
                        <ol class="carousel-indicators">
                            <li data-target="#carousel-example-2" data-slide-to="0" class="active"></li>
                            <li data-target="#carousel-example-2" data-slide-to="1"></li>
                            <li data-target="#carousel-example-2" data-slide-to="2"></li>
                        </ol>
                        <!--/.Indicators-->
                        <!--Slides-->
                        <div class="carousel-inner" role="listbox">
                            <div class="carousel-item active">
                                <div class="view">
                                    <img class="d-block w-100" src="https://mdbootstrap.com/img/Photos/Slides/img%20(68).jpg" alt="First slide">
                                    <div class="mask rgba-black-light"></div>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <!--Mask color-->
                                <div class="view">
                                    <img class="d-block w-100" src="https://mdbootstrap.com/img/Photos/Slides/img%20(6).jpg" alt="Second slide">
                                    <div class="mask rgba-black-strong"></div>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <!--Mask color-->
                                <div class="view">
                                    <img class="d-block w-100" src="https://mdbootstrap.com/img/Photos/Slides/img%20(9).jpg" alt="Third slide">
                                    <div class="mask rgba-black-slight"></div>
                                </div>
                            </div>
                        </div>
                        <!--/.Slides-->
                    </div>

                </div><!-- main carousel main-->
            </div><!-- main carousel container-->

            <!-- 메인 네비 -->
            <div class="container" id="main-nav">
                <div class="row" id="main-nav-row">
                    <div class="col-lg-12">
                        <nav class="main-navigation">
                            <hr color="black" />
                            <ul class="nav-list">
                                <li class="nav-list-item col-lg-auto col-md-3">
                                    <a href="#" class="nav-link">인기수업</a>
                                </li>
                                <li class="nav-list-item col-lg-auto col-md-3">
                                    <a href="#" class="nav-link">디자인</a>
                                </li>
                                <li class="nav-list-item col-lg-auto col-md-3">
                                    <a href="#" class="nav-link">음악</a>
                                </li>
                                <li class="nav-list-item col-lg-auto col-md-3">
                                    <a href="#" class="nav-link">뷰티</a>
                                </li>
                                <li class="nav-list-item col-lg-auto col-md-3">
                                    <a href="#" class="nav-link">프로그래밍</a>
                                </li>
                                <li class="nav-list-item col-lg-auto col-md-3">
                                    <a href="#" class="nav-link">취미</a>
                                </li>
                                <li class="nav-list-item col-lg-auto col-md-3">
                                    <a href="#" class="nav-link">외국어</a>
                                </li>
                                <li class="nav-list-item col-lg-auto col-md-3">
                                    <a href="#" class="nav-link">운동</a>
                                </li>
                                <li class="nav-list-item col-lg-auto col-md-3">
                                    <a href="#" class="nav-link">실무역량</a>
                                </li>
                                <li class="nav-list-item col-lg-auto col-md-3">
                                    <a href="#" class="nav-link">프리마켓</a>
                                </li>
                            
                            </ul>
                            <hr color="black" />
                        </nav>
                    </div><!-- large size-->
                </div><!-- 메인 row-->
            </div><!-- 메인 container-->

            <!-- 사이드바 -->
            <div class="container">
                <div class="row">
                    <div class="col-lg-3">
                        <ul>
                            <h3>인싸예감 클래스</h3>
                            <c:forEach items="${list}" var="m">
                                <li><a href="#">java</a></li>
                                <li><a href="#">C++</a></li>
                                <li><a href="#">AI</a></li>
                                <li><a href="#">빅데이터</a></li>
                                <li><a href="#">포토샵</a></li>
                            </c:forEach>
                        </ul>
                    </div>

                    <!-- 인싸예감 클래스(카르셀) -->
                    <div class="col-lg-9">
                        <div id="TodayItem" class="carousel slide my-4" data-ride="carousel">

                            <ol class="carousel-indicators">
                                <li data-target="#TodayItem" data-slide-to="0" class="active"></li>
                                <li data-target="#TodayItem" data-slide-to="1"></li>
                                <li data-target="#TodayItem" data-slide-to="2"></li>
                            </ol>

                            <div class="carousel-inner" role="listbox">
                                <div class="carousel-item active">
                                    <div class="col-lg-auto" id="midcar">
                                        <div class="test col-3">
                                            <img class="d-block img-fluid" src="img/p1.jpg" alt="First slide">
                                        </div>
                                        <div class="test col-3">
                                            <img class="d-block img-fluid" src="img/p3.jpg" alt="Second slide">
                                        </div>
                                        <div class="test col-3">
                                            <img class="d-block img-fluid" src="img/p2.jpg" alt="Third slide">
                                        </div>
                                    </div>
                                </div>

                                <div class="carousel-item">
                                    <div class="col-lg-auto mx-auto" id="midcar">
                                        <div class="test col-3">
                                            <img class="d-block img-fluid" src="img/p1.jpg" alt="First slide">
                                        </div>
                                        <div class="test col-3">
                                            <img class="d-block img-fluid" src="img/p2.jpg" alt="Second slide">
                                        </div>
                                        <div class="test col-3">
                                            <img class="d-block img-fluid" src="img/p3.jpg" alt="Third slide">
                                        </div>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <div class="col-lg-auto mx-auto" id="midcar">
                                        <div class="test col-3">
                                            <img class="d-block img-fluid" src="img/p4.jpg" alt="First slide">
                                        </div>
                                        <div class="test col-3">
                                            <img class="d-block img-fluid" src="img/p1.jpg" alt="Second slide">
                                        </div>
                                        <div class="test col-3">
                                            <img class="d-block img-fluid" src="img/p2.jpg" alt="Third slide">
                                        </div>
                                    </div>
                                </div>

                                <a class="carousel-control-prev" href="#TodayItem" role="button" data-slide="prev" size="10px">
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
                </div><!-- 사이드바 row-->
            </div><!-- 사이드바 container-->

            <!-- 오늘의 추천작품 -->
            <div class="container">
               <hr color="black"/>
                <div class="row">
                   
                    <div class="col-lg-12">
                        <h2>오늘의 추천작품</h2>
                        <div class="button_base b01_simple_rollover">작품 더보기</div>
                    </div>
                </div><!-- 추천작품 row 1-->
            </div><!-- 오늘의 추천작품 container-->

            <!-- 오늘의 추천작품 carousel-->
            <div class="container" id="prodCar">
                    <div class="row blog">
                        <div class="col-md-12">
                            <div id="blogCarousel" class="carousel slide" data-ride="carousel">
                                <ol class="carousel-indicators">
                                    <li data-target="#blogCarousel" data-slide-to="0" class="active"></li>
                                    <li data-target="#blogCarousel" data-slide-to="1"></li>
                                </ol>

                                <!-- Carousel items -->
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <div class="row">
                                            <div class="col-md-3">
                                                <a href="#">
                                                    <img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;">
                                                </a>
                                            </div>
                                            <div class="col-md-3">
                                                <a href="#">
                                                    <img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;">
                                                </a>
                                            </div>
                                            <div class="col-md-3">
                                                <a href="#">
                                                    <img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;">
                                                </a>
                                            </div>
                                            <div class="col-md-3">
                                                <a href="#">
                                                    <img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;">
                                                </a>
                                            </div>
                                        </div>
                                        <!--.row-->
                                    </div>
                                    <!--.item-->

                                    <div class="carousel-item">
                                        <div class="row">
                                            <div class="col-md-3">
                                                <a href="#">
                                                    <img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;">
                                                </a>
                                            </div>
                                            <div class="col-md-3">
                                                <a href="#">
                                                    <img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;">
                                                </a>
                                            </div>
                                            <div class="col-md-3">
                                                <a href="#">
                                                    <img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;">
                                                </a>
                                            </div>
                                            <div class="col-md-3">
                                                <a href="#">
                                                    <img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;">
                                                </a>
                                            </div>
                                        </div><!--.row-->
                                    </div><!--.item-->
                                </div><!--.carousel-inner-->
                            </div><!--.Carousel-->
                            <hr color="black" style="margin-top: 5%"/>

                        </div>
                    </div><!-- 추천작품 row-->
            </div><!-- 추천작품 container 2-->
            
          
                


        </div><!-- all row -->
    </div><!-- all container-->
</body>
</html>