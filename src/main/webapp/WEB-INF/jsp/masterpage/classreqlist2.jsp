<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
    content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>클래스 신청 목록</title>

<!-- 부트스트랩-->
<link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet"
    href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
    integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
    crossorigin="anonymous">

<!-- css -->
<link href="/css/master.css" rel="stylesheet">
<!--<link href="/css/common.css" rel="stylesheet"> -->

<!-- Bootstrap  -->
<link rel="stylesheet" href="/css/masterpagecss/bootstrap.css">
<!-- Theme style  -->
<link rel="stylesheet" href="/css/masterpagecss/style.css">
<!-- J Query -->
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<!-- jQuery -->
<script src="/js/masterpagejs/jquery.min.js"></script>
<!-- Waypoints -->
<script src="/js/masterpagejs/jquery.waypoints.min.js"></script>
<!-- Counters -->
<script src="/js/masterpagejs/jquery.countTo.js"></script>

<!-- MAIN JS -->
<script src="/js/masterpagejs/main.js"></script>
<script src="/js/masterpagejs/bootstrap.min.js"></script>

<style>
#colorlib-aside {
    overflow: hidden;
}

#th-pay th, #tb-pay td {
    vertical-align: middle;
    text-align: center
}
</style>
</head>

<body>
    <div id="colorlib-page">
        <div class="container-wrap">

            <a href="#"
                class="js-colorlib-nav-toggle colorlib-nav-toggle"
                data-toggle="collapse" data-target="#navbar"
                aria-expanded="false" aria-controls="navbar"><i></i></a>
            <aside id="colorlib-aside" role="complementary"
                class="border js-fullheight">
                <div class="text-center">
                    <div class="author-img"
                        style="background-image: url(${mentee.phot};"></div>
                    <h1 id="colorlib-logo">
                        <a href="index.html">관리자</a>
                    </h1>
                    <br />
                </div>

                <nav id="colorlib-main-menu" role="navigation"
                    class="navbar">
                    <div id="navbar" class="collapse">
                        <ul>
                            <li><a href="#" data-nav-section="1">메인
                                    화면 </a></li>
                            <li><a href="#" data-nav-section="2">멘토
                                    신청 목록</a></li>
                            <li><a href="#" data-nav-section="3">클래스
                                    신청 목록</a></li>
                            <li><a href="#" data-nav-section="4">신고
                                    접수 목록</a></li>
                            <li><a href="#" data-nav-section="5">신고
                                    완료 목록</a></li>
                            <li><a href="#" data-nav-section="6">전체
                                    상품 목록</a></li>
                            <li><a href="#" data-nav-section="7">전체
                                    클래스 목록 </a></li>
                            <li><a href="#" data-nav-section="8">주문
                                    내역</a></li>
                        </ul>
                    </div>
                </nav>

            </aside>
            
            <div id="colorlib-main">

                <section class="colorlib-skills" data-section="3">
                    <div class="colorlib-narrow-content">
                        <div class="row">

                            <h2 class="colorlib-heading">클래스 신청 목록</h2>
                            <hr />



                            <!-- 게시판 시작-->
                            <div class="col-lg-12">
                        <div class="col-lg-5 mb-3" id="serch-men" style="position:relative; float:right;">
                            <form action="#" method="get">
                                <div class="input-group">
                                    <!-- USE TWITTER TYPEAHEAD JSON WITH API TO SEARCH -->
                                    <input class="form-control" id="system-search" name="q" placeholder="Search for" required>
                                    <span class="input-group-btn">
                                        <button type="submit" class="btn btn-default"><i class="fas fa-search fa-3x"></i></button>
                                    </span>
                                </div>
                            </form>
                        </div>
                    </div>

                            <div class="col-lg-12">
                                <div class="row">
                                    <table
                                        class="table table-list-search">
                                        <thead>
                                            <tr>
                                                <th></th>
                                                <th class="text-center">No</th>
                                                <th class="text-center">멘토이름</th>
                                                <th class="text-center">휴대전화</th>
                                                <th class="text-center">분야</th>
                                                <th class="text-center">신청일</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                            <c:forEach items="${ClassRequestList}" var="cl" varStatus="i">
                                <tr id="rmv${cl.no}">
                                    <td class="text-center"><input type="checkbox" id="men-ck" class="men-ck" name="men-ck" value="${cl.no}"></td>
                                    <td class="text-center">${i.count}</td>
                                    <td class="text-center">${cl.mono}</td><%-- ${cl.nick}(${cl.name}) --%>
                                    <td class="text-center"><a class="button" href="#popup${i.count}">${cl.titl}</a></td>
                                    <td class="text-center">${cl.mtno}</td>
                                    <td class="text-center">${cl.rgdt}</td>
                                    <td class="text-center">
                                    <c:choose>
                                      <c:when test="${cl.stat eq 'I'}">미처리</c:when>
                                      <c:when test="${cl.stat eq 'Y'}">승인</c:when>
                                      <c:when test="${cl.stat eq 'N'}">반려</c:when>
                                      <c:otherwise>관리자문의</c:otherwise>
                                    </c:choose>
                                    </td>
                                </tr>
                                                <!-- popup-->
            
            <div id="popup${i.count}" class="overlay">
                <div class="popup">
                    <h2> 클래스 신청 상세</h2>
                    <a class="close" href="#">×</a>
                    <div class="content">
                        <br />

                        <div class="col-lg-12">
                            <div class="row">
                                    <div class="col-lg-5 mx-auto">
                                        <img class="ment-pic" src="${cl.phot}">
                                    </div>

                                    <div class="col-lg-6 mx-auto">
                                        <ul class="pop-in">
                                            <li><span style="font-size: 20px;"><i class="fas fa-star-of-life mr-3"></i>닉네임(이름):</span>
                                            <br><span class="pop-type ml-5">${cl.nick}(${cl.name})</span></li>
                                            <li><span style="font-size: 20px;"><i class="fas fa-star-of-life mr-3"></i>휴대전화: </span>
                                            <span class="pop-type">${ml.phone}</span></li>
                                            <li><span style="font-size: 20px;"><i class="fas fa-star-of-life mr-3"></i>출금계좌: </span>
                                            <span class="pop-type">${ml.bkname}</span></li>
                                            <li><span style="font-size: 20px;"><i class="fas fa-star-of-life mr-3"></i>계좌번호: </span>
                                            <span class="pop-type">${ml.bkno}</span></li>
                                            <li><span style="font-size: 20px;"><i class="fas fa-star-of-life mr-3"></i>분야: </span>
                                            <span class="pop-type">
                                            <c:forEach items="${ml.mentorTag}" var="mt" varStatus="m">
                                                ${mt.name}
                                                <c:if test="${!m.last}">
                                                    ,
                                                </c:if>
                                            </c:forEach>
                                            </span></li>
                                            <li><span style="font-size: 20px;"><i class="fas fa-star-of-life mr-3"></i>경력: </span>
                                            <span class="pop-type">${ml.carr}</span></li>
                                        </ul>
                                    </div>
                            </div><!-- popup row-->
                        </div><!-- popup container -->

                    <div class="col-lg-12 mt-5">
                        <div class="row">
                            <div class="col-lg-5 mx-auto">
                                       <h3>작품</h3>
                                       <div class="pic1 row">
                                           <div id="carousel-Create${i.index}" class="carousel slide" data-ride="carousel">
                                          <ol class="carousel-indicators">
                                            <li data-target="#carousel-Create${i.index}" data-slide-to="0" class="active"></li>
                                            <li data-target="#carousel-Create${i.index}" data-slide-to="1"></li>
                                            <li data-target="#carousel-Create${i.index}" data-slide-to="2"></li>
                                          </ol>
                                          <div class="carousel-inner">
                                          
                                          <!-- 팝업 - 멘토 작품파일 -->
                                          <c:forEach items="${ml.mentorFile}" var="mlFile" varStatus="j">
                                          <!-- 팝업 - 멘토 작품파일 - 첫째 사진만 active하기위한 choose(if) -->
                                          <c:choose>
                                            <c:when test="${j.index eq 0}">
                                              <div class="carousel-item active">
                                            </c:when>
                                            <c:otherwise>
                                              <div class="carousel-item">
                                            </c:otherwise>
                                          </c:choose>
                                              <img class="d-block" width="275px" height="250px" src="${mlFile.mfname}" alt="slide_${j.count}"
                                              onclick="window.open('${mlFile.mfname}','_blank','toolbar=no,location=no,status=no,menubar=no, scrollbars=auto,resizable=no,directories=no, width=1024,height=768, top=10,left=10')">
                                            </div>
                                          </c:forEach>
                                          </div>
                                          
                                          <a class="carousel-control-prev" href="#carousel-Create${i.index}" role="button" data-slide="prev">
                                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                            <span class="sr-only">Previous</span>
                                          </a>
                                          <a class="carousel-control-next" href="#carousel-Create${i.index}" role="button" data-slide="next">
                                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                            <span class="sr-only">Next</span>
                                          </a>
                                        </div>
                                       </div>
                                   </div>
                                   
                                   
                                   <div class="col-lg-5 mx-auto">
                                       <h3>자격증</h3>
                                       <div class="pic1 row">
                                           <div id="carousel-Certificate${i.index}" class="carousel slide" data-ride="carousel">
                                          <ol class="carousel-indicators">
                                            <li data-target="#carousel-Certificate${i.index}" data-slide-to="0" class="active"></li>
                                            <li data-target="#carousel-Certificate${i.index}" data-slide-to="1"></li>
                                            <li data-target="#carousel-Certificate${i.index}" data-slide-to="2"></li>
                                          </ol>
                                          <div class="carousel-inner">
                                          <!-- 팝업 - 멘토 자격증 -->
                                          <c:forEach items="${ml.mentorLicense}" var="mlLicense" varStatus="k">
                                          <!-- 팝업 - 멘토 자격증 - 첫째 사진만 active하기위한 choose(if) -->
                                          <c:choose>
                                            <c:when test="${k.index eq 0}">
                                              <div class="carousel-item active">
                                            </c:when>
                                            <c:otherwise>
                                              <div class="carousel-item">
                                            </c:otherwise>
                                          </c:choose>
                                              <img class="d-block" width="275px" height="250px" src="${mlLicense.phot}" alt="slide_${k.count}"
                                              onclick="window.open('${mlLicense.phot}','_blank','toolbar=no,location=no,status=no,menubar=no, scrollbars=auto,resizable=no,directories=no, width=1024,height=768, top=10,left=10')">
                                              <div class="carousel-caption d-none d-md-block">
                                                <h5 style="background: rgba(110, 110, 110, 0.7);">${k.count}. ${mlLicense.lname}</h5>
                                              </div>
                                            </div>
                                          </c:forEach>
                                          </div>
                                          <a class="carousel-control-prev" href="#carousel-Certificate${i.index}" role="button" data-slide="prev">
                                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                            <span class="sr-only">Previous</span>
                                          </a>
                                          <a class="carousel-control-next" href="#carousel-Certificate${i.index}" role="button" data-slide="next">
                                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                            <span class="sr-only">Next</span>
                                          </a>
                                        </div>
                             </div>
                         </div>
                         </div>
                         
                            </div>
                            <button type="button" class="btn btn-primary" id="mas-p1" name="Y" value="${ml.no}" onclick="stat(value,name)">승락</button>
                            <button type="button" class="btn btn-primary" id="mas-p2" name="N" value="${ml.no}" onclick="stat(value,name)">거절</button>
                        </div>

                    </div>
                </div>
            </div>
                                
                            </c:forEach>
                            </tbody>
                        </table>

                    <div class="col-lg-12 text-center" id="page-list1">
                            <nav aria-label="Page navigation example">
                                <ul class="pagination" id="page-list" style="display: inline-block;">
                                    <li class="page-item">
                                        <a class="page-link" href="#" aria-label="Previous">
                                            <span aria-hidden="true">«</span>
                                            <span class="sr-only">Previous</span>
                                        </a>
                                    </li>
                                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                                    <li class="page-item">
                                        <a class="page-link" href="#" aria-label="Next">
                                            <span aria-hidden="true">»</span>
                                            <span class="sr-only">Next</span>
                                        </a>
                                    </li>
                                </ul>
                            </nav>
                    </div>

                </div>
            </div>


                            <div class="col-lg-12">
                                <div class="row">
                                    <div class="col-lg-12" id="btn">
                                        <button type="button"
                                            class="btn btn-primary"
                                            id="mas-btn"
                                            onclick="checkItem()">멘토
                                            신청 반려</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
            <!-- wrap -->
        </div>
    </div>
