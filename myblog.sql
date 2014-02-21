-- phpMyAdmin SQL Dump
-- version 2.11.9.2
-- http://www.phpmyadmin.net
--
-- 主机: 127.0.0.1:3306
-- 生成日期: 2014 年 02 月 21 日 09:39
-- 服务器版本: 5.1.28
-- PHP 版本: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `myblog`
--

-- --------------------------------------------------------

--
-- 表的结构 `tcit_category`
--

CREATE TABLE IF NOT EXISTS `tcit_category` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `lmID` int(5) DEFAULT NULL,
  `parentID` int(5) DEFAULT '0',
  `orderNo` int(5) DEFAULT '0',
  `categoryTitle` varchar(50) DEFAULT '未命名',
  `categoryTitle1` varchar(50) DEFAULT NULL,
  `categoryTitle2` varchar(50) DEFAULT NULL,
  `categoryBremark` varchar(50) DEFAULT NULL,
  `categoryName1` text,
  `categoryName2` text,
  `categorySmallPic` varchar(255) DEFAULT NULL,
  `categoryBigPic` varchar(255) DEFAULT NULL,
  `categoryContent1` text,
  `categoryContent2` text,
  `multiPic` text,
  `creatTime` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='类别表' AUTO_INCREMENT=12 ;

--
-- 导出表中的数据 `tcit_category`
--

