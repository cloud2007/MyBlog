<div id="main">
	<div class="main_left">
		<?php
		foreach ($arcList as $v){?>
		<div class="arc_li">
			<div class="arc_title">
				<div class="arc_date">
					<div class="month"><?php echo date('m',$v->creatTime);?>月</div>
					<div class="day"><?php echo date('d',$v->creatTime);?></div>
				</div>
				<div class="arc_txt">
					<h2><a href="/d-<?php echo $v->id;?>.html"><?php echo $v->title;?></a></h2>
					<p><span>作者：tcit123.com</span> 时间：<span><?php echo $v->creatTime();?></span> <span>标签：<?php echo $v->categoryPathUrl();?></p>
				</div>
			</div>
			<div class="arc_content"><?php echo $v->fomartColumnFirstP('content');?><a href="/d-<?php echo $v->id;?>.html">阅读全文</a></div>
		</div>
		<?php }?>
        <div id="pagecount"><?php echo $PagerData['linkhtml'];?></div>
	</div>
	<div class="main_right">
		<div id="search">
			<h2>搜索文章</h2>
			<form action="/" method="get" class="search_form" id="search_form">
				<input type="text" name="keys" id="keys" class="search_input" placeholder="输入关键字搜索" x-webkit-speech="">
				<input type="submit" class="search_btn" value="搜索">
			</form>
		</div>
		<h2>推荐文章</h2>
		<ul class="arc_tj">
			<?php foreach ($tjList as $v){?>
			<li><a href="/d-<?php echo $v->id;?>.html"><?php echo $v->title;?></a></li>
			<?php }?>
		</ul>
	</div>
</div>
<script>
$(function () {
	$("pre").addClass("prettyprint linenums");
	prettyPrint();
})
</script>