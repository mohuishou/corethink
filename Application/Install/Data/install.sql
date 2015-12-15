# ************************************************************
# Sequel Pro SQL dump
# Version 4499
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.9)
# Database: corethink_c3
# Generation Time: 2015-12-11 13:43:16 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table ct_admin_access
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ct_admin_access`;

CREATE TABLE `ct_admin_access` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `group` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '管理员用户组',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='后台管理员与用户组对应关系表';

LOCK TABLES `ct_admin_access` WRITE;
/*!40000 ALTER TABLE `ct_admin_access` DISABLE KEYS */;

INSERT INTO `ct_admin_access` (`id`, `uid`, `group`, `create_time`, `update_time`, `sort`, `status`)
VALUES
	(1,1,1,1438651748,1438651748,0,1);

/*!40000 ALTER TABLE `ct_admin_access` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ct_admin_addon
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ct_admin_addon`;

CREATE TABLE `ct_admin_addon` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '插件名或标识',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '中文名',
  `description` text NOT NULL COMMENT '插件描述',
  `config` text COMMENT '配置',
  `author` varchar(32) NOT NULL DEFAULT '' COMMENT '作者',
  `version` varchar(8) NOT NULL DEFAULT '' COMMENT '版本号',
  `adminlist` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否有后台列表',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '插件类型',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '安装时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `sort` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='插件表';

LOCK TABLES `ct_admin_addon` WRITE;
/*!40000 ALTER TABLE `ct_admin_addon` DISABLE KEYS */;

INSERT INTO `ct_admin_addon` (`id`, `name`, `title`, `description`, `config`, `author`, `version`, `adminlist`, `type`, `create_time`, `update_time`, `sort`, `status`)
VALUES
	(1,'ReturnTop','返回顶部','返回顶部','{\"status\":\"1\",\"theme\":\"rocket\",\"customer\":\"\",\"case\":\"\",\"qq\":\"\",\"weibo\":\"\"}','CoreThink','1.1.0',0,0,1449837775,1449837775,0,1),
	(2,'BaiduShare','百度分享','用户将网站内容分享到第三方网站','{\"openbutton\":\"0\",\"buttonlist\":[\"mshare\",\"qzone\",\"tsina\",\"renren\",\"tqq\",\"tieba\"],\"button_size\":\"1\",\"openslide\":\"0\",\"slide_position\":\"right\",\"slide_color\":\"0\",\"openimg\":\"0\",\"imglist\":[\"mshare\",\"qzone\",\"tsina\",\"renren\",\"tqq\",\"tieba\"],\"img_size\":\"1\",\"openselect\":\"0\",\"selectlist\":[\"mshare\",\"qzone\",\"tsina\",\"renren\",\"tqq\",\"tieba\"]}','CoreThink','1.1.0',0,0,1449837778,1449837778,0,1),
	(3,'SocialComment','通用社交化评论','集成了各种社交化评论插件，轻松集成到系统中。','{\"status\":\"1\",\"comment_type\":\"1\",\"comment_short_name_duoshuo\":\"\",\"comment_form_pos_duoshuo\":\"buttom\",\"comment_data_list_duoshuo\":\"10\",\"comment_data_order_duoshuo\":\"asc\",\"appid\":\"\",\"conf\":\"\",\"comment_uid_youyan\":\"90040\"}','CoreThink','1.1.0',0,0,1449837781,1449837781,0,1);

/*!40000 ALTER TABLE `ct_admin_addon` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ct_admin_config
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ct_admin_config`;

CREATE TABLE `ct_admin_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '配置ID',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '配置标题',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '配置名称',
  `value` text NOT NULL COMMENT '配置值',
  `group` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '配置分组',
  `type` varchar(16) NOT NULL DEFAULT '' COMMENT '配置类型',
  `options` varchar(255) NOT NULL DEFAULT '' COMMENT '配置额外值',
  `tip` varchar(100) NOT NULL DEFAULT '' COMMENT '配置说明',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='系统配置表';

LOCK TABLES `ct_admin_config` WRITE;
/*!40000 ALTER TABLE `ct_admin_config` DISABLE KEYS */;

INSERT INTO `ct_admin_config` (`id`, `title`, `name`, `value`, `group`, `type`, `options`, `tip`, `create_time`, `update_time`, `sort`, `status`)
VALUES
	(1,'站点开关','TOGGLE_WEB_SITE','1',1,'select','0:关闭\r\n1:开启','站点关闭后将不能访问',1378898976,1406992386,1,1),
	(2,'网站标题','WEB_SITE_TITLE','CoreThink',1,'text','','网站标题前台显示标题',1378898976,1379235274,2,1),
	(3,'网站口号','WEB_SITE_SLOGAN','做最好的互联网+信息化服务解决方案提供商',1,'text','','网站口号、宣传标语、一句话介绍',1434081649,1434081649,3,1),
	(4,'网站LOGO','WEB_SITE_LOGO','',1,'picture','','网站LOGO',1407003397,1407004692,4,1),
	(5,'网站描述','WEB_SITE_DESCRIPTION','CoreThink是一套基于统一核心的通用互联网+信息化服务解决方案，追求简单、高效、卓越。可轻松实现支持多终端的WEB产品快速搭建、部署、上线。系统功能采用模块化、组件化、插件化等低耦合设计，应用商城拥有丰富的功能模块、插件、主题，便于用户灵活扩展和二次开发。',1,'textarea','','网站搜索引擎描述',1378898976,1379235841,5,1),
	(6,'网站关键字','WEB_SITE_KEYWORD','南京科斯克网络科技、CoreThink',1,'textarea','','网站搜索引擎关键字',1378898976,1381390100,6,1),
	(7,'版权信息','WEB_SITE_COPYRIGHT','Copyright © 南京科斯克网络科技有限公司 All rights reserved.',1,'text','','设置在网站底部显示的版权信息，如“版权所有 © 2014-2015 科斯克网络科技”',1406991855,1406992583,7,1),
	(8,'网站备案号','WEB_SITE_ICP','苏ICP备1502009-2号',1,'text','','设置在网站底部显示的备案号，如“苏ICP备1502009-2号\"',1378900335,1415983236,8,1),
	(9,'站点统计','WEB_SITE_STATISTICS','',1,'textarea','','支持百度、Google、cnzz等所有Javascript的统计代码',1378900335,1415983236,9,1),
	(10,'首页地址','INDEX_URL','',1,'text','','可以通过配置此项自定义系统首页的地址，比如：http://www.corethink.cn/user/index.html',1415983236,1415983236,10,1),
	(11,'文件上传大小','UPLOAD_FILE_SIZE','10',2,'num','','文件上传大小单位：MB',1428681031,1428681031,1,1),
	(12,'图片上传大小','UPLOAD_IMAGE_SIZE','2',2,'num','','图片上传大小单位：MB',1428681071,1428681071,2,1),
	(13,'分页数量','ADMIN_PAGE_ROWS','10',2,'num','','分页时每页的记录数',1434019462,1434019481,3,1),
	(14,'后台主题','ADMIN_THEME','default',2,'select','default:默认主题\rdarkblue:深蓝意境\r\nblue:蓝色理想\r\ngreen:绿色生活','后台界面主题',1436678171,1436690570,4,1),
	(15,'开发模式','DEVELOP_MODE','1',3,'select','1:开启\r\n0:关闭','开发模式下会显示菜单管理、配置管理、数据字典等开发者工具',1432393583,1432393583,1,1),
	(16,'是否显示页面Trace','SHOW_PAGE_TRACE','0',3,'select','0:关闭\r\n1:开启','是否显示页面Trace信息',1387165685,1387165685,2,1),
	(17,'系统加密KEY','AUTH_KEY','r#m&H=bfuO^#wh`KZ/<Pk/M=:;sOI;@Zd!.>W$seNF%B{*$*^-KoJ>pVld,hT+|R',3,'textarea','','轻易不要修改此项，否则容易造成用户无法登录；如要修改，务必备份原key',1438647773,1438647815,3,1),
	(18,'URL模式','URL_MODEL','3',4,'select','0:普通模式\r\n1:PATHINFO模式\r\n2:REWRITE模式\r\n3:兼容模式','',1438423248,1438423248,1,1),
	(19,'静态资源版本标识','STATIC_VERSION','20150903',4,'text','','静态资源版本标识可以防止服务器缓存',1438564784,1438564784,2,1),
	(20,'静态文件独立域名','STATIC_DOMAIN','',4,'text','','静态文件独立域名一般用于在用户无感知的情况下平和的将网站图片自动存储到腾讯万象优图、又拍云等第三方服务。',1438564784,1438564784,3,1),
	(21,'CDN静态资源列表','CDN_RESOURCE_LIST','',4,'textarea','','配置此项后系统自带的jquery等类库将不会再重复加载',1438564784,1438564784,4,1),
	(22,'配置分组','CONFIG_GROUP_LIST','1:基本\r\n2:系统\r\n3:开发\r\n4:部署\r\n5:授权',2,'array','','配置分组',1379228036,1426930700,5,1),
	(23,'官网账号','CT_USERNAME','trial',5,'text','','官网登陆账号（支持用户名、邮箱、手机号）',1438647815,1438647815,1,1),
	(24,'官网密码','CT_PASSWORD','trial',5,'text','','官网密码',1438647815,1438647815,2,1),
	(25,'密钥','CT_SN','',5,'textarea','','密钥请通过登陆http://corethink.cn至个人中心获取',1438647815,1438647815,3,1);

