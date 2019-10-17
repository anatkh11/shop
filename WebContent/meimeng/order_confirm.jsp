<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<title>确认订单</title>
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
  </div>
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
  <caption>
   <strong>订单商品</strong>
   <a href="cart.html">返回购物车修改</a>
  </caption>
  <tr>
   <td class="center"><a href="product.html"><img src="upload/goods.jpg" style="width:50px;height:50px;"/></a></td>
   <td><a href="product.html">这里是产品名称</a></td>
   <td>
    <p>颜色：黑色</p>
    
    <p>规格：M码</p>
   </td>
   <td class="center"><span class="rmb_icon">15.88</span></td>
   <td class="center"><span>1</span></td>
   <td class="center"><strong class="rmb_icon">15.88</strong></td>
  </tr>
  <tr>
   <td class="center"><a href="product.html"><img src="upload/goods007.jpg" style="width:50px;height:50px;"/></a></td>
   <td style="width:200px;"><a href="product.html">这里是产品名称</a></td>
   <td>
    <p>颜色：黑色</p>
    
    <p>规格：M码</p>
   </td>
   <td class="center"><span class="rmb_icon">15.88</span></td>
   <td class="center"><span>1</span></td>
   <td class="center"><strong class="rmb_icon">15.88</strong></td>
  </tr>
  <tr>
   <td class="center"><a href="product.html"><img src="upload/goods008.jpg" style="width:50px;height:50px;"/></a></td>
   <td style="width:200px;"><a href="product.html">这里是产品名称</a></td>
   <td>
    <p>颜色：黑色</p>
    
    <p>规格：M码</p>
   </td>
   <td class="center"><span class="rmb_icon">15.88</span></td>
   <td class="center"><span>1</span></td>
   <td class="center"><strong class="rmb_icon">15.88</strong></td>
  </tr>
 </table>
 <!--支付与配送-->
 <ul class="order_choice">
  <li>
   <dl>
    <dt>支付方式</dt>
    <dd>
     <label class="radio istrue"><input type="radio" name="pay"/>支付宝</label>
     <label class="radio"><input type="radio" name="pay"/>微信支付</label>
     <label class="radio"><input type="radio" name="pay"/>网银在线</label>
     <label class="radio"><input type="radio" name="pay"/>余额支付</label>
    </dd>
    <dd>
     <label>
      <input type="checkbox"/>
      使用余额￥<input type="text" value="59.00" class="textbox"/>
      <mark>当前账户余额<strong class="rmb_icon">59.00</strong></mark>
     </label>
    </dd>
   </dl>
  </li>
  <li>
   <dl>
    <dt>配送方式</dt>
    <dd>
     <label class="radio"><input type="radio" name="peisong"/>物流</label>
     <label class="radio istrue"><input type="radio" name="peisong"/>自配送</label>
     <label class="radio"><input type="radio" name="peisong"/>快递</label>
    </dd>
   </dl>
  </li>
  <li>
   <dl>
    <dt>订单留言</dt>
    <dd>
     <textarea></textarea>
    </dd>
   </dl>
  </li>
 </ul>
 <div class="order_btm_btn">
  <a href="system_prompts.html" class="link_btn_02 add_btn"/>共计金额<strong class="rmb_icon">0.00</strong>提交订单</a>
 </div>
</section>
</body>
</html>

</body>
</html>