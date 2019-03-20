<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Contact Us</title>

    <!-- jQuery and moment.js and rome.js-->
    <script src="./bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="./bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    <link href="./bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom fonts for this template -->
    <link href="./vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="./index_files/css" rel="stylesheet" type="text/css">
    <link href="./index_files/css(1)" rel="stylesheet" type="text/css">
    <link href="./index_files/icon" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="./css/clean-blog.min.css" rel="stylesheet">
    <!-- contactus.css -->
    <link href="./css/contactus.css" rel="stylesheet" type="text/css">
    <!-- common.css, common.js clean-blog.min.js -->
    <link href="./css/common.css" rel="stylesheet" type="text/css">
    <script src="./js/common.js"></script>
    <script src="js/clean-blog.min.js"></script>
    <script data-cfasync="false" type="text/javascript"></script>
</head>
<body>
	<%@ include file="./header.jsp"%>
    <!-- Page Header -->
    <header class="masthead header-block" id="contactus-header-img">
        <div class="overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-10 mx-auto">
                        <div class="page-heading">
                            <h1>CONTACT</h1>
                        </div>
                </div>
            </div>
        </div>
    </header>
    <!-- Main Content -->
    <div class="container">
        <div class="row">
            <div class="col-lg-9 col-md-10 mx-auto">
                <!--Sub Header-->
                <nav class="navbar navbar-expand-lg">
                    <div class="container-fluid">
                        <div class="navbar-collapse collapse show" id="navbarResponsive">
                            <ul class="navbar-nav mr-auto">
                                <li class="nav-item">
                                    <a class="nav-link" href="./notice.jsp">공지사항</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="./faq.jsp">자주묻는 질문</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="./contactus.jsp">문의하기</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
                <hr>
            </div>
            <div class="col-lg-8 col-md-10 mx-auto">
                <br>
                <form name="sentMessage" id="gform" novalidate>
                    <div class="control-group">
                        <h5 class=text-info>TITLE</h5>
                        <input type="text" class="form-control" placeholder="제목을 입력해 주세요" id="title"
                            required
                            data-validation-required-message="Please enter the title.">
                        <p class="help-block text-danger"></p>
                    </div>
                    <div class="control-group">
                        <h5 class=text-info>NAME</h5>
                        <input type="text" class="form-control" placeholder="이름을 입력해 주세요" id="name"
                                required
                                data-validation-required-message="Please enter your name.">
                        <p class="help-block text-danger"></p>
                    </div>
                    <div class="control-group">
                        <h5 class=text-info>EMAIL</h5>
                        <input type="text" class="form-control" placeholder="이메일을 입력해 주세요" id="email"
                                required
                                data-validation-required-message="Please enter your Eamil.">
                        <p class="help-block text-danger"></p>
                    </div>
                    <div class="control-group">
                        <h5 class=text-info>PHONE</h5>
                        <input type="text" class="form-control" placeholder="휴대폰 번호(-제외)를 입력해 주세요" id="phone"
                                required
                                data-validation-required-message="Please enter your phone number.">
                        <p class="help-block text-danger"></p>
                    </div>
                    <div class="control-group">
                        <h5 class=text-info>CONTENT</h5>
                        <textarea rows="10" class="form-control" placeholder="내용을 입력해 주세요"
                                id="content"></textarea>
                        <p class="help-block text-danger"></p>
                    </div>
                    <div id="success"></div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-primary" id="sendForm">Send</button>
                        <button type="cancel" class="btn btn-primary" onclick=" location.href='./notice.jsp'">Cancel</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script>
$("#sendForm").click(function(e){
e.preventDefault();
var data = {
name : $("#name").val(),
title : $("#title").val(),
email : $("#email").val(),
phone : $("#phone").val(),
content : $("#content").val()
}
    $.ajax({
                    url: "https://script.google.com/macros/s/AKfycbxC9M_btwlssCOBzhsi7dd4_ynnFpjgp_YSozfe/exec",
                    type: "POST",
                    data: data,
                    success: function(){
                        alert("성공적으로 전송되었습니다.");
                        $("#gform")[0].reset();
                    }
                });
                });


</script>
    <hr>
    <%@ include file="./footer.jsp"%>
</body>
</html>