INSERT INTO `tcit_category` (`id`, `lmID`, `parentID`, `orderNo`, `categoryTitle`, `categoryTitle1`, `categoryTitle2`, `categoryBremark`, `categoryName1`, `categoryName2`, `categorySmallPic`, `categoryBigPic`, `categoryContent1`, `categoryContent2`, `multiPic`, `creatTime`) VALUES
(1, 1, 0, 1, '前端技术', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2014),
(2, 1, 0, 2, '后台编程', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2014),
(3, 1, 0, 3, '数据库技术', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2014),
(4, 1, 0, 4, '软件/工具', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2014),
(5, 1, 0, 5, '生活随笔', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2014),
(6, 1, 2, 5, 'PHP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2014),
(7, 1, 1, 0, 'Html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2014),
(8, 1, 1, 0, 'Css', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2014),
(9, 1, 1, 0, 'Javascript', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2014),
(10, 1, 1, 0, 'Jquery', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2014),
(11, 1, 3, 0, 'Mysql', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2014);

-- --------------------------------------------------------

--
-- 表的结构 `tcit_grant`
--

CREATE TABLE IF NOT EXISTS `tcit_grant` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `value` varchar(20) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 导出表中的数据 `tcit_grant`
--

INSERT INTO `tcit_grant` (`id`, `name`, `value`, `status`) VALUES
(1, 'ALL', '管理员', 1),
(2, 'User', '用户管理', 1),
(3, 'Password', '用户名和密码', 1),
(4, 'Backup', '数据库管理', 1),
(5, 'add', '添加信息', 1);

-- --------------------------------------------------------

--
-- 表的结构 `tcit_member`
--

CREATE TABLE IF NOT EXISTS `tcit_member` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `lmID` int(2) DEFAULT NULL,
  `userID` varchar(20) DEFAULT NULL,
  `realName` varchar(10) DEFAULT NULL,
  `passWord` varchar(50) DEFAULT NULL,
  `mailCode` varchar(4) DEFAULT NULL,
  `grantWord` varchar(50) DEFAULT NULL COMMENT '权限 用“|”分隔多个权限',
  `sex` int(1) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `addr` varchar(80) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `youbian` int(6) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `creatTime` int(10) DEFAULT NULL,
  `loginTime` int(10) DEFAULT NULL,
  `attributeData` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 导出表中的数据 `tcit_member`
--


-- --------------------------------------------------------

--
-- 表的结构 `tcit_menu`
--

CREATE TABLE IF NOT EXISTS `tcit_menu` (
  `id` int(5) NOT NULL AUTO_INCREMENT COMMENT '自动编号',
  `lmID` int(5) NOT NULL COMMENT '栏目ID',
  `lmName` char(20) NOT NULL COMMENT '菜单标题',
  `menuName` char(10) NOT NULL COMMENT '项目标题',
  `orderNo` int(2) DEFAULT NULL COMMENT '排序ID',
  `doLink` varchar(100) DEFAULT NULL COMMENT '功能链接',
  `adminLink` varchar(100) DEFAULT NULL COMMENT '管理链接',
  `grantWord` varchar(10) DEFAULT NULL COMMENT '权限',
  `dataBase` char(10) DEFAULT NULL COMMENT '数据库',
  `usable` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否可用',
  `tcitFields` text,
  `category` varchar(10) DEFAULT '所属类别' COMMENT '所属类别',
  `title` varchar(10) DEFAULT '标题名称' COMMENT '标题名称',
  `title1` varchar(10) DEFAULT 'title1',
  `title2` varchar(10) DEFAULT 'title2',
  `title3` varchar(10) DEFAULT 'title3',
  `title4` varchar(10) DEFAULT 'title4',
  `title5` varchar(10) DEFAULT 'title5',
  `title6` varchar(10) DEFAULT 'title6',
  `title7` varchar(10) DEFAULT 'title7',
  `title8` varchar(10) DEFAULT 'title8',
  `title9` varchar(10) DEFAULT 'title9',
  `title10` varchar(10) DEFAULT 'title10',
  `name1` varchar(10) DEFAULT 'name1',
  `name2` varchar(10) DEFAULT 'name2',
  `name3` varchar(10) DEFAULT 'name3',
  `name4` varchar(10) DEFAULT 'name4',
  `name5` varchar(10) DEFAULT 'name5',
  `content` varchar(10) DEFAULT '内容',
  `content1` varchar(10) DEFAULT 'content1',
  `content2` varchar(10) DEFAULT 'content2',
  `content3` varchar(10) DEFAULT 'content3',
  `content4` varchar(10) DEFAULT 'content4',
  `content5` varchar(10) DEFAULT 'content5',
  `smallpic` varchar(10) DEFAULT '上传小图',
  `bigpic` varchar(10) DEFAULT '上传大图',
  `upload1` varchar(10) DEFAULT 'upload1',
  `upload2` varchar(10) DEFAULT 'upload2',
  `upload3` varchar(10) DEFAULT 'upload3',
  `upload4` varchar(10) DEFAULT 'upload4',
  `upload5` varchar(10) DEFAULT 'upload5',
  `multiPic` varchar(10) DEFAULT NULL,
  `is_tj` varchar(10) DEFAULT NULL,
  `is_gd` varchar(10) DEFAULT NULL,
  `is_ab` varchar(10) DEFAULT NULL,
  `is_cd` varchar(10) DEFAULT NULL,
  `is_ef` varchar(10) DEFAULT NULL,
  `is_gh` varchar(10) DEFAULT NULL,
  `is_jk` varchar(10) DEFAULT NULL,
  `is_mn` varchar(10) DEFAULT NULL,
  `hits` varchar(10) DEFAULT '0',
  `categoryTitle` varchar(10) DEFAULT NULL,
  `categoryTitle1` varchar(10) DEFAULT NULL,
  `categoryTitle2` varchar(10) DEFAULT NULL,
  `categorySmallPic` varchar(10) DEFAULT NULL,
  `categoryBigPic` varchar(10) DEFAULT NULL,
  `categoryBremark` varchar(10) DEFAULT NULL,
  `categoryName1` varchar(10) DEFAULT NULL,
  `categoryName2` varchar(10) DEFAULT NULL,
  `categoryContent1` varchar(10) DEFAULT NULL,
  `categoryContent2` varchar(10) DEFAULT NULL,
  `categoryMultiPic` varchar(10) DEFAULT NULL,
  `uname` varchar(10) DEFAULT NULL,
  `company` varchar(10) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `tel` varchar(10) DEFAULT NULL,
  `fax` varchar(10) DEFAULT NULL,
  `pic` varchar(10) DEFAULT NULL,
  `email` varchar(10) DEFAULT NULL,
  `youbian` varchar(10) DEFAULT NULL,
  `addr` varchar(10) DEFAULT NULL,
  `title1_` varchar(255) DEFAULT NULL,
  `title2_` varchar(255) DEFAULT NULL,
  `title3_` varchar(255) DEFAULT NULL,
  `title4_` varchar(255) DEFAULT NULL,
  `title5_` varchar(255) DEFAULT NULL,
  `title6_` varchar(255) DEFAULT NULL,
  `title7_` varchar(255) DEFAULT NULL,
  `title8_` varchar(255) DEFAULT NULL,
  `title9_` varchar(255) DEFAULT NULL,
  `title10_` varchar(255) DEFAULT NULL,
  `creatTime` varchar(10) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='MENU菜单表' AUTO_INCREMENT=13 ;

--
-- 导出表中的数据 `tcit_menu`
--

INSERT INTO `tcit_menu` (`id`, `lmID`, `lmName`, `menuName`, `orderNo`, `doLink`, `adminLink`, `grantWord`, `dataBase`, `usable`, `tcitFields`, `category`, `title`, `title1`, `title2`, `title3`, `title4`, `title5`, `title6`, `title7`, `title8`, `title9`, `title10`, `name1`, `name2`, `name3`, `name4`, `name5`, `content`, `content1`, `content2`, `content3`, `content4`, `content5`, `smallpic`, `bigpic`, `upload1`, `upload2`, `upload3`, `upload4`, `upload5`, `multiPic`, `is_tj`, `is_gd`, `is_ab`, `is_cd`, `is_ef`, `is_gh`, `is_jk`, `is_mn`, `hits`, `categoryTitle`, `categoryTitle1`, `categoryTitle2`, `categorySmallPic`, `categoryBigPic`, `categoryBremark`, `categoryName1`, `categoryName2`, `categoryContent1`, `categoryContent2`, `categoryMultiPic`, `uname`, `company`, `phone`, `tel`, `fax`, `pic`, `email`, `youbian`, `addr`, `title1_`, `title2_`, `title3_`, `title4_`, `title5_`, `title6_`, `title7_`, `title8_`, `title9_`, `title10_`, `creatTime`) VALUES
(1, 1000, '--------', '--------', 0, '------非管理员请勿修改下列内容------', '', NULL, '', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, 1000, '数据库管理', '恢复数据库', 12, NULL, '', NULL, '', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, 1000, '数据库管理', '备份数据库', 11, 'Core/databaseBackup', '', 'Backup', '', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, 1000, '数据库管理', '系统初始化', 13, NULL, '', NULL, '', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, 1000, '系统信息管理', '添加菜单', 21, 'Core/addMenu', 'Core', 'Core', '', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, 1000, '系统信息管理', '权限字管理', 25, 'Core/grantList', '', 'Grant', '', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, 1000, '系统信息管理', '用户权限管理', 24, NULL, '', NULL, '', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(8, 1000, '系统信息管理', '系统信息查看', 26, 'Core/system', '', 'System', '', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(9, 1000, '系统信息管理', '用户管理', 23, 'Core/userList', '', 'User', '', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(10, 1000, '系统信息管理', '修改密码', 22, 'Core/changePwd', '', 'Password', '', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(11, 1, '文章管理', '文章类别', 2, 'Category', '', 'add', 'category', 1, 'creatTime|categoryTitle', '所属类别', '标题名称', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '详细内容', '', '', '', '', '', '上传图片', '上传大图', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '浏览次数', '类别名称', '', '', '', '', '', '', '', '', '', '', '姓名', '公司名称', '手机号', '电话号码', '传真号码', '附加图片', '电子邮件', '邮编', '地址', '', '', '', '', '', '', '', '', '', '', '创建时间'),
(12, 1, '文章管理', '添加文章', 1, 'News/add', 'News', 'add', 'news', 1, 'title|content|category|is_tj|is_gd|creatTime', '所属类别', '标题名称', '', '', '', '', '', '', '', '', '', '', '简介', '', '', '', '', '详细内容', '', '', '', '', '', '上传图片', '上传大图', '', '', '', '', '', '', '推荐', '固顶', '', '', '', '', '', '', '浏览次数', '类别名称', '', '', '', '', '', '', '', '', '', '', '姓名', '公司名称', '手机号', '电话号码', '传真号码', '附加图片', '电子邮件', '邮编', '地址', '', '', '', '', '', '', '', '', '', '', '创建时间');

-- --------------------------------------------------------

--
-- 表的结构 `tcit_message`
--

CREATE TABLE IF NOT EXISTS `tcit_message` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `lmID` int(2) DEFAULT '0' COMMENT '栏目ID',
  `newsID` int(5) DEFAULT '0' COMMENT '所属文章ID',
  `msgID` int(11) DEFAULT '0',
  `uname` varchar(20) DEFAULT NULL,
  `company` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `pic` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `youbian` int(6) DEFAULT NULL,
  `addr` varchar(100) DEFAULT NULL,
  `title` varchar(20) DEFAULT NULL,
  `content` text,
  `creatTime` int(10) DEFAULT NULL,
  `reContent` text,
  `reTime` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 导出表中的数据 `tcit_message`
--


-- --------------------------------------------------------

--
-- 表的结构 `tcit_news`
--

CREATE TABLE IF NOT EXISTS `tcit_news` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `lmID` int(2) NOT NULL,
  `categoryID` int(2) DEFAULT NULL,
  `categorysID` int(2) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `title1` varchar(100) DEFAULT NULL,
  `title2` varchar(100) DEFAULT NULL,
  `title3` varchar(100) DEFAULT NULL,
  `title4` varchar(100) DEFAULT NULL,
  `title5` varchar(100) DEFAULT NULL,
  `title6` varchar(100) DEFAULT NULL,
  `title7` varchar(100) DEFAULT NULL,
  `title8` varchar(100) DEFAULT NULL,
  `title9` varchar(100) DEFAULT NULL,
  `title10` varchar(100) DEFAULT NULL,
  `name1` text,
  `name2` text,
  `name3` text,
  `name4` text,
  `name5` text,
  `content` text,
  `content1` text,
  `content2` text,
  `content3` text,
  `content4` text,
  `content5` text,
  `smallpic` varchar(50) DEFAULT NULL,
  `bigpic` varchar(50) DEFAULT NULL,
  `upload1` varchar(50) DEFAULT NULL,
  `upload2` varchar(50) DEFAULT NULL,
  `upload3` varchar(50) DEFAULT NULL,
  `upload4` varchar(50) DEFAULT NULL,
  `upload5` varchar(50) DEFAULT NULL,
  `multiPic` text,
  `is_tj` tinyint(1) DEFAULT NULL,
  `is_gd` tinyint(1) DEFAULT NULL,
  `is_ab` tinyint(1) DEFAULT NULL,
  `is_cd` tinyint(1) DEFAULT NULL,
  `is_ef` tinyint(1) DEFAULT NULL,
  `is_gh` tinyint(1) DEFAULT NULL,
  `is_jk` tinyint(1) DEFAULT NULL,
  `is_mn` tinyint(1) DEFAULT NULL,
  `hits` int(5) NOT NULL DEFAULT '0',
  `city` varchar(20) DEFAULT NULL,
  `area` varchar(20) DEFAULT NULL,
  `likeNews` int(5) DEFAULT NULL,
  `creatTime` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 导出表中的数据 `tcit_news`
--

INSERT INTO `tcit_news` (`id`, `lmID`, `categoryID`, `categorysID`, `title`, `title1`, `title2`, `title3`, `title4`, `title5`, `title6`, `title7`, `title8`, `title9`, `title10`, `name1`, `name2`, `name3`, `name4`, `name5`, `content`, `content1`, `content2`, `content3`, `content4`, `content5`, `smallpic`, `bigpic`, `upload1`, `upload2`, `upload3`, `upload4`, `upload5`, `multiPic`, `is_tj`, `is_gd`, `is_ab`, `is_cd`, `is_ef`, `is_gh`, `is_jk`, `is_mn`, `hits`, `city`, `area`, `likeNews`, `creatTime`) VALUES
(1, 1, 8, NULL, '最全的css hack(ie6-9,firefox,chrome,opera,safari)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '&lt;p&gt;\r\n	　　在这个浏览器百花争鸣的时代，作为前端开发的我们为了我们漂亮的设计能适应各个浏览器可为煞费苦心，主要体现在javascript和css上面。javascript我这次就不谈了，先说说css。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	　　为了适应不同浏览器不同的版本（版本主要就ie来说），ie这朵奇葩现在我们要兼容6-9，它的10也快出来了。。。在ie下我们可以写条件注释来区分ie和其他浏览器，以及ie的版本，这些请大家自行google。这篇文章主要讨论的是css hack。下面废话补多说了，直接上代码。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;pre class=&quot;prettyprint lang-css&quot;&gt;.className\r\n{   \r\nwidth:300px;   \r\nheight:300px;   \r\nbackground-color:blue;        /*firefox*/\r\nbackground-color:red9;      /*all ie*/\r\nbackground-color:yellow;  /*ie8*/\r\n+background-color:pink;      /*ie7*/\r\n_background-color:orange;  /*ie6*/\r\n}  \r\n:root #test { background-color:purple9; }  /*ie9*/\r\n@media all and (min-width:0px){ #test {background-color:black;} }  /*opera*/\r\n@media screen and (-webkit-min-device-pixel-ratio:0){ #test {background-color:gray;} }  /*chrome and safari*/&lt;/pre&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:#E53333;&quot;&gt;下面是说明：&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	background-color:blue; 各个浏览器都认识，这里给firefox用；\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	background-color:red9;9所有的ie浏览器可识别；\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	background-color:yellow;  是留给ie8的，但笔者测试，发现最新版opera也认识，汗。。。不过且慢，后面自有hack写了给opera认的，所以，我们就认为是给ie8留的；\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	+background-color:pink; + ie7定了；\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	background-color:orange; _专门留给神奇的ie6；\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	:root #test { background-color:purple9; } :root是给ie9的，网上流传了个版本是 :root #test { background-color:purple;}，新版opera也认识，所以经笔者反复验证最终ie9特有的为:root 选择符 {属性9;}\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	@media all and (min-width:0px){ #test {background-color:black;} } 这个是老是跟ie抢着认的神奇的opera，必须加个,不然firefox，chrome，safari也都认识。。。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	@media screen and (-webkit-min-device-pixel-ratio:0){ #test {background-color:gray;} }最后这个是浏览器新贵chrome和safari的。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	　　特别注意以上顺序是不可以改变的。css hack虽然可以解决个浏览器之间css显示的差异问题，但是毕竟不符合W3C规范，我们平时写css最好是按照标准来，这样对我们以后维护也是大有好处的，实在不行再用。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1392878614),
(2, 1, 6, NULL, 'WEB开发中常用的正则表达式', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '&lt;p&gt;\r\n	　　在计算机科学中，正则表达式用来描述或者匹配一系列符合某个句法规则的字符串的单个字符串。在WEB开发中，正则表达式通常用来检测、查找替换某些符合规则的字符串，如检测用户输入E-mai格式是否正确，采集符合规则的页面内容等等。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	　　今天我们分别用PHP和Javscript向大家介绍WEB开发中最常用最实用的正则表达式及其用法，正则表达式是一门学科，不可能使用一篇文章来讲解完，理论的东西网上很多，有兴趣的同学可以搜一大把。不过你也许没必要去埋头学习琢磨不透的正则表达式，看本文和实例给您呈现常用、实用的正则表达式。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;PHP常用表达式用法&lt;/strong&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	　　1.匹配正整数：/^[1-9]d*$/\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	　　2.匹配非负整数（正整数+0）：/^d+$/\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	　　3.匹配中文：/^[x{4e00}-x{9fa5}]+$/u\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	　　4.匹配Email：/^w+([-+.]w+)*@w+([-.]w+)*.w+([-.]w+)*/\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	　　5.匹配网址URL：(((f|ht){1}(tp|tps)://)[-a-zA-Z0-9@:%_+.~#?&amp;amp;//=]+)\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	　　6.匹配字母开头，5-16字符，字母数字下划线：/^[a-zA-Z][a-zA-Z0-9_]{4,15}$/\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	　　7.匹配数字,字母,下划线,中文：/^[x{4e00}-x{9fa5}A-Za-z0-9_]+$/u\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	　　8.匹配中国邮政编码：/^[1-9]d{5}$/\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	　　9.匹配IP地址：/b(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?).){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)b/\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	　　10.匹配中国大陆身份证：/^[1-9]d{5}[1-9]d{3}((0d)|(1[0-2]))(([0|1|2]d)|3[0-1])d{3}(d|x|X)$/\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	　　PHP正则验证字符串方法举例：\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;pre class=&quot;prettyprint lang-php&quot;&gt;$str = &quot;中文啊&quot;; \r\n$preg = &quot;/^[x{4e00}-x{9fa5}]+$/u&quot;; //匹配中文 \r\nif(preg_match($preg,$str,$arr)){ \r\n     $msg = ''匹配成功！''; \r\n}else{ \r\n     $msg = ''匹配失败！''; \r\n} \r\necho $msg; &lt;/pre&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Javascript常用表达式用法&lt;/strong&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	　　1.匹配正整数：/^[0-9]*[1-9][0-9]*$/\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	　　2.匹配非负整数（正整数+0）：/^d+$/\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	　　3.匹配中文：/^[u4e00-u9fa5]/\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	　　4.匹配Email：/^w+([-+.]w+)*@w+([-.]w+)*.w+([-.]w+)*/\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	　　5.匹配网址URL：/^(f|ht){1}(tp|tps)://([w-]+.)+[w-]+(/[w- ./?%&amp;amp;=]*)?/\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	　　6.匹配字母开头，5-16字符，字母数字下划线：/^[a-zA-Z][a-zA-Z0-9_]{4,15}$/\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	　　7.匹配数字,字母,下划线,中文：/^[u4e00-u9fa5A-Za-z0-9_]+$/\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	　　8.匹配中国邮政编码：/^[1-9]d{5}$/\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	　　9.匹配IP地址：/b(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?).){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)b/\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	　　10.匹配中国大陆身份证：/^[1-9]d{5}[1-9]d{3}((0d)|(1[0-2]))(([0|1|2]d)|3[0-1])d{3}(d|x|X)$/\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	　　Javascript正则验证字符串方法举例：\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;pre class=&quot;prettyprint lang-js&quot;&gt;var str = &quot;abc@126.com&quot;; \r\nvar preg = /^w+([-+.]w+)*@w+([-.]w+)*.w+([-.]w+)*/; //匹配Email \r\nif(preg.test(str)){ \r\n    var msg = &quot;匹配成功&quot;; \r\n}else{ \r\n    var msg = &quot;匹配失败！&quot;; \r\n} \r\nalert(msg); &lt;/pre&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1392961120),
(3, 1, 9, NULL, '正则表达式元字符', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '&lt;p&gt;\r\n	　　正则表达式语言由两种基本字符类型组成：原义（正常）文本字符和元字符。元字符使正则表达式具有处理能力。元字符既可以是放在 [] 中的任意单个字符（如 [a] 表示匹配单个小写字符 a ），也可以是字符序列（如 [a-d] 表示匹配 a 、 b 、 c 、 d 之间的任意一个字符，而 w 表示任意英文字母和数字及下划线），下面是一些常见的元字符： &amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	. &amp;nbsp; &amp;nbsp;匹配除 n 以外的任何字符（注意元字符是小数点）。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	[abcde] &amp;nbsp;匹配 abcde 之中的任意一个字符\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	[a-h] &amp;nbsp; 匹配 a 到 h 之间的任意一个字符\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	[^fgh] &amp;nbsp;不与 fgh 之中的任意一个字符匹配\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	w &amp;nbsp;匹配大小写英文字符及数字 0 到 9 之间的任意一个及下划线，相当于 [a-zA-Z0-9_]\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	W &amp;nbsp;不匹配大小写英文字符及数字 0 到 9 之间的任意一个，相当于 [^a-zA-Z0-9_]\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	s &amp;nbsp;匹配任何空白字符，相当于 [ fnrtv]\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	S &amp;nbsp;匹配任何非空白字符，相当于 [^s]\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	d 匹配任何 0 到 9 之间的单个数字，相当于 [0-9]\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	D &amp;nbsp;不匹配任何 0 到 9 之间的单个数字，相当于 [^0-9]\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	[u4e00-u9fa5] &amp;nbsp;匹配任意单个汉字（这里用的是 Unicode 编码表示汉字的 )\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	正则表达式限定符\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	上面的元字符都是针对单个字符匹配的，要想同时匹配多个字符的话，还需要借助限定符。下面是一些常见的限定符 ( 下表中 n 和 m 都是表示整数，并且 0&lt;n&lt;m) ：&lt;=&quot;&quot; p=&quot;&quot;&gt;&lt;/n&lt;m)&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	* &amp;nbsp;匹配 0 到多个元字符，相当于 {0,}\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	? &amp;nbsp;匹配 0 到 1 个元字符，相当于 {0,1}\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	{n} &amp;nbsp;匹配 n 个元字符\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	{n,} &amp;nbsp;匹配至少 n 个元字符\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	{n,m} &amp;nbsp;匹配 n 到 m 个元字符\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	+ &amp;nbsp;匹配至少 1 个元字符，相当于 {1,}\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	b &amp;nbsp;匹配单词边界\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	^ &amp;nbsp;字符串必须以指定的字符开始\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	$ &amp;nbsp;字符串必须以指定的字符结束\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	说明：\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	（ 1 ）由于在正则表达式中“  ”、“ ? ”、“ * ”、“ ^ ”、“ $ ”、“ + ”、“（”、“）”、“ | ”、“ { ”、“ [ ”等字符已经具有一定特殊意义，如果需要用它们的原始意义，则应该对它进行转义，例如希望在字符串中至少有一个“  ”，那么正则表达式应该这么写： \\+ 。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	（ 2 ）可以将多个元字符或者原义文本字符用括号括起来形成一个分组，比如 ^(13)[4-9]d{8}$ 表示任意以 13 开头的移动手机号码。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	（ 3 ）另外对于中文字符的匹配是采用其对应的 Unicode 编码来匹配的，对于单个 Unicode 字符，如 u4e00 表示汉字“一”， u9fa5 表示汉字“龥”，在 Unicode 编码中这分别是所能表示的汉字的第一个和最后一个的 Unicode 编码，在 Unicode 编码中能表示 20901 个汉字。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	（ 4 ）关于 b 的用法，它代表单词的开始或者结尾，以字符串“ 123a 345b 456 789d ”作为示例字符串，如果正则表达式是“ bd{3}b ”，则仅能匹配 456 。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	（ 5 ）可以使用“ | ”来表示或的关系，例如 [z|j|q] 表示匹配 z 、 j 、 q 之中的任意一个字母。\r\n&lt;/p&gt;', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1392965488),
(4, 1, 11, NULL, 'MySQL索引类型一览', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '&lt;p&gt;\r\n	　　索引是快速搜索的关键。MySQL索引的建立对于MySQL的高效运行是很重要的。下面介绍几种常见的MySQL索引类型。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	　　在数据库表中，对字段建立索引可以大大提高查询速度。假如我们创建了一个 mytable表：\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	　　CREATE TABLE mytable( &amp;nbsp; ID INT NOT NULL, &amp;nbsp; &amp;nbsp;username VARCHAR(16) NOT NULL &amp;nbsp;); &amp;nbsp; 我们随机向里面插入了10000条记录，其中有一条：5555, admin。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	　　在查找username=&quot;admin&quot;的记录 SELECT * FROM mytable WHERE username=''admin'';时，如果在username上已经建立了索引，MySQL无须任何扫描，即准确可找到该记录。相反，MySQL会扫描所有记录，即要查询10000条记录。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	　　索引分单列索引和组合索引。单列索引，即一个索引只包含单个列，一个表可以有多个单列索引，但这不是组合索引。组合索引，即一个索包含多个列。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	　　MySQL索引类型包括：\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	（1）普通索引\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	这是最基本的索引，它没有任何限制。它有以下几种创建方式：\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	◆创建索引\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;CREATE INDEX indexName ON mytable(username(length)); 如果是CHAR，VARCHAR类型，length可以小于字段实际长度；如果是BLOB和TEXT类型，必须指定 length，下同。&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	◆修改表结构\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;ALTER mytable ADD INDEX [indexName] ON (username(length)) ◆创建表的时候直接指定\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	CREATE TABLE mytable( &amp;nbsp; ID INT NOT NULL, &amp;nbsp; &amp;nbsp;username VARCHAR(16) NOT NULL, &amp;nbsp; INDEX [indexName] (username(length)) &amp;nbsp; ); &amp;nbsp;删除索引的语法：\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	DROP INDEX [indexName] ON mytable;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	（2）唯一索引\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	它与前面的普通索引类似，不同的就是：索引列的值必须唯一，但允许有空值。如果是组合索引，则列值的组合必须唯一。它有以下几种创建方式：\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	◆创建索引\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	CREATE UNIQUE INDEX indexName ON mytable(username(length)) ◆修改表结构\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	ALTER mytable ADD UNIQUE [indexName] ON (username(length)) ◆创建表的时候直接指定\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	CREATE TABLE mytable( &amp;nbsp; ID INT NOT NULL, &amp;nbsp; &amp;nbsp;username VARCHAR(16) NOT NULL, &amp;nbsp; UNIQUE [indexName] (username(length)) &amp;nbsp; );\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	（3）主键索引\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	它是一种特殊的唯一索引，不允许有空值。一般是在建表的时候同时创建主键索引：\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	CREATE TABLE mytable( &amp;nbsp; ID INT NOT NULL, &amp;nbsp; &amp;nbsp;username VARCHAR(16) NOT NULL, &amp;nbsp; PRIMARY KEY(ID) &amp;nbsp; ); &amp;nbsp;当然也可以用 ALTER 命令。记住：一个表只能有一个主键。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	（4）组合索引\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	为了形象地对比单列索引和组合索引，为表添加多个字段：\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	CREATE TABLE mytable( &amp;nbsp; ID INT NOT NULL, &amp;nbsp; &amp;nbsp;username VARCHAR(16) NOT NULL, &amp;nbsp; city VARCHAR(50) NOT NULL, &amp;nbsp; age INT NOT NULL &amp;nbsp;); &amp;nbsp;为了进一步榨取MySQL的效率，就要考虑建立组合索引。就是将 name, city, age建到一个索引里：\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	ALTER TABLE mytable ADD INDEX name_city_age (name(10),city,age); 建表时，usernname长度为 16，这里用 10。这是因为一般情况下名字的长度不会超过10，这样会加速索引查询速度，还会减少索引文件的大小，提高INSERT的更新速度。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	如果分别在 usernname，city，age上建立单列索引，让该表有3个单列索引，查询时和上述的组合索引效率也会大不一样，远远低于我们的组合索引。虽然此时有了三个索引，但MySQL只能用到其中的那个它认为似乎是最有效率的单列索引。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	建立这样的组合索引，其实是相当于分别建立了下面三组组合索引：\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	usernname,city,age &amp;nbsp; usernname,city &amp;nbsp; usernname &amp;nbsp;为什么没有 city，age这样的组合索引呢？这是因为MySQL组合索引“最左前缀”的结果。简单的理解就是只从最左面的开始组合。并不是只要包含这三列的查询都会用到该组合索引，下面的几个SQL就会用到这个组合索引：\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	SELECT * FROM mytable WHREE username=&quot;admin&quot; AND city=&quot;郑州&quot; &amp;nbsp;SELECT * FROM mytable WHREE username=&quot;admin&quot; 而下面几个则不会用到：\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	SELECT * FROM mytable WHREE age=20 AND city=&quot;郑州&quot; &amp;nbsp;SELECT * FROM mytable WHREE city=&quot;郑州&quot;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	（5）建立索引的时机\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	到这里我们已经学会了建立索引，那么我们需要在什么情况下建立索引呢？一般来说，在WHERE和JOIN中出现的列需要建立索引，但也不完全如此，因为MySQL只对&amp;lt;，&amp;lt;=，=，&amp;gt;，&amp;gt;=，BETWEEN，IN，以及某些时候的LIKE才会使用索引。例如：\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	SELECT t.Name &amp;nbsp;FROM mytable t LEFT JOIN mytable m &amp;nbsp; &amp;nbsp;ON t.Name=m.username WHERE m.age=20 AND m.city=''郑州'' 此时就需要对city和age建立索引，由于mytable表的userame也出现在了JOIN子句中，也有对它建立索引的必要。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	刚才提到只有某些时候的LIKE才需建立索引。因为在以通配符%和_开头作查询时，MySQL不会使用索引。例如下句会使用索引：\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	SELECT * FROM mytable WHERE username like''admin%'' 而下句就不会使用：\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	SELECT * FROM mytable WHEREt Name like''%admin'' 因此，在使用LIKE时应注意以上的区别。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	（6）索引的不足之处\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	上面都在说使用索引的好处，但过多的使用索引将会造成滥用。因此索引也会有它的缺点：\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	◆虽然索引大大提高了查询速度，同时却会降低更新表的速度，如对表进行INSERT、UPDATE和DELETE。因为更新表时，MySQL不仅要保存数据，还要保存一下索引文件。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	◆建立索引会占用磁盘空间的索引文件。一般情况这个问题不太严重，但如果你在一个大表上创建了多种组合索引，索引文件的会膨胀很快。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	索引只是提高效率的一个因素，如果你的MySQL有大数据量的表，就需要花时间研究建立最优秀的索引，或优化查询语句。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	（7）使用索引的注意事项\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	使用索引时，有以下一些技巧和注意事项：\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	◆索引不会包含有NULL值的列\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	只要列中包含有NULL值都将不会被包含在索引中，复合索引中只要有一列含有NULL值，那么这一列对于此复合索引就是无效的。所以我们在数据库设计时不要让字段的默认值为NULL。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	◆使用短索引\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	对串列进行索引，如果可能应该指定一个前缀长度。例如，如果有一个CHAR(255)的列，如果在前10个或20个字符内，多数值是惟一的，那么就不要对整个列进行索引。短索引不仅可以提高查询速度而且可以节省磁盘空间和I/O操作。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	◆索引列排序\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	MySQL查询只使用一个索引，因此如果where子句中已经使用了索引的话，那么order by中的列是不会使用索引的。因此数据库默认排序可以符合要求的情况下不要使用排序操作；尽量不要包含多个列的排序，如果需要最好给这些列创建复合索引。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	◆like语句操作\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	一般情况下不鼓励使用like操作，如果非使用不可，如何使用也是一个问题。like “%aaa%” 不会使用索引而like “aaa%”可以使用索引。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	◆不要在列上进行运算\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	select * from users where YEAR(adddate)&amp;lt;2007; 将在每个行上进行运算，这将导致索引失效而进行全表扫描，因此我们可以改成\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	select * from users where adddate&amp;lt;‘2007-01-01’;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	◆不使用NOT IN和&amp;lt;&amp;gt;操作\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	以上，就对其中MySQL索引类型进行了介绍。\r\n&lt;/p&gt;', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1392972525),
(6, 1, 7, NULL, '测试信息', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '&lt;img src=&quot;/Uploads/kindEditor/201402/20140221_170918_2886.jpg&quot; alt=&quot;&quot; /&gt;', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1392973741),
(5, 1, 6, NULL, '采用PHP函数uniqid生成一个唯一的ID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '&lt;p&gt;\r\n	　　生成唯一ID的应用场景非常普遍，如临时缓存文件名称，临时变量，临时安全码等，uniqid()函数基于以微秒计的当前时间，生成一个唯一的 ID。由于生成唯一ID与微秒时间关联，因此ID的唯一性非常可靠。生成的唯一ID默认返回的字符串有 13 个字符串长，如果不定义唯一ID的前缀，最多可返回23个字符串长，如果再结合md5()函数，生成的唯一ID可靠性将更高，这种生成的ID比随机性的ID 最大优点在于可实现排序，特别是一些需要存储在数据库中的值。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;一，函数原型&lt;/strong&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	　　string uniqid ( [string prefix [, bool more_entropy]] )\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	　　可定义唯一ID的前缀与长度\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;二，版本兼容&lt;/strong&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	　　PHP 3, PHP 4, PHP 5\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;pre class=&quot;prettyprint lang-php&quot;&gt;echo uniqid();&lt;/pre&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	输出：&lt;span style=&quot;font-family:''Microsoft Yahei'', 宋体;font-size:13px;line-height:normal;&quot;&gt;530716fa6dc2a&lt;/span&gt; \r\n&lt;/p&gt;', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1392973258);

-- --------------------------------------------------------

--
-- 表的结构 `tcit_user`
--

CREATE TABLE IF NOT EXISTS `tcit_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id主键',
  `userID` varchar(50) NOT NULL COMMENT '用户名',
  `passWord` varchar(50) NOT NULL COMMENT '密码',
  `grantWord` text COMMENT '权限',
  `status` int(1) DEFAULT '0' COMMENT '状态 0禁用 1正常',
  `creatTime` int(10) DEFAULT NULL COMMENT '时间',
  `loginTime` int(10) DEFAULT NULL COMMENT '时间戳',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='用户表' AUTO_INCREMENT=3 ;

--
-- 导出表中的数据 `tcit_user`
--

INSERT INTO `tcit_user` (`id`, `userID`, `passWord`, `grantWord`, `status`, `creatTime`, `loginTime`) VALUES
(1, 'cloud', '85b789dd35ccd43710c905d097732af1', 'ALL', 1, 1391998314, NULL),
(2, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'ALL', 1, 1391837264, NULL);