/*!40000 ALTER TABLE `ct_admin_config` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ct_admin_group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ct_admin_group`;

CREATE TABLE `ct_admin_group` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '部门ID',
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上级部门ID',
  `title` varchar(31) NOT NULL DEFAULT '' COMMENT '部门名称',
  `icon` varchar(31) NOT NULL DEFAULT '' COMMENT '图标',
  `menu_auth` text NOT NULL COMMENT '权限列表',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序（同级有效）',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='部门信息表';

LOCK TABLES `ct_admin_group` WRITE;
/*!40000 ALTER TABLE `ct_admin_group` DISABLE KEYS */;

INSERT INTO `ct_admin_group` (`id`, `pid`, `title`, `icon`, `menu_auth`, `create_time`, `update_time`, `sort`, `status`)
VALUES
	(1,0,'超级管理员','','',1426881003,1427552428,0,1);

/*!40000 ALTER TABLE `ct_admin_group` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ct_admin_hook
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ct_admin_hook`;

CREATE TABLE `ct_admin_hook` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '钩子ID',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '钩子名称',
  `description` text NOT NULL COMMENT '描述',
  `addons` varchar(255) NOT NULL DEFAULT '' COMMENT '钩子挂载的插件',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '1' COMMENT '类型',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='钩子表';

LOCK TABLES `ct_admin_hook` WRITE;
/*!40000 ALTER TABLE `ct_admin_hook` DISABLE KEYS */;

INSERT INTO `ct_admin_hook` (`id`, `name`, `description`, `addons`, `type`, `create_time`, `update_time`, `status`)
VALUES
	(1,'AdminIndex','后台首页小工具','后台首页小工具',1,1446522155,1446522155,1),
	(2,'FormBuilderExtend','FormBuilder类型扩展Builder','',1,1447831268,1447831268,1),
	(3,'UploadFile','上传文件钩子','',1,1407681961,1407681961,1),
	(4,'PageHeader','页面header钩子，一般用于加载插件CSS文件和代码','',1,1407681961,1407681961,1),
	(5,'PageFooter','页面footer钩子，一般用于加载插件CSS文件和代码','ReturnTop',1,1407681961,1407681961,1),
	(6,'BaiduShare','用户将网站内容分享到第三方网站','BaiduShare',1,1449837778,1449837778,1),
	(7,'SocialComment','集成了各种社交化评论插件，轻松集成到系统中。','SocialComment',1,1449837781,1449837781,1);

/*!40000 ALTER TABLE `ct_admin_hook` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ct_admin_link
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ct_admin_link`;

CREATE TABLE `ct_admin_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上级',
  `title` varchar(31) NOT NULL DEFAULT '' COMMENT '标题',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '地址',
  `icon` varchar(31) NOT NULL DEFAULT '' COMMENT '图标',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `sort` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='快捷链接表';

LOCK TABLES `ct_admin_link` WRITE;
/*!40000 ALTER TABLE `ct_admin_link` DISABLE KEYS */;

INSERT INTO `ct_admin_link` (`id`, `pid`, `title`, `url`, `icon`, `create_time`, `update_time`, `sort`, `status`)
VALUES
	(1,0,'快捷功能','','fa-folder-open-o',1446713441,1446713450,0,1),
	(2,0,'热门网站','','fa-folder-open-o',1446713441,1446713450,0,1),
	(3,1,'系统设置','Admin/Config/group','fa-wrench',1446713460,1446713460,0,1),
	(4,2,'百度一下','http://www.2345.com/?kcorethink','fa-search',1446714721,1446714721,0,1),
	(5,2,'CoreThink官网','http://www.corethink.cn','fa-wrench',1446714721,1446714721,0,1);

/*!40000 ALTER TABLE `ct_admin_link` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ct_admin_module
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ct_admin_module`;

CREATE TABLE `ct_admin_module` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(31) NOT NULL DEFAULT '' COMMENT '名称',
  `title` varchar(63) NOT NULL DEFAULT '' COMMENT '标题',
  `logo` varchar(63) NOT NULL DEFAULT '' COMMENT '图片图标',
  `icon` varchar(31) NOT NULL DEFAULT '' COMMENT '字体图标',
  `icon_color` varchar(7) NOT NULL DEFAULT '' COMMENT '字体图标颜色',
  `description` varchar(127) NOT NULL DEFAULT '' COMMENT '描述',
  `developer` varchar(31) NOT NULL DEFAULT '' COMMENT '开发者',
  `version` varchar(7) NOT NULL DEFAULT '' COMMENT '版本',
  `user_nav` text NOT NULL COMMENT '个人中心导航',
  `config` text NOT NULL COMMENT '配置',
  `admin_menu` text NOT NULL COMMENT '菜单节点',
  `is_system` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否允许卸载',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='模块功能表';

LOCK TABLES `ct_admin_module` WRITE;
/*!40000 ALTER TABLE `ct_admin_module` DISABLE KEYS */;

