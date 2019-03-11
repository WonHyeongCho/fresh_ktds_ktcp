<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>KTrip: 나만을 위한 여행 가이드</title>
  <!-- Bootstrap core CSS -->
  <link href="./vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template -->
  <link href="./vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="./index_files/css" rel="stylesheet" type="text/css">
  <link href="./index_files/css(1)" rel="stylesheet" type="text/css">
  <link href="./index_files/icon" rel="stylesheet">
  <!-- Custom styles for this template -->
  <link href="./index_files/icon" rel="stylesheet">
  <link href="./css/clean-blog.min.css" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.css" rel="stylesheet" >
  <link href="./languages/ko/LC_MESSAGES/ko.po" rel="gettext" type="application/x-po"/>
  <link href="./assets/css/geodatasource-countryflag.css" rel="stylesheet">
</head>
<body>
 <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
     <div class="container">
       <a class="navbar-brand" href="./index.html"><img src="./img/logo.png" width="80" height="30" alt="KTrip"></a>
       <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
         Menu
         <i class="fas fa-bars"></i>
       </button>
       <div class="collapse navbar-collapse" id="navbarResponsive">
         <ul class="navbar-nav ml-auto">
           <li class="nav-item">
             <a class="nav-link" href="./index.html">service</a>
           </li>
           <li class="nav-item">
             <a class="nav-link" hre f="./guide.html">guide</a>
           </li>
           <li class="nav-item">
             <a class="nav-link" href="./tourlist.html">tourlist</a>
           </li>
           <li class="nav-item">
             <a class="nav-link" href="./contact.html">contact</a>
           </li>
          <li class="nav-item"><div class="popup" onclick="myFunction()">
            <img src="./img/user.png" width="50" height="35" alt="User">
            <span class="popuptext" id="myPopup">A Simple Popup!</span></div>
          </li>
        </ul>
       </div>
     </div>
   </nav>

  <!-- Navigation -->
  <!--nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
    <div class="container">
      <a class="navbar-brand" href="./index.html"><img src="./img/logo.png" width="80" height="30" alt="KTrip"></a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        Menu
        <i class="fas fa-bars"></i>
      </button>
      <div class="navbar-collapse collapse" id="navbarResponsive" style="">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="./index.html">service</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" hre f="./guide.html">guide</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="./tourlist.html">tourlist</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="./contact.html">contact</a>
          </li>
         <li class="nav-item"><div class="popup" onclick="myFunction()">
           <img src="./img/user.png" width="50" height="35" alt="User">
           <span class="popuptext" id="myPopup">A Simple Popup!</span></div>
         </li>
       </ul>
     </div>
    </div>
  </nav-->

  <!-- Page Header -->
  <header class="masthead" style="background-image: url(&#39;img/home3-bg.jpg&#39;)">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="site-heading">
            <img src="./img/logo.png" width="320" height="120" alt="KTrip">
            <span class="subheading"></span>
          </div>
        </div>
      </div>
    </div>
  </header>

  <!--subNavigator-->
  <nav class="navbar navbar-expand-lg">
   <div class="container-fluid">
    <div class="navbar-collapse collapse show" id="navbarResponsive" style="">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item">
          <a class="nav-link" href="./index.html">SIGNUP</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="./index.html">SERVICE</a>
        </li>
      </ul>
    </div>
  </div>
 </nav>
