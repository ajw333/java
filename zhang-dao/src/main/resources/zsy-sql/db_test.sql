# Host: localhost  (Version: 5.5.53)
# Date: 2018-11-18 21:57:56
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "tb_attachments"
#

DROP TABLE IF EXISTS `tb_attachments`;
CREATE TABLE `tb_attachments` (
  `id` bigint(20) NOT NULL COMMENT '主键Id',
  `parentId` bigint(20) DEFAULT NULL COMMENT '父级主键Id',
  `version` int(11) DEFAULT '1' COMMENT '版本',
  `code` varchar(50) DEFAULT NULL COMMENT '编码',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `remarks` varchar(150) DEFAULT NULL COMMENT '备注',
  `sortNum` int(11) DEFAULT '1' COMMENT '排序数字',
  `is_Enable` int(1) DEFAULT '1' COMMENT '是否启用',
  `is_Delete` int(1) DEFAULT '0' COMMENT '是否删除',
  `ownerId` bigint(20) DEFAULT NULL COMMENT '拥有人Id',
  `createId` bigint(20) NOT NULL COMMENT '创建人Id',
  `updateId` bigint(20) DEFAULT NULL COMMENT '更新人Id',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '修改时间',
  `fkType` int(11) DEFAULT NULL COMMENT '外键类型',
  `fkPkId` bigint(20) DEFAULT NULL COMMENT '外键Id',
  `suffix` varchar(20) DEFAULT NULL COMMENT '扩展名',
  `streamData` blob COMMENT '文件流',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "tb_attachments"
#


#
# Structure for table "tb_deptinfo"
#

DROP TABLE IF EXISTS `tb_deptinfo`;
CREATE TABLE `tb_deptinfo` (
  `id` bigint(20) NOT NULL COMMENT '主键Id',
  `parentId` bigint(20) DEFAULT NULL COMMENT '父级主键Id',
  `version` int(11) DEFAULT '1' COMMENT '版本',
  `code` varchar(50) DEFAULT NULL COMMENT '编码',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `remarks` varchar(150) DEFAULT NULL COMMENT '备注',
  `sortNum` int(11) DEFAULT '1' COMMENT '排序数字',
  `is_Enable` int(1) DEFAULT '1' COMMENT '是否启用',
  `is_Delete` int(1) DEFAULT '0' COMMENT '是否删除',
  `ownerId` bigint(20) DEFAULT NULL COMMENT '拥有人Id',
  `createId` bigint(20) NOT NULL COMMENT '创建人Id',
  `updateId` bigint(20) DEFAULT NULL COMMENT '更新人Id',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "tb_deptinfo"
#

INSERT INTO `tb_deptinfo` VALUES (1,0,1,'1','开发部','',1,1,0,1,1,1,'2018-08-08 00:00:00','2018-08-08 00:00:00'),(2,0,1,'2','销售部','',2,1,0,1,1,1,'2018-08-08 00:00:00','2018-08-08 00:00:00');

#
# Structure for table "tb_funcinfo"
#

DROP TABLE IF EXISTS `tb_funcinfo`;
CREATE TABLE `tb_funcinfo` (
  `id` bigint(20) NOT NULL COMMENT '主键Id',
  `parentId` bigint(20) DEFAULT NULL COMMENT '父级主键Id',
  `version` int(11) DEFAULT '1' COMMENT '版本',
  `code` varchar(50) DEFAULT NULL COMMENT '编码',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `remarks` varchar(150) DEFAULT NULL COMMENT '备注',
  `sortNum` int(11) DEFAULT '1' COMMENT '排序数字',
  `is_Enable` int(1) DEFAULT '1' COMMENT '是否启用',
  `is_Delete` int(1) DEFAULT '0' COMMENT '是否删除',
  `ownerId` bigint(20) DEFAULT NULL COMMENT '拥有人Id',
  `createId` bigint(20) NOT NULL COMMENT '创建人Id',
  `updateId` bigint(20) DEFAULT NULL COMMENT '更新人Id',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '修改时间',
  `routePath` varchar(150) DEFAULT NULL COMMENT '路由地址',
  `styleName` varchar(150) DEFAULT NULL COMMENT '样式名称',
  `levelVal` int(11) DEFAULT NULL COMMENT '级别（层次）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "tb_funcinfo"
#

INSERT INTO `tb_funcinfo` VALUES (1,0,1,'/index','首页','',1,1,0,1,1,1,'2018-08-08 00:00:00','2018-08-08 00:00:00','/index','el-icon-goods',1),(2,0,1,'2','学生管理','',2,1,0,1,1,1,'2018-08-08 00:00:00','2018-08-08 00:00:00','2','el-icon-message',1),(3,0,1,'3','系统管理','',3,1,0,1,1,1,'2018-08-08 00:00:00','2018-08-08 00:00:00','3','el-icon-service',1),(4,3,1,'/role','角色管理','',4,1,0,1,1,1,'2018-08-08 00:00:00','2018-08-08 00:00:00','/role','',2),(5,3,1,'/user-index','用户管理','',5,1,0,1,1,1,'2018-08-08 00:00:00','2018-08-08 00:00:00','/user-index','',2),(6,3,1,'/organize','组织管理','',6,1,0,1,1,1,'2018-08-08 00:00:00','2018-08-08 00:00:00','/organize','',2),(7,3,1,'/authority','权限管理','',7,1,0,1,1,1,'2018-08-08 00:00:00','2018-08-08 00:00:00','/authority','',2),(8,3,1,'/func','功能管理','',8,1,0,1,1,1,'2018-08-08 00:00:00','2018-08-08 00:00:00','/func','',2),(9,3,1,'/syslog','日志管理','',9,1,0,1,1,1,'2018-08-08 00:00:00','2018-08-08 00:00:00','/syslog','',2),(10,2,1,'/student','学生列表','',10,1,0,1,1,1,'2018-08-08 00:00:00','2018-08-08 00:00:00','/student','',2),(11,3,1,'/quartz','定时任务','',11,1,0,1,1,1,'2018-08-08 00:00:00','2018-08-08 00:00:00','/quartz','',2);

#
# Structure for table "tb_quartzjob"
#

DROP TABLE IF EXISTS `tb_quartzjob`;
CREATE TABLE `tb_quartzjob` (
  `id` bigint(20) NOT NULL COMMENT '主键Id',
  `parentId` bigint(20) DEFAULT NULL COMMENT '父级主键Id',
  `version` int(11) DEFAULT '1' COMMENT '版本',
  `code` varchar(50) DEFAULT NULL COMMENT '任务编码',
  `name` varchar(50) DEFAULT NULL COMMENT '任务名称',
  `remarks` varchar(150) DEFAULT NULL COMMENT '备注',
  `sortNum` int(11) DEFAULT '1' COMMENT '排序数字',
  `is_Enable` int(1) DEFAULT '1' COMMENT '是否启用',
  `is_Delete` int(1) DEFAULT '0' COMMENT '是否删除',
  `ownerId` bigint(20) DEFAULT NULL COMMENT '拥有人Id',
  `createId` bigint(20) NOT NULL COMMENT '创建人Id',
  `updateId` bigint(20) DEFAULT NULL COMMENT '更新人Id',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '修改时间',
  `jobGroup` varchar(50) DEFAULT NULL COMMENT '任务分组',
  `jobStatus` int(1) DEFAULT NULL COMMENT '任务状态',
  `jobCron` varchar(50) DEFAULT NULL COMMENT '任务表达式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "tb_quartzjob"
#


#
# Structure for table "tb_roleinfo"
#

DROP TABLE IF EXISTS `tb_roleinfo`;
CREATE TABLE `tb_roleinfo` (
  `id` bigint(20) NOT NULL COMMENT '主键Id',
  `parentId` bigint(20) DEFAULT NULL COMMENT '父级主键Id',
  `version` int(11) DEFAULT '1' COMMENT '版本',
  `code` varchar(50) DEFAULT NULL COMMENT '编码',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `remarks` varchar(150) DEFAULT NULL COMMENT '备注',
  `sortNum` int(11) DEFAULT '1' COMMENT '排序数字',
  `is_Enable` int(1) DEFAULT '1' COMMENT '是否启用',
  `is_Delete` int(1) DEFAULT '0' COMMENT '是否删除',
  `ownerId` bigint(20) DEFAULT NULL COMMENT '拥有人Id',
  `createId` bigint(20) NOT NULL COMMENT '创建人Id',
  `updateId` bigint(20) DEFAULT NULL COMMENT '更新人Id',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "tb_roleinfo"
#

INSERT INTO `tb_roleinfo` VALUES (1,0,1,'1','超级管理员','',1,1,0,1,1,1,'2018-08-08 00:00:00','2018-08-08 00:00:00'),(2,0,1,'2','管理员','',2,1,0,1,1,1,'2018-08-08 00:00:00','2018-08-08 00:00:00');

#
# Structure for table "tb_rolejoinfunc"
#

DROP TABLE IF EXISTS `tb_rolejoinfunc`;
CREATE TABLE `tb_rolejoinfunc` (
  `id` bigint(20) NOT NULL COMMENT '主键Id',
  `parentId` bigint(20) DEFAULT NULL COMMENT '父级主键Id',
  `version` int(11) DEFAULT '1' COMMENT '版本',
  `code` varchar(50) DEFAULT NULL COMMENT '编码',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `remarks` varchar(150) DEFAULT NULL COMMENT '备注',
  `sortNum` int(11) DEFAULT '1' COMMENT '排序数字',
  `is_Enable` int(1) DEFAULT '1' COMMENT '是否启用',
  `is_Delete` int(1) DEFAULT '0' COMMENT '是否删除',
  `ownerId` bigint(20) DEFAULT NULL COMMENT '拥有人Id',
  `createId` bigint(20) NOT NULL COMMENT '创建人Id',
  `updateId` bigint(20) DEFAULT NULL COMMENT '更新人Id',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '修改时间',
  `roleId` bigint(20) DEFAULT NULL COMMENT '角色Id',
  `funcId` bigint(20) DEFAULT NULL COMMENT '功能Id',
  `levelVal` int(11) DEFAULT NULL COMMENT '级别值域',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "tb_rolejoinfunc"
#

INSERT INTO `tb_rolejoinfunc` VALUES (1,0,1,'','','',1,1,0,1,1,1,'2018-08-08 00:00:00','2018-08-08 00:00:00',1,1,1),(2,0,1,'','','',1,1,0,1,1,1,'2018-08-08 00:00:00','2018-08-08 00:00:00',1,2,1),(3,0,1,'','','',1,1,0,1,1,1,'2018-08-08 00:00:00','2018-08-08 00:00:00',1,3,1),(4,0,1,'','','',1,1,0,1,1,1,'2018-08-08 00:00:00','2018-08-08 00:00:00',1,4,1),(5,0,1,'','','',1,1,0,1,1,1,'2018-08-08 00:00:00','2018-08-08 00:00:00',1,5,1),(6,0,1,'','','',1,1,0,1,1,1,'2018-08-08 00:00:00','2018-08-08 00:00:00',1,6,1),(7,0,1,'','','',1,1,0,1,1,1,'2018-08-08 00:00:00','2018-08-08 00:00:00',1,7,1),(8,0,1,'','','',1,1,0,1,1,1,'2018-08-08 00:00:00','2018-08-08 00:00:00',1,8,1),(9,0,1,'','','',1,1,0,1,1,1,'2018-08-08 00:00:00','2018-08-08 00:00:00',1,9,1),(10,0,1,'','','',1,1,0,1,1,1,'2018-08-08 00:00:00','2018-08-08 00:00:00',1,10,1),(11,0,1,'','','',1,1,0,1,1,1,'2018-08-08 00:00:00','2018-08-08 00:00:00',1,11,1);

#
# Structure for table "tb_student"
#

DROP TABLE IF EXISTS `tb_student`;
CREATE TABLE `tb_student` (
  `id` bigint(20) NOT NULL COMMENT '主键Id',
  `parentId` bigint(20) DEFAULT NULL COMMENT '父级主键Id',
  `version` int(11) DEFAULT '1' COMMENT '版本',
  `code` varchar(50) DEFAULT NULL COMMENT '学号',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `remarks` varchar(150) DEFAULT NULL COMMENT '备注',
  `sortNum` int(11) DEFAULT '1' COMMENT '排序数字',
  `is_Enable` int(1) DEFAULT '1' COMMENT '是否启用',
  `is_Delete` int(1) DEFAULT '0' COMMENT '是否删除',
  `ownerId` bigint(20) DEFAULT NULL COMMENT '拥有人Id',
  `createId` bigint(20) NOT NULL COMMENT '创建人Id',
  `updateId` bigint(20) DEFAULT NULL COMMENT '更新人Id',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "tb_student"
#


#
# Structure for table "tb_syslogs"
#

DROP TABLE IF EXISTS `tb_syslogs`;
CREATE TABLE `tb_syslogs` (
  `id` bigint(20) NOT NULL COMMENT '主键Id',
  `parentId` bigint(20) DEFAULT NULL COMMENT '父级主键Id',
  `version` int(11) DEFAULT '1' COMMENT '版本',
  `code` varchar(50) DEFAULT NULL COMMENT '编码',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `remarks` varchar(150) DEFAULT NULL COMMENT '备注',
  `sortNum` int(11) DEFAULT '1' COMMENT '排序数字',
  `is_Enable` int(1) DEFAULT '1' COMMENT '是否启用',
  `is_Delete` int(1) DEFAULT '0' COMMENT '是否删除',
  `ownerId` bigint(20) DEFAULT NULL COMMENT '拥有人Id',
  `createId` bigint(20) NOT NULL COMMENT '创建人Id',
  `updateId` bigint(20) DEFAULT NULL COMMENT '更新人Id',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '修改时间',
  `opererType` int(11) DEFAULT NULL COMMENT '操作类型',
  `opererContent` varchar(450) DEFAULT NULL COMMENT '操作内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "tb_syslogs"
#


#
# Structure for table "tb_userinfo"
#

DROP TABLE IF EXISTS `tb_userinfo`;
CREATE TABLE `tb_userinfo` (
  `id` bigint(20) NOT NULL COMMENT '主键Id',
  `parentId` bigint(20) DEFAULT NULL COMMENT '父级主键Id',
  `version` int(11) DEFAULT '1' COMMENT '版本',
  `code` varchar(50) DEFAULT NULL COMMENT '编码(用户名)',
  `name` varchar(50) DEFAULT NULL COMMENT '名称(昵称)',
  `remarks` varchar(150) DEFAULT NULL COMMENT '备注',
  `sortNum` int(11) DEFAULT '1' COMMENT '排序数字',
  `is_Enable` int(1) DEFAULT '1' COMMENT '是否启用',
  `is_Delete` int(1) DEFAULT '0' COMMENT '是否删除',
  `ownerId` bigint(20) DEFAULT NULL COMMENT '拥有人Id',
  `createId` bigint(20) NOT NULL COMMENT '创建人Id',
  `updateId` bigint(20) DEFAULT NULL COMMENT '更新人Id',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '修改时间',
  `passWord` varchar(150) DEFAULT NULL COMMENT '用户密码',
  `salt` varchar(36) DEFAULT NULL COMMENT '盐密码',
  `is_Male` int(1) DEFAULT NULL COMMENT '性别',
  `phoneNum` varchar(15) DEFAULT NULL COMMENT '手机号码',
  `roleId` bigint(20) DEFAULT NULL COMMENT '角色Id',
  `deptId` bigint(20) DEFAULT NULL COMMENT '部门Id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "tb_userinfo"
#

INSERT INTO `tb_userinfo` VALUES (1,0,1,'admin','超级用户','超级管理员',1,1,0,1,1,1,'2018-08-08 00:00:00','2018-08-08 00:00:00','e97ab12c758201995e51635e2e78cd33','8b4757dc-99d6-446f-907a-d4b8f6060a8e',1,'15812345678',1,1);