INSERT INTO `ct_admin_module` (`id`, `name`, `title`, `logo`, `icon`, `icon_color`, `description`, `developer`, `version`, `user_nav`, `config`, `admin_menu`, `is_system`, `create_time`, `update_time`, `sort`, `status`)
VALUES
	(1, 'Admin', '系统', '', 'fa fa-cog', '#3CA6F1', 'CoreThink核心系统', '南京科斯克网络科技有限公司', '1.1.0', '', '', '{\"1\":{\"pid\":\"0\",\"title\":\"\\u7cfb\\u7edf\",\"icon\":\"fa fa-cog\",\"level\":\"system\",\"id\":\"1\"},\"2\":{\"pid\":\"1\",\"title\":\"\\u7cfb\\u7edf\\u529f\\u80fd\",\"icon\":\"fa fa-folder-open-o\",\"id\":\"2\"},\"3\":{\"pid\":\"2\",\"title\":\"\\u7cfb\\u7edf\\u8bbe\\u7f6e\",\"icon\":\"fa fa-wrench\",\"url\":\"Admin\\/Config\\/group\",\"id\":\"3\"},\"4\":{\"pid\":\"3\",\"title\":\"\\u4fee\\u6539\\u8bbe\\u7f6e\",\"url\":\"Admin\\/Config\\/groupSave\",\"id\":\"4\"},\"5\":{\"pid\":\"2\",\"title\":\"\\u5bfc\\u822a\\u7ba1\\u7406\",\"icon\":\"fa fa-map-signs\",\"url\":\"Admin\\/Nav\\/index\",\"id\":\"5\"},\"6\":{\"pid\":\"5\",\"title\":\"\\u65b0\\u589e\",\"url\":\"Admin\\/Nav\\/add\",\"id\":\"6\"},\"7\":{\"pid\":\"5\",\"title\":\"\\u7f16\\u8f91\",\"url\":\"Admin\\/Nav\\/edit\",\"id\":\"7\"},\"8\":{\"pid\":\"5\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Admin\\/Nav\\/setStatus\",\"id\":\"8\"},\"9\":{\"pid\":\"2\",\"title\":\"\\u5feb\\u6377\\u94fe\\u63a5\",\"icon\":\"fa fa-link\",\"url\":\"Admin\\/Link\\/index\",\"id\":\"9\"},\"10\":{\"pid\":\"9\",\"title\":\"\\u65b0\\u589e\",\"url\":\"Admin\\/Link\\/add\",\"id\":\"10\"},\"11\":{\"pid\":\"9\",\"title\":\"\\u7f16\\u8f91\",\"url\":\"Admin\\/Link\\/edit\",\"id\":\"11\"},\"12\":{\"pid\":\"9\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Admin\\/Link\\/setStatus\",\"id\":\"12\"},\"13\":{\"pid\":\"2\",\"title\":\"\\u914d\\u7f6e\\u7ba1\\u7406\",\"icon\":\"fa fa-cogs\",\"url\":\"Admin\\/Config\\/index\",\"id\":\"13\"},\"14\":{\"pid\":\"13\",\"title\":\"\\u65b0\\u589e\",\"url\":\"Admin\\/Config\\/add\",\"id\":\"14\"},\"15\":{\"pid\":\"13\",\"title\":\"\\u7f16\\u8f91\",\"url\":\"Admin\\/Config\\/edit\",\"id\":\"15\"},\"16\":{\"pid\":\"13\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Admin\\/Config\\/setStatus\",\"id\":\"16\"},\"17\":{\"pid\":\"2\",\"title\":\"\\u4e0a\\u4f20\\u7ba1\\u7406\",\"icon\":\"fa fa-upload\",\"url\":\"Admin\\/Upload\\/index\",\"id\":\"17\"},\"18\":{\"pid\":\"17\",\"title\":\"\\u4e0a\\u4f20\\u6587\\u4ef6\",\"url\":\"Admin\\/Upload\\/upload\",\"id\":\"18\"},\"19\":{\"pid\":\"17\",\"title\":\"\\u5220\\u9664\\u6587\\u4ef6\",\"url\":\"Admin\\/Upload\\/delete\",\"id\":\"19\"},\"20\":{\"pid\":\"17\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Admin\\/Upload\\/setStatus\",\"id\":\"20\"},\"21\":{\"pid\":\"17\",\"title\":\"\\u4e0b\\u8f7d\\u8fdc\\u7a0b\\u56fe\\u7247\",\"url\":\"Admin\\/Upload\\/downremoteimg\",\"id\":\"21\"},\"22\":{\"pid\":\"17\",\"title\":\"\\u6587\\u4ef6\\u6d4f\\u89c8\",\"url\":\"Admin\\/Upload\\/fileManager\",\"id\":\"22\"},\"23\":{\"pid\":\"1\",\"title\":\"\\u7cfb\\u7edf\\u6743\\u9650\",\"icon\":\"fa fa-folder-open-o\",\"id\":\"23\"},\"24\":{\"pid\":\"23\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa fa-user\",\"url\":\"Admin\\/User\\/index\",\"id\":\"24\"},\"25\":{\"pid\":\"24\",\"title\":\"\\u65b0\\u589e\",\"url\":\"Admin\\/User\\/add\",\"id\":\"25\"},\"26\":{\"pid\":\"24\",\"title\":\"\\u7f16\\u8f91\",\"url\":\"Admin\\/User\\/edit\",\"id\":\"26\"},\"27\":{\"pid\":\"24\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Admin\\/User\\/setStatus\",\"id\":\"27\"},\"28\":{\"pid\":\"23\",\"title\":\"\\u7ba1\\u7406\\u5458\\u7ba1\\u7406\",\"icon\":\"fa fa-lock\",\"url\":\"Admin\\/Access\\/index\",\"id\":\"28\"},\"29\":{\"pid\":\"28\",\"title\":\"\\u65b0\\u589e\",\"url\":\"Admin\\/Access\\/add\",\"id\":\"29\"},\"30\":{\"pid\":\"28\",\"title\":\"\\u7f16\\u8f91\",\"url\":\"Admin\\/Access\\/edit\",\"id\":\"30\"},\"31\":{\"pid\":\"28\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Admin\\/Access\\/setStatus\",\"id\":\"31\"},\"32\":{\"pid\":\"23\",\"title\":\"\\u7528\\u6237\\u7ec4\\u7ba1\\u7406\",\"icon\":\"fa fa-sitemap\",\"url\":\"Admin\\/Group\\/index\",\"id\":\"32\"},\"33\":{\"pid\":\"32\",\"title\":\"\\u65b0\\u589e\",\"url\":\"Admin\\/Group\\/add\",\"id\":\"33\"},\"34\":{\"pid\":\"32\",\"title\":\"\\u7f16\\u8f91\",\"url\":\"Admin\\/Group\\/edit\",\"id\":\"34\"},\"35\":{\"pid\":\"32\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Admin\\/Group\\/setStatus\",\"id\":\"35\"},\"36\":{\"pid\":\"1\",\"title\":\"\\u6269\\u5c55\\u4e2d\\u5fc3\",\"icon\":\"fa fa-folder-open-o\",\"id\":\"36\"},\"37\":{\"pid\":\"36\",\"title\":\"\\u524d\\u53f0\\u4e3b\\u9898\",\"icon\":\"fa fa-adjust\",\"url\":\"Admin\\/Theme\\/index\",\"id\":\"37\"},\"38\":{\"pid\":\"37\",\"title\":\"\\u5b89\\u88c5\",\"url\":\"Admin\\/Theme\\/install\",\"id\":\"38\"},\"39\":{\"pid\":\"37\",\"title\":\"\\u5378\\u8f7d\",\"url\":\"Admin\\/Theme\\/uninstall\",\"id\":\"39\"},\"40\":{\"pid\":\"37\",\"title\":\"\\u66f4\\u65b0\\u4fe1\\u606f\",\"url\":\"Admin\\/Theme\\/updateInfo\",\"id\":\"40\"},\"41\":{\"pid\":\"37\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Admin\\/Theme\\/setStatus\",\"id\":\"41\"},\"42\":{\"pid\":\"37\",\"title\":\"\\u7f16\\u8f91\",\"url\":\"Admin\\/Theme\\/edit\",\"id\":\"42\"},\"43\":{\"pid\":\"37\",\"title\":\"\\u5207\\u6362\\u4e3b\\u9898\",\"url\":\"Admin\\/Theme\\/setCurrent\",\"id\":\"43\"},\"44\":{\"pid\":\"36\",\"title\":\"\\u529f\\u80fd\\u6a21\\u5757\",\"icon\":\"fa fa-th-large\",\"url\":\"Admin\\/Module\\/index\",\"id\":\"44\"},\"45\":{\"pid\":\"44\",\"title\":\"\\u5b89\\u88c5\",\"url\":\"Admin\\/Module\\/install\",\"id\":\"45\"},\"46\":{\"pid\":\"44\",\"title\":\"\\u5378\\u8f7d\",\"url\":\"Admin\\/Module\\/uninstall\",\"id\":\"46\"},\"47\":{\"pid\":\"44\",\"title\":\"\\u66f4\\u65b0\\u4fe1\\u606f\",\"url\":\"Admin\\/Module\\/updateInfo\",\"id\":\"47\"},\"48\":{\"pid\":\"44\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Admin\\/Module\\/setStatus\",\"id\":\"48\"},\"49\":{\"pid\":\"36\",\"title\":\"\\u63d2\\u4ef6\\u7ba1\\u7406\",\"icon\":\"fa fa-th\",\"url\":\"Admin\\/Addon\\/index\",\"id\":\"49\"},\"50\":{\"pid\":\"49\",\"title\":\"\\u5b89\\u88c5\",\"url\":\"Admin\\/Addon\\/install\",\"id\":\"50\"},\"51\":{\"pid\":\"49\",\"title\":\"\\u5378\\u8f7d\",\"url\":\"Admin\\/Addon\\/uninstall\",\"id\":\"51\"},\"52\":{\"pid\":\"49\",\"title\":\"\\u8fd0\\u884c\",\"url\":\"Admin\\/Addon\\/execute\",\"id\":\"52\"},\"53\":{\"pid\":\"49\",\"title\":\"\\u8bbe\\u7f6e\",\"url\":\"Admin\\/Addon\\/config\",\"id\":\"53\"},\"54\":{\"pid\":\"49\",\"title\":\"\\u540e\\u53f0\\u7ba1\\u7406\",\"url\":\"Admin\\/Addon\\/adminList\",\"id\":\"54\"},\"55\":{\"pid\":\"54\",\"title\":\"\\u65b0\\u589e\\u6570\\u636e\",\"url\":\"Admin\\/Addon\\/adminAdd\",\"id\":\"55\"},\"56\":{\"pid\":\"54\",\"title\":\"\\u7f16\\u8f91\\u6570\\u636e\",\"url\":\"Admin\\/Addon\\/adminEdit\",\"id\":\"56\"},\"57\":{\"pid\":\"54\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Admin\\/Addon\\/setStatus\",\"id\":\"57\"}}', 1, 1438651748, 0, 0, 1),
	(2, 'Cms', 'CMS门户', '', 'fa fa-newspaper-o', '#9933FF', 'CMS门户模块', '南京科斯克网络科技有限公司', '1.1.0', '{\"center\":[{\"title\":\"\\u6211\\u7684\\u6587\\u7ae0\",\"icon\":\"fa fa-edit\",\"url\":\"Cms\\/Home\\/Default\\/my\"}]}', '{\"need_check\":\"0\",\"toggle_comment\":\"1\",\"group_list\":\"1:\\u9ed8\\u8ba4\",\"cate\":\"a:1\\r\\nb:1\",\"taglib\":[\"Cms\"]}', '{\"1\":{\"id\":\"1\",\"pid\":\"0\",\"title\":\"\\u5185\\u5bb9\",\"icon\":\"fa fa-newspaper-o\"},\"2\":{\"pid\":\"1\",\"title\":\"\\u5185\\u5bb9\\u7ba1\\u7406\",\"icon\":\"fa fa-folder-open-o\",\"id\":\"2\"},\"3\":{\"pid\":\"2\",\"title\":\"\\u6587\\u7ae0\\u914d\\u7f6e\",\"icon\":\"fa fa-wrench\",\"url\":\"Cms\\/Admin\\/Default\\/module_config\",\"id\":\"3\"},\"4\":{\"pid\":\"2\",\"title\":\"\\u6587\\u6863\\u6a21\\u578b\",\"icon\":\"fa fa-th-large\",\"url\":\"Cms\\/Admin\\/Type\\/index\",\"id\":\"4\"},\"5\":{\"pid\":\"4\",\"title\":\"\\u65b0\\u589e\",\"url\":\"Cms\\/Admin\\/Type\\/add\",\"id\":\"5\"},\"6\":{\"pid\":\"4\",\"title\":\"\\u7f16\\u8f91\",\"url\":\"Cms\\/Admin\\/Type\\/edit\",\"id\":\"6\"},\"7\":{\"pid\":\"4\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Cms\\/Admin\\/Type\\/setStatus\",\"id\":\"7\"},\"8\":{\"pid\":\"4\",\"title\":\"\\u5b57\\u6bb5\\u7ba1\\u7406\",\"icon\":\"fa fa-database\",\"url\":\"Cms\\/Admin\\/Attribute\\/index\",\"id\":\"8\"},\"9\":{\"pid\":\"8\",\"title\":\"\\u65b0\\u589e\",\"url\":\"Cms\\/Admin\\/Attribute\\/add\",\"id\":\"9\"},\"10\":{\"pid\":\"8\",\"title\":\"\\u7f16\\u8f91\",\"url\":\"Cms\\/Admin\\/Attribute\\/edit\",\"id\":\"10\"},\"11\":{\"pid\":\"8\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Cms\\/Admin\\/Attribute\\/setStatus\",\"id\":\"11\"},\"12\":{\"pid\":\"2\",\"title\":\"\\u680f\\u76ee\\u5206\\u7c7b\",\"icon\":\"fa fa-navicon\",\"url\":\"Cms\\/Admin\\/Category\\/index\",\"id\":\"12\"},\"13\":{\"pid\":\"12\",\"title\":\"\\u65b0\\u589e\",\"url\":\"Cms\\/Admin\\/Category\\/add\",\"id\":\"13\"},\"14\":{\"pid\":\"12\",\"title\":\"\\u7f16\\u8f91\",\"url\":\"Cms\\/Admin\\/Category\\/edit\",\"id\":\"14\"},\"15\":{\"pid\":\"12\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Cms\\/Admin\\/Category\\/setStatus\",\"id\":\"15\"},\"16\":{\"pid\":\"2\",\"title\":\"\\u6587\\u7ae0\\u7ba1\\u7406\",\"icon\":\"fa fa-edit\",\"url\":\"Cms\\/Admin\\/Default\\/index\",\"id\":\"16\"},\"17\":{\"pid\":\"2\",\"title\":\"\\u5e7b\\u706f\\u5207\\u6362\",\"icon\":\"fa fa-image\",\"url\":\"Cms\\/Admin\\/Slider\\/index\",\"id\":\"17\"},\"18\":{\"pid\":\"17\",\"title\":\"\\u65b0\\u589e\",\"url\":\"Cms\\/Admin\\/Slider\\/add\",\"id\":\"18\"},\"19\":{\"pid\":\"17\",\"title\":\"\\u7f16\\u8f91\",\"url\":\"Cms\\/Admin\\/Slider\\/edit\",\"id\":\"19\"},\"20\":{\"pid\":\"17\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Cms\\/Admin\\/Slider\\/setStatus\",\"id\":\"20\"},\"21\":{\"pid\":\"2\",\"title\":\"\\u901a\\u77e5\\u516c\\u544a\",\"icon\":\"fa fa-bullhorn\",\"url\":\"Cms\\/Admin\\/Notice\\/index\",\"id\":\"21\"},\"22\":{\"pid\":\"21\",\"title\":\"\\u65b0\\u589e\",\"url\":\"Cms\\/Admin\\/Notice\\/add\",\"id\":\"22\"},\"23\":{\"pid\":\"21\",\"title\":\"\\u7f16\\u8f91\",\"url\":\"Cms\\/Admin\\/Notice\\/edit\",\"id\":\"23\"},\"24\":{\"pid\":\"21\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Cms\\/Admin\\/Notice\\/setStatus\",\"id\":\"24\"},\"25\":{\"pid\":\"2\",\"title\":\"\\u5e95\\u90e8\\u5bfc\\u822a\",\"icon\":\"fa fa-map-signs\",\"url\":\"Cms\\/Admin\\/Footnav\\/index\",\"id\":\"25\"},\"26\":{\"pid\":\"25\",\"title\":\"\\u65b0\\u589e\",\"url\":\"Cms\\/Admin\\/Footnav\\/add\",\"id\":\"26\"},\"27\":{\"pid\":\"25\",\"title\":\"\\u7f16\\u8f91\",\"url\":\"Cms\\/Admin\\/Footnav\\/edit\",\"id\":\"27\"},\"28\":{\"pid\":\"25\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Cms\\/Admin\\/Footnav\\/setStatus\",\"id\":\"28\"},\"29\":{\"pid\":\"2\",\"title\":\"\\u53cb\\u60c5\\u94fe\\u63a5\",\"icon\":\"fa fa-link\",\"url\":\"Cms\\/Admin\\/FriendlyLink\\/index\",\"id\":\"29\"},\"30\":{\"pid\":\"29\",\"title\":\"\\u65b0\\u589e\",\"url\":\"Cms\\/Admin\\/FriendlyLink\\/add\",\"id\":\"30\"},\"31\":{\"pid\":\"29\",\"title\":\"\\u7f16\\u8f91\",\"url\":\"Cms\\/Admin\\/FriendlyLink\\/edit\",\"id\":\"31\"},\"32\":{\"pid\":\"29\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Cms\\/Admin\\/FriendlyLink\\/setStatus\",\"id\":\"32\"},\"33\":{\"pid\":\"2\",\"title\":\"\\u56de\\u6536\\u7ad9\",\"icon\":\"fa fa-recycle\",\"url\":\"Cms\\/Admin\\/Default\\/recycle\",\"id\":\"33\"},\"34\":{\"pid\":\"33\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Cms\\/Admin\\/Notice\\/setStatus\",\"id\":\"34\"}}', 0, 0, 0, 0, 1),
	(3, 'User', '用户', '', 'fa fa-users', '#F9B440', '用户中心模块', '南京科斯克网络科技有限公司', '1.1.0', '{\"center\":[{\"title\":\"\\u4fee\\u6539\\u4fe1\\u606f\",\"icon\":\"fa fa-edit\",\"url\":\"User\\/Home\\/Center\\/profile\"},{\"title\":\"\\u4fee\\u6539\\u5bc6\\u7801\",\"icon\":\"fa fa-lock\",\"url\":\"User\\/Home\\/Center\\/password\"},{\"title\":\"\\u6d88\\u606f\\u4e2d\\u5fc3\",\"icon\":\"fa fa-envelope-o\",\"url\":\"User\\/Home\\/Message\\/index\"}],\"main\":[{\"title\":\"\\u4e2a\\u4eba\\u4e2d\\u5fc3\",\"icon\":\"fa fa-tachometer\",\"url\":\"User\\/Home\\/Center\\/index\"}]}', '{\"status\":\"1\",\"reg_toggle\":\"1\",\"allow_reg_type\":[\"username\"],\"deny_username\":\"\",\"user_protocol\":\"\",\"behavior\":[\"User\"]}', '{\"1\":{\"pid\":\"0\",\"title\":\"\\u7528\\u6237\",\"icon\":\"fa fa-user\",\"id\":\"1\"},\"2\":{\"pid\":\"1\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa fa-folder-open-o\",\"id\":\"2\"},\"3\":{\"pid\":\"2\",\"title\":\"\\u7528\\u6237\\u8bbe\\u7f6e\",\"icon\":\"fa fa-wrench\",\"url\":\"User\\/Admin\\/Default\\/module_config\",\"id\":\"3\"},\"4\":{\"pid\":\"2\",\"title\":\"\\u7528\\u6237\\u7edf\\u8ba1\",\"icon\":\"fa fa-area-chart\",\"url\":\"User\\/Admin\\/Default\\/index\",\"id\":\"4\"},\"5\":{\"pid\":\"2\",\"title\":\"\\u7528\\u6237\\u5217\\u8868\",\"icon\":\"fa fa-list\",\"url\":\"User\\/Admin\\/User\\/index\",\"id\":\"5\"},\"6\":{\"pid\":\"5\",\"title\":\"\\u65b0\\u589e\",\"url\":\"User\\/Admin\\/User\\/add\",\"id\":\"6\"},\"7\":{\"pid\":\"5\",\"title\":\"\\u7f16\\u8f91\",\"url\":\"User\\/Admin\\/User\\/edit\",\"id\":\"7\"},\"8\":{\"pid\":\"5\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"User\\/Admin\\/User\\/setStatus\",\"id\":\"8\"}}', 0, 0, 0, 0, 1);