<hr>
<!-- Main -->
  <div class="container">
    <div class="row">
      <div class="col-lg-8 col-md-10 mx-auto">

        <form name="signup" id="signup" novalidate="" action="signUpCheck" method="post">
          <div class="control-group">
              <h5 class=text-info>ID</h5>
              <input type="text" class="form-control" placeholder="ID를 입력해 주세요" id="id" name="id" required="" data-validation-required-message="필수 항목입니다.">
              <p class="help-block text-danger"></p>
          </div>

          <div class="control-group">
            <h5 class=text-info>PASSWORD</h5>
              <input type="Password" class="form-control" placeholder="비밀번호를 입력해 주세요" id="pwd" name="pwd" required="" data-validation-required-message="필수 항목입니다.">
              <p class="help-block text-danger"></p>
          </div>

          <div class="control-group">
            <h5 class=text-info>EMAIL</h5>
              <input type="Email" class="form-control" placeholder="이메일을 입력해 주세요" id="email" name="email" required="" data-validation-required-message="필수 항목입니다.">
              <p class="help-block text-danger"></p>
          </div>

          <div class="control-group">
              <h5 class=text-info>NAME</h5>
              <input type="text" class="form-control" placeholder="이름을 입력해 주세요" id="name" name="name" required="" data-validation-required-message="필수 항목입니다.">
              <p class="help-block text-danger"></p>
          </div>

          <div class="control-group">
                 <h5 class=text-info>GENDER</h5>
                 <div class="checks">
                     <input type="radio" id="sex" name="sex" value="man">
                     <label for="MAN">MAN</label>
                 </div>
                 <p class></p>
                 <div class="checks">
                     <input type="radio" id="sex" name="sex" value="woman">
                     <label for="WOMAN">WOMAN</label>
                 </div>
                 <p class></p>
             </div>

          <div class="control-group">
              <h5 class=text-info>PHONE</h5>
              <input type="text" class="form-control" placeholder="휴대폰 번호(-제외)를 입력해 주세요" id="phone_num" name="phone_num"required="" data-validation-required-message="필수 항목입니다.">
              <p class="help-block text-danger"></p>
          </div>

          <div class="row">
              <div class="col-md-12">
                  <form class="form-horizontal">
                      <div class="form-group">
                          <h5 class=text-info>COUNTRY</h5>
                          <select class="form-control gds-cr gds-countryflag" country-data-region-id="nationaility" data-language="ko"></select>

                      </div>
                  </form>
              </div>
          </div>

          <div class="row">
              <div class="col-md-12">
                  <form class="form-horizontal">
                      <div class="form-group">
                          <h5 class=text-info>RESIDENTIAL COUNTRY</h5>
                          <select class="form-control gds-cr gds-countryflag" country-data-region-id="residential_country" data-language="ko"></select>

                      </div>
                      <!--div class="form-group">
                          <h5 class=text-info>REGION</h5>
                          <select class="form-control" id="residential_country"></select>
                      </div-->
                  </form>
              </div>
          </div>

          <div id="success"></div>
          <div class="form-group">
            <button type="submit" class="btn btn-primary" id="register">REGISTER</button>
            <button type="button" class="btn btn-primary" id="cancel" onclick="location.href='./index.html' "> CANCEL </button>
          </div>
        </form>
      </div>
    </div>
  </div>

  <!-- Footer -->
  <footer>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <ul class="list-inline text-center">

            <li class="list-inline-item">
              <a href="./index.html#">
                <span class="fa-stack fa-lg">
                  <i class="fas fa-circle fa-stack-2x"></i>
                  <i class="fab fa-chrome fa-stack-1x fa-inverse"></i>
                </span>
              </a>
            </li>
            <li class="list-inline-item">
              <a href="https://github.com/WonHyeongCho/ktcp-fresh-ktds#">
                <span class="fa-stack fa-lg">
                  <i class="fas fa-circle fa-stack-2x"></i>
                  <i class="fab fa-github fa-stack-1x fa-inverse"></i>
                </span>
              </a>
            </li>
    		<li class="list-inline-item">
              <a href="./index.html#">
                <span class="fa-stack fa-lg">
                  <i class="fas fa-circle fa-stack-2x"></i>
                  <i class="fas fa-envelope fa-stack-1x fa-inverse"></i>
                </span>
              </a>
            </li>
          </ul>

          <p class="copyright text-muted">주소: 서울특별시 서초구 방배동 1001-1 대표 전화 : 02-523-7029 <br>
          <a href="./index.html#">KTrip</a>
          Copyright © <a href="https://www.ktds.com/index.jsp">KTds</a> All Rights Reserved.</p>
        </div>
      </div>
    </div>
  </footer>

  <!-- Bootstrap core JavaScript -->
<script>
// When the user clicks on div, open the popup
function myFunction() {
  var popup = document.getElementById("myPopup");
  popup.classList.toggle("show");
}
</script>
  <script src="./vendor/jquery/jquery.min.js"></script>
  <script src="./vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Custom scripts for this template -->
  <script src="./js/clean-blog.min.js"></script>
  <script src="assets/js/geodatasource-cr.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
  <script src="./assets/js/Gettext.js" type="text/javascript" ></script>
</body>
</html>