<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="com.proj.mall.command.Cart" %>
    <%@page import="com.proj.mall.Dto.Member" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
        div{display:block;}
        
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
        div{
        text-align: center;
        }
        .navbar .navbar-nav>li>a {
            color: black;
        }
        
        .container {
            width: 1200px;
            margin:10px auto;
        }
        .contents{
        margin-top:20px;}
        .carttitle{
        height:60px;
        margin:0;
        padding:0 0 0 9px;
        text-align:center;
        border: 1px solid #d7d5d5;
        background-color:#f6f6f6;
        }
       
        .carttitle h3{
        line-height: 60px;
        font-size: 25px;
        margin:0;
        font-weight: bold;}
        .boardlist #boardtable td{
        vertical-align: middle;
        }
        .boardlist td{
        text-align: center;
        
        }
        .boardlist .thumb{
        width:120px;
        
        padding:8px 0 5px;
        }
        .table {
        border-bottom: 1px solid #ddd;}
        .boardlist td img{
        width:100px;
        height:auto;}
        .boardlist .detail{
        width:auto;}
        .boardlist .price{
        width:100px;}
        .boardlist .amount{
        width:100px;
        }
        .boardlist .transfer{
        width:100px;
        }
        .boardlist .totalfee{
        width:100px;}
        th{
        background-color: #fbfafa;
        width:200px;
        text-align: center;
        }
        textarea{
        width:750px;height:45px;border:1px solid #d5d5d5;padding:5px 6px}
        .container .radioInput{
        margin-right:5px;
        display: inline;}
         .cartlist img{
        width:100px;
        }
        #type2{
        display:none;
        height:140px;
        padding:0 0 0 9px;
        text-align:center;
        border: 1px solid #d7d5d5;
        background-color:#f6f6f6;}
        
    </style>
</head>
<body>
<%
HttpSession sess=request.getSession();
Cart items=(Cart)session.getAttribute("cart");
Object s=session.getAttribute("login");


%>
<%@ include file="fix_top.jsp"%>


<div class="contents">
<input type="hidden" value="${sessionScope.login}" id="log" >
	<div class="container">
	<form name="frmSubmit" method="post" >
		<div class="cart">
			<div class="carttitle">
				<h3>장바구니 내역</h3>
			</div>
			<c:if test="${sessionScope.cart==null}">
					<h3>장바구니가 비었습니다.</h3>
				</c:if>
				<c:if test="${sessionScope.cart!=null}">
			<div class="cartlist">
				<table class="table table-striped table-bordered" id="boardtable">
				<tr>
				<td>선택</td><td>이미지</td><td>상품정보</td><td>판매가</td><td>수량</td><td>배송비</td><td>합계</td></tr>
				<c:forEach var="item" varStatus="status" items="${sessionScope.cart.itemlist }">
				<tr>
				<td class="choose"><input class="ck" type="checkbox" name="cartCk" value="${status.index}" checked="checked"></td>
				<td class="thumb"><img alt="item" src="${item.path}"></td>
				<td class="detail"><strong>${item.itemName }</strong><br> <div style="margin:9px 0 0">SIZE  ${item.itemSize }</div></td>
				<td class="price"><strong>${item.price}원</strong></td>
				<td class="amount"><strong>1</strong></td>
				<td class="transfer"><strong>2500원</strong></td>
				<td class="totalfee"><strong>${item.price+2500}원</strong></td>
				</tr>
				</c:forEach>	
			</table>
			</div>
			<div class="cartoption" style="margin-bottom:15px;" >
			
			<button id="bt1"  class="btn btn-info" >선택 상품 삭제</button>
			<button id="bt2"  class="btn btn-info" >전체 상품 삭제</button>	
			
				
			</div>
			<div class="cartfee" style="text-align: center">
			<table class="table ">
			<tr>
			<th>총 상품 금액</th><th>총 배송비</th><th>결제 예정 금액</th>
			</tr>
			<tr>
			<td><%=items.totalFee() %>원</td><td>2500원</td><td><%=items.totalFee() +2500%>원</td>
			</tr>
			</table>
			</div>
			<div class="orderfinal" style="text-align: center;">
			
			<button id="bt3"  class="btn btn-success" >선택 상품 주문</button>
			<button id="bt4"  class="btn btn-success" >전체 상품 주문</button>
			</div>
			</c:if>
		</div>
		</form>
	</div>
</div>
<script type="text/javascript">
	var bt=$('.bt');
	var frm=document.frmSubmit;
	var login=$('#log').val();
	$('#bt1').click(
			function(){
				frm.action="cartoption?option=select";
				frm.submit();
			}
			);
			
	$('#bt2').click(
			function(){
				frm.action="cartoption?option=all";
				frm.submit();
			}
			);
	
	$('#bt3').click(
			function(){
					if(login=="")
						alert('로그인필요합니다');
					else{
						frm.action="cartorder?method=cart&total=false";
						frm.submit();
					}
					
		
			}
			)
	$('#bt4').click(
			function(){
				if(login=="")
					alert('로그인필요합니다');
				else{
					frm.action="cartorder?method=cart&total=true";
					frm.submit();
				}
					
		
			}
			);
</script>
</body>
</html>