/*!40000 ALTER TABLE `ct_admin_module` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ct_admin_nav
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ct_admin_nav`;

CREATE TABLE `ct_admin_nav` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `name` varchar(63) NOT NULL DEFAULT '' COMMENT '导航名称',
  `title` varchar(31) NOT NULL DEFAULT '' COMMENT '导航标题',
  `type` varchar(15) NOT NULL DEFAULT '0' COMMENT '导航类型',
  `value` varchar(127) NOT NULL DEFAULT '' COMMENT '导航值',
  `target` varchar(11) NOT NULL DEFAULT '' COMMENT '打开方式',
  `icon` varchar(32) NOT NULL DEFAULT '' COMMENT '图标',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='前台导航表';

LOCK TABLES `ct_admin_nav` WRITE;
/*!40000 ALTER TABLE `ct_admin_nav` DISABLE KEYS */;

INSERT INTO `ct_admin_nav` (`id`, `pid`, `name`, `title`, `type`, `value`, `target`, `icon`, `create_time`, `update_time`, `sort`, `status`)
VALUES
	(1,0,'home','首页','link','','','fa fa-archive',1441293186,1441297331,0,1),
	(2,0,'cms','CMS门户','module','Cms','','fa fa-newspaper-o',1449837766,1449837766,0,1),
	(3,0,'user','用户','module','User','','fa fa-users',1449837769,1449837769,0,1);

