<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<title>TcitCms Core</title>
<meta name="keywords" content="">
<meta name="description" content="">
<link type="text/css" rel="stylesheet" href="/Public/style/reset.css"  />
<link type="text/css" rel="stylesheet" href="/Public/style/style.css"  />
<link type="text/css" rel="stylesheet" href="/Public/js/prettify/prettify.css" />
<script src="/Public/js/jquery-1.9.1.js"></script>
<script src="/Public/js/Prettify/prettify.js"></script>
</head>
<body>
<div id="header">
	<div id="header_wrap">
		<div id="logo">
			<h1 title="Helloweba-致力于WEB前端技术在中国的应用"><a href="http://www.helloweba.com">Helloweba-致力于WEB前端技术在中国的应用</a></h1>
		</div>
		<ul id="nav">
			<li><a href="/" class="cur">首　页</a></li>
			<?php foreach($cateList as $v){?>
			<li><a href="/"><?php echo $v['categoryTitle'];?></a>
				<?php
				$cateObj = new CategoryTable();
        		$Son = $cateObj->getSon(1, $v['id']);
				if($Son){
					echo '<div class="sub">';
					echo '<ul>';
					foreach($Son as $v){
						echo '<li><a href="">'.$v['categoryTitle'].'</a></li>';
					}
					echo '</ul>';
					echo '</div>';
				}
				?>
			</li>
			<?php }?>
		</ul>
	</div>
</div>
<div id="banner"></div>