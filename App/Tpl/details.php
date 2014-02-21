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
					<p><span>作者：Tcit123.com</span> 时间：<span><?php echo $DataInfo->creatTime();?></span> <span>标签：<a href="tag-CSS3.html">CSS3</a>&nbsp; <a href="tag-HTML5.html">HTML5</a>&nbsp; <a href="tag-%E5%93%8D%E5%BA%94%E5%BC%8F.html">响应式</a>&nbsp; </span> </p>
				</div>
			</div>
			<div class="arc_content"><?php echo $DataInfo->content;?></div>
		</div>
		<div class="page_nav">
          	<div class="pre_page" title="上一篇"><a href="/Home/details/<?php echo $DataInfo->prew->id;?>"><?php echo $DataInfo->prew->title;?></a></div>
            <div class="next_page" title="下一篇"><a href="/Home/details/<?php echo $DataInfo->next->id;?>"><?php echo $DataInfo->next->title;?></a></div>
        </div>
	</div>
	<div class="main_right">
		<div id="search">
			<h2>搜索文章</h2>
			<form action="" method="get" class="search_form" id="search_form">
				<input type="text" name="keys" id="keys" class="search_input" placeholder="输入关键字搜索" x-webkit-speech="">
				<input type="submit" class="search_btn" value="搜索">
			</form>
		</div>
		<h2>推荐文章</h2>
		<ul class="arc_tj">
			<li><a href="view-blog-248.html" title="FullCalendar应用——整合农历节气和节日">FullCalendar应用——...</a></li>
			<li><a href="view-blog-246.html" title="jQuery实现页内查找相关内容">jQuery实现页内查找相关内容</a></li>
			<li><a href="view-blog-244.html" title="PHP+Mysql+jQuery实现地图区域数据统计-展示数据">PHP+Mysql+jQuery...</a></li>
			<li><a href="view-blog-243.html" title="PHP+Mysql+jQuery实现地图区域数据统计-载入数据">PHP+Mysql+jQuery...</a></li>
			<li><a href="view-blog-242.html" title="使用raphael.js绘制中国地图">使用raphael.js绘制中国...</a></li>
			<li><a href="view-blog-241.html" title="使用CSS3和jQuery制作可伸缩的搜索条">使用CSS3和jQuery制作可...</a></li>
			<li><a href="view-blog-238.html" title="使用Javascript控制Cookie关闭大背景">使用Javascript控制Co...</a></li>
			<li><a href="view-blog-236.html" title="Ajax表单提交插件jquery form">Ajax表单提交插件jquery...</a></li>
			<li><a href="view-blog-235.html" title="FullCalendar应用——拖动与实时保存">FullCalendar应用——...</a></li>
			<li><a href="view-blog-232.html" title="FullCalendar应用——读取JSON数据">FullCalendar应用——...</a></li>
		</ul>
		<h2>热门标签</h2>
	</div>
</div>
<script>
$(function () {
	$("pre").addClass("prettyprint linenums");
	prettyPrint();
})
</script>