/*!40000 ALTER TABLE `ct_admin_nav` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ct_admin_theme
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ct_admin_theme`;

CREATE TABLE `ct_admin_theme` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '名称',
  `title` varchar(64) NOT NULL DEFAULT '' COMMENT '标题',
  `description` varchar(127) NOT NULL DEFAULT '' COMMENT '描述',
  `developer` varchar(32) NOT NULL DEFAULT '' COMMENT '开发者',
  `version` varchar(8) NOT NULL DEFAULT '' COMMENT '版本',
  `config` text COMMENT '主题配置',
  `module` text COMMENT '启用模块',
  `current` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否当前主题',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='前台主题表';



# Dump of table ct_admin_upload
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ct_admin_upload`;

CREATE TABLE `ct_admin_upload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'UID',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '文件名',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '文件路径',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '文件链接',
  `ext` char(4) NOT NULL DEFAULT '' COMMENT '文件类型',
  `size` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `md5` char(32) NOT NULL DEFAULT '' COMMENT '文件md5',
  `sha1` char(40) NOT NULL DEFAULT '' COMMENT '文件sha1编码',
  `location` varchar(15) NOT NULL DEFAULT '' COMMENT '文件存储位置',
  `download` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '下载次数',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `sort` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文件上传表';

LOCK TABLES `ct_admin_upload` WRITE;
/*!40000 ALTER TABLE `ct_admin_upload` DISABLE KEYS */;

INSERT INTO `ct_admin_upload` (`id`, `uid`, `name`, `path`, `url`, `ext`, `size`, `md5`, `sha1`, `location`, `download`, `create_time`, `update_time`, `sort`, `status`)
VALUES
	(1,1,'logo_with_title_dark.png','/Uploads/2015-12-11/566ac925432c8.png','','png',51490,'1a564cb3b2f2cbb8e3fa81d9d87cfd9d','bf46e8dada8c65a51ff820d6ec4450c404a27537','Local',0,1449838885,1449838885,0,1);

/*!40000 ALTER TABLE `ct_admin_upload` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ct_admin_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ct_admin_user`;

CREATE TABLE `ct_admin_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'UID',
  `user_type` int(11) NOT NULL DEFAULT '1' COMMENT '用户类型',
  `nickname` varchar(63) NOT NULL DEFAULT '' COMMENT '昵称',
  `username` varchar(31) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(63) NOT NULL DEFAULT '' COMMENT '密码',
  `email` varchar(63) NOT NULL DEFAULT '' COMMENT '邮箱',
  `mobile` varchar(11) NOT NULL DEFAULT '' COMMENT '手机号',
  `avatar` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '头像',
  `score` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '积分',
  `money` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '余额',
  `reg_ip` bigint(20) NOT NULL DEFAULT '0' COMMENT '注册IP',
  `reg_type` varchar(15) NOT NULL DEFAULT '' COMMENT '注册方式',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户账号表';

LOCK TABLES `ct_admin_user` WRITE;
/*!40000 ALTER TABLE `ct_admin_user` DISABLE KEYS */;

INSERT INTO `ct_admin_user` (`id`, `user_type`, `nickname`, `username`, `password`, `email`, `mobile`, `avatar`, `score`, `money`, `reg_ip`, `reg_type`, `create_time`, `update_time`, `status`)
VALUES
	(1,1,'超级管理员','admin','a944d55aae7eb2f381b0bb60fcb62ed1','','',0,0,0.00,0,'',1438651748,1438651748,1);

