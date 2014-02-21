<div id="main">
	<div class="main_left">
		<?php
		foreach ($arcList as $v){?>
		<div class="arc_li">
			<div class="arc_title">
				<div class="arc_date">
					<div class="month">2月</div>
					<div class="day">17</div>
				</div>
				<div class="arc_txt">
					<h2><a href="/Home/details/<?php echo $v->id;?>"><?php echo $v->title;?></a></h2>
					<p><span>作者：Tcit123.com</span> 时间：<span><?php echo $v->creatTime();?></span> <span>标签：<a href="tag-CSS3.html">CSS3</a>&nbsp; <a href="tag-HTML5.html">HTML5</a>&nbsp; <a href="tag-%E5%93%8D%E5%BA%94%E5%BC%8F.html">响应式</a>&nbsp; </span> </p>
				</div>
			</div>
			<div class="arc_content"><?php echo $v->fomartColumnFirstP('content');?><a href="/Home/details/<?php echo $v->id;?>">阅读全文</a></div>
		</div>
		<?php }?>
		<div id="pagecount"><span>上一页</span><span class="cur">1</span><span><a href="index-2.html">2</a></span><span><a href="index-3.html">3</a></span><span><a href="index-4.html">4</a></span><span><a href="index-5.html">5</a></span><span><a href="index-6.html">6</a></span><span><a href="index-7.html">7</a></span><span class="dot">...</span><span><a href="index-22.html">22</a></span><span><a href="index-2.html">下一页</a></span></div>
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