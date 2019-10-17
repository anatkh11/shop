<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<title>购物车</title>
<meta name="keywords"  content="DeathGhost" />
<meta name="description" content="DeathGhost" />
<meta name="author" content="DeathGhost,deathghost@deathghost.cn">
<link rel="icon" href="images/icon/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="css/style.css" /><script src="js/html5.js"></script>
<script src="js/jquery.js"></script>
<script>
$(document).ready(function(){
  $("nav .indexAsideNav").hide();
  $("nav .category").mouseover(function(){
	  $(".asideNav").slideDown();
	  });
  $("nav .asideNav").mouseleave(function(){
	  $(".asideNav").slideUp();
	  });
});
</script>
</head>
<body>
<!--header-->
<header>
  <!--topNavBg-->
  <div class="topNavBg">
   <div class="wrap">
   <!--topLeftNav-->
    <ul class="topLtNav">
     <li><a href="login.html" class="obviousText">亲，请登录</a></li>
     <li><a href="register.html">注册</a></li>
     <li><a href="#">移动端</a></li>
    </ul>
   <!--topRightNav-->
    <ul class="topRtNav">
     <li><a href="user.html">个人中心</a></li>
     <li><a href="cart.html" class="cartIcon">购物车<i>0</i></a></li>
    </ul>
   </div>
  </div>
  <!--logoArea-->
  <div class="wrap logoSearch">
   <!--logo-->
   <div class="logo">
    <h1><img src="images/logo.png"/></h1>
   </div>
   <!--search-->
   <div class="search">
   
    <ul class="switchNav">
     <li class="active" id="chanpin">产品</li>
    </ul>
    <div class="searchBox">
     <form>
      <div class="inputWrap">
      <input type="text" placeholder="输入产品关键词或货号"/>
      </div>
      <div class="btnWrap">
      <input type="submit" value="搜索"/>
      </div>
     </form>
     <a href="#" class="advancedSearch">高级搜索</a>
    </div>
   </div>
  </div>
  <!--nav-->
  
 </header>
 <script>
 $(document).ready(function(){
   //测试效果，程序对接如需变动重新编辑
   $(".switchNav li").click(function(){
     $(this).addClass("active").siblings().removeClass("active");
     });
   $("#chanpin").click(function(){
     $(".inputWrap input[type='text']").attr("placeholder","输入产品关键词或货号");
     });
   $("#shangjia").click(function(){
     $(".inputWrap input[type='text']").attr("placeholder","输入商家店铺名");
     });
   $("#zixun").click(function(){
     $(".inputWrap input[type='text']").attr("placeholder","输入关键词查找文章内容");
     });
   $("#wenku").click(function(){
     $(".inputWrap input[type='text']").attr("placeholder","输入关键词查找文库内容");
     });
   });
   
 </script>
 
<section class="wrap" style="margin-top:20px;overflow:hidden;">
 <table class="order_table">
  <tr>
   <th><input type="checkbox"/></th>
   <th>产品</th>
   <th>名称</th>
   <th>属性</th>
   <th>单价</th>
   <th>数量</th>
   <th>小计</th>
   <th>操作</th>
  </tr>
  <c:forEach var="cart" items="${cartList }">
  <tr>
   <td class="center"><input type="checkbox"/></td>
   <td class="center"><a href="product.html"><img src="upload/goods.jpg" style="width:50px;height:50px;"/></a></td>
   <td><a href="product.html">${cart.goodsname }</a></td>
   <td>
    <p>颜色：${cart.color }</p>
    
    <p>规格：${cart.size }</p>
   </td>
   <td class="center"><span class="rmb_icon">${cart.price }</span></td>
   <td class="center">
    <input type="button" value="-" class="jj_btn"/>
    <input type="text" value="${cart.count }" class="number"/>
    <input type="button" value="+" class="jj_btn"/>
   </td>
   <td class="center"><strong class="rmb_icon">9.00</strong></td>
   <td class="center"><a>删除</a></td>
  </tr>
 </c:forEach>
  
 </table>
 <div class="order_btm_btn">
  <a href="index.html" class="link_btn_01 buy_btn"/>继续购买</a>
  <a href="order_confirm.html" class="link_btn_02 add_btn"/>共计金额<strong class="rmb_icon">0.00</strong>立即结算</a>
 </div>
</section>
<!--footer-->

</body>
</html>
	
</body>
</html>