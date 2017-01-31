<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/login.css" type="text/css" media="screen">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="js/login.js" type="text/javascript"></script>
    <!-- font awesome -->
    <link rel="stylesheet" href="css/font-awesome.min.css" media="screen" title="no title" charset="utf-8">
    <!-- Custom style -->
    <link rel="stylesheet" href="css/style.css" media="screen" title="no title" charset="utf-8">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
        body > div.fix_top {
            position: fixed;
            top: 0;
            width: 100%;
            height: 250px;
            z-index: 105;
        }
        .jumbotron{
            padding-top: 20px;
            padding-bottom: 20px;
        }
        .navbar {
            font-size: 20px;
        }
        
        .navbar {
            background-color: white;
            border-color: white;
        }
        
        .jumbotron {
            background-color: white;
        }
        
        .navbar .navbar-brand {
            color: black;
        }
        
        .navbar .navbar-nav>li>a {
            color: black;
        }
        
        .container {
            width: 1200px;
            margin:0 auto;
        }
        
        .login_wrapper {
            margin: 250px auto 0;
        }
        
        #pwd-container > div.col-md-6 > section > form > button {
            background-color: #353535;
            color: white;
        }
    </style>
</head>

<body>
   <%@ include file="fix_top.jsp"%>
    <div class="wraapper_regist" style="margin:70px 0 auto;">
        <div class="container" >
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-8">
                    <div class="page-header">
                        <h1>회원가입 </h1> </div>
                    <form class="form-horizontal" method="post" action="member_action">
                    
                        <div class="form-group">
                            <label class="col-sm-3 control-label" for="inputEmail">이메일</label>
                            <div class="col-sm-6">
                                <input class="form-control" name="email" type="email" placeholder="이메일"> </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label" for="inputPassword">비밀번호</label>
                            <div class="col-sm-6">
                                <input class="form-control" name="password" type="password" placeholder="비밀번호">
                                <p class="help-block">숫자, 특수문자 포함 8자 이상</p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label" for="inputPasswordCheck">비밀번호 확인</label>
                            <div class="col-sm-6">
                                <input class="form-control" name="passwordCheck" type="password" placeholder="비밀번호 확인">
                                <p class="help-block">비밀번호를 한번 더 입력해주세요.</p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label" for="inputName">이름</label>
                            <div class="col-sm-6">
                                <input class="form-control" name="name" type="text" placeholder="이름"> </div>
                        </div>
                        
                        <div class="form-group">
                            <label class="col-sm-3 control-label" for="inputAddress">주소</label>
                            <div class="col-sm-6">
                                <input class="form-control" name="address" type="text" placeholder="주소"> </div>
                        </div>
                        

                        <div class="form-group">
                            <label class="col-sm-3 control-label" for="inputNumber">휴대폰번호</label>
                            <div class="col-sm-6">
                                <div class="input-group">
                                    <input type="tel" class="form-control" name="phone" placeholder="- 없이 입력해 주세요" /> <span class="input-group-btn">
                    <button class="btn btn-success">인증번호 전송<i class="fa fa-mail-forward spaceLeft"></i></button>
                  </span> </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label" for="inputNumberCheck">인증번호 확인</label>
                            <div class="col-sm-6">
                                <div class="input-group">
                                    <input class="form-control" name="inputNumberCheck" type="text" placeholder="인증번호"> <span class="input-group-btn">
                <button class="btn btn-success" type="button">인증번호 확인<i class="fa fa-edit spaceLeft"></i></button>
              </span> </div>
                                <p class="help-block">전송된 인증번호를 입력해주세요.</p>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label class="col-sm-3 control-label" for="inputAgree">약관 동의</label>
                            <div class="col-sm-6" data-toggle="buttons">
                                <label class="btn btn-warning active">
                                    <input id="agree" type="checkbox" autocomplete="off" chacked> <span class="fa fa-check"></span> </label> <a href="#">이용약관</a> 에 동의 합니다. </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-12 text-center">
                                <button class="btn btn-primary" type="submit">회원가입<i class="fa fa-check spaceLeft"></i></button>
                                <button class="btn btn-danger" type="submit">가입취소<i class="fa fa-times spaceLeft"></i></button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-md-2"></div>
            </div>
        </div>
    </div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>