/*!40000 ALTER TABLE `ct_admin_user` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ct_cms_article
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ct_cms_article`;

CREATE TABLE `ct_cms_article` (
  `id` int(11) unsigned NOT NULL COMMENT '文档ID',
  `title` varchar(127) NOT NULL DEFAULT '' COMMENT '标题',
  `abstract` varchar(255) NOT NULL DEFAULT '' COMMENT '简介',
  `content` text NOT NULL COMMENT '正文内容',
  `tags` varchar(127) NOT NULL COMMENT '标签',
  `cover` int(11) NOT NULL DEFAULT '0' COMMENT '封面图片ID',
  `file` int(11) NOT NULL DEFAULT '0' COMMENT '附件ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文章类型扩展表';

LOCK TABLES `ct_cms_article` WRITE;
/*!40000 ALTER TABLE `ct_cms_article` DISABLE KEYS */;

INSERT INTO `ct_cms_article` (`id`, `title`, `abstract`, `content`, `tags`, `cover`, `file`)
VALUES
	(1,'CoreThink v1.1正式版发布！','CoreThink是一套基于统一核心的通用互联网+信息化服务解决方案，追求简单、高效、卓越。可轻松实现支持多终端的WEB产品快速搭建、部署、上线。系统功能采用模块化、组件化、插件化等低耦合设计，应用商城拥有丰富的功能模块、插件、主题，便于用户灵活扩展和二次开发。','                <span style=\"color:#777777;\">CoreThink是一套基于统一核心的通用互联网+信息化服务解决方案，追求简单、高效、卓越。可轻松实现支持多终端的WEB产品快速搭建、部署、上线。系统功能采用模块化、组件化、插件化等低耦合设计，应用商城拥有丰富的功能模块、插件、主题，便于用户灵活扩展和二次开发。</span>            ','',1,0),
	(2,'CoreThink v1.1正式版发布！','CoreThink是一套基于统一核心的通用互联网+信息化服务解决方案，追求简单、高效、卓越。可轻松实现支持多终端的WEB产品快速搭建、部署、上线。系统功能采用模块化、组件化、插件化等低耦合设计，应用商城拥有丰富的功能模块、插件、主题，便于用户灵活扩展和二次开发。','                <span style=\"color:#777777;\">CoreThink是一套基于统一核心的通用互联网+信息化服务解决方案，追求简单、高效、卓越。可轻松实现支持多终端的WEB产品快速搭建、部署、上线。系统功能采用模块化、组件化、插件化等低耦合设计，应用商城拥有丰富的功能模块、插件、主题，便于用户灵活扩展和二次开发。</span>            ','',1,0),
	(3,'CoreThink v1.1正式版发布！','CoreThink是一套基于统一核心的通用互联网+信息化服务解决方案，追求简单、高效、卓越。可轻松实现支持多终端的WEB产品快速搭建、部署、上线。系统功能采用模块化、组件化、插件化等低耦合设计，应用商城拥有丰富的功能模块、插件、主题，便于用户灵活扩展和二次开发。','                <span style=\"color:#777777;\">CoreThink是一套基于统一核心的通用互联网+信息化服务解决方案，追求简单、高效、卓越。可轻松实现支持多终端的WEB产品快速搭建、部署、上线。系统功能采用模块化、组件化、插件化等低耦合设计，应用商城拥有丰富的功能模块、插件、主题，便于用户灵活扩展和二次开发。</span>            ','',1,0),
	(4,'CoreThink v1.1正式版发布！','CoreThink是一套基于统一核心的通用互联网+信息化服务解决方案，追求简单、高效、卓越。可轻松实现支持多终端的WEB产品快速搭建、部署、上线。系统功能采用模块化、组件化、插件化等低耦合设计，应用商城拥有丰富的功能模块、插件、主题，便于用户灵活扩展和二次开发。','                <span style=\"color:#777777;\">CoreThink是一套基于统一核心的通用互联网+信息化服务解决方案，追求简单、高效、卓越。可轻松实现支持多终端的WEB产品快速搭建、部署、上线。系统功能采用模块化、组件化、插件化等低耦合设计，应用商城拥有丰富的功能模块、插件、主题，便于用户灵活扩展和二次开发。</span>            ','',1,0),
	(5,'CoreThink v1.1正式版发布！','CoreThink是一套基于统一核心的通用互联网+信息化服务解决方案，追求简单、高效、卓越。可轻松实现支持多终端的WEB产品快速搭建、部署、上线。系统功能采用模块化、组件化、插件化等低耦合设计，应用商城拥有丰富的功能模块、插件、主题，便于用户灵活扩展和二次开发。','                <span style=\"color:#777777;\">CoreThink是一套基于统一核心的通用互联网+信息化服务解决方案，追求简单、高效、卓越。可轻松实现支持多终端的WEB产品快速搭建、部署、上线。系统功能采用模块化、组件化、插件化等低耦合设计，应用商城拥有丰富的功能模块、插件、主题，便于用户灵活扩展和二次开发。</span>            ','',1,0),
	(6,'CoreThink v1.1正式版发布！','CoreThink是一套基于统一核心的通用互联网+信息化服务解决方案，追求简单、高效、卓越。可轻松实现支持多终端的WEB产品快速搭建、部署、上线。系统功能采用模块化、组件化、插件化等低耦合设计，应用商城拥有丰富的功能模块、插件、主题，便于用户灵活扩展和二次开发。','                <span style=\"color:#777777;\">CoreThink是一套基于统一核心的通用互联网+信息化服务解决方案，追求简单、高效、卓越。可轻松实现支持多终端的WEB产品快速搭建、部署、上线。系统功能采用模块化、组件化、插件化等低耦合设计，应用商城拥有丰富的功能模块、插件、主题，便于用户灵活扩展和二次开发。</span>            ','',1,0),
	(7,'CoreThink v1.1正式版发布！','CoreThink是一套基于统一核心的通用互联网+信息化服务解决方案，追求简单、高效、卓越。可轻松实现支持多终端的WEB产品快速搭建、部署、上线。系统功能采用模块化、组件化、插件化等低耦合设计，应用商城拥有丰富的功能模块、插件、主题，便于用户灵活扩展和二次开发。','                <span style=\"color:#777777;\">CoreThink是一套基于统一核心的通用互联网+信息化服务解决方案，追求简单、高效、卓越。可轻松实现支持多终端的WEB产品快速搭建、部署、上线。系统功能采用模块化、组件化、插件化等低耦合设计，应用商城拥有丰富的功能模块、插件、主题，便于用户灵活扩展和二次开发。</span>            ','',1,0),
	(8,'CoreThink v1.1正式版发布！','CoreThink是一套基于统一核心的通用互联网+信息化服务解决方案，追求简单、高效、卓越。可轻松实现支持多终端的WEB产品快速搭建、部署、上线。系统功能采用模块化、组件化、插件化等低耦合设计，应用商城拥有丰富的功能模块、插件、主题，便于用户灵活扩展和二次开发。','                <span style=\"color:#777777;\">CoreThink是一套基于统一核心的通用互联网+信息化服务解决方案，追求简单、高效、卓越。可轻松实现支持多终端的WEB产品快速搭建、部署、上线。系统功能采用模块化、组件化、插件化等低耦合设计，应用商城拥有丰富的功能模块、插件、主题，便于用户灵活扩展和二次开发。</span>            ','',1,0);

/*!40000 ALTER TABLE `ct_cms_article` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ct_cms_attribute
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ct_cms_attribute`;

CREATE TABLE `ct_cms_attribute` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '字段名',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '字段标题',
  `field` varchar(100) NOT NULL DEFAULT '' COMMENT '字段定义',
  `type` varchar(20) NOT NULL DEFAULT '' COMMENT '数据类型',
  `value` varchar(100) NOT NULL DEFAULT '' COMMENT '字段默认值',
  `tip` varchar(100) NOT NULL DEFAULT '' COMMENT '备注',
  `show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `options` varchar(255) NOT NULL DEFAULT '' COMMENT '参数',
  `doc_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '文档模型',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文档属性字段表';

LOCK TABLES `ct_cms_attribute` WRITE;
/*!40000 ALTER TABLE `ct_cms_attribute` DISABLE KEYS */;

