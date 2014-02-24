<div id="main">
	<div class="main_left">
		<div class="arc_li">
			<div class="arc_title">
				<div class="arc_date">
					<div class="month"><?php echo date('m',$DataInfo->creatTime);?>月</div>
					<div class="day"><?php echo date('d',$DataInfo->creatTime);?></div>
				</div>
				<div class="arc_txt">
					<h2><a href="/"><?php echo $DataInfo->title;?></a></h2>
					<p><span>作者：Tcit123.com</span> 时间：<span><?php echo $DataInfo->creatTime();?></span> <span>标签：<?php echo $DataInfo->categoryPathUrl();?></p>
				</div>
			</div>
			<div class="arc_content"><?php echo $DataInfo->content;?></div>
		</div>
		<div class="page_nav">
          	<div class="pre_page" title="上一篇"><a href="/d-<?php echo $DataInfo->prew->id;?>.html"><?php echo $DataInfo->prew->title;?></a></div>
            <div class="next_page" title="下一篇"><a href="/d-<?php echo $DataInfo->next->id;?>.html"><?php echo $DataInfo->next->title;?></a></div>
        </div>
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