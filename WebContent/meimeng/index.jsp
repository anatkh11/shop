<%@page import="com.haina.shop.bean.users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	users user = (users)session.getAttribute("user");
	if(user==null){
		response.sendRedirect("login.jsp");
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<title>首页</title>
<meta name="keywords"  content="DeathGhost" />
<meta name="description" content="DeathGhost" />
<meta name="author" content="DeathGhost,deathghost@deathghost.cn">
<link rel="icon" href="images/icon/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="css/style.css" /><script src="js/html5.js"></script>
<script src="js/jquery.js"></script>
<script src="js/swiper.min.js"></script>
<script>
$(document).ready(function(){
	//焦点图
	var mySwiper = new Swiper('#slide',{
		  autoplay:5000,
		  visibilityFullFit : true,
		  loop:true,
		  pagination : '.pagination',
	  });
})
</script>
</head>
<body>
<!--advertisment<div class="wrap"><img src="upload/banner.jpg"/></div>-->
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
     <form action="../ProductServlet" method="get">
     	<input type="hidden" name="action" value="search">
      <div class="inputWrap">
      <input type="text" name="keywords" placeholder="输入产品关键词或货号"/>
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
   
 </script>
 
<!--advertisment area-->
<section class="wrap">
 <!--ctCont-->
 <div class="IdxmainArea">
    <!--slide-->
    <div id="slide">
      <div class="swiper-wrapper">
        <div class="swiper-slide">
         <a href="#">
          <img src="upload/slide01.jpg"/>
         </a>
        </div>
        <div class="swiper-slide">
         <a href="#">
          <img src="upload/slide02.jpg"/>
         </a>
        </div>
        <div class="swiper-slide">
         <a href="#">
          <img src="upload/slide03.jpg"/>
         </a>
        </div>
      </div>
      <div class="pagination"></div>  
    </div>
    <!--singleAd-->
    <div class="singleAd">
     <a href="#">
      <img src="upload/sigleAd.jpg"/>
     </a>
    </div>
     <!--bestShop-->
    <dl class="bestShop">
     <dt>
      <strong>优秀商家推荐</strong>
      <a href="shop_list.html" class="fr">更多</a>
     </dt>
     <dd>
      <a href="#">
       <img src="upload/001.jpg"/>
       <h2>DM精品女装</h2>
      </a>
     </dd>
     <dd>
      <a href="#">
       <img src="upload/002.jpg"/>
       <h2>DM精品女装</h2>
      </a>
     </dd>
     <dd>
      <a href="#">
       <img src="upload/003.jpg"/>
       <h2>DM精品女装</h2>
      </a>
     </dd>
     <dd>
      <a href="#">
       <img src="upload/004.jpg"/>
       <h2>DM精品女装</h2>
      </a>
     </dd>
     <dd>
      <a href="#">
       <img src="upload/005.jpg"/>
       <h2>DM精品女装</h2>
      </a>
     </dd>
     <dd>
      <a href="#">
       <img src="upload/006.jpg"/>
       <h2>DM精品女装</h2>
      </a>
     </dd>
     <dd>
      <a href="#">
       <img src="upload/007.jpg"/>
       <h2>DM精品女装</h2>
      </a>
     </dd>
     <dd>
      <a href="#">
       <img src="upload/008.jpg"/>
       <h2>DM精品女装</h2>
      </a>
     </dd>
    </dl>
 </div>
 <!--asdCont-->
 <div class="IdxAsideRt">
  <!--login-->
  
   <dl class="idxRtAtc">
    <dt>
     <em class="obviousText">最新公告</em>
     <a href="article_list.html">more</a>
    </dt>
    <dd><a href="article_read.html">2015年12月20日系统升级通告统升级通告</a></dd>
    <dd><a href="article_read.html">2015年12月20日系统升级通告</a></dd>
    <dd><a href="article_read.html">2015年12月20日系统升级通告</a></dd>
    <dd><a href="article_read.html">2015年12月20日系统升级通告</a></dd>
    <dd><a href="article_read.html">2015年12月20日系统升级通告</a></dd>
   </dl>
   <dl class="idxRtAtc">
    <dt>
     <em>质量标准技术参数</em>
     <a href="article_list.html">more</a>
    </dt>
    <dd><a href="article_read.html">2015年12月20日系统升级通告统升级通告</a></dd>
    <dd><a href="article_read.html">2015年12月20日系统升级通告</a></dd>
   </dl>
  </div>
</section>
<!--productList-->
<section class="wrap idxproLi">
 <h2>
  <strong>
   <a href="channel.html">产品展示区</a>
  </strong>
  <span class="classLi">
   <a href="product_list.html">夏装</a>
   <a href="product_list.html">连衣裙</a>
   <a href="product_list.html">开衫</a>
   <a href="product_list.html">牛仔裤</a>
   <a href="product_list.html">背带裤</a>
   <a href="product_list.html">T恤</a>
  </span>
 </h2>
 <div class="ltArea">
  <!--ad:category pic-->
   <a href="product_list.html"><img src="upload/bestCategoryPic01.jpg"/></a>
 </div>
 <div class="ctLi">
  <ul>
   <li>
    <a href="product.html">
     <img src="upload/goods001.jpg"/>
     <h3>2019时尚新款</h3>
     <p><span>1000.00</span></p>
    </a>
   </li>
   <li>
    <a href="product.html">
     <img src="upload/goods003.jpg"/>
     <h3>2019时尚新款</h3>
     <p><span>545.00</span></p>
    </a>
   </li>
   <li>
    <a href="product.html">
     <img src="upload/goods004.jpg"/>
     <h3>2019时尚新款</h3>
     <p><span>1000.00</span></p>
    </a>
   </li>
   <li>
    <a href="product.html">
     <img src="upload/goods003.jpg"/>
     <h3>2019时尚新款</h3>
     <p><span>1000.00</span></p>
    </a>
   </li>
   <li>
    <a href="product.html">
     <img src="upload/goods001.jpg"/>
     <h3>2019时尚新款</h3>
     <p><span>980.00</span></p>
    </a>
   </li>
   <li>
    <a href="product.html">
     <img src="upload/goods002.jpg"/>
     <h3>2019时尚新款</h3>
     <p><span>642.00</span></p>
    </a>
   </li>
   <li>
    <a href="product.html">
     <img src="upload/goods004.jpg"/>
     <h3>2019时尚新款</h3>
     <p><span>793.00</span></p>
    </a>
   </li>
   <li>
    <a href="product.html">
     <img src="upload/goods001.jpg"/>
     <h3>2019时尚新款</h3>
     <p><span>755.00</span></p>
    </a>
   </li>
   <li>
    <a href="product.html">
     <img src="upload/goods002.jpg"/>
     <h3>2019时尚新款</h3>
     <p><span>360.00</span></p>
    </a>
   </li>
   <li>
    <a href="product.html">
     <img src="upload/goods003.jpg"/>
     <h3>2019时尚新款</h3>
     <p><span>1255.00</span></p>
    </a>
   </li>
  </ul>
  <!--bestBrand-->
  <div class="idxBrandLi">
   <a href="#"><img src="upload/brandLogo01.jpg"/></a>
   <a href="#"><img src="upload/brandLogo02.jpg"/></a>
   <a href="#"><img src="upload/brandLogo03.jpg"/></a>
   <a href="#"><img src="upload/brandLogo04.jpg"/></a>
  </div>
 </div>
</section>

<section class="wrap idxproLi">
 <h2>
  <strong>
   <a href="channel.html">设备展示区</a>
  </strong>
  <span class="classLi">
   <a href="product_list.html">夏装</a>
   <a href="product_list.html">连衣裙</a>
   <a href="product_list.html">开衫</a>
   <a href="product_list.html">牛仔裤</a>
   <a href="product_list.html">背带裤</a>
   <a href="product_list.html">T恤</a>
  </span>
 </h2>
 <div class="ltArea">
  <!--ad:category pic-->
   <a href="product_list.html"><img src="upload/bestCategoryPic02.jpg"/></a>
 </div>
 <div class="ctLi">
  <ul>
   <li>
    <a href="product.html">
     <img src="upload/goods005.jpg"/>
     <h3>2019时尚新款</h3>
     <p><span>1000.00</span></p>
    </a>
   </li>
   <li>
    <a href="product.html">
     <img src="upload/goods006.jpg"/>
     <h3>2019时尚新款</h3>
     <p><span>545.00</span></p>
    </a>
   </li>
   <li>
    <a href="product.html">
     <img src="upload/goods007.jpg"/>
     <h3>2019时尚新款</h3>
     <p><span>1000.00</span></p>
    </a>
   </li>
   <li>
    <a href="product.html">
     <img src="upload/goods008.jpg"/>
     <h3>2019时尚新款</h3>
     <p><span>1000.00</span></p>
    </a>
   </li>
   <li>
    <a href="product.html">
     <img src="upload/goods009.jpg"/>
     <h3>2019时尚新款</h3>
     <p><span>980.00</span></p>
    </a>
   </li>
   <li>
    <a href="product.html">
     <img src="upload/goods010.jpg"/>
     <h3>2019时尚新款</h3>
     <p><span>642.00</span></p>
    </a>
   </li>
   <li>
    <a href="product.html">
     <img src="upload/goods005.jpg"/>
     <h3>2019时尚新款</h3>
     <p><span>793.00</span></p>
    </a>
   </li>
   <li>
    <a href="product.html">
     <img src="upload/goods006.jpg"/>
     <h3>2019时尚新款</h3>
     <p><span>755.00</span></p>
    </a>
   </li>
   <li>
    <a href="product.html">
     <img src="upload/goods007.jpg"/>
     <h3>2019时尚新款</h3>
     <p><span>360.00</span></p>
    </a>
   </li>
   <li>
    <a href="product.html">
     <img src="upload/goods008.jpg"/>
     <h3>2019时尚新款</h3>
     <p><span>1255.00</span></p>
    </a>
   </li>
  </ul>
  <!--bestBrand-->
  <div class="idxBrandLi">
   <a href="#"><img src="upload/brandLogo01.jpg"/></a>
   <a href="#"><img src="upload/brandLogo02.jpg"/></a>
   <a href="#"><img src="upload/brandLogo03.jpg"/></a>
   <a href="#"><img src="upload/brandLogo04.jpg"/></a>
  </div>
 </div>
</section>
<!--case-->
<section class="wrap idexCase">
 <h2>
  <strong>工程案例</strong>
  <a href="#">more</a>
 </h2>
 <ul>
  <li>
   <a href="#">
    <img src="upload/case001.jpg"/>
    <h3>时尚搭配案例</h3>
   </a>
  </li>
  <li>
   <a href="#">
    <img src="upload/case002.jpg"/>
    <h3>时尚搭配案例</h3>
   </a>
  </li>
  <li>
   <a href="#">
    <img src="upload/case003.jpg"/>
    <h3>时尚搭配案例</h3>
   </a>
  </li>
  <li>
   <a href="#">
    <img src="upload/case004.jpg"/>
    <h3>时尚搭配案例</h3>
   </a>
  </li>
  <li>
   <a href="#">
    <img src="upload/case005.jpg"/>
    <h3>时尚搭配案例</h3>
   </a>
  </li>
 </ul>
</section>

</body>
</html>

</body>
</html>