INSERT INTO `ct_cms_attribute` (`id`, `name`, `title`, `field`, `type`, `value`, `tip`, `show`, `options`, `doc_type`, `create_time`, `update_time`, `sort`, `status`)
VALUES
	(1,'cid','分类','int(11) unsigned NOT NULL ','select','0','所属分类',1,'',0,1383891233,1384508336,0,1),
	(2,'uid','用户ID','int(11) unsigned NOT NULL ','num','0','用户ID',0,'',0,1383891233,1384508336,0,1),
	(3,'view','阅读量','varchar(255) NOT NULL','num','0','标签',0,'',0,1413303715,1413303715,0,1),
	(4,'comment','评论数','int(11) unsigned NOT NULL ','num','0','评论数',0,'',0,1383891233,1383894927,0,1),
	(5,'good','赞数','int(11) unsigned NOT NULL ','num','0','赞数',0,'',0,1383891233,1384147827,0,1),
	(6,'bad','踩数','int(11) unsigned NOT NULL ','num','0','踩数',0,'',0,1407646362,1407646362,0,1),
	(7,'create_time','创建时间','int(11) unsigned NOT NULL ','datetime','0','创建时间',1,'',0,1383891233,1383895903,0,1),
	(8,'update_time','更新时间','int(11) unsigned NOT NULL ','datetime','0','更新时间',0,'',0,1383891233,1384508277,0,1),
	(9,'sort','排序','int(11) unsigned NOT NULL ','num','0','用于显示的顺序',1,'',0,1383891233,1383895757,0,1),
	(10,'status','数据状态','tinyint(4) NOT NULL ','radio','1','数据状态',0,'-1:删除\r\n0:禁用\r\n1:正常',0,1383891233,1384508496,0,1),
	(11,'title','标题','char(127) NOT NULL ','text','','文档标题',1,'',3,1383891233,1383894778,0,1),
	(12,'abstract','简介','varchar(255) NOT NULL','textarea','','文档简介',1,'',3,1383891233,1384508496,0,1),
	(13,'content','正文内容','text','kindeditor','','文章正文内容',1,'',3,1383891233,1384508496,0,1),
	(14,'tags','文章标签','varchar(127) NOT NULL','tags','','标签',1,'',3,1383891233,1384508496,0,1),
	(15,'cover','封面','int(11) unsigned NOT NULL ','picture','0','文档封面',1,'',3,1383891233,1384508496,0,1),
	(16,'file','附件','int(11) unsigned NOT NULL ','file','0','附件',1,'',3,1439454552,1439454552,0,1);

/*!40000 ALTER TABLE `ct_cms_attribute` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ct_cms_default
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ct_cms_default`;

CREATE TABLE `ct_cms_default` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '文档ID',
  `cid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '分类ID',
  `doc_type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '文档类型ID',
  `uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '发布者ID',
  `view` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '阅读量',
  `comment` int(11) NOT NULL DEFAULT '0' COMMENT '评论数',
  `good` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '赞数',
  `bad` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '踩数',
  `mark` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '收藏',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文档类型基础表';

LOCK TABLES `ct_cms_default` WRITE;
/*!40000 ALTER TABLE `ct_cms_default` DISABLE KEYS */;

INSERT INTO `ct_cms_default` (`id`, `cid`, `doc_type`, `uid`, `view`, `comment`, `good`, `bad`, `mark`, `create_time`, `update_time`, `sort`, `status`)
VALUES
	(1,1,3,1,0,0,0,0,0,1449839213,1449839263,0,1),
	(2,1,3,1,0,0,0,0,0,1449839213,1449839263,0,1),
	(3,1,3,1,0,0,0,0,0,1449839213,1449839263,0,1),
	(4,1,3,1,0,0,0,0,0,1449839213,1449839263,0,1),
	(5,1,3,1,0,0,0,0,0,1449839213,1449839263,0,1),
	(6,1,3,1,0,0,0,0,0,1449839213,1449839263,0,1),
	(7,1,3,1,0,0,0,0,0,1449839213,1449839263,0,1),
	(8,1,3,1,0,0,0,0,0,1449839213,1449839263,0,1);

/*!40000 ALTER TABLE `ct_cms_default` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ct_cms_category
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ct_cms_category`;

CREATE TABLE `ct_cms_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '父分类ID',
  `group` tinyint(4) NOT NULL DEFAULT '0' COMMENT '分组',
  `doc_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '分类模型',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '分类名称',
  `url` varchar(127) NOT NULL COMMENT '链接地址',
  `content` text NOT NULL COMMENT '内容',
  `index_template` varchar(32) NOT NULL DEFAULT '' COMMENT '列表封面模版',
  `detail_template` varchar(32) NOT NULL DEFAULT '' COMMENT '详情页模版',
  `post_auth` tinyint(4) NOT NULL DEFAULT '0' COMMENT '投稿权限',
  `icon` varchar(32) NOT NULL DEFAULT '' COMMENT '缩略图',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `sort` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目分类表';

LOCK TABLES `ct_cms_category` WRITE;
/*!40000 ALTER TABLE `ct_cms_category` DISABLE KEYS */;

INSERT INTO `ct_cms_category` (`id`, `pid`, `group`, `doc_type`, `title`, `url`, `content`, `index_template`, `detail_template`, `post_auth`, `icon`, `create_time`, `update_time`, `sort`, `status`)
VALUES
	(1,0,1,3,'产品中心','','','','',1,'fa fa-send-o',1431926468,1446449005,0,1),
	(2,0,1,3,'新闻动态','','','','',1,'fa-search',1446449071,1446449394,0,1),
	(3,0,1,3,'客户服务','','','','',1,'fa-heart',1446449078,1446449400,0,1),
	(4,0,1,3,'案例展示','','','','',1,'fa-th',1446449673,1446449673,0,1),
	(5,0,1,3,'品牌专区','','','','',1,'fa-arrows',1446449686,1446449686,0,1),
	(6,0,1,3,'联系我们','','','','',1,'fa-envelope-o',1446449697,1446449697,0,1);

/*!40000 ALTER TABLE `ct_cms_category` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ct_cms_footnav
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ct_cms_footnav`;

CREATE TABLE `ct_cms_footnav` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上级',
  `title` varchar(31) NOT NULL DEFAULT '' COMMENT '标题',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '地址',
  `icon` varchar(31) NOT NULL DEFAULT '' COMMENT '图标',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `sort` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='底部导航链接表';

LOCK TABLES `ct_cms_footnav` WRITE;
/*!40000 ALTER TABLE `ct_cms_footnav` DISABLE KEYS */;

INSERT INTO `ct_cms_footnav` (`id`, `pid`, `title`, `url`, `icon`, `create_time`, `update_time`, `sort`, `status`)
VALUES
	(1,0,'关于','','',1449742225,1449742255,0,1),
	(2,1,'关于我们','http://www.corethink.cn/article/category/detail/id/8.html','',1449742312,1449742312,0,1),
	(3,1,'企业资质','http://www.corethink.cn/article/article/index/cid/9.html','',1449742584,1449742636,0,1),
	(4,1,'服务产品','http://www.corethink.cn/article/category/detail/id/2.html','',1449742597,1449742651,0,1),
	(5,1,'商务合作','http://www.corethink.cn/article/category/detail/id/11.html','',1449742664,1449742664,0,1),
	(6,1,'招聘','http://www.corethink.cn/article/category/detail/id/13.html','',1449742678,1449742697,0,1),
	(7,0,'帮助','','',1449742688,1449742688,0,1),
	(8,7,'用户协议','http://www.corethink.cn','',1449742706,1449742706,0,1),
	(9,7,'意见反馈','http://www.corethink.cn/forum/default/index.html','',1449742716,1449742716,0,1),
	(10,7,'常见问题','http://www.corethink.cn/forum/default/index.html','',1449742728,1449742728,0,1),
	(11,0,'联系方式','','',1449742742,1449742742,0,1),
	(12,11,'联系我们','http://www.corethink.cn/article/category/detail/id/11.html','',1449742752,1449742752,0,1),
	(13,11,'新浪微博','http://weibo.com/u/5667168319','',1449742802,1449742802,0,1),
	(14,0,'其它','','',1449742813,1449742813,0,1),
	(15,14,'开发手册','http://www.corethink.cn/manual/doc/corethink1_1.html','',1449742825,1449742825,0,1),
	(16,14,'ThinkPHP手册','http://document.thinkphp.cn/manual_3_2.html','',1449742836,1449742856,0,1);

