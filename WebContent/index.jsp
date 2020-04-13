<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/house/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="style
sheet" href="http://cdn.bootcss.com/bootstrap/3.3.1/css/bootstrap.min.css">
<link href="/house/css/jquery.slideBox.css" rel="stylesheet" type="text/css" />
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> 
					 	<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
					 	<span class="icon-bar"></span>
					 	<span class="icon-bar"></span>
					 </button>
					 <a class="navbar-brand" href="#">物业管理系统</a>
				</div>
				
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active">
							 <a href="/house/index.jsp">首页</a>
						</li>
						<li>
							 <a href="/house/repair.jsp">在线保修</a>
						</li>
						<li>
							 <a href="/house/charge.jsp">费用查询</a>
						</li>
						<li>
							 <a href="/house/message.jsp">查看消息</a>
						</li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li>
							<c:if test="${sessionScope.account!=null}">
								 <a href="#">欢迎，${sessionScope.owner}</a>
							</c:if>
							<c:if test="${sessionScope.account==null}">
								<a href="/house/login.html">登录</a>
							</c:if>
							 
						</li>
						<c:if test="${sessionScope.account!=null}">
						<li>
							<a href="#" id = "logout" onclick="logout()">退出</a>
						</li>
						</c:if>
						<%-- <c:if test="${sessionScope.account!=null&&sessionScope.account=='admin'}"> --%>
						<li>
							 <a href="/house/login_admin.html">登录后台</a>
						</li>
						<%-- </c:if> --%>
					</ul>
				</div>
			</nav>
		</div>
		</div>
		<div class="col-md-12 column">
			<div class="row clearfix">
				<div class="col-md-7 column">
					<!-- <div id="demo1" class="slideBox">
					  <ul class="items">
					    <li><a href="http://www.jq22.com/" title="图片一"><img src="img/1.jpg"></a></li>
					    <li><a href="http://www.jq22.com/" title="图片二"><img src="img/2.jpg"></a></li>
					    <li><a href="http://www.jq22.com/" title="图片三"><img src="img/3.jpg"></a></li>
					    <li><a href="http://www.jq22.com/" title="图片四"><img src="img/4.jpg"></a></li>
					    <li><a href="http://www.jq22.com/" title="图片五"><img src="img/5.jpg"></a></li>
					  </ul>
					</div> -->
					
					<div id="carousel-example-generic" class="carousel slide">
  						<!-- Indicators -->
 						<ol class="carousel-indicators">
    						<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    						<li data-target="#carousel-example-generic" data-slide-to="1"></li>
    						<li data-target="#carousel-example-generic" data-slide-to="2"></li>
    						<li data-target="#carousel-example-generic" data-slide-to="3"></li>
    						<li data-target="#carousel-example-generic" data-slide-to="4"></li>
  						</ol>
  						<div class="carousel-inner" 'role="listbox">
    						<div class="item active">
      							<img src="img/6.jpg" alt="">
      							<div class="carousel-caption">
      								<h3>从自身做起</h3>
      								<p>从细节做起，共创文明小区</p>
      							</div>
      						</div>
      						<div class="item">
     							<img src="img/7.jpg" alt="">
     							<div class="carousel-caption">
      								<h3>创文明小区</h3>
      								<p>建美好家园，营造优美生活环境</p>
      							</div>
     						</div>
     						<div class="item">
     							<img src="img/8.jpg" alt="">
     							<div class="carousel-caption">
      								<h3>树立道德风范</h3>
      								<p>做好文明示范，争当先进模范</p>
      							</div>
     						</div>
     						<div class="item">
     							<img src="img/9.jpg" alt="">
     							<div class="carousel-caption">
      								<h3>增强卫生意识</h3>
      								<p>养成卫生习惯，提高健康水平</p>
      							</div>
     						</div>
     						<div class="item">
     							<img src="img/10.jpg" alt="">
     							<div class="carousel-caption">
      								<h3>争做社会好公民</h3>
      								<p>争做单位好员工，争做家庭好成员</p>
      							</div>
     						</div>
   						</div>
   						<a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
   							<span class="glyphicon glyphicon-chevron-left"></span>
   						</a>
   						<a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
   							<span class="glyphicon glyphicon-chevron-right"></span>
   						</a>
					</div>
				</div>
				
				<div class="col-md-5 column">
					<div style="width:100%;height:30px;background-color:#E7E7E7;text-align:center">
					  	<strong style="line-height:30px">最新公告</strong>
					</div>
					<div id="announce" style="text-align:center"></div>
				</div>
			</div>
		</div>
		<div class="col-md-12 column">
			<div class="row clearfix">
				<div class="col-md-7 column">
					<div style="width:100%;height:30px;background-color:#E7E7E7;text-align:center">
					  	<strong style="line-height:30px">小区简介</strong>
					</div>
					<div id="introduce" style="text-indent:2em;line-height:19px"></div>
				</div>
				<div class="col-md-5 column">
					<div style="width:100%;height:30px;background-color:#E7E7E7;text-align:center">
					  	<strong style="line-height:30px">公告列表</strong>
					</div>
					<div id="announces" style="text-align:center">
							<ol>
							</ol>
								<ul class="pagination">
									<li>
										 <a href="#" id="first">首页</a>
									</li>
									<li>
										 <a href="#" id="pre"><</a>
									</li>
									<li>
										 <a href="#" id="next">></a>
									</li>
									<li>
										<a> 当前第<span id="pagenow"></span>页</a>
									</li>
									<li>
										<a href=#>总共<span id="pagetotal"></span>页</a>
									</li>
								</ul>
					</div>
				</div>
			</div>
		</div>
