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
<title>我的地址-用户中心</title>
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
     <a href="#">产品配置中心</a>
    </li>
    <li>
     <a href="channel.html">产品商城</a>
    </li>
    <li>
     <a href="channel.html">材料商城</a>
    </li>
    <li>
     <a href="channel.html">设备商城</a>
    </li>
    <li>
     <a href="information.html">行业资讯</a>
    </li>
    <li>
     <a href="library.html">知识文库</a>
    </li>
    <li>
     <a href="#">绿色通道</a>
    </li>
    <li>
     <a href="#">特殊产品</a>
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
 
<section class="wrap user_center_wrap">
 <!--左侧导航-->
  <aside class="user_aside_nav">
  <dl>
   <dt>买家中心</dt>
   <dd><a href="order_list.html">我的订单</a></dd>
   <dd><a href="address.html">我的地址库</a></dd>
   <dd><a href="profile.html">个人资料</a></dd>
   <dd><a href="change_password.html">修改密码</a></dd>
  </dl>
 </aside>
 <!--右侧：内容区域-->
 <div class="user_rt_cont">
  <div class="top_title">
   <strong>我的地址列表</strong>
  </div>
  <table class="order_table">
   <tr>
    <td width="100" align="right">收件人：</td>
    <td><input type="text" placeholder="输入收件人姓名" class="textbox"/></td>
   </tr>
   <tr>
    <td width="100" align="right">联系电话：</td>
    <td><input type="text" placeholder="收件人手机号码" class="textbox"/></td>
   </tr>
   <tr>
    <td width="100" align="right">收件地址：</td>
    <td>
     <select class="select">
      <option>选择省份</option>
     </select>
     <select class="select">
      <option>选择城市</option>
     </select>
     <select class="select">
      <option>选择区县</option>
     </select>
    </td>
   </tr>
   <tr>
    <td width="100" align="right">详细地址：</td>
    <td><input type="text" placeholder="街道门牌号" class="textbox textbox_295"/></td>
   </tr>
   <tr>
    <td width="100" align="right"></td>
    <td><input type="button" value="更新保存" class="group_btn"/></td>
   </tr>
  </table>
  <table class="order_table address_tbl">
   <tr>
    <th width="140">收件人</th>
    <th width="140">联系电话</th>
    <th>收件地址</th>
    <th width="240">操作</th>
   </tr>
   <tr>
    <td>DeathGhost</td>
    <td>18309111111</td>
    <td>
     <address>
      陕西省西安市雁塔区唐延路xxx号
     </address>
    </td>
    <td>
     <label><input type="radio" name="moren"/>设为默认地址</label>
     <input type="button" value="编辑" class="btn"/>
     <input type="button" value="删除" class="btn"/>
    </td>
   </tr>
   <tr>
    <td>DeathGhost</td>
    <td>18309111111</td>
    <td>
     <address>
      陕西省西安市雁塔区唐延路xxx号
     </address>
    </td>
    <td>
     <label><input type="radio" name="moren"/>设为默认地址</label>
     <input type="button" value="编辑" class="btn"/>
     <input type="button" value="删除" class="btn"/>
    </td>
   </tr>
   <tr>
    <td>DeathGhost</td>
    <td>18309111111</td>
    <td>
     <address>
      陕西省西安市某某区幸福大道1200陕西省西安市雁塔区唐延路xxx号号
     </address>
    </td>
    <td>
     <label><input type="radio" name="moren"/>设为默认地址</label>
     <input type="button" value="编辑" class="btn"/>
     <input type="button" value="删除" class="btn"/>
    </td>
   </tr>
   <tr>
    <td>DeathGhost</td>
    <td>18309111111</td>
    <td>
     <address>
      陕西省西安市雁塔区唐延路xxx号
     </address>
    </td>
    <td>
     <label><input type="radio" name="moren"/>设为默认地址</label>
     <input type="button" value="编辑" class="btn"/>
     <input type="button" value="删除" class="btn"/>
    </td>
   </tr>
  </table>
 </div>
</section>
</body>
</html>

</body>
</html>