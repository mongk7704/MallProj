<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="css/login.css" type="text/css" media="screen">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css" media="screen" title="no title" charset="utf-8">
    <!-- Custom style -->
    <link rel="stylesheet" href="css/style.css" media="screen" title="no title" charset="utf-8">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="js/login.js" type="text/javascript"></script>
    
    
    <style>
        html{
            width: 100%;
            height: 100%;
        }
        body > div.fix_top{
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
    </style>
</head>

<body>
    <div class="fix_top" >
        <div class="jumbotron" style="margin-bottom:0; background-color:white;">
            <div class="container text-center">
                <h1><a href="main" style="color:black">XXX</a></h1>
                <p>Mission, Vission & Values</p>
            </div>
        </div>
        <nav class="navbar navbar" style="margin-bottom:0;">
            <div class="container-fluid">
                <div class="nav-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button> <a class="navbar-brand" href="main.html">XXX</a> </div>
                <div id="myNavbar" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="#">Best</a></li>
                        <li><a href="#">New</a></li>
                        <li><a href="list?type=outer">Outer</a></li>
                        <li><a href="list?type=inner">Top</a></li>
                        <li><a href="list?type=pants">Pants</a></li>
                    </ul>
                    <c:if test="${sessionScope.login==null}">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="cartlist"><span><img src="image/icons/cart-icon.png"></span>Cart</a></li>
                        <li><a href="resistration"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                        <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                    </ul>
					</c:if>
					<c:if test="${sessionScope.login!=null}">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="cartlist"><span><img src="image/icons/cart-icon.png"></span>Cart</a></li>
                        <li><a href="logout"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
                    </ul>
                    </c:if>
                </div>
            </div>
        </nav>
    </div>