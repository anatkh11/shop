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
<title>分类列表</title>
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
  //冒泡
  $(".favorite_list li a").click(function(){
	window.location.href='product.html';
	});
	$(".favorite_list li .shop_collect_goods").click(function(){
	alert("收藏产品");
	event.stopPropagation();
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
   <nav>
      <ul class="wrap navList">
      <li class="category">
      <a>全部产品分类</a>
      <dl class="asideNav indexAsideNav">
      <dt><a href="channel.html">女装</a></dt>
      <dd>
      <a href="#">夏装新</a>
      <a href="#">连衣裙</a>
      <a href="#">T恤</a>
      <a href="#">衬衫</a>
      <a href="#">裤子</a>
      <a href="#">牛仔裤</a>
      <a href="#">背带裤</a>
      <a href="#">短外套</a>
      <a href="#">时尚外套</a>
      <a href="#">风衣</a>
      <a href="#">毛衣</a>
      <a href="#">背心</a>
      <a href="#">吊带</a>
      <a href="#">民族服装</a>
      </dd>
      <dt><a href="channel.html">男装</a></dt>
      <dd>
      <a href="#">衬衫</a>
      <a href="#">背心</a>
      <a href="#">西装</a>
      <a href="#">POLO衫</a>
      <a href="#">马夹</a>
      <a href="#">皮衣</a>
      <a href="#">毛衣</a>
      <a href="#">针织衫</a>
      <a href="#">牛仔裤</a>
      <a href="#">外套</a>
      <a href="#">夹克</a>
      <a href="#">卫衣</a>
      <a href="#">风衣</a>
      <a href="#">民族风</a>
      <a href="#">原创设计</a>
      <a href="#">大码</a>
      <a href="#">情侣装</a>
      <a href="#">开衫</a>
      <a href="#">运动裤</a>
      <a href="#">工装裤</a>
      </dd>
      </dl>
      </li>
      <li>
      <a href="index.html" class="active">首页</a>
      </li>
      <li>
      <a href="#">时尚搭配</a>
      </li>
      <li>
      <a href="channel.html">原创设计</a>
      </li>
      <li>
      <a href="channel.html">时尚代购</a>
      </li>
      <li>
      <a href="channel.html">民族风</a>
      </li>
      <li>
      <a href="information.html">时尚搭配</a>
      </li>
      <li>
      <a href="library.html">搭配知识</a>
      </li>
      <li>
      <a href="#">促销专区</a>
      </li>
      <li>
      <a href="#">其他</a>
      </li>
      </ul>
      </nav>
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
    document.oncontextmenu=new Function("event.returnValue=false;");
    document.onselectstart=new Function("event.returnValue=false;"); 
  </script>
  
<section class="wrap list_class_page">
 <div class="lt_area">
  <div class="attr_filter">
     <h2>属性筛选</h2>
     <ul>
      <li>
       <dl>
        <dt>按品牌筛选：</dt>
        <dd>
         <a>品牌A</a>
         <a>品牌B</a>
         <a>品牌C</a>
         <a>品牌D</a>
         <a>品牌E</a>
         <a>品牌F</a>
         <a>品牌G</a>
         <a>品牌H</a>
         <a>品牌I</a>
         <a>品牌J</a>
        </dd>
       </dl>
      </li>
      <li>
       <dl>
        <dt>按价格筛选：</dt>
        <dd>
         <a>0~300元</a>
         <a>0~300元</a>
         <a>0~300元</a>
         <a>0~300元</a>
         <a>0~300元</a>
         <a>0~300元</a>
         <a>0~300元</a>
         <a>0~300元</a>
         <a>0~300元</a>
         <a>0~300元</a>
        </dd>
       </dl>
      </li>
      <li>
       <dl>
        <dt>按上架时间筛选：</dt>
        <dd>
         <a>今天</a>
         <a>昨天</a>
         <a>本周</a>
         <a>本月</a>
        </dd>
       </dl>
      </li>
     </ul>
  </div>
  <!--产品列表-->
    <section class="shop_goods_li">
     <h2>店铺产品</h2>
      <ul class="favorite_list">
      <c:forEach items="${goodsList }" var="goods">
       <li>
        <a href="../ProductServlet?action=showDetail&goodsId=${goods.id }">
         <img src="upload/goods005.jpg"/>
         <h3>${goods.name }</h3>
         <p class="price"><span class="rmb_icon">${goods.price }</span></p>
         <p class="shop_collect_goods" title="收藏该产品"><span>&#115;</span></p>
        </a>
       </li>
       </c:forEach>
      </ul>
       <!--分页-->
       <div class="paging">
        <a href="../ProductServlet?action=search&keywords=${keywords }&currentPage=1">第一页</a>
        <a href="../ProductServlet?action=search&keywords=${keywords }&currentPage=${currentPage-1}">上一页</a>
        <a >当前第${currentPage }页</a>
        <a >总计:${totalPageCount }页</a>
        <a href="../ProductServlet?action=search&keywords=${keywords }&currentPage=${currentPage+1}">下一页</a>
        <a href="../ProductServlet?action=search&keywords=${keywords }&currentPage=${totalPageCount}">最后一页</a>
       </div>
    </section>

 </div>
 <aside class="rtWrap">
  <dl class="rtLiTwoCol">
   <dt>热门推荐</dt>
   <dd>
    <a href="product.html">
     <img src="upload/goods002.jpg"/>
     <p>0.00</p>
    </a>
   </dd>
   <dd>
    <a href="product.html">
     <img src="upload/goods001.jpg"/>
     <p>0.00</p>
    </a>
   </dd>
   <dd>
    <a href="product.html">
     <img src="upload/goods003.jpg"/>
     <p>0.00</p>
    </a>
   </dd>
   <dd>
    <a href="product.html">
     <img src="upload/goods004.jpg"/>
     <p>0.00</p>
    </a>
   </dd>
   <dd>
    <a href="product.html">
     <img src="upload/goods008.jpg"/>
     <p>0.00</p>
    </a>
   </dd>
   <dd>
    <a href="product.html">
     <img src="upload/goods007.jpg"/>
     <p>0.00</p>
    </a>
   </dd>
   <dd>
    <a href="product.html">
     <img src="upload/goods006.jpg"/>
     <p>0.00</p>
    </a>
   </dd>
   <dd>
    <a href="product.html">
     <img src="upload/goods005.jpg"/>
     <p>0.00</p>
    </a>
   </dd>
   <dd>
    <a href="product.html">
     <img src="upload/goods008.jpg"/>
     <p>0.00</p>
    </a>
   </dd>
   <dd>
    <a href="product.html">
     <img src="upload/goods007.jpg"/>
     <p>0.00</p>
    </a>
   </dd>
   <dd>
    <a href="product.html">
     <img src="upload/goods006.jpg"/>
     <p>0.00</p>
    </a>
   </dd>
   <dd>
    <a href="product.html">
     <img src="upload/goods005.jpg"/>
     <p>0.00</p>
    </a>
   </dd>
  </dl>
 </aside>
</section>

</body>
</html>

</body>
</html>