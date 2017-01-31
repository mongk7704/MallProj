<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
        }
        .login_wrapper{
            margin: 70px auto 0;
        }
        #pwd-container > div.col-md-6 > section > form > button{
            background-color: #353535;
            color: white;
        }
    </style>
</head>

<body>


<c:if test="${sessionScope.login!=null}">
</c:if>

    <%@ include file="fix_top.jsp"%>
    
    <div class="login_wrapper" style="background-color:white;">
        <div class="container">
            <div class="row" id="pwd-container">
            	<c:if test="${param.result != null }">
            		<c:if test="${param.result!='success' }">
					<h3 class="text-danger" style="text-align:center;">아이디나 비밀번호를 확인해주세요.</h3>
					</c:if>
					
					</c:if>
				
				
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <section class="login-form">
                        <form method="post" action="login_action" role="login"> 
                            <h2>MEMBER LOG IN</h2>
                            <h2>로그인</h2>
                            <br><br>
                            <input type="email" name="email" placeholder="Email" required class="form-control input-lg"  />
                            <input type="password" name="password" class="form-control input-lg" id="password" placeholder="Password" required="" />
                            <div class="pwstrength_viewport_progress"></div>
                            <button type="submit" name="go" class="btn btn-lg btn-block">LOG IN</button>
                            <div> <a href="#">Create account</a> or <a href="#">reset password</a> </div>
                        </form>
                        
                    </section>
                </div>
                <div class="col-md-3">
                    
                </div>
            </div>
            
        </div>
    </div>
</body>
</html>