</div>
<!-- 查看公告 modal-->
<div class="modal fade" id="update" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">
                	<span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">公告内容</h4>
            </div>
            <div class="modal-body">
            	
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" data-dismiss="modal">确认</button>
              <!--   <button type="button" class="btn btn-primary" class="saveupdate" onclick="saveupdate()">提交更改</button> -->
            </div>
        </div>
    </div>
</div>
<!-- 结束 -->
<script type="text/javascript" src="/house/js/jquery.min.js"></script>
<script type="text/javascript" src="/house/bootstrap/js/bootstrap.min.js"></script>
<script src="/house/js/jquery.slideBox.min.js" type="text/javascript"></script>
<script type="text/javascript" src="/house/js/bean.js"></script>
<script type="text/javascript" src="/house/js/util.js"></script>
<script type="text/javascript" src="/house/laydate/laydate.js"></script>
<script type="text/javascript" charset="utf-8" src="/house/utf8-jsp/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="/house/utf8-jsp/ueditor.all.min.js"> </script>
<script>
$(".carousel").carousel({
	interval:3000
})
var arrays = [];

//添加最新公告
function announce(msg){
	var $announce = $('#announce');
	$announce.append('<p><strong>'+msg.title+'</strong><span style="color:gray"><br>'+msg.sdate+'</span></p>');
	$announce.append('<div>'+msg.content+'</div>');
}
//添加小区介绍
function introduce(msg){
	var $introduce = $('#introduce');
	$introduce.append('<p>'+msg.msg+'</p>');
}
//添加公告列表
function announces(msg){
	var $ol = $('#announces>ol');//获取#announces中的ol
	$ol.empty();//将其变成空元素
	$.each(msg.list,function(index,value){//循环msg.list
		var $li=$('<li><a href="#" onclick="showModal('+value.id+')">'+value.sdate+'---'+value.title+'</a></li>');//生成li标签
		$ol.append($li);
		var announce = new Announce(value.id,value.title,value.sdate,value.content);
		arrays.push(announce);//然后将每一个li标签插入到#announces中的ol中
	});
	/* 1. 定义：向数组的末尾添加一个或更多元素，并返回新的长度。
	2. 语法： arr.push(element1, ..., elementN)
	3. 参数：可以接收任意个数量的参数
	4. 返回值：返回修改后数组的长度。 */
	var $first = $('a[id="first"]');
	$first.bind('click',{nowPage:1,pageNumber:5},loada);
	var $pre = $('a[id="pre"]');//首先获取到上一页这个标签
	$pre.bind('click',{nowPage:msg.previous,pageNumber:msg.pageNumber},loada);//点击这个标签的时候，把当前页码，每页多少条信息传进去
	var $next = $('a[id="next"]');
	$next.bind('click',{nowPage:msg.next,pageNumber:msg.pageNumber},loada);
	$('span[id="pagenow"]').text(msg.nowPage);
	$('span[id="pagetotal"]').text(msg.totalPage);
}
function prepare(start,length){
	var data = {
			nowPage:start,
			pageNumber:length
	};
	loaddata(data,'/house/admin/announce/list.do','post',announces);
}
function loada(d){
	prepare(d.data.nowPage,d.data.pageNumber);
}
//显示详情modal
function showModal(id){
	var i;
	
	$.each(arrays,function(index,value){
		if(id==value.id){
			i = index;
			return;
		}
	});
	var $modal = $('#update .modal-body');
	$modal.html(arrays[i].content);
	$('#update').modal('show');
}
$(function(){
	prepare(1,5);
});
$(function(){
	loaddata(null,'/house/admin/announce/getResent.do','get',announce);
});
$(function(){
	loaddata(null,'/house/admin/sys/getIntroduce.do','post',introduce);
});
</script>
</body>
</html>