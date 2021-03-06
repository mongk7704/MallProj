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
    <%@ include file="fix_top.jsp"%>
    <div class="main_banner" style="width:1200px; margin:70px auto 0; z-index:99;">
        <div class="jumbotron">
            <div class="container text-center"> <img src="image/01.jpg" alt="01" style="max-width:100% margin:0; padding:0; overflow:hidden;height:650; position:relative; auto"> </div>
        </div>
        <div class="container-fluid text-center">
            <div class="row">
                <div class="col-md-3">
                    <img src="image/item1.jpg" alt="item1" width="100%"><p>item1</p> </div>
                <div class="col-md-3">
                    <img src="image/item2.jpg" alt="item2" width="100%"><p>item2</p> </div>
                <div class="col-md-3">
                     <img src="image/item3.jpg" alt="item3" width="100%"><p>item3</p> </div>
                <div class="col-md-3">
                     <img src="image/item4.jpg" alt="item4" width="100%"><p>item4</p> </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <img src="image/item5.jpg" alt="item5" width="100%"><p>item5</p> </div>
                <div class="col-md-3">
                    <img src="image/item6.png" alt="item6" width="100%"> <p>item1</p></div>
                <div class="col-md-3">
                     <img src="image/item7.jpg" alt="item7" width="100%"> <p>item1</p></div>
                <div class="col-md-3">
                     <img src="image/item9.png" alt="item9" width="100%"><p>item1</p> </div>
            </div>
        </div>
    </div>
    <br>
    <br>
    
</body>
</html>