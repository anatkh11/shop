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
<title>产品详情</title>
<meta name="keywords"  content="DeathGhost" />
<meta name="description" content="DeathGhost" />
<meta name="author" content="DeathGhost,deathghost@deathghost.cn">
<link rel="icon" href="images/icon/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="css/style.css" /><script src="js/html5.js"></script>
<script src="js/jquery.js"></script>
<script src="js/jquery.jqzoom.js"></script>
<script src="js/base.js"></script>
<script>
$(document).ready(function(){
  $("nav .indexAsideNav").hide();
  $("nav .category").mouseover(function(){
	  $(".asideNav").slideDown();
	  });
  $("nav .asideNav").mouseleave(function(){
	  $(".asideNav").slideUp();
	  });
  //detail tab
  $(".product_detail_btm .item_tab a").click(function(){
	   var liindex = $(".product_detail_btm .item_tab a").index(this);
	   $(this).addClass("curr_li").parent().siblings().find("a").removeClass("curr_li");
       $(".cont_wrap").eq(liindex).fadeIn(150).siblings(".cont_wrap").hide();
	  });
  //radio
  $(".horizontal_attr label").click(function(){
	  $(this).addClass("isTrue").siblings().removeClass("isTrue");
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
   
 </script>
 
 <!--导航指向-->
<aside class="wrap insideLink">
  <a href="index.html">首页</a>
  <a href="product_list.html">时尚女装</a>
</aside>
<section class="wrap product_detail">
 <!--img:left-->
 <div class="gallery">
  <div>
    <div id="preview" class="spec-preview"> <span class="jqzoom"><img jqimg="upload/goods.jpg" src="upload/goodssmall.jpg" /></span> </div>
    <!--缩图开始-->
    <div class="spec-scroll"> <a class="prev">&lt;</a> <a class="next">&gt;</a>
      <div class="items">
        <ul>
          <li><img bimg="upload/goods.jpg" src="upload/goodssmall.jpg" onmousemove="preview(this);"></li>
          <li><img bimg="upload/goods004.jpg" src="upload/goods004small.jpg" onmousemove="preview(this);"></li>
          <li><img bimg="upload/goods.jpg" src="upload/goodssmall.jpg" onmousemove="preview(this);"></li>
          <li><img bimg="upload/goods.jpg" src="upload/goodssmall.jpg" onmousemove="preview(this);"></li>
          <li><img bimg="upload/goods.jpg" src="upload/goodssmall.jpg" onmousemove="preview(this);"></li>
          <li><img bimg="upload/goods.jpg" src="upload/goodssmall.jpg" onmousemove="preview(this);"></li>
          <li><img bimg="upload/goods.jpg" src="upload/goodssmall.jpg" onmousemove="preview(this);"></li>
          <li><img bimg="upload/goods.jpg" src="upload/goodssmall.jpg" onmousemove="preview(this);"></li>
          <li><img bimg="upload/goods.jpg" src="upload/goodssmall.jpg" onmousemove="preview(this);"></li>
          <li><img bimg="upload/goods.jpg" src="upload/goodssmall.jpg" onmousemove="preview(this);"></li>
          <li><img bimg="upload/goods.jpg" src="upload/goodssmall.jpg" onmousemove="preview(this);"></li>
          <li><img bimg="upload/goods.jpg" src="upload/goodssmall.jpg" onmousemove="preview(this);"></li>
        </ul>
      </div>
    </div>
    <!--缩图结束-->
  </div>
 </div>
 <!--text:right-->
 <div class="rt_infor">
  <!--lt_infor-->
  <form action="../CartServlet" method="post">
  <input type="hidden" name="action" value="addCart">
  <input type="hidden" name="goodsName" value=${detailInfo.name }>
  <input type="hidden" name="price" value=${detailInfo.price }>
  <input type="hidden" name="goodsId" value=${detailInfo.id }>
  <input type="hidden" name="userId" value=${user.id }>
  <div class="goods_infor">
   <h2>${detailInfo.name }</h2>
   <ul>
    <li>
     <dl class="horizontal">
      <dt>价格：</dt>
      <dd><strong class="rmb_icon univalent">${detailInfo.price }</strong>元</dd>
     </dl>
    </li>
    <li>
     <dl class="horizontal">
      <dt>上架时间：</dt>
      <dd><time>2013年01月份</time></dd>
     </dl>
    </li>
    <li>
     <dl class="horizontal">
      <dt>品牌：</dt>
      <dd><em>${detailInfo.brand }</time></em>
     </dl>
    </li>
    <li class="statistics">
     <dl class="vertical">
      <dt>月销量</dt>
      <dd>20</dd>
     </dl>
     <dl class="vertical">
      <dt>累计评论</dt>
      <dd>198</dd>
     </dl>
     <dl class="vertical">
      <dt>关注</dt>
      <dd>230</dd>
     </dl>
    </li>
    <li>
     <dl class="horizontal horizontal_attr">
      <dt>规格：</dt>
      <dd>
       <label><input type="radio" name="size" value="S码"/>S码</label>
       <label><input type="radio" name="size" value="M码"/>M码</label>
       <label><input type="radio" name="size" value="L码"/>L码</label>
       <label><input type="radio" name="size" value="XL码"/>XL码</label>
       <label><input type="radio" name="size" value="XXL码"/>XXL码</label>
      </dd>
     </dl>
    </li>
    <li>
     <dl class="horizontal horizontal_attr">
      <dt>颜色：</dt>
      <dd>
       <label><input type="radio" name="color" value="黑色"/>黑色</label>
       <label><input type="radio" name="color" value="蓝色"/>蓝色</label>
       <label><input type="radio" name="color" value="白色"/>白色</label>
      </dd>
     </dl>
    </li>
    </li>
    <li>
     <dl class="horizontal horizontal_attr">
      <dt>数量：</dt>
      <dd>
       <input type="button" value="-" class="jj_btn"/>
       <input type="text" value="1" class="num" name="count"/>
       <input type="button" value="+" class="jj_btn"/>
       <span>库存：2580件</span>
      </dd>
     </dl>
    </li>
    <li class="last_li">
       <input type="button" value="立即询价" class="buy_btn" onClick="alert('询价请求已推送至商家，请耐心等待！');"/>
       <input type="button" value="立即购买" class="buy_btn" onClick="javascript:location.href='cart.html'"/>
       <input type="submit" value="加入购物车" class="add_btn"/>
    </li>
   </ul>
  </div>
  </form>
  <!--rt_infor-->
  <div class="shop_infor">
   <dl class="business_card">
    <dt>${detailInfo.shopName }</dt>
    <dd>资质：${detailInfo.type }</dd>
    <dd>联系人${detailInfo.ceo }</dd>
    <dd>邮件：${detailInfo.email }</dd>
    <dd>电话：${detailInfo.tel }</dd>
    <dd>所在地：${detailInfo.shortAddress }</dd>
    <dd>地址：${detailInfo.detailAddress }</dd>
   </dl>
  </div>
 </div>
</section>
<!--detail-->
<section class="wrap product_detail_btm">
 <article>
  <ul class="item_tab">
   <li><a class="curr_li">商品详情</a></li>
   <li><a>商品评价（2893）</a></li>
   <li><a>成交记录（1892）</a></li>
  </ul>
  <!--商品详情-->
  <div class="cont_wrap active">
   该商品参与了公益宝贝计划，卖家承诺每笔成交将为壹乐园计划捐赠0.02元。该商品已累积捐赠24560笔。
善款用途简介：基于游戏教育在儿童成长中的重要性，壹基金设立了“壹乐园计划”，帮助提供滑梯、攀爬架、跷跷板、秋千、乒乓球桌等，为灾后及贫困地区的孩子们搭建课<br/>
该商品参与了公益宝贝计划，卖家承诺每笔成交将为壹乐园计划捐赠0.02元。该商品已累积捐赠24560笔。
善款用途简介：基于游戏教育在儿童成长中的重要性，壹基金设立了“壹乐园计划”，帮助提供滑梯、攀爬架、跷跷板、秋千、乒乓球桌等，为灾
  <img src="upload/goods005.jpg"/><br/>
   该商品参与了公益宝贝计划，卖家承诺每笔成交将为壹乐园计划捐赠0.02元。该商品已累积捐赠24560笔。
善款用途简介：基于游戏教育在儿童成长中的重要性，壹基金设立了“壹乐园计划”，帮助提供滑梯、攀爬架、跷跷板、秋千、乒乓球桌等，为灾后及贫困地区的孩子们搭建课<br/>
该商品参与了公益宝贝计划，卖家承诺每笔成交将为壹乐园计划捐赠0.02元。该商品已累积捐赠24560笔。
善款用途简介：基于游戏教育在儿童成长中的重要性，壹基金设立了“壹乐园计划”，帮助提供滑梯、攀爬架、跷跷板、秋千、乒乓
  </div>
  <!--商品评价-->
  <div class="cont_wrap">
   <table class="table">
    <tr>
     <td width="20%" align="center">李*锋</td>
     <td width="60%">这里是评论内容哦这里是评论内容哦这里是评论内容哦这里是评论内容哦这里是评论内容哦这里是评论内容哦这里是评论内容哦这里是评论内容哦这里是评论内容哦</td>
     <td width="20%" align="center"><time>2013-01-13 15:06</time></td>
    </tr>
    <tr>
     <td width="20%" align="center">彭**法</td>
     <td width="60%">这里是评论内容哦这里是评论内容哦这里是评论内容哦这里是评论内容哦这里是评论内容哦这里是评论内容哦这里是评论内容哦这里是评论内容哦这里是评论内容哦</td>
     <td width="20%" align="center"><time>2013-01-13 15:06</time></td>
    </tr>
    <tr>
     <td width="20%" align="center">代**彭</td>
     <td width="60%">这里是评论内容哦这里是评论内容哦这里是评论内容哦容哦这里是评论内容哦这里是评论内容哦这里是评论容哦这里是评论内容哦这里是评论内容哦这里是评论容哦这里是评论内容哦这里是评论内容哦这里是评论容哦这里是评论内容哦这里是评论内容哦这里是评论容哦这里是评论内容哦这里是评论内容哦这里是评论容哦这里是评论内容哦这里是评论内容哦这里是评论容哦这里是评论内容哦这里是评论内容哦这里是评论内容哦这里是评论内容哦这里是评论内容哦</td>
     <td width="20%" align="center"><time>2013-01-13 15:06</time></td>
    </tr>
   </table>
   <!--分页-->
   <div class="paging">
    <a>第一页</a>
    <a class="active">2</a>
    <a>3</a>
    <a>...</a>
    <a>89</a>
    <a>最后一页</a>
   </div>
  </div>
  <!--成交记录-->
  <div class="cont_wrap">
   <table class="table">
    <tr>
     <th>买家</th>
     <th>产品属性</th>
     <th>数量</th>
     <th>成交时间</th>
    </tr>
    <tr>
     <td align="center">李**强</td>
     <td>
      <p>颜色：黑色<p>
      <p>规格：M<p>
     </td>
     <td align="center"><b>1</b></td>
     <td align="center"><time>2013-01-13 15:25:39</time></td>
    </tr>
    <tr>
     <td align="center">李**强</td>
     <td>
      <p>颜色：黑色<p>
      <p>规格：L<p>
     </td>
     <td align="center"><b>1</b></td>
     <td align="center"><time>2013-01-13 15:25:39</time></td>
    </tr>
    <tr>
     <td align="center">葛**华</td>
     <td>
      <p>颜色：白色<p>
      <p>规格：XL<p>
     </td>
     <td align="center"><b>5</b></td>
     <td align="center"><time>2013-01-13 15:25:39</time></td>
    </tr>
   </table>
   <!--分页-->
   <div class="paging">
    <a>第一页</a>
    <a class="active">2</a>
    <a>3</a>
    <a>...</a>
    <a>89</a>
    <a>最后一页</a>
   </div>
  </div>
 </article>
 <aside>
  <dl class="aside_pro_list">
   <dt>
    <strong>精品推荐</strong>
    <a>更多</a>
   </dt>
   <dd>
    <a href="#" class="goods_img"><img src="upload/goods002.jpg"/></a>
    <div class="rt_infor">
     <h3><a href="#">时尚女装 2019春季针织衫</a></h3>
     <p><del class="rmb_icon">1298.00</del></p>
     <p><strong class="rmb_icon">980.00</strong></p>
    </div>
   </dd>
   <dd>
    <a href="#" class="goods_img"><img src="upload/goods002.jpg"/></a>
    <div class="rt_infor">
     <h3><a href="#">时尚女装 2019春季针织衫</a></h3>
     <p><del class="rmb_icon">1298.00</del></p>
     <p><strong class="rmb_icon">980.00</strong></p>
    </div>
   </dd>
   <dd>
    <a href="#" class="goods_img"><img src="upload/goods002.jpg"/></a>
    <div class="rt_infor">
     <h3><a href="#">时尚女装 2019春季针织衫</a></h3>
     <p><del class="rmb_icon">1298.00</del></p>
     <p><strong class="rmb_icon">980.00</strong></p>
    </div>
   </dd>
    <dd>
    <a href="#" class="goods_img"><img src="upload/goods002.jpg"/></a>
    <div class="rt_infor">
     <h3><a href="#">时尚女装 2019春季针织衫</a></h3>
     <p><del class="rmb_icon">1298.00</del></p>
     <p><strong class="rmb_icon">980.00</strong></p>
    </div>
   </dd>
  </dl>
 </aside>
</section>
</body>
</html>

</body>
</html>