</body>
<!-- Bootstrap core JavaScript -->
<script src="/vendor/jquery/jquery.min.js"></script>
<script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script>
$(document).ready(function() {
    var activeSystemClass = $('.list-group-item.active');

    //something is entered in search form
    $('#system-search').keyup( function() {
       var that = this;
        // affect all table rows on in systems table
        var tableBody = $('.table-list-search tbody');
        var tableRowsClass = $('.table-list-search tbody tr');
        $('.search-sf').remove();
        tableRowsClass.each( function(i, val) {
        
            //Lower text for case insensitive
            var rowText = $(val).text().toLowerCase();
            var inputText = $(that).val().toLowerCase();
            if(inputText != '')
            {
                $('.search-query-sf').remove();
                tableBody.prepend('<tr class="search-query-sf"><td colspan="6"><strong>Searching for: "'
                    + $(that).val()
                    + '"</strong></td></tr>');
            }
            else
            {
                $('.search-query-sf').remove();
            }

            if( rowText.indexOf( inputText ) == -1 )
            {
                //hide rows
                tableRowsClass.eq(i).hide();
                
            }
            else
            {
                $('.search-sf').remove();
                tableRowsClass.eq(i).show();
            }
        });
        //all tr elements are hidden
        if(tableRowsClass.children(':visible').length == 0)
        {
            tableBody.append('<tr class="search-sf"><td class="text-muted" colspan="6">No entries found.</td></tr>');
        }
    });
});


var stopHref = function(event) {
event.stopPropagation();
}

var fadeTime = 200;
function stat(no,name){
    removeItem(no)
    $.ajax({
        data : {
            meno : no,
            stat : name
        },
        url : "mtstat.do",
        success : location.href="#"
    });
}
function removeItem(no) {
    /* Remove row from DOM and recalc cart total */
    var getRow = document.getElementById("rmv"+no);
    getRow = $(getRow);
    getRow.slideUp(fadeTime, function () {
        getRow.remove();
    });
}

function checkItem(){
    var arr = new Array();
    var check = $('input:checkbox:checked.men-ck').map(function(){
        return this.value; }).get().join(",");
    arr=check.split(',');
    for(i in arr){
        stat(arr[i],'N');
    }
    
}
</script>
</html>