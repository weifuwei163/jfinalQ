<#-- html -->
<#macro html>
	<!DOCTYPE html>
	<html>
		<#nested>
	</html>
</#macro>

<#-- head -->
<#macro head title='uikoo9.com' ui=''>
	<head>
		<!-- 编码 -->
		<meta charset="UTF-8" />
		
		<!-- ie -->
		<meta http-equiv="X-UA-Compatible" content="IE=edge;chrome=1" />
		
		<!-- 缓存关闭 -->
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		
		<!-- for search-->
		<meta name="keywords" content="MD5,md5,查询" />
		<meta name="description" content="MD5在线免费查询" />
		<meta name="author" contect="uikoo9">
		<meta name="robots" contect="all">
		
		<!-- title -->
		<title>${title}</title>
		
		<!-- favicon.ico -->
		<link href="${base}/favicon.ico" type="image/x-icon" rel="bookmark"/> 
		<link href="${base}/favicon.ico" type="image/x-icon" rel="icon"/> 
		<link href="${base}/favicon.ico" type="image/x-icon" rel="shortcut icon"/> 
		
		<!-- uis -->
		<#if ui=='bs'>
		<!-- bootstrap -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<link rel="stylesheet" href="http://cdn.staticfile.org/twitter-bootstrap/3.2.0/css/bootstrap.min.css">
		</#if>
		
		<!-- mine -->
		<#nested>
	</head>
</#macro>

<#-- bsbody -->
<#macro bsbody style='' class='' nav=true foot=true js=''>
<body <#if style != ''>style="${style}"</#if> <#if class != ''>class="${class}"</#if>>
	<#if nav>
		<@bsnav></@bsnav>
	</#if>
	<#nested>
	<#if foot>
		<@bsfoot></@bsfoot>
	</#if>
	<#if js != ''>
		<!-- require.js -->
		<script type="text/javascript" src="http://cdn.staticfile.org/require.js/2.1.14/require.min.js" data-main="${base}/WUI/web/js/${js}.js"></script>
	</#if>
</body>
</#macro>

<#-- bsnav -->
<#macro bsnav pos='top' sname='uikoo9.com' shref='http://uikoo9.com/'>
	<nav role="navigation" class="navbar navbar-default" style="margin-bottom:0;">
		<div class="container">
			<div class="navbar-header">
				<button data-target="#bsnav" data-toggle="collapse" class="navbar-toggle" type="button">
					<span class="sr-only">导航条</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a href="${shref}" class="navbar-brand"><strong class="text-primary">${sname}</strong></a>
			</div>
			
			<div class="collapse navbar-collapse" id="bsnav">
				<ul class="nav navbar-nav">
					<li><a href="#">JavaSE</a></li>
					<li><a href="#">JavaEE</a></li>
					<li><a href="#">Blogs</a></li>
					<li><a href="#">About Me</a></li>
					<#nested>
				</ul>
			</div>
		</div>
	</nav>
</#macro>

<#-- bsfoot -->
<#macro bsfoot height='60' color='#f5f5f5'>
	<div class="footer" style="width:100%;height:${height}px;background-color:${color};text-align:center;">
		<div class="container">
			<p class="text-muted" style="margin: 20px 0;">
				<a target="_blank" href="http://uikoo9.com/" >uikoo9.com</a>&nbsp;&nbsp;&nbsp;
				<a target="_blank" href="http://www.miibeian.gov.cn/">京ICP备14036391号</a>
			</p>
		</div>
	</div>
</#macro>

<#-- bsnail -->
<#macro bsnail src='' alt='' title='' desc=''>
	<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4" style="text-align:center;">
		<div class="thumbnail" style="height:190px;">
			<#if src != ''>
				<img src="${src}" alt="${alt}">
			</#if>
			<div class="caption">
				<#if title != ''><h1>${title}</h1></#if>
				<#if desc != ''><p>${desc}</p></#if>
				<p><#nested></p>
			</div>
		</div>
	</div>
</#macro>
<#-- bsbutton -->
<#macro bsbutton type="default" size='' icon='' dis=false href='javascript:void(0);'>
	<a class="btn btn-${type} <#if size != ''>btn-${size}</#if>" <#if dis>disabled="disabled"</#if> href="${href}" target="_blank">
		<@bsicon icon=icon></@bsicon>
		<#nested>
	</a>
</#macro>
<#-- bsicon -->
<#macro bsicon icon=''>
	<#if icon != ''>
		<span class="glyphicon glyphicon-${icon}"></span>
	</#if>
</#macro>