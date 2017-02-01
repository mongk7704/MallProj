
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.proj.mall.command.Cart" %>
<%@page import="com.proj.mall.Dto.Member" %>
<%@page import="java.util.*" %>
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
        .pagetitle{
        height:60px;
        margin:0;
        padding:0 0 0 9px;
        text-align:center;
        border: 1px solid #d7d5d5;
        background-color:#f6f6f6;
        }
        .pagetitle h3{
       line-height: 60px;
        font-size: 25px;
        margin:0;
        font-weight: bold;}
         #boardtable td{
        vertical-align: middle;
        }
         td{
        text-align: center;
        
        }
        .thumb{
        width:120px;
        }
        td img{
        width:100px;
        height:auto;}
        
    </style>
</head>

<%
Member login=(Member)session.getAttribute("login");	
ArrayList<Map<Integer,Object>> itemlist=(ArrayList<Map<Integer,Object>>)request.getAttribute("itemlist");
%>
<body>
<%@ include file="fix_top.jsp"%>
	<div class="container">
		<div class="contents">
			<div class="pagetitle" style="margin-bottom: 30px;">
				<h3>마이 페이지</h3>
			</div>
			<div class="pagetitle" >
				<h3>주문내역</h3>
			</div>
			<div class="cartlist">
				<table class="table table-striped table-bordered" id="boardtable">
				<tr>
				<td>주문 번호</td><td>이미지</td><td>상품정보</td><td>판매가</td><td>주문 날짜</td><td>배송비</td><td>합계</td><td>주문취소</td></tr>
				<c:forEach var="theitem" varStatus="status" items="${requestScope.myItem }">
				<tr>
				<td class="order"><strong>${theitem.orderNumber}</strong></td>
				<td class="thumb"><img alt="item" src="${theitem.item.path}"></td>
				<td class="detail"><strong>${theitem.item.itemName }</strong><br> <div style="margin:9px 0 0">SIZE  ${item.itemSize }</div></td>
				<td class="price"><strong>${theitem.item.price}원</strong></td>
				<td class="amount"><strong>${theitem.orderDate}</strong></td>
				<td class="transfer"><strong>2500원</strong></td>
				<td class="totalfee"><strong>${theitem.item.price+2500}원</strong></td>
				
				<td><a href="ordercancel?ordernum=${theitem.orderNumber }&id=${theitem.orderItemId}">주문취소</a></td>
				</tr>
				</c:forEach>	
			</table>
			</div>
		
		</div>
	
	</div>
</body>
</html>