/*!40000 ALTER TABLE `ct_cms_footnav` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ct_cms_friendly_link
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ct_cms_friendly_link`;

CREATE TABLE `ct_cms_friendly_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `logo` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'logo',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '链接',
  `type` int(3) unsigned NOT NULL DEFAULT '0' COMMENT '类型',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_timeCopy` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `sort` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='友情链接表';

LOCK TABLES `ct_cms_friendly_link` WRITE;
/*!40000 ALTER TABLE `ct_cms_friendly_link` DISABLE KEYS */;

INSERT INTO `ct_cms_friendly_link` (`id`, `title`, `logo`, `url`, `type`, `create_time`, `update_timeCopy`, `sort`, `status`)
VALUES
	(1,'CoreThink',1,'http://www.corethink.cn',1,1446449071,1446449071,0,1),
	(2,'CoreThink',1,'http://www.corethink.cn',1,1446449071,1446449071,0,1),
	(3,'CoreThink',1,'http://www.corethink.cn',1,1446449071,1446449071,0,1),
	(4,'CoreThink',1,'http://www.corethink.cn',1,1446449071,1446449071,0,1),
	(5,'CoreThink',1,'http://www.corethink.cn',1,1446449071,1446449071,0,1),
	(6,'CoreThink',1,'http://www.corethink.cn',1,1446449071,1446449071,0,1),
	(7,'CoreThink',1,'http://www.corethink.cn',2,1446449071,1446449071,0,1),
	(8,'CoreThink',1,'http://www.corethink.cn',2,1446449071,1446449071,0,1),
	(9,'CoreThink',1,'http://www.corethink.cn',2,1446449071,1446449071,0,1),
	(10,'CoreThink',1,'http://www.corethink.cn',2,1446449071,1446449071,0,1),
	(11,'CoreThink',1,'http://www.corethink.cn',2,1446449071,1446449071,0,1),
	(12,'CoreThink',1,'http://www.corethink.cn',2,1446449071,1446449071,0,1);

/*!40000 ALTER TABLE `ct_cms_friendly_link` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ct_cms_notice
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ct_cms_notice`;

CREATE TABLE `ct_cms_notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '幻灯ID',
  `title` char(80) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `sort` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='通知公告表';



# Dump of table ct_cms_slider
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ct_cms_slider`;

CREATE TABLE `ct_cms_slider` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '幻灯ID',
  `title` char(80) NOT NULL DEFAULT '' COMMENT '标题',
  `cover` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '封面ID',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '点击链接',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `sort` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='幻灯切换表';



# Dump of table ct_cms_type
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ct_cms_type`;

CREATE TABLE `ct_cms_type` (
  `id` tinyint(4) unsigned NOT NULL AUTO_INCREMENT COMMENT '模型ID',
  `name` char(16) NOT NULL DEFAULT '' COMMENT '模型名称',
  `title` char(16) NOT NULL DEFAULT '' COMMENT '模型标题',
  `icon` varchar(32) NOT NULL DEFAULT '' COMMENT '缩略图',
  `main_field` int(11) NOT NULL DEFAULT '0' COMMENT '主要字段',
  `list_field` varchar(127) NOT NULL DEFAULT '' COMMENT '列表显示字段',
  `filter_field` varchar(127) NOT NULL DEFAULT '' COMMENT '前台筛选字段',
  `field_sort` varchar(255) NOT NULL COMMENT '表单字段排序',
  `field_group` varchar(255) NOT NULL DEFAULT '' COMMENT '表单字段分组',
  `system` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '系统类型',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `sort` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文档模型表';

LOCK TABLES `ct_cms_type` WRITE;
/*!40000 ALTER TABLE `ct_cms_type` DISABLE KEYS */;

INSERT INTO `ct_cms_type` (`id`, `name`, `title`, `icon`, `main_field`, `list_field`, `filter_field`, `field_sort`, `field_group`, `system`, `create_time`, `update_time`, `sort`, `status`)
VALUES
	(1,'link','链接','fa fa-link',0,'','','','',1,1426580628,1426580628,0,1),
	(2,'page','单页','fa fa-file-text',0,'','','','',1,1426580628,1426580628,0,1),
	(3,'article','文章','fa fa-file-word-o',11,'11','','{\"1\":[\"1\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\"],\"2\":[\"9\",\"7\"]}','1:基础\n2:扩展',0,1426580628,1426580628,0,1);

/*!40000 ALTER TABLE `ct_cms_type` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ct_user_attribute
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ct_user_attribute`;

CREATE TABLE `ct_user_attribute` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '字段名',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '字段标题',
  `field` varchar(100) NOT NULL DEFAULT '' COMMENT '字段定义',
  `type` varchar(20) NOT NULL DEFAULT '' COMMENT '数据类型',
  `value` varchar(100) NOT NULL DEFAULT '' COMMENT '字段默认值',
  `tip` varchar(100) NOT NULL DEFAULT '' COMMENT '备注',
  `show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `options` varchar(255) NOT NULL DEFAULT '' COMMENT '参数',
  `user_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '文档模型',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户模块：用户属性字段表';

LOCK TABLES `ct_user_attribute` WRITE;
/*!40000 ALTER TABLE `ct_user_attribute` DISABLE KEYS */;

INSERT INTO `ct_user_attribute` (`id`, `name`, `title`, `field`, `type`, `value`, `tip`, `show`, `options`, `user_type`, `create_time`, `update_time`, `status`)
VALUES
	(1,'gender','性别','tinyint(3)  NOT NULL ','radio','0','性别',1,'1:男\n-1:女\r\n0:保密\r\n',1,1438651748,1438651748,1),
	(2,'city','所在城市','varchar(15) NOT NULL','text','','常住城市',1,'',1,1442026468,1442123810,1),
	(3,'summary','签名','varchar(127) NOT NULL','text','','签名',1,'',1,1438651748,1438651748,1);

/*!40000 ALTER TABLE `ct_user_attribute` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ct_user_message
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ct_user_message`;

CREATE TABLE `ct_user_message` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '消息ID',
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '消息父ID',
  `title` varchar(1024) NOT NULL DEFAULT '' COMMENT '消息标题',
  `content` text COMMENT '消息内容',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0系统消息,1评论消息,2私信消息',
  `to_uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '接收用户ID',
  `from_uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '私信消息发信用户ID',
  `is_read` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否已读',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '发送时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户消息表';



# Dump of table ct_user_person
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ct_user_person`;

CREATE TABLE `ct_user_person` (
  `uid` int(11) unsigned NOT NULL COMMENT '用户ID',
  `gender` tinyint(3) NOT NULL DEFAULT '0' COMMENT '性别',
  `summary` varchar(127) NOT NULL DEFAULT '' COMMENT '签名',
  `city` varchar(15) NOT NULL COMMENT '所在城市',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户模块：个人类型扩展信息表';



# Dump of table ct_user_type
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ct_user_type`;

CREATE TABLE `ct_user_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(31) NOT NULL DEFAULT '' COMMENT '名称',
  `title` varchar(31) NOT NULL DEFAULT '' COMMENT '标题',
  `list_field` varchar(127) NOT NULL DEFAULT '' COMMENT '搜索字段',
  `home_template` varchar(127) DEFAULT '' COMMENT '主页模版',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户模块：用户类型表';

LOCK TABLES `ct_user_type` WRITE;
/*!40000 ALTER TABLE `ct_user_type` DISABLE KEYS */;

INSERT INTO `ct_user_type` (`id`, `name`, `title`, `list_field`, `home_template`, `create_time`, `update_time`, `sort`, `status`)
VALUES
	(1,'person','个人','1','',1438651748,1438651748,0,1);

/*!40000 ALTER TABLE `ct_user_type` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
