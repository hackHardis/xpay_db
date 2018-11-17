/*
SQLyog Ultimate v12.4.1 (64 bit)
MySQL - 5.7.19-log : Database - ry
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
USE `ry`;

/*Table structure for table `qrtz_blob_triggers` */

DROP TABLE IF EXISTS `qrtz_blob_triggers`;

CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `blob_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `qrtz_blob_triggers` */

/*Table structure for table `qrtz_calendars` */

DROP TABLE IF EXISTS `qrtz_calendars`;

CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL,
  `calendar_name` varchar(200) NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `qrtz_calendars` */

/*Table structure for table `qrtz_cron_triggers` */

DROP TABLE IF EXISTS `qrtz_cron_triggers`;

CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `cron_expression` varchar(200) NOT NULL,
  `time_zone_id` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `qrtz_cron_triggers` */

insert  into `qrtz_cron_triggers`(`sched_name`,`trigger_name`,`trigger_group`,`cron_expression`,`time_zone_id`) values 
('RuoyiScheduler','__TASK_CLASS_NAME__1','DEFAULT','0/10 * * * * ?','Asia/Shanghai'),
('RuoyiScheduler','__TASK_CLASS_NAME__2','DEFAULT','0/20 * * * * ?','Asia/Shanghai');

/*Table structure for table `qrtz_fired_triggers` */

DROP TABLE IF EXISTS `qrtz_fired_triggers`;

CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `entry_id` varchar(95) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `fired_time` bigint(13) NOT NULL,
  `sched_time` bigint(13) NOT NULL,
  `priority` int(11) NOT NULL,
  `state` varchar(16) NOT NULL,
  `job_name` varchar(200) DEFAULT NULL,
  `job_group` varchar(200) DEFAULT NULL,
  `is_nonconcurrent` varchar(1) DEFAULT NULL,
  `requests_recovery` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `qrtz_fired_triggers` */

/*Table structure for table `qrtz_job_details` */

DROP TABLE IF EXISTS `qrtz_job_details`;

CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `job_class_name` varchar(250) NOT NULL,
  `is_durable` varchar(1) NOT NULL,
  `is_nonconcurrent` varchar(1) NOT NULL,
  `is_update_data` varchar(1) NOT NULL,
  `requests_recovery` varchar(1) NOT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `qrtz_job_details` */

insert  into `qrtz_job_details`(`sched_name`,`job_name`,`job_group`,`description`,`job_class_name`,`is_durable`,`is_nonconcurrent`,`is_update_data`,`requests_recovery`,`job_data`) values 
('RuoyiScheduler','__TASK_CLASS_NAME__1','DEFAULT',NULL,'com.ruoyi.quartz.util.ScheduleJob','0','0','0','0','��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0__TASK_PROPERTIES__sr\0com.ruoyi.quartz.domain.SysJob\0\0\0\0\0\0\0\0L\0cronExpressiont\0Ljava/lang/String;L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\nmethodNameq\0~\0	L\0methodParamsq\0~\0	L\0\rmisfirePolicyq\0~\0	L\0statusq\0~\0	xr\0 com.ruoyi.common.base.BaseEntity\0\0\0\0\0\0\0\0L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0paramsq\0~\0L\0remarkq\0~\0	L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xpt\0adminsr\0java.util.Datehj�KYt\0\0xpw\0\0b,�)�xpt\0\0pppt\00/10 * * * * ?t\0系统默认（无参）sr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0t\0ryTaskt\0\nryNoParamst\0\0t\01t\01x\0'),
('RuoyiScheduler','__TASK_CLASS_NAME__2','DEFAULT',NULL,'com.ruoyi.quartz.util.ScheduleJob','0','0','0','0','��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0__TASK_PROPERTIES__sr\0com.ruoyi.quartz.domain.SysJob\0\0\0\0\0\0\0\0L\0cronExpressiont\0Ljava/lang/String;L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\nmethodNameq\0~\0	L\0methodParamsq\0~\0	L\0\rmisfirePolicyq\0~\0	L\0statusq\0~\0	xr\0 com.ruoyi.common.base.BaseEntity\0\0\0\0\0\0\0\0L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0paramsq\0~\0L\0remarkq\0~\0	L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xpt\0adminsr\0java.util.Datehj�KYt\0\0xpw\0\0b,�)�xpt\0\0pppt\00/20 * * * * ?t\0系统默认（有参）sr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0t\0ryTaskt\0ryParamst\0ryt\01t\01x\0');

/*Table structure for table `qrtz_locks` */

DROP TABLE IF EXISTS `qrtz_locks`;

CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL,
  `lock_name` varchar(40) NOT NULL,
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `qrtz_locks` */

insert  into `qrtz_locks`(`sched_name`,`lock_name`) values 
('RuoyiScheduler','STATE_ACCESS'),
('RuoyiScheduler','TRIGGER_ACCESS');

/*Table structure for table `qrtz_paused_trigger_grps` */

DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;

CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `qrtz_paused_trigger_grps` */

/*Table structure for table `qrtz_scheduler_state` */

DROP TABLE IF EXISTS `qrtz_scheduler_state`;

CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `last_checkin_time` bigint(13) NOT NULL,
  `checkin_interval` bigint(13) NOT NULL,
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `qrtz_scheduler_state` */

insert  into `qrtz_scheduler_state`(`sched_name`,`instance_name`,`last_checkin_time`,`checkin_interval`) values 
('RuoyiScheduler','DESKTOP-RFP222J1542433609413',1542434589961,15000);

/*Table structure for table `qrtz_simple_triggers` */

DROP TABLE IF EXISTS `qrtz_simple_triggers`;

CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `repeat_count` bigint(7) NOT NULL,
  `repeat_interval` bigint(12) NOT NULL,
  `times_triggered` bigint(10) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `qrtz_simple_triggers` */

/*Table structure for table `qrtz_simprop_triggers` */

DROP TABLE IF EXISTS `qrtz_simprop_triggers`;

CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `str_prop_1` varchar(512) DEFAULT NULL,
  `str_prop_2` varchar(512) DEFAULT NULL,
  `str_prop_3` varchar(512) DEFAULT NULL,
  `int_prop_1` int(11) DEFAULT NULL,
  `int_prop_2` int(11) DEFAULT NULL,
  `long_prop_1` bigint(20) DEFAULT NULL,
  `long_prop_2` bigint(20) DEFAULT NULL,
  `dec_prop_1` decimal(13,4) DEFAULT NULL,
  `dec_prop_2` decimal(13,4) DEFAULT NULL,
  `bool_prop_1` varchar(1) DEFAULT NULL,
  `bool_prop_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `qrtz_simprop_triggers` */

/*Table structure for table `qrtz_triggers` */

DROP TABLE IF EXISTS `qrtz_triggers`;

CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `next_fire_time` bigint(13) DEFAULT NULL,
  `prev_fire_time` bigint(13) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `trigger_state` varchar(16) NOT NULL,
  `trigger_type` varchar(8) NOT NULL,
  `start_time` bigint(13) NOT NULL,
  `end_time` bigint(13) DEFAULT NULL,
  `calendar_name` varchar(200) DEFAULT NULL,
  `misfire_instr` smallint(2) DEFAULT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `qrtz_triggers` */

insert  into `qrtz_triggers`(`sched_name`,`trigger_name`,`trigger_group`,`job_name`,`job_group`,`description`,`next_fire_time`,`prev_fire_time`,`priority`,`trigger_state`,`trigger_type`,`start_time`,`end_time`,`calendar_name`,`misfire_instr`,`job_data`) values 
('RuoyiScheduler','__TASK_CLASS_NAME__1','DEFAULT','__TASK_CLASS_NAME__1','DEFAULT',NULL,1541905340000,-1,5,'PAUSED','CRON',1541905336000,0,NULL,-1,'��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0__TASK_PROPERTIES__sr\0com.ruoyi.quartz.domain.SysJob\0\0\0\0\0\0\0\0L\0cronExpressiont\0Ljava/lang/String;L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\nmethodNameq\0~\0	L\0methodParamsq\0~\0	L\0\rmisfirePolicyq\0~\0	L\0statusq\0~\0	xr\0 com.ruoyi.common.base.BaseEntity\0\0\0\0\0\0\0\0L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0paramsq\0~\0L\0remarkq\0~\0	L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xpt\0adminsr\0java.util.Datehj�KYt\0\0xpw\0\0b,�)�xpt\0\0pppt\00/10 * * * * ?t\0系统默认（无参）sr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0t\0ryTaskt\0\nryNoParamst\0\0t\01t\01x\0'),
('RuoyiScheduler','__TASK_CLASS_NAME__2','DEFAULT','__TASK_CLASS_NAME__2','DEFAULT',NULL,1541905340000,-1,5,'PAUSED','CRON',1541905336000,0,NULL,-1,'��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0__TASK_PROPERTIES__sr\0com.ruoyi.quartz.domain.SysJob\0\0\0\0\0\0\0\0L\0cronExpressiont\0Ljava/lang/String;L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\nmethodNameq\0~\0	L\0methodParamsq\0~\0	L\0\rmisfirePolicyq\0~\0	L\0statusq\0~\0	xr\0 com.ruoyi.common.base.BaseEntity\0\0\0\0\0\0\0\0L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0paramsq\0~\0L\0remarkq\0~\0	L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xpt\0adminsr\0java.util.Datehj�KYt\0\0xpw\0\0b,�)�xpt\0\0pppt\00/20 * * * * ?t\0系统默认（有参）sr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0t\0ryTaskt\0ryParamst\0ryt\01t\01x\0');

/*Table structure for table `sys_config` */

DROP TABLE IF EXISTS `sys_config`;

CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(100) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='参数配置表';

/*Data for the table `sys_config` */

insert  into `sys_config`(`config_id`,`config_name`,`config_key`,`config_value`,`config_type`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(1,'主框架页-默认皮肤样式名称','sys.index.skinName','skin-default','Y','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','默认 skin-default、蓝色 skin-blue、黄色 skin-yellow'),
(2,'用户管理-账号初始密码','sys.user.initPassword','123456','Y','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','初始化密码 123456');

/*Table structure for table `sys_dept` */

DROP TABLE IF EXISTS `sys_dept`;

CREATE TABLE `sys_dept` (
  `dept_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` int(11) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT '' COMMENT '负责人',
  `phone` varchar(11) DEFAULT '' COMMENT '联系电话',
  `email` varchar(50) DEFAULT '' COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COMMENT='部门表';

/*Data for the table `sys_dept` */

insert  into `sys_dept`(`dept_id`,`parent_id`,`ancestors`,`dept_name`,`order_num`,`leader`,`phone`,`email`,`status`,`del_flag`,`create_by`,`create_time`,`update_by`,`update_time`) values 
(100,0,'0','汇丰科技',0,'小A','15888888888','xx@qq.com','0','0','admin','2018-03-16 11:33:00','admin','2018-11-14 21:39:35'),
(101,100,'0,100','深圳总公司',1,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),
(102,100,'0,100','长沙分公司',2,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),
(103,101,'0,100,101','研发部门',1,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),
(104,101,'0,100,101','市场部门',2,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),
(105,101,'0,100,101','测试部门',3,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),
(106,101,'0,100,101','财务部门',4,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),
(107,101,'0,100,101','运维部门',5,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),
(108,102,'0,100,102','市场部门',1,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),
(109,102,'0,100,102','财务部门',2,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),
(200,100,'0,100','运营商',99,'','','','0','0','admin','2018-11-11 17:40:58','',NULL);

/*Table structure for table `sys_dict_data` */

DROP TABLE IF EXISTS `sys_dict_data`;

CREATE TABLE `sys_dict_data` (
  `dict_code` int(11) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT '' COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT '' COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8 COMMENT='字典数据表';

/*Data for the table `sys_dict_data` */

insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(1,1,'男','0','sys_user_sex','','','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','性别男'),
(2,2,'女','1','sys_user_sex','','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','性别女'),
(3,3,'未知','2','sys_user_sex','','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','性别未知'),
(4,1,'显示','0','sys_show_hide','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','显示菜单'),
(5,2,'隐藏','1','sys_show_hide','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','隐藏菜单'),
(6,1,'正常','0','sys_normal_disable','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','正常状态'),
(7,2,'停用','1','sys_normal_disable','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','停用状态'),
(8,1,'正常','0','sys_job_status','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','正常状态'),
(9,2,'暂停','1','sys_job_status','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','停用状态'),
(10,1,'是','Y','sys_yes_no','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统默认是'),
(11,2,'否','N','sys_yes_no','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统默认否'),
(12,1,'通知','1','sys_notice_type','','warning','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','通知'),
(13,2,'公告','2','sys_notice_type','','success','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','公告'),
(14,1,'正常','0','sys_notice_status','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','正常状态'),
(15,2,'关闭','1','sys_notice_status','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','关闭状态'),
(16,1,'新增','1','sys_oper_type','','info','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','新增操作'),
(17,2,'修改','2','sys_oper_type','','info','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','修改操作'),
(18,3,'删除','3','sys_oper_type','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','删除操作'),
(19,4,'授权','4','sys_oper_type','','primary','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','授权操作'),
(20,5,'导出','5','sys_oper_type','','warning','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','导出操作'),
(21,6,'导入','6','sys_oper_type','','warning','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','导入操作'),
(22,7,'强退','7','sys_oper_type','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','强退操作'),
(23,8,'生成代码','8','sys_oper_type','','warning','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','生成操作'),
(24,8,'清空数据','9','sys_oper_type','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','清空操作'),
(25,1,'成功','0','sys_common_status','','primary','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','正常状态'),
(26,2,'失败','1','sys_common_status','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','停用状态'),
(100,1,'禁用','0','u_merchant_status','','warning','Y','0','admin','2018-11-13 21:47:04','admin','2018-11-13 21:50:03','禁用状态'),
(101,2,'正常','1','u_merchant_status','','primary','Y','0','admin','2018-11-13 21:49:07','',NULL,'正常状态'),
(102,3,'欠费','2','u_merchant_status','','danger','Y','0','admin','2018-11-13 21:49:50','',NULL,'欠费状态'),
(103,1,'启用','1','u_receipt_account_status','','primary','Y','0','admin','2018-11-14 19:41:06','',NULL,''),
(104,2,'禁用','0','u_receipt_account_status','','warning','Y','0','admin','2018-11-14 19:42:05','',NULL,''),
(105,3,'限额','2','u_receipt_account_status','','danger','Y','0','admin','2018-11-14 19:42:35','',NULL,''),
(106,1,'支付宝','alipay','u_receipt_account_type','','info','Y','0','admin','2018-11-14 19:50:40','admin','2018-11-14 20:42:55',''),
(107,2,'微信','wechat','u_receipt_account_type','','info','Y','0','admin','2018-11-14 19:50:58','admin','2018-11-14 20:42:52',''),
(108,3,'支付宝个人','alipay_sp','u_receipt_account_type','','info','Y','0','admin','2018-11-14 19:51:26','admin','2018-11-14 20:42:59',''),
(109,4,'微信个人','wechat_sp','u_receipt_account_type','','info','Y','0','admin','2018-11-14 19:51:41','admin','2018-11-14 20:43:02',''),
(110,1,'支付宝扫码','alipay_qr','u_payment_type','','info','Y','0','admin','2018-11-14 19:54:13','admin','2018-11-14 20:42:28',''),
(111,2,'支付宝APP','alipay_app','u_payment_type','','info','Y','0','admin','2018-11-14 19:54:30','',NULL,''),
(112,3,'微信扫码','wechat_qr','u_payment_type','','info','Y','0','admin','2018-11-14 19:54:48','',NULL,''),
(113,4,'微信APP','wechat_app','u_payment_type','','info','Y','0','admin','2018-11-14 19:55:07','',NULL,''),
(114,5,'特别微信扫码','wechat_qr_sp','u_payment_type','','info','Y','0','admin','2018-11-14 19:56:16','',NULL,'');

/*Table structure for table `sys_dict_type` */

DROP TABLE IF EXISTS `sys_dict_type`;

CREATE TABLE `sys_dict_type` (
  `dict_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 COMMENT='字典类型表';

/*Data for the table `sys_dict_type` */

insert  into `sys_dict_type`(`dict_id`,`dict_name`,`dict_type`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(1,'用户性别','sys_user_sex','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','用户性别列表'),
(2,'菜单状态','sys_show_hide','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','菜单状态列表'),
(3,'系统开关','sys_normal_disable','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统开关列表'),
(4,'任务状态','sys_job_status','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','任务状态列表'),
(5,'系统是否','sys_yes_no','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统是否列表'),
(6,'通知类型','sys_notice_type','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','通知类型列表'),
(7,'通知状态','sys_notice_status','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','通知状态列表'),
(8,'操作类型','sys_oper_type','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','操作类型列表'),
(9,'系统状态','sys_common_status','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','登录状态列表'),
(100,'商户状态','u_merchant_status','0','admin','2018-11-13 21:44:52','',NULL,'商户状态列表'),
(101,'收款账号状态','u_receipt_account_status','0','admin','2018-11-14 19:40:08','admin','2018-11-14 19:40:21','收款账号状态'),
(102,'收款账号类型','u_receipt_account_type','0','admin','2018-11-14 19:49:08','',NULL,'收款账号类型'),
(103,'支付类型','u_payment_type','0','admin','2018-11-14 19:53:50','',NULL,'支付类型');

/*Table structure for table `sys_job` */

DROP TABLE IF EXISTS `sys_job`;

CREATE TABLE `sys_job` (
  `job_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT '' COMMENT '任务组名',
  `method_name` varchar(500) DEFAULT '' COMMENT '任务方法',
  `method_params` varchar(200) DEFAULT '' COMMENT '方法参数',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '1' COMMENT '计划执行错误策略（1继续 2等待 3放弃）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='定时任务调度表';

/*Data for the table `sys_job` */

insert  into `sys_job`(`job_id`,`job_name`,`job_group`,`method_name`,`method_params`,`cron_expression`,`misfire_policy`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(1,'ryTask','系统默认（无参）','ryNoParams','','0/10 * * * * ?','1','1','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(2,'ryTask','系统默认（有参）','ryParams','ry','0/20 * * * * ?','1','1','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');

/*Table structure for table `sys_job_log` */

DROP TABLE IF EXISTS `sys_job_log`;

CREATE TABLE `sys_job_log` (
  `job_log_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `method_name` varchar(500) DEFAULT NULL COMMENT '任务方法',
  `method_params` varchar(200) DEFAULT '' COMMENT '方法参数',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` text COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务调度日志表';

/*Data for the table `sys_job_log` */

/*Table structure for table `sys_logininfor` */

DROP TABLE IF EXISTS `sys_logininfor`;

CREATE TABLE `sys_logininfor` (
  `info_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=utf8 COMMENT='系统访问记录';

/*Data for the table `sys_logininfor` */

insert  into `sys_logininfor`(`info_id`,`login_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values 
(100,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-11 11:03:38'),
(101,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2018-11-11 11:05:51'),
(102,'test','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-11 11:05:58'),
(103,'test','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2018-11-11 11:06:03'),
(104,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-11 11:06:08'),
(105,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2018-11-11 16:27:23'),
(106,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-11 16:27:27'),
(107,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-11 17:34:46'),
(108,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-11 21:34:29'),
(109,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2018-11-11 22:05:24'),
(110,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-11 22:05:27'),
(111,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2018-11-11 22:06:29'),
(112,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-11 22:06:32'),
(113,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2018-11-11 22:07:14'),
(114,'test','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-11 22:07:22'),
(115,'test','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2018-11-11 22:07:41'),
(116,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-11 22:07:44'),
(117,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2018-11-11 22:07:59'),
(118,'test','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-11 22:08:04'),
(119,'test','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2018-11-11 22:09:35'),
(120,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-11 22:09:39'),
(121,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-11 22:59:58'),
(122,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-11 23:07:09'),
(123,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-11 23:18:09'),
(124,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-11 23:38:21'),
(125,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2018-11-11 23:40:06'),
(126,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-11 23:40:08'),
(127,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-12 22:31:09'),
(128,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-12 22:45:15'),
(129,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-13 19:15:57'),
(130,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-13 20:47:24'),
(131,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-13 21:35:24'),
(132,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2018-11-13 22:05:22'),
(133,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2018-11-13 22:05:25'),
(134,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-13 22:05:27'),
(135,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-13 22:52:32'),
(136,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2018-11-13 23:19:14'),
(137,'test','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-13 23:19:24'),
(138,'test','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2018-11-13 23:19:43'),
(139,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-13 23:19:47'),
(140,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-13 23:26:19'),
(141,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2018-11-13 23:39:49'),
(142,'om','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-13 23:39:56'),
(143,'om','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2018-11-13 23:40:44'),
(144,'test','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-13 23:40:52'),
(145,'test','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2018-11-13 23:40:56'),
(146,'om','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-13 23:41:01'),
(147,'om','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2018-11-13 23:41:14'),
(148,'test','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-13 23:41:20'),
(149,'test','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2018-11-13 23:41:27'),
(150,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-13 23:41:30'),
(151,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2018-11-13 23:43:59'),
(152,'om','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-13 23:44:05'),
(153,'om','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2018-11-13 23:44:08'),
(154,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-13 23:44:11'),
(155,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2018-11-13 23:45:23'),
(156,'om','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-13 23:45:27'),
(157,'om','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2018-11-13 23:46:25'),
(158,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-13 23:46:30'),
(159,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2018-11-13 23:50:06'),
(160,'system','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-13 23:50:12'),
(161,'system','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2018-11-13 23:52:10'),
(162,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-13 23:52:12'),
(163,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2018-11-14 00:55:56'),
(164,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-14 00:55:58'),
(165,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-14 19:16:09'),
(166,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-14 19:37:10'),
(167,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-14 20:09:18'),
(168,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-14 20:27:34'),
(169,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2018-11-14 21:12:07'),
(170,'system','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2018-11-14 21:12:13'),
(171,'system','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2018-11-14 21:12:16'),
(172,'system','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-14 21:12:17'),
(173,'system','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2018-11-14 21:12:36'),
(174,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-14 21:12:38'),
(175,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2018-11-14 21:13:31'),
(176,'system','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-14 21:13:36'),
(177,'system','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2018-11-14 21:14:02'),
(178,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-14 21:14:04'),
(179,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2018-11-14 21:14:18'),
(180,'system','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-14 21:14:24'),
(181,'system','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2018-11-14 21:14:49'),
(182,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-14 21:14:52'),
(183,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2018-11-14 21:15:17'),
(184,'system','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2018-11-14 21:15:21'),
(185,'system','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-14 21:15:23'),
(186,'system','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2018-11-14 21:15:40'),
(187,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-14 21:15:43'),
(188,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2018-11-14 21:16:26'),
(189,'system','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-14 21:16:31'),
(190,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-14 21:20:40'),
(191,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2018-11-14 21:22:42'),
(192,'system','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-14 21:22:49'),
(193,'system','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2018-11-14 21:26:06'),
(194,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-14 21:26:09'),
(195,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2018-11-14 21:38:31'),
(196,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-14 21:38:35'),
(197,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-14 22:09:02'),
(198,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-15 19:06:19'),
(199,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-15 20:01:08'),
(200,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-15 20:55:20'),
(201,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-15 20:58:41'),
(202,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-15 21:35:54'),
(203,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-15 22:27:22'),
(204,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-15 22:56:49'),
(205,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-15 23:34:28'),
(206,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-15 23:37:23'),
(207,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-16 00:25:37'),
(208,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2018-11-16 00:34:31'),
(209,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-16 00:34:34'),
(210,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-16 00:39:31'),
(211,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-16 00:51:25'),
(212,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-16 00:57:49'),
(213,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-16 01:33:24'),
(214,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2018-11-17 13:47:37');

/*Table structure for table `sys_menu` */

DROP TABLE IF EXISTS `sys_menu`;

CREATE TABLE `sys_menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` int(11) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `url` varchar(200) DEFAULT '#' COMMENT '请求地址',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) DEFAULT '' COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2026 DEFAULT CHARSET=utf8 COMMENT='菜单权限表';

/*Data for the table `sys_menu` */

insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`url`,`menu_type`,`visible`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(1,'系统管理',0,1,'#','M','0','','fa fa-gear','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统管理目录'),
(2,'系统监控',0,3,'#','M','0','','fa fa-video-camera','admin','2018-03-16 11:33:00','admin','2018-11-14 21:54:40','系统监控目录'),
(3,'系统工具',0,4,'#','M','0','','fa fa-bars','admin','2018-03-16 11:33:00','admin','2018-11-14 21:54:29','系统工具目录'),
(100,'用户管理',1,1,'/system/user','C','0','system:user:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','用户管理菜单'),
(101,'角色管理',1,2,'/system/role','C','0','system:role:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','角色管理菜单'),
(102,'菜单管理',1,3,'/system/menu','C','0','system:menu:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','菜单管理菜单'),
(103,'部门管理',1,4,'/system/dept','C','0','system:dept:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','部门管理菜单'),
(104,'岗位管理',1,5,'/system/post','C','0','system:post:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','岗位管理菜单'),
(105,'字典管理',1,6,'/system/dict','C','0','system:dict:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','字典管理菜单'),
(106,'参数设置',1,7,'/system/config','C','0','system:config:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','参数设置菜单'),
(107,'通知公告',1,8,'/system/notice','C','0','system:notice:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','通知公告菜单'),
(108,'日志管理',1,9,'#','M','0','','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','日志管理菜单'),
(109,'在线用户',2,1,'/monitor/online','C','0','monitor:online:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','在线用户菜单'),
(110,'定时任务',2,2,'/monitor/job','C','0','monitor:job:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','定时任务菜单'),
(111,'数据监控',2,3,'/monitor/data','C','0','monitor:data:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','数据监控菜单'),
(112,'表单构建',3,1,'/tool/build','C','0','tool:build:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','表单构建菜单'),
(113,'代码生成',3,2,'/tool/gen','C','0','tool:gen:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','代码生成菜单'),
(114,'系统接口',3,3,'/tool/swagger','C','0','tool:swagger:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统接口菜单'),
(500,'操作日志',108,1,'/monitor/operlog','C','0','monitor:operlog:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','操作日志菜单'),
(501,'登录日志',108,2,'/monitor/logininfor','C','0','monitor:logininfor:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','登录日志菜单'),
(1000,'用户查询',100,1,'#','F','0','system:user:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(1001,'用户新增',100,2,'#','F','0','system:user:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(1002,'用户修改',100,3,'#','F','0','system:user:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(1003,'用户删除',100,4,'#','F','0','system:user:remove','#','admin','2018-03-16 11:33:00','admin','2018-11-13 23:18:35',''),
(1004,'用户导出',100,5,'#','F','0','system:user:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(1005,'重置密码',100,5,'#','F','0','system:user:resetPwd','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(1006,'角色查询',101,1,'#','F','0','system:role:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(1007,'角色新增',101,2,'#','F','0','system:role:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(1008,'角色修改',101,3,'#','F','0','system:role:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(1009,'角色删除',101,4,'#','F','0','system:role:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(1010,'角色导出',101,4,'#','F','0','system:role:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(1011,'菜单查询',102,1,'#','F','0','system:menu:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(1012,'菜单新增',102,2,'#','F','0','system:menu:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(1013,'菜单修改',102,3,'#','F','0','system:menu:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(1014,'菜单删除',102,4,'#','F','0','system:menu:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(1015,'部门查询',103,1,'#','F','0','system:dept:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(1016,'部门新增',103,2,'#','F','0','system:dept:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(1017,'部门修改',103,3,'#','F','0','system:dept:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(1018,'部门删除',103,4,'#','F','0','system:dept:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(1019,'岗位查询',104,1,'#','F','0','system:post:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(1020,'岗位新增',104,2,'#','F','0','system:post:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(1021,'岗位修改',104,3,'#','F','0','system:post:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(1022,'岗位删除',104,4,'#','F','0','system:post:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(1023,'岗位导出',104,4,'#','F','0','system:post:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(1024,'字典查询',105,1,'#','F','0','system:dict:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(1025,'字典新增',105,2,'#','F','0','system:dict:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(1026,'字典修改',105,3,'#','F','0','system:dict:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(1027,'字典删除',105,4,'#','F','0','system:dict:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(1028,'字典导出',105,4,'#','F','0','system:dict:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(1029,'参数查询',106,1,'#','F','0','system:config:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(1030,'参数新增',106,2,'#','F','0','system:config:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(1031,'参数修改',106,3,'#','F','0','system:config:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(1032,'参数删除',106,4,'#','F','0','system:config:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(1033,'参数导出',106,4,'#','F','0','system:config:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(1034,'公告查询',107,1,'#','F','0','system:notice:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(1035,'公告新增',107,2,'#','F','0','system:notice:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(1036,'公告修改',107,3,'#','F','0','system:notice:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(1037,'公告删除',107,4,'#','F','0','system:notice:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(1038,'操作查询',500,1,'#','F','0','monitor:operlog:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(1039,'操作删除',500,2,'#','F','0','monitor:operlog:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(1040,'详细信息',500,3,'#','F','0','monitor:operlog:detail','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(1041,'日志导出',500,3,'#','F','0','monitor:operlog:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(1042,'登录查询',501,1,'#','F','0','monitor:logininfor:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(1043,'登录删除',501,2,'#','F','0','monitor:logininfor:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(1044,'日志导出',501,2,'#','F','0','monitor:logininfor:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(1045,'在线查询',109,1,'#','F','0','monitor:online:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(1046,'批量强退',109,2,'#','F','0','monitor:online:batchForceLogout','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(1047,'单条强退',109,3,'#','F','0','monitor:online:forceLogout','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(1048,'任务查询',110,1,'#','F','0','monitor:job:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(1049,'任务新增',110,2,'#','F','0','monitor:job:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(1050,'任务修改',110,3,'#','F','0','monitor:job:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(1051,'任务删除',110,4,'#','F','0','monitor:job:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(1052,'状态修改',110,5,'#','F','0','monitor:job:changeStatus','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(1053,'任务导出',110,5,'#','F','0','monitor:job:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(1054,'生成查询',113,1,'#','F','0','tool:gen:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(1055,'生成代码',113,2,'#','F','0','tool:gen:code','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(2005,'商户信息',2020,1,'/om/merchantInfo','C','0','om:merchantInfo:view','#','admin','2018-03-01 00:00:00','admin','2018-11-14 21:59:19','商户菜单'),
(2006,'商户查询',2005,1,'#','F','0','om:merchantInfo:list','#','admin','2018-03-01 00:00:00','admin','2018-11-14 21:59:36',''),
(2007,'商户新增',2005,2,'#','F','0','om:merchantInfo:add','#','admin','2018-03-01 00:00:00','admin','2018-11-11 23:23:02',''),
(2008,'商户修改',2005,3,'#','F','0','om:merchantInfo:edit','#','admin','2018-03-01 00:00:00','admin','2018-11-11 23:23:11',''),
(2009,'商户删除',2005,4,'#','F','0','om:merchantInfo:remove','#','admin','2018-03-01 00:00:00','admin','2018-11-11 23:23:20',''),
(2010,'收款账号',2020,2,'/om/receiptAccounts','C','0','om:receiptAccounts:view','#','admin','2018-03-01 00:00:00','admin','2018-11-14 21:55:26','收款账号菜单'),
(2011,'收款账号查询',2010,1,'#','F','0','om:receiptAccounts:list','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),
(2012,'收款账号新增',2010,2,'#','F','0','om:receiptAccounts:add','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),
(2013,'收款账号修改',2010,3,'#','F','0','om:receiptAccounts:edit','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),
(2014,'收款账号删除',2010,4,'#','F','0','om:receiptAccounts:remove','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),
(2020,'运营管理',0,2,'#','M','0','','fa fa-balance-scale','admin','2018-11-14 21:54:16','',NULL,''),
(2021,'收款规则',2020,3,'/om/merchantReceipts','C','0','om:merchantReceipts:view','#','admin','2018-03-01 00:00:00','admin','2018-11-14 21:57:45','收款账号规则菜单'),
(2022,'收款规则查询',2021,1,'#','F','0','om:merchantReceipts:list','#','admin','2018-03-01 00:00:00','admin','2018-11-14 22:13:55',''),
(2023,'收款规则新增',2021,2,'#','F','0','om:merchantReceipts:add','#','admin','2018-03-01 00:00:00','admin','2018-11-14 22:14:03',''),
(2024,'收款规则修改',2021,3,'#','F','0','om:merchantReceipts:edit','#','admin','2018-03-01 00:00:00','admin','2018-11-14 22:14:09',''),
(2025,'收款规则删除',2021,4,'#','F','0','om:merchantReceipts:remove','#','admin','2018-03-01 00:00:00','admin','2018-11-14 22:14:16','');

/*Table structure for table `sys_notice` */

DROP TABLE IF EXISTS `sys_notice`;

CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(2) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(500) NOT NULL COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='通知公告表';

/*Data for the table `sys_notice` */

insert  into `sys_notice`(`notice_id`,`notice_title`,`notice_type`,`notice_content`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(1,'温馨提醒：2018-07-01 汇丰科技新版本发布啦','2','新版本内容','0','admin','2018-03-16 11:33:00','admin','2018-11-14 21:40:15','管理员'),
(2,'维护通知：2018-07-01 汇丰科技系统凌晨维护','1','维护内容','0','admin','2018-03-16 11:33:00','admin','2018-11-14 21:40:24','管理员');

/*Table structure for table `sys_oper_log` */

DROP TABLE IF EXISTS `sys_oper_log`;

CREATE TABLE `sys_oper_log` (
  `oper_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(30) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(255) DEFAULT '' COMMENT '请求参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=281 DEFAULT CHARSET=utf8 COMMENT='操作日志记录';

/*Data for the table `sys_oper_log` */

insert  into `sys_oper_log`(`oper_id`,`title`,`business_type`,`method`,`operator_type`,`oper_name`,`dept_name`,`oper_url`,`oper_ip`,`oper_location`,`oper_param`,`status`,`error_msg`,`oper_time`) values 
(100,'用户管理',1,'com.ruoyi.web.controller.system.SysUserController.addSave()',1,'admin','研发部门','/system/user/add','127.0.0.1','内网IP','{\r\n  \"deptId\" : [ \"106\" ],\r\n  \"loginName\" : [ \"test\" ],\r\n  \"userName\" : [ \"test\" ],\r\n  \"password\" : [ \"111111\" ],\r\n  \"email\" : [ \"test@1.1\" ],\r\n  \"phonenumber\" : [ \"13666666666\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"2\" ],\r\n  \"pos',0,NULL,'2018-11-11 11:04:47'),
(101,'角色管理',1,'com.ruoyi.web.controller.system.SysRoleController.addSave()',1,'admin','研发部门','/system/role/add','127.0.0.1','内网IP','{\r\n  \"roleName\" : [ \"test\" ],\r\n  \"roleKey\" : [ \"test\" ],\r\n  \"roleSort\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2,109,1045,1046,1047,110,1048,1049,1050,1051,1052,1053,111\" ]\r\n}',0,NULL,'2018-11-11 11:05:35'),
(102,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.editSave()',1,'admin','研发部门','/system/user/edit','127.0.0.1','内网IP','{\r\n  \"userId\" : [ \"100\" ],\r\n  \"deptId\" : [ \"106\" ],\r\n  \"userName\" : [ \"test\" ],\r\n  \"email\" : [ \"test@1.1\" ],\r\n  \"phonenumber\" : [ \"13666666666\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"100\" ],\r\n  \"postIds\" : [ \"4\" ]\r\n}',0,NULL,'2018-11-11 11:05:47'),
(103,'部门管理',1,'com.ruoyi.web.controller.system.SysDeptController.addSave()',1,'admin','研发部门','/system/dept/add','127.0.0.1','内网IP','{\r\n  \"parentId\" : [ \"100\" ],\r\n  \"deptName\" : [ \"运营商\" ],\r\n  \"orderNum\" : [ \"99\" ],\r\n  \"leader\" : [ \"\" ],\r\n  \"phone\" : [ \"\" ],\r\n  \"email\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2018-11-11 17:40:58'),
(104,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.editSave()',1,'admin','研发部门','/system/user/edit','127.0.0.1','内网IP','{\r\n  \"userId\" : [ \"100\" ],\r\n  \"deptId\" : [ \"200\" ],\r\n  \"userName\" : [ \"test\" ],\r\n  \"email\" : [ \"test@1.1\" ],\r\n  \"phonenumber\" : [ \"13666666666\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"100\" ],\r\n  \"postIds\" : [ \"4\" ]\r\n}',0,NULL,'2018-11-11 17:41:35'),
(105,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"运营商\" ],\r\n  \"roleKey\" : [ \"merchant\" ],\r\n  \"roleSort\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2,109,1045,1046,1047,110,1048,1049,1050,1051,1052,1053,111\" ]\r\n}',0,NULL,'2018-11-11 17:42:10'),
(106,'岗位管理',1,'com.ruoyi.web.controller.system.SysPostController.addSave()',1,'admin','研发部门','/system/post/add','127.0.0.1','内网IP','{\r\n  \"postName\" : [ \"外部联系人\" ],\r\n  \"postCode\" : [ \"merchant\" ],\r\n  \"postSort\" : [ \"99\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}',0,NULL,'2018-11-11 17:43:06'),
(107,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.editSave()',1,'admin','研发部门','/system/user/edit','127.0.0.1','内网IP','{\r\n  \"userId\" : [ \"100\" ],\r\n  \"deptId\" : [ \"200\" ],\r\n  \"userName\" : [ \"test\" ],\r\n  \"email\" : [ \"test@1.1\" ],\r\n  \"phonenumber\" : [ \"13666666666\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"100\" ],\r\n  \"postIds\" : [ \"5\" ]\r\n}',0,NULL,'2018-11-11 17:43:20'),
(108,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"1\" ],\r\n  \"roleName\" : [ \"管理员\" ],\r\n  \"roleKey\" : [ \"admin\" ],\r\n  \"roleSort\" : [ \"1\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,101,1006,1007,1008,1009,1010,102,1011,1012,1013,',0,NULL,'2018-11-11 22:05:15'),
(109,'在线用户',7,'com.ruoyi.web.controller.monitor.SysUserOnlineController.batchForceLogout()',1,'admin','研发部门','/monitor/online/batchForceLogout','127.0.0.1','内网IP','{\r\n  \"ids[]\" : [ \"a3ee9207-1ce6-4bde-8f4b-ba3615476093\" ]\r\n}',0,NULL,'2018-11-11 22:05:46'),
(110,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"1\" ],\r\n  \"roleName\" : [ \"管理员\" ],\r\n  \"roleKey\" : [ \"admin\" ],\r\n  \"roleSort\" : [ \"1\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,101,1006,1007,1008,1009,1010,102,1011,1012,1013,',0,NULL,'2018-11-11 22:06:14'),
(111,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"1\" ],\r\n  \"roleName\" : [ \"管理员\" ],\r\n  \"roleKey\" : [ \"admin\" ],\r\n  \"roleSort\" : [ \"1\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"menuIds\" : [ \"\" ]\r\n}',0,NULL,'2018-11-11 22:06:27'),
(112,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.editSave()',1,'admin','研发部门','/system/user/edit','127.0.0.1','内网IP','{\r\n  \"userId\" : [ \"1\" ],\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"若依\" ],\r\n  \"email\" : [ \"ry@163.com\" ],\r\n  \"phonenumber\" : [ \"15888888888\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"1\" ],\r\n  \"postIds\" : [ \"1\" ]\r\n}',0,NULL,'2018-11-11 22:06:45'),
(113,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"运营商\" ],\r\n  \"roleKey\" : [ \"merchant\" ],\r\n  \"roleSort\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1004,1005,2,109,1045,1046,1047,110,1048,1049,1050,1051,1052,1',0,NULL,'2018-11-11 22:07:12'),
(114,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.ruleSave()',1,'admin','研发部门','/system/role/rule','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"运营商\" ],\r\n  \"roleKey\" : [ \"merchant\" ],\r\n  \"dataScope\" : [ \"2\" ],\r\n  \"deptIds\" : [ \"100,200\" ]\r\n}',0,NULL,'2018-11-11 22:07:56'),
(115,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.ruleSave()',1,'admin','研发部门','/system/role/rule','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"运营商\" ],\r\n  \"roleKey\" : [ \"merchant\" ],\r\n  \"dataScope\" : [ \"1\" ],\r\n  \"deptIds\" : [ \"\" ]\r\n}',0,NULL,'2018-11-11 22:09:52'),
(116,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"运营商\" ],\r\n  \"roleKey\" : [ \"merchant\" ],\r\n  \"roleSort\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2,109,1045,1046,1047,110,1048,1049,1050,1051,1052,1053,111\" ]\r\n}',0,NULL,'2018-11-11 22:10:06'),
(117,'岗位管理',2,'com.ruoyi.web.controller.system.SysPostController.editSave()',1,'admin','研发部门','/system/post/edit','127.0.0.1','内网IP','{\r\n  \"postId\" : [ \"3\" ],\r\n  \"postName\" : [ \"人力资源\" ],\r\n  \"postCode\" : [ \"hr\" ],\r\n  \"postSort\" : [ \"3\" ],\r\n  \"status\" : [ \"1\" ],\r\n  \"remark\" : [ \"\" ]\r\n}',0,NULL,'2018-11-11 22:24:15'),
(118,'岗位管理',2,'com.ruoyi.web.controller.system.SysPostController.editSave()',1,'admin','研发部门','/system/post/edit','127.0.0.1','内网IP','{\r\n  \"postId\" : [ \"3\" ],\r\n  \"postName\" : [ \"人力资源\" ],\r\n  \"postCode\" : [ \"hr\" ],\r\n  \"postSort\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}',0,NULL,'2018-11-11 22:24:34'),
(119,'代码生成',8,'com.ruoyi.web.controller.tool.GenController.genCode()',1,'admin','研发部门','/tool/gen/genCode/t_merchant_info','127.0.0.1','内网IP','{ }',0,NULL,'2018-11-11 22:47:31'),
(120,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2000\" ],\r\n  \"parentId\" : [ \"1\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"商户信息\" ],\r\n  \"url\" : [ \"/system/merchantInfo\" ],\r\n  \"perms\" : [ \"module:merchantInfo:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0',0,NULL,'2018-11-11 23:01:10'),
(121,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2005\" ],\r\n  \"parentId\" : [ \"1\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"商户信息\" ],\r\n  \"url\" : [ \"/system/merchantInfo\" ],\r\n  \"perms\" : [ \"module:merchantInfo:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0',0,NULL,'2018-11-11 23:22:02'),
(122,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2005\" ],\r\n  \"parentId\" : [ \"1\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"商户信息\" ],\r\n  \"url\" : [ \"/system/merchantInfo\" ],\r\n  \"perms\" : [ \"system:merchantInfo:view\" ],\r\n  \"orderNum\" : [ \"10\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"',0,NULL,'2018-11-11 23:22:22'),
(123,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2006\" ],\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"商户查询\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"perms\" : [ \"system:merchantInfo:list\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2018-11-11 23:22:53'),
(124,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2007\" ],\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"商户新增\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"perms\" : [ \"system:merchantInfo:add\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2018-11-11 23:23:02'),
(125,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2008\" ],\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"商户修改\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"perms\" : [ \"system:merchantInfo:edit\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2018-11-11 23:23:11'),
(126,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2009\" ],\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"商户删除\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"perms\" : [ \"system:merchantInfo:remove\" ],\r\n  \"orderNum\" : [ \"4\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2018-11-11 23:23:20'),
(127,'新增商户',1,'com.ruoyi.web.controller.system.MerchantInfoController.addSave()',1,'admin','研发部门','/system/merchantInfo/add','127.0.0.1','内网IP','{\r\n  \"merchantNo\" : [ \"test\" ],\r\n  \"merchantKey\" : [ \"123456\" ],\r\n  \"merchantType\" : [ \"alipay_qr\" ],\r\n  \"merchatFeeRate\" : [ \"0.5\" ],\r\n  \"company\" : [ \"test\" ],\r\n  \"website\" : [ \"test.com\" ],\r\n  \"createBy\" : [ \"admin\" ],\r\n  \"createTime\" : [ \"2018-11-11 2',0,NULL,'2018-11-11 23:42:42'),
(128,'代码生成',8,'com.ruoyi.web.controller.tool.GenController.genCode()',1,'admin','研发部门','/tool/gen/genCode/t_merchant_info','127.0.0.1','内网IP','{ }',0,NULL,'2018-11-12 22:31:58'),
(129,'重置密码',2,'com.ruoyi.web.controller.system.SysUserController.resetPwd()',1,'admin',NULL,'/system/user/resetPwd/100','127.0.0.1','内网IP','{ }',0,NULL,'2018-11-13 19:58:41'),
(130,'商户信息',1,'com.ruoyi.web.controller.system.MerchantInfoController.addSave()',1,'admin','研发部门','/system/merchantInfo/add','127.0.0.1','内网IP','{\r\n  \"merchantNo\" : [ \"m10001\" ],\r\n  \"userId\" : [ \"100\" ],\r\n  \"merchantKey\" : [ \"123456\" ],\r\n  \"merchatFeeRate\" : [ \"0.5\" ],\r\n  \"notifyUrl\" : [ \"notify.m10001.com\" ],\r\n  \"company\" : [ \"m10001\" ],\r\n  \"website\" : [ \"m10001.com\" ],\r\n  \"status\" : [ \"1\" ],\r\n  ',1,'\r\n### Error updating database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'createTime\' in \'field list\'\r\n### The error may involve com.ruoyi.system.mapper.MerchantInfoMapper.insertMerchantInfo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_merchant_info    ( merchant_no,    merchant_key,    merchat_fee_rate,    company,    website,    create_by,            remark,        notify_url,    user_id,             createTime )           values ( ?,    ?,    ?,    ?,    ?,    ?,            ?,        ?,    ?,             sysdate() )\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'createTime\' in \'field list\'\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'createTime\' in \'field list\'','2018-11-13 20:47:51'),
(131,'商户信息',1,'com.ruoyi.web.controller.system.MerchantInfoController.addSave()',1,'admin',NULL,'/system/merchantInfo/add','127.0.0.1','内网IP','{\r\n  \"merchantNo\" : [ \"m10001\" ],\r\n  \"userId\" : [ \"100\" ],\r\n  \"merchantKey\" : [ \"123456\" ],\r\n  \"merchatFeeRate\" : [ \"0.5\" ],\r\n  \"notifyUrl\" : [ \"notify.m10001.com\" ],\r\n  \"company\" : [ \"m10001\" ],\r\n  \"website\" : [ \"m10001.com\" ],\r\n  \"status\" : [ \"1\" ],\r\n  ',1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'merchat_flag\' doesn\'t have a default value\r\n### The error may involve com.ruoyi.system.mapper.MerchantInfoMapper.insertMerchantInfo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_merchant_info    ( merchant_no,    merchant_key,    merchat_fee_rate,    company,    website,    create_by,            remark,        notify_url,    user_id,             create_time )           values ( ?,    ?,    ?,    ?,    ?,    ?,            ?,        ?,    ?,             sysdate() )\r\n### Cause: java.sql.SQLException: Field \'merchat_flag\' doesn\'t have a default value\n; ]; Field \'merchat_flag\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'merchat_flag\' doesn\'t have a default value','2018-11-13 20:48:40'),
(132,'商户信息',1,'com.ruoyi.web.controller.system.MerchantInfoController.addSave()',1,'admin',NULL,'/system/merchantInfo/add','127.0.0.1','内网IP','{\r\n  \"merchantNo\" : [ \"m10001\" ],\r\n  \"userId\" : [ \"100\" ],\r\n  \"merchantKey\" : [ \"123456\" ],\r\n  \"merchatFeeRate\" : [ \"0.5\" ],\r\n  \"notifyUrl\" : [ \"notify.m10001.com\" ],\r\n  \"company\" : [ \"m10001\" ],\r\n  \"website\" : [ \"m10001.com\" ],\r\n  \"merchatFlag\" : [ \"1\" ]',0,NULL,'2018-11-13 20:51:24'),
(133,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2005\" ],\r\n  \"parentId\" : [ \"1\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"商户信息\" ],\r\n  \"url\" : [ \"/system/merchantInfo\" ],\r\n  \"perms\" : [ \"system:merchantInfo:view\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0',0,NULL,'2018-11-13 21:35:44'),
(134,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.editSave()',1,'admin',NULL,'/system/user/edit','127.0.0.1','内网IP','{\r\n  \"userId\" : [ \"2\" ],\r\n  \"deptId\" : [ \"105\" ],\r\n  \"userName\" : [ \"若依\" ],\r\n  \"email\" : [ \"ry@qq.com\" ],\r\n  \"phonenumber\" : [ \"15666666666\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"status\" : [ \"1\" ],\r\n  \"roleIds\" : [ \"2\" ],\r\n  \"postIds\" : [ \"2\" ]\r\n}',0,NULL,'2018-11-13 21:42:20'),
(135,'字典类型',1,'com.ruoyi.web.controller.system.SysDictTypeController.addSave()',1,'admin',NULL,'/system/dict/add','127.0.0.1','内网IP','{\r\n  \"dictName\" : [ \"商户状态\" ],\r\n  \"dictType\" : [ \"u_merchant_status\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"商户状态列表\" ]\r\n}',0,NULL,'2018-11-13 21:44:52'),
(136,'字典数据',1,'com.ruoyi.web.controller.system.SysDictDataController.addSave()',1,'admin',NULL,'/system/dict/data/add','127.0.0.1','内网IP','{\r\n  \"dictLabel\" : [ \"禁用\" ],\r\n  \"dictValue\" : [ \"0\" ],\r\n  \"dictType\" : [ \"u_merchant_status\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"0\" ],\r\n  \"listClass\" : [ \"warning\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"正常状态\" ]\r\n}',0,NULL,'2018-11-13 21:47:04'),
(137,'字典数据',2,'com.ruoyi.web.controller.system.SysDictDataController.editSave()',1,'admin',NULL,'/system/dict/data/edit','127.0.0.1','内网IP','{\r\n  \"dictCode\" : [ \"100\" ],\r\n  \"dictLabel\" : [ \"禁用\" ],\r\n  \"dictValue\" : [ \"0\" ],\r\n  \"dictType\" : [ \"u_merchant_status\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"0\" ],\r\n  \"listClass\" : [ \"warning\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n ',0,NULL,'2018-11-13 21:48:35'),
(138,'字典数据',1,'com.ruoyi.web.controller.system.SysDictDataController.addSave()',1,'admin',NULL,'/system/dict/data/add','127.0.0.1','内网IP','{\r\n  \"dictLabel\" : [ \"正常\" ],\r\n  \"dictValue\" : [ \"1\" ],\r\n  \"dictType\" : [ \"u_merchant_status\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"2\" ],\r\n  \"listClass\" : [ \"primary\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"正常状态\" ]\r\n}',0,NULL,'2018-11-13 21:49:07'),
(139,'字典数据',2,'com.ruoyi.web.controller.system.SysDictDataController.editSave()',1,'admin',NULL,'/system/dict/data/edit','127.0.0.1','内网IP','{\r\n  \"dictCode\" : [ \"100\" ],\r\n  \"dictLabel\" : [ \"禁用\" ],\r\n  \"dictValue\" : [ \"0\" ],\r\n  \"dictType\" : [ \"u_merchant_status\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"0\" ],\r\n  \"listClass\" : [ \"warning\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n ',0,NULL,'2018-11-13 21:49:18'),
(140,'字典数据',1,'com.ruoyi.web.controller.system.SysDictDataController.addSave()',1,'admin',NULL,'/system/dict/data/add','127.0.0.1','内网IP','{\r\n  \"dictLabel\" : [ \"欠费\" ],\r\n  \"dictValue\" : [ \"2\" ],\r\n  \"dictType\" : [ \"u_merchant_status\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"3\" ],\r\n  \"listClass\" : [ \"danger\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"欠费状态\" ]\r\n}',0,NULL,'2018-11-13 21:49:51'),
(141,'字典数据',2,'com.ruoyi.web.controller.system.SysDictDataController.editSave()',1,'admin',NULL,'/system/dict/data/edit','127.0.0.1','内网IP','{\r\n  \"dictCode\" : [ \"100\" ],\r\n  \"dictLabel\" : [ \"禁用\" ],\r\n  \"dictValue\" : [ \"0\" ],\r\n  \"dictType\" : [ \"u_merchant_status\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"1\" ],\r\n  \"listClass\" : [ \"warning\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n ',0,NULL,'2018-11-13 21:50:03'),
(142,'商户信息',2,'com.ruoyi.web.controller.system.MerchantInfoController.editSave()',1,'admin','研发部门','/system/merchantInfo/edit','127.0.0.1','内网IP','{\r\n  \"merchantNo\" : [ \"m10001\" ],\r\n  \"loginName\" : [ \"test\" ],\r\n  \"userId\" : [ \"100\" ],\r\n  \"merchantKey\" : [ \"123456\" ],\r\n  \"merchatFeeRate\" : [ \"0.500\" ],\r\n  \"notifyUrl\" : [ \"notify.m10001.com\" ],\r\n  \"company\" : [ \"m10001\" ],\r\n  \"website\" : [ \"m10001.com',0,NULL,'2018-11-13 23:04:28'),
(143,'商户信息',2,'com.ruoyi.web.controller.system.MerchantInfoController.editSave()',1,'admin','研发部门','/system/merchantInfo/edit','127.0.0.1','内网IP','{\r\n  \"merchantNo\" : [ \"m10001\" ],\r\n  \"loginName\" : [ \"test\" ],\r\n  \"userId\" : [ \"100\" ],\r\n  \"merchantKey\" : [ \"123456\" ],\r\n  \"merchatFeeRate\" : [ \"0.6\" ],\r\n  \"notifyUrl\" : [ \"notify.m10001.com\" ],\r\n  \"company\" : [ \"m10001\" ],\r\n  \"website\" : [ \"m10001.com\" ',0,NULL,'2018-11-13 23:06:56'),
(144,'商户信息',2,'com.ruoyi.web.controller.system.MerchantInfoController.editSave()',1,'admin','研发部门','/system/merchantInfo/edit','127.0.0.1','内网IP','{\r\n  \"merchantNo\" : [ \"m10001\" ],\r\n  \"loginName\" : [ \"test\" ],\r\n  \"userId\" : [ \"100\" ],\r\n  \"merchantKey\" : [ \"123456\" ],\r\n  \"merchatFeeRate\" : [ \"0.6\" ],\r\n  \"notifyUrl\" : [ \"notify.m10001.com\" ],\r\n  \"company\" : [ \"m10001\" ],\r\n  \"website\" : [ \"m10001.com\" ',0,NULL,'2018-11-13 23:07:20'),
(145,'商户信息',2,'com.ruoyi.web.controller.system.MerchantInfoController.editSave()',1,'admin','研发部门','/system/merchantInfo/edit','127.0.0.1','内网IP','{\r\n  \"id\" : [ \"1\" ],\r\n  \"merchantNo\" : [ \"m10001\" ],\r\n  \"loginName\" : [ \"test\" ],\r\n  \"userId\" : [ \"100\" ],\r\n  \"merchantKey\" : [ \"123456\" ],\r\n  \"merchatFeeRate\" : [ \"0.6\" ],\r\n  \"notifyUrl\" : [ \"notify.m10001.com\" ],\r\n  \"company\" : [ \"m10001\" ],\r\n  \"website',0,NULL,'2018-11-13 23:10:54'),
(146,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"1003\" ],\r\n  \"parentId\" : [ \"100\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"用户删除\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"perms\" : [ \"system:user:remove\" ],\r\n  \"orderNum\" : [ \"4\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"1\" ]\r\n}',0,NULL,'2018-11-13 23:17:38'),
(147,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"1003\" ],\r\n  \"parentId\" : [ \"100\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"用户删除\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"perms\" : [ \"system:user:remove\" ],\r\n  \"orderNum\" : [ \"4\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2018-11-13 23:18:35'),
(148,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"运营商\" ],\r\n  \"roleKey\" : [ \"merchant\" ],\r\n  \"roleSort\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"1,2005,2006,2007,2008,2,109,1045,1046,1047,110,1048,1049,1050,1051,1052,1053,111\" ',0,NULL,'2018-11-13 23:19:11'),
(149,'用户管理',1,'com.ruoyi.web.controller.system.SysUserController.addSave()',1,'admin','研发部门','/system/user/add','127.0.0.1','内网IP','{\r\n  \"deptId\" : [ \"200\" ],\r\n  \"loginName\" : [ \"test1\" ],\r\n  \"userName\" : [ \"test1\" ],\r\n  \"password\" : [ \"111111\" ],\r\n  \"email\" : [ \"test1@1.1\" ],\r\n  \"phonenumber\" : [ \"13666666661\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"100\" ],\r\n ',0,NULL,'2018-11-13 23:21:06'),
(150,'商户信息',1,'com.ruoyi.web.controller.system.MerchantInfoController.addSave()',1,'admin','研发部门','/system/merchantInfo/add','127.0.0.1','内网IP','{\r\n  \"merchantNo\" : [ \"m100012\" ],\r\n  \"loginName\" : [ \"test1\" ],\r\n  \"userId\" : [ \"101\" ],\r\n  \"merchantKey\" : [ \"123456\" ],\r\n  \"merchatFeeRate\" : [ \"0.5\" ],\r\n  \"notifyUrl\" : [ \"notify.m10002.com\" ],\r\n  \"company\" : [ \"m10002\" ],\r\n  \"website\" : [ \"m10002.com',0,NULL,'2018-11-13 23:21:38'),
(151,'商户信息',1,'com.ruoyi.web.controller.system.MerchantInfoController.addSave()',1,'admin','研发部门','/system/merchantInfo/add','127.0.0.1','内网IP','{\r\n  \"merchantNo\" : [ \"m10003\" ],\r\n  \"loginName\" : [ \"admin\" ],\r\n  \"userId\" : [ \"1\" ],\r\n  \"merchantKey\" : [ \"123456\" ],\r\n  \"merchatFeeRate\" : [ \"0.5\" ],\r\n  \"notifyUrl\" : [ \"notify.m10003.com\" ],\r\n  \"company\" : [ \"m10003\" ],\r\n  \"website\" : [ \"m10003.com\" ]',0,NULL,'2018-11-13 23:27:13'),
(152,'用户管理',1,'com.ruoyi.web.controller.system.SysUserController.addSave()',1,'admin','研发部门','/system/user/add','127.0.0.1','内网IP','{\r\n  \"deptId\" : [ \"200\" ],\r\n  \"loginName\" : [ \"test2\" ],\r\n  \"userName\" : [ \"test2\" ],\r\n  \"password\" : [ \"123456\" ],\r\n  \"email\" : [ \"test2@1.1\" ],\r\n  \"phonenumber\" : [ \"13666666662\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"100\" ],\r\n ',0,NULL,'2018-11-13 23:27:59'),
(153,'商户信息',1,'com.ruoyi.web.controller.system.MerchantInfoController.addSave()',1,'admin','研发部门','/system/merchantInfo/add','127.0.0.1','内网IP','{\r\n  \"merchantNo\" : [ \"m10003\" ],\r\n  \"loginName\" : [ \"test2\" ],\r\n  \"userId\" : [ \"102\" ],\r\n  \"merchantKey\" : [ \"123456\" ],\r\n  \"merchatFeeRate\" : [ \"0.5\" ],\r\n  \"notifyUrl\" : [ \"notify.m10003.com\" ],\r\n  \"company\" : [ \"m10003\" ],\r\n  \"website\" : [ \"m10003.com\"',0,NULL,'2018-11-13 23:28:35'),
(154,'商户信息',3,'com.ruoyi.web.controller.system.MerchantInfoController.remove()',1,'admin','研发部门','/system/merchantInfo/remove','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"2,3\" ]\r\n}',0,NULL,'2018-11-13 23:29:28'),
(155,'用户管理',3,'com.ruoyi.web.controller.system.SysUserController.remove()',1,'admin','研发部门','/system/user/remove','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"101\" ]\r\n}',0,NULL,'2018-11-13 23:30:08'),
(156,'商户信息',1,'com.ruoyi.web.controller.system.MerchantInfoController.addSave()',1,'admin','研发部门','/system/merchantInfo/add','127.0.0.1','内网IP','{\r\n  \"merchantNo\" : [ \"m10002\" ],\r\n  \"loginName\" : [ \"test2\" ],\r\n  \"userId\" : [ \"102\" ],\r\n  \"merchantKey\" : [ \"123456\" ],\r\n  \"merchatFeeRate\" : [ \"0.5\" ],\r\n  \"notifyUrl\" : [ \"notify.m10002.com\" ],\r\n  \"company\" : [ \"m10002\" ],\r\n  \"website\" : [ \"m10002.com\"',0,NULL,'2018-11-13 23:30:34'),
(157,'用户管理',1,'com.ruoyi.web.controller.system.SysUserController.addSave()',1,'admin','研发部门','/system/user/add','127.0.0.1','内网IP','{\r\n  \"deptId\" : [ \"200\" ],\r\n  \"loginName\" : [ \"test3\" ],\r\n  \"userName\" : [ \"test3\" ],\r\n  \"password\" : [ \"123456\" ],\r\n  \"email\" : [ \"test3@1.1\" ],\r\n  \"phonenumber\" : [ \"13666666663\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"100\" ],\r\n ',0,NULL,'2018-11-13 23:31:23'),
(158,'用户管理',1,'com.ruoyi.web.controller.system.SysUserController.addSave()',1,'admin','研发部门','/system/user/add','127.0.0.1','内网IP','{\r\n  \"deptId\" : [ \"104\" ],\r\n  \"loginName\" : [ \"om\" ],\r\n  \"userName\" : [ \"om\" ],\r\n  \"password\" : [ \"111111\" ],\r\n  \"email\" : [ \"om@1.1\" ],\r\n  \"phonenumber\" : [ \"13611112222\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"1\" ],\r\n  \"postIds\" ',0,NULL,'2018-11-13 23:36:12'),
(159,'角色管理',1,'com.ruoyi.web.controller.system.SysRoleController.addSave()',1,'admin','研发部门','/system/role/add','127.0.0.1','内网IP','{\r\n  \"roleName\" : [ \"系统管理\" ],\r\n  \"roleKey\" : [ \"system-admin\" ],\r\n  \"roleSort\" : [ \"4\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"系统管理\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,101,1006,1007,1008,1009,1010,102,1011,1012,1013,1014,103,1015,',0,NULL,'2018-11-13 23:38:57'),
(160,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"1\" ],\r\n  \"roleName\" : [ \"超级管理员\" ],\r\n  \"roleKey\" : [ \"admin\" ],\r\n  \"roleSort\" : [ \"1\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"menuIds\" : [ \"\" ]\r\n}',0,NULL,'2018-11-13 23:39:11'),
(161,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.editSave()',1,'admin','研发部门','/system/user/edit','127.0.0.1','内网IP','{\r\n  \"userId\" : [ \"104\" ],\r\n  \"deptId\" : [ \"104\" ],\r\n  \"userName\" : [ \"om\" ],\r\n  \"email\" : [ \"om@1.1\" ],\r\n  \"phonenumber\" : [ \"13611112222\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"101\" ],\r\n  \"postIds\" : [ \"4\" ]\r\n}',0,NULL,'2018-11-13 23:39:26'),
(162,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.editSave()',1,'admin','研发部门','/system/user/edit','127.0.0.1','内网IP','{\r\n  \"userId\" : [ \"104\" ],\r\n  \"deptId\" : [ \"104\" ],\r\n  \"userName\" : [ \"om\" ],\r\n  \"email\" : [ \"om@1.1\" ],\r\n  \"phonenumber\" : [ \"13611112222\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"101\" ],\r\n  \"postIds\" : [ \"1\" ]\r\n}',0,NULL,'2018-11-13 23:39:41'),
(163,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.editSave()',1,'om','市场部门','/system/user/edit','127.0.0.1','内网IP','{\r\n  \"userId\" : [ \"100\" ],\r\n  \"deptId\" : [ \"200\" ],\r\n  \"userName\" : [ \"test\" ],\r\n  \"email\" : [ \"test@1.1\" ],\r\n  \"phonenumber\" : [ \"13666666666\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"1\" ],\r\n  \"postIds\" : [ \"5\" ]\r\n}',0,NULL,'2018-11-13 23:40:42'),
(164,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()',1,'om','市场部门','/system/role/edit','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"1\" ],\r\n  \"roleName\" : [ \"超级管理员\" ],\r\n  \"roleKey\" : [ \"admin\" ],\r\n  \"roleSort\" : [ \"1\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,101,1006,1007,1008,1009,1010,102,1011,1012,101',0,NULL,'2018-11-13 23:41:12'),
(165,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"1\" ],\r\n  \"roleName\" : [ \"超级管理员\" ],\r\n  \"roleKey\" : [ \"admin\" ],\r\n  \"roleSort\" : [ \"1\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"menuIds\" : [ \"\" ]\r\n}',0,NULL,'2018-11-13 23:41:44'),
(166,'角色管理',3,'com.ruoyi.web.controller.system.SysRoleController.remove()',1,'admin','研发部门','/system/role/remove','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"101\" ]\r\n}',0,NULL,'2018-11-13 23:43:21'),
(167,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.editSave()',1,'admin','研发部门','/system/user/edit','127.0.0.1','内网IP','{\r\n  \"userId\" : [ \"104\" ],\r\n  \"deptId\" : [ \"104\" ],\r\n  \"userName\" : [ \"om\" ],\r\n  \"email\" : [ \"om@1.1\" ],\r\n  \"phonenumber\" : [ \"13611112222\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"1\" ],\r\n  \"postIds\" : [ \"1\" ]\r\n}',0,NULL,'2018-11-13 23:43:33'),
(168,'角色管理',3,'com.ruoyi.web.controller.system.SysRoleController.remove()',1,'admin','研发部门','/system/role/remove','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"101\" ]\r\n}',0,NULL,'2018-11-13 23:43:38'),
(169,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"1\" ],\r\n  \"roleName\" : [ \"超级管理员\" ],\r\n  \"roleKey\" : [ \"admin\" ],\r\n  \"roleSort\" : [ \"1\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,102,1011,1012,1013,1014,103,1015,1016,1017,101',0,NULL,'2018-11-13 23:45:19'),
(170,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"1\" ],\r\n  \"roleName\" : [ \"超级管理员\" ],\r\n  \"roleKey\" : [ \"admin\" ],\r\n  \"roleSort\" : [ \"1\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,101,1006,1007,1008,1009,1010,102,1011,1012,101',0,NULL,'2018-11-13 23:46:44'),
(171,'角色管理',1,'com.ruoyi.web.controller.system.SysRoleController.addSave()',1,'admin','研发部门','/system/role/add','127.0.0.1','内网IP','{\r\n  \"roleName\" : [ \"系统管理员\" ],\r\n  \"roleKey\" : [ \"system\" ],\r\n  \"roleSort\" : [ \"4\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"系统管理员\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,103,1015,1016,1017,1018,104,1019,1020,1021,1022,1023,107,1034,1035',0,NULL,'2018-11-13 23:48:52'),
(172,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.editSave()',1,'admin','研发部门','/system/user/edit','127.0.0.1','内网IP','{\r\n  \"userId\" : [ \"104\" ],\r\n  \"deptId\" : [ \"104\" ],\r\n  \"userName\" : [ \"om\" ],\r\n  \"email\" : [ \"om@1.1\" ],\r\n  \"phonenumber\" : [ \"13611112222\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"2\" ],\r\n  \"postIds\" : [ \"4\" ]\r\n}',0,NULL,'2018-11-13 23:49:18'),
(173,'用户管理',1,'com.ruoyi.web.controller.system.SysUserController.addSave()',1,'admin','研发部门','/system/user/add','127.0.0.1','内网IP','{\r\n  \"deptId\" : [ \"103\" ],\r\n  \"loginName\" : [ \"system\" ],\r\n  \"userName\" : [ \"system\" ],\r\n  \"password\" : [ \"111111\" ],\r\n  \"email\" : [ \"system@1.1\" ],\r\n  \"phonenumber\" : [ \"13611112221\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"102\" ],',0,NULL,'2018-11-13 23:50:02'),
(174,'在线用户',7,'com.ruoyi.web.controller.monitor.SysUserOnlineController.forceLogout()',1,'system','研发部门','/monitor/online/forceLogout','127.0.0.1','内网IP','{\r\n  \"sessionId\" : [ \"7b35c870-5cb1-47df-add2-802fb7a64eb3\" ]\r\n}',1,'There is no session with id [7b35c870-5cb1-47df-add2-802fb7a64eb3]','2018-11-13 23:50:23'),
(175,'通知公告',2,'com.ruoyi.web.controller.system.SysNoticeController.editSave()',1,'system','研发部门','/system/notice/edit','127.0.0.1','内网IP','{\r\n  \"noticeId\" : [ \"1\" ],\r\n  \"noticeTitle\" : [ \"温馨提醒：2018-07-01 若依新版本发布啦\" ],\r\n  \"noticeType\" : [ \"2\" ],\r\n  \"noticeContent\" : [ \"新版本内容\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2018-11-13 23:51:40'),
(176,'商户信息',2,'com.ruoyi.web.controller.system.MerchantInfoController.editSave()',1,'admin',NULL,'/system/merchantInfo/edit','127.0.0.1','内网IP','{\r\n  \"id\" : [ \"4\" ],\r\n  \"merchantNo\" : [ \"m10002\" ],\r\n  \"loginName\" : [ \"test2\" ],\r\n  \"userId\" : [ \"102\" ],\r\n  \"merchantKey\" : [ \"123456\" ],\r\n  \"merchatFeeRate\" : [ \"0.500\" ],\r\n  \"notifyUrl\" : [ \"notify.m10002.com\" ],\r\n  \"company\" : [ \"m10002\" ],\r\n  \"webs',0,NULL,'2018-11-14 00:25:28'),
(177,'商户信息',2,'com.ruoyi.web.controller.system.MerchantInfoController.editSave()',1,'admin',NULL,'/system/merchantInfo/edit','127.0.0.1','内网IP','{\r\n  \"id\" : [ \"4\" ],\r\n  \"merchantNo\" : [ \"m10002\" ],\r\n  \"loginName\" : [ \"test2\" ],\r\n  \"userId\" : [ \"102\" ],\r\n  \"merchantKey\" : [ \"123456\" ],\r\n  \"merchatFeeRate\" : [ \"0.500\" ],\r\n  \"notifyUrl\" : [ \"notify.m10002.com\" ],\r\n  \"company\" : [ \"m10002\" ],\r\n  \"webs',0,NULL,'2018-11-14 00:25:28'),
(178,'商户信息',1,'com.ruoyi.web.controller.system.MerchantInfoController.addSave()',1,'admin','研发部门','/system/merchantInfo/add','127.0.0.1','内网IP','{\r\n  \"merchantNo\" : [ \"m10003\" ],\r\n  \"loginName\" : [ \"test3\" ],\r\n  \"userId\" : [ \"103\" ],\r\n  \"merchantKey\" : [ \"123456\" ],\r\n  \"merchatFeeRate\" : [ \"0.6\" ],\r\n  \"notifyUrl\" : [ \"notify.m10003.com\" ],\r\n  \"company\" : [ \"m10003\" ],\r\n  \"website\" : [ \"m10003.com\"',0,NULL,'2018-11-14 00:59:17'),
(179,'代码生成',8,'com.ruoyi.web.controller.tool.GenController.genCode()',1,'admin','研发部门','/tool/gen/genCode/t_receipt_accounts','127.0.0.1','内网IP','{ }',0,NULL,'2018-11-14 19:16:19'),
(180,'字典类型',1,'com.ruoyi.web.controller.system.SysDictTypeController.addSave()',1,'admin','研发部门','/system/dict/add','127.0.0.1','内网IP','{\r\n  \"dictName\" : [ \"收款账号状态\" ],\r\n  \"dictType\" : [ \"u_receipt_account_status\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}',0,NULL,'2018-11-14 19:40:08'),
(181,'字典类型',2,'com.ruoyi.web.controller.system.SysDictTypeController.editSave()',1,'admin','研发部门','/system/dict/edit','127.0.0.1','内网IP','{\r\n  \"dictId\" : [ \"101\" ],\r\n  \"dictName\" : [ \"收款账号状态\" ],\r\n  \"dictType\" : [ \"u_receipt_account_status\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"收款账号状态\" ]\r\n}',0,NULL,'2018-11-14 19:40:21'),
(182,'字典数据',1,'com.ruoyi.web.controller.system.SysDictDataController.addSave()',1,'admin','研发部门','/system/dict/data/add','127.0.0.1','内网IP','{\r\n  \"dictLabel\" : [ \"启用\" ],\r\n  \"dictValue\" : [ \"1\" ],\r\n  \"dictType\" : [ \"u_receipt_account_status\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"1\" ],\r\n  \"listClass\" : [ \"primary\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n',0,NULL,'2018-11-14 19:41:06'),
(183,'字典数据',1,'com.ruoyi.web.controller.system.SysDictDataController.addSave()',1,'admin','研发部门','/system/dict/data/add','127.0.0.1','内网IP','{\r\n  \"dictLabel\" : [ \"禁用\" ],\r\n  \"dictValue\" : [ \"0\" ],\r\n  \"dictType\" : [ \"u_receipt_account_status\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"2\" ],\r\n  \"listClass\" : [ \"warning\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n',0,NULL,'2018-11-14 19:42:05'),
(184,'字典数据',1,'com.ruoyi.web.controller.system.SysDictDataController.addSave()',1,'admin','研发部门','/system/dict/data/add','127.0.0.1','内网IP','{\r\n  \"dictLabel\" : [ \"限额\" ],\r\n  \"dictValue\" : [ \"2\" ],\r\n  \"dictType\" : [ \"u_receipt_account_status\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"3\" ],\r\n  \"listClass\" : [ \"danger\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}',0,NULL,'2018-11-14 19:42:35'),
(185,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2010\" ],\r\n  \"parentId\" : [ \"1\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"收款账号\" ],\r\n  \"url\" : [ \"/system/receiptAccounts\" ],\r\n  \"perms\" : [ \"system:receiptAccounts:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" ',0,NULL,'2018-11-14 19:46:16'),
(186,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2010\" ],\r\n  \"parentId\" : [ \"1\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"收款账号\" ],\r\n  \"url\" : [ \"/system/receiptAccounts\" ],\r\n  \"perms\" : [ \"system:receiptAccounts:view\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" ',0,NULL,'2018-11-14 19:46:40'),
(187,'字典类型',1,'com.ruoyi.web.controller.system.SysDictTypeController.addSave()',1,'admin','研发部门','/system/dict/add','127.0.0.1','内网IP','{\r\n  \"dictName\" : [ \"收款账号类型\" ],\r\n  \"dictType\" : [ \"u_receipt_account_type\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"收款账号类型\" ]\r\n}',0,NULL,'2018-11-14 19:49:08'),
(188,'字典数据',1,'com.ruoyi.web.controller.system.SysDictDataController.addSave()',1,'admin','研发部门','/system/dict/data/add','127.0.0.1','内网IP','{\r\n  \"dictLabel\" : [ \"支付宝\" ],\r\n  \"dictValue\" : [ \"alipay\" ],\r\n  \"dictType\" : [ \"u_receipt_account_type\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"1\" ],\r\n  \"listClass\" : [ \"info\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r',0,NULL,'2018-11-14 19:50:40'),
(189,'字典数据',1,'com.ruoyi.web.controller.system.SysDictDataController.addSave()',1,'admin','研发部门','/system/dict/data/add','127.0.0.1','内网IP','{\r\n  \"dictLabel\" : [ \"微信\" ],\r\n  \"dictValue\" : [ \"wechat\" ],\r\n  \"dictType\" : [ \"u_receipt_account_type\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"2\" ],\r\n  \"listClass\" : [ \"info\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n',0,NULL,'2018-11-14 19:50:58'),
(190,'字典数据',1,'com.ruoyi.web.controller.system.SysDictDataController.addSave()',1,'admin','研发部门','/system/dict/data/add','127.0.0.1','内网IP','{\r\n  \"dictLabel\" : [ \"支付宝个人\" ],\r\n  \"dictValue\" : [ \"alipay_sp\" ],\r\n  \"dictType\" : [ \"u_receipt_account_type\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"3\" ],\r\n  \"listClass\" : [ \"info\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ ',0,NULL,'2018-11-14 19:51:26'),
(191,'字典数据',1,'com.ruoyi.web.controller.system.SysDictDataController.addSave()',1,'admin','研发部门','/system/dict/data/add','127.0.0.1','内网IP','{\r\n  \"dictLabel\" : [ \"微信个人\" ],\r\n  \"dictValue\" : [ \"wechat_sp\" ],\r\n  \"dictType\" : [ \"u_receipt_account_type\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"4\" ],\r\n  \"listClass\" : [ \"info\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"',0,NULL,'2018-11-14 19:51:41'),
(192,'字典类型',1,'com.ruoyi.web.controller.system.SysDictTypeController.addSave()',1,'admin','研发部门','/system/dict/add','127.0.0.1','内网IP','{\r\n  \"dictName\" : [ \"支付类型\" ],\r\n  \"dictType\" : [ \"u_payment_type\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"支付类型\" ]\r\n}',0,NULL,'2018-11-14 19:53:50'),
(193,'字典数据',1,'com.ruoyi.web.controller.system.SysDictDataController.addSave()',1,'admin','研发部门','/system/dict/data/add','127.0.0.1','内网IP','{\r\n  \"dictLabel\" : [ \"支付宝扫码\" ],\r\n  \"dictValue\" : [ \"alipay_qr\" ],\r\n  \"dictType\" : [ \"u_payment_type\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"1\" ],\r\n  \"listClass\" : [ \"info\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}',0,NULL,'2018-11-14 19:54:13'),
(194,'字典数据',1,'com.ruoyi.web.controller.system.SysDictDataController.addSave()',1,'admin','研发部门','/system/dict/data/add','127.0.0.1','内网IP','{\r\n  \"dictLabel\" : [ \"支付宝APP\" ],\r\n  \"dictValue\" : [ \"alipay_app\" ],\r\n  \"dictType\" : [ \"u_payment_type\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"2\" ],\r\n  \"listClass\" : [ \"info\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n',0,NULL,'2018-11-14 19:54:30'),
(195,'字典数据',1,'com.ruoyi.web.controller.system.SysDictDataController.addSave()',1,'admin','研发部门','/system/dict/data/add','127.0.0.1','内网IP','{\r\n  \"dictLabel\" : [ \"微信扫码\" ],\r\n  \"dictValue\" : [ \"wechat_qr\" ],\r\n  \"dictType\" : [ \"u_payment_type\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"3\" ],\r\n  \"listClass\" : [ \"info\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}',0,NULL,'2018-11-14 19:54:48'),
(196,'字典数据',1,'com.ruoyi.web.controller.system.SysDictDataController.addSave()',1,'admin','研发部门','/system/dict/data/add','127.0.0.1','内网IP','{\r\n  \"dictLabel\" : [ \"微信APP\" ],\r\n  \"dictValue\" : [ \"wechat_app\" ],\r\n  \"dictType\" : [ \"u_payment_type\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"4\" ],\r\n  \"listClass\" : [ \"info\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}',0,NULL,'2018-11-14 19:55:07'),
(197,'字典数据',1,'com.ruoyi.web.controller.system.SysDictDataController.addSave()',1,'admin','研发部门','/system/dict/data/add','127.0.0.1','内网IP','{\r\n  \"dictLabel\" : [ \"特别微信扫码\" ],\r\n  \"dictValue\" : [ \"wechat_qr_sp\" ],\r\n  \"dictType\" : [ \"u_payment_type\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"5\" ],\r\n  \"listClass\" : [ \"info\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]',0,NULL,'2018-11-14 19:56:16'),
(198,'收款账号',1,'com.ruoyi.web.controller.system.ReceiptAccountsController.addSave()',1,'admin','研发部门','/system/receiptAccounts/add','127.0.0.1','内网IP','{\r\n  \"receiptAccount\" : [ \"13611112222\" ],\r\n  \"receiptPhone\" : [ \"13611112222\" ],\r\n  \"receiptType\" : [ \"alipay\" ],\r\n  \"paymentType\" : [ \"alipay_qr\" ],\r\n  \"receiptGateway\" : [ \"http://localhost:8080/gateway\" ],\r\n  \"accountPubKey\" : [ \"123456\" ],\r\n  \"accoun',1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'create_by\' doesn\'t have a default value\r\n### The error may involve com.ruoyi.system.mapper.ReceiptAccountsMapper.insertReceiptAccounts-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_receipt_accounts    ( receipt_account,    receipt_type,    payment_type,    receipt_gateway,    account_pub_key,    account_prv_key,                    remark,    third_pub_key,    account_flag,    daily_limit,        third_account_id,    receipt_phone )           values ( ?,    ?,    ?,    ?,    ?,    ?,                    ?,    ?,    ?,    ?,        ?,    ? )\r\n### Cause: java.sql.SQLException: Field \'create_by\' doesn\'t have a default value\n; ]; Field \'create_by\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'create_by\' doesn\'t have a default value','2018-11-14 20:30:56'),
(199,'收款账号',1,'com.ruoyi.web.controller.system.ReceiptAccountsController.addSave()',1,'admin',NULL,'/system/receiptAccounts/add','127.0.0.1','内网IP','{\r\n  \"receiptAccount\" : [ \"13611112222\" ],\r\n  \"receiptPhone\" : [ \"13611112222\" ],\r\n  \"receiptType\" : [ \"alipay\" ],\r\n  \"paymentType\" : [ \"alipay_qr\" ],\r\n  \"receiptGateway\" : [ \"http://localhost:8080/gateway\" ],\r\n  \"accountPubKey\" : [ \"123456\" ],\r\n  \"accoun',0,NULL,'2018-11-14 20:33:52'),
(200,'字典数据',2,'com.ruoyi.web.controller.system.SysDictDataController.editSave()',1,'admin',NULL,'/system/dict/data/edit','127.0.0.1','内网IP','{\r\n  \"dictCode\" : [ \"110\" ],\r\n  \"dictLabel\" : [ \"支付宝扫码\" ],\r\n  \"dictValue\" : [ \"alipay_qr\" ],\r\n  \"dictType\" : [ \"u_payment_type\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"1\" ],\r\n  \"listClass\" : [ \"success\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"',0,NULL,'2018-11-14 20:38:55'),
(201,'字典数据',2,'com.ruoyi.web.controller.system.SysDictDataController.editSave()',1,'admin',NULL,'/system/dict/data/edit','127.0.0.1','内网IP','{\r\n  \"dictCode\" : [ \"110\" ],\r\n  \"dictLabel\" : [ \"支付宝扫码\" ],\r\n  \"dictValue\" : [ \"alipay_qr\" ],\r\n  \"dictType\" : [ \"u_payment_type\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"1\" ],\r\n  \"listClass\" : [ \"primary\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"',0,NULL,'2018-11-14 20:39:37'),
(202,'字典数据',2,'com.ruoyi.web.controller.system.SysDictDataController.editSave()',1,'admin',NULL,'/system/dict/data/edit','127.0.0.1','内网IP','{\r\n  \"dictCode\" : [ \"110\" ],\r\n  \"dictLabel\" : [ \"支付宝扫码\" ],\r\n  \"dictValue\" : [ \"alipay_qr\" ],\r\n  \"dictType\" : [ \"u_payment_type\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"1\" ],\r\n  \"listClass\" : [ \"success\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"',0,NULL,'2018-11-14 20:40:08'),
(203,'字典数据',2,'com.ruoyi.web.controller.system.SysDictDataController.editSave()',1,'admin',NULL,'/system/dict/data/edit','127.0.0.1','内网IP','{\r\n  \"dictCode\" : [ \"106\" ],\r\n  \"dictLabel\" : [ \"支付宝\" ],\r\n  \"dictValue\" : [ \"alipay\" ],\r\n  \"dictType\" : [ \"u_receipt_account_type\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"1\" ],\r\n  \"listClass\" : [ \"primary\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : ',0,NULL,'2018-11-14 20:40:18'),
(204,'字典数据',2,'com.ruoyi.web.controller.system.SysDictDataController.editSave()',1,'admin',NULL,'/system/dict/data/edit','127.0.0.1','内网IP','{\r\n  \"dictCode\" : [ \"106\" ],\r\n  \"dictLabel\" : [ \"支付宝\" ],\r\n  \"dictValue\" : [ \"alipay\" ],\r\n  \"dictType\" : [ \"u_receipt_account_type\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"1\" ],\r\n  \"listClass\" : [ \"primary\" ],\r\n  \"isDefault\" : [ \"N\" ],\r\n  \"status\" : ',0,NULL,'2018-11-14 20:40:51'),
(205,'字典数据',2,'com.ruoyi.web.controller.system.SysDictDataController.editSave()',1,'admin',NULL,'/system/dict/data/edit','127.0.0.1','内网IP','{\r\n  \"dictCode\" : [ \"106\" ],\r\n  \"dictLabel\" : [ \"支付宝\" ],\r\n  \"dictValue\" : [ \"alipay\" ],\r\n  \"dictType\" : [ \"u_receipt_account_type\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"1\" ],\r\n  \"listClass\" : [ \"primary\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : ',0,NULL,'2018-11-14 20:41:06'),
(206,'字典数据',2,'com.ruoyi.web.controller.system.SysDictDataController.editSave()',1,'admin',NULL,'/system/dict/data/edit','127.0.0.1','内网IP','{\r\n  \"dictCode\" : [ \"107\" ],\r\n  \"dictLabel\" : [ \"微信\" ],\r\n  \"dictValue\" : [ \"wechat\" ],\r\n  \"dictType\" : [ \"u_receipt_account_type\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"2\" ],\r\n  \"listClass\" : [ \"primary\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [',0,NULL,'2018-11-14 20:41:22'),
(207,'字典数据',2,'com.ruoyi.web.controller.system.SysDictDataController.editSave()',1,'admin',NULL,'/system/dict/data/edit','127.0.0.1','内网IP','{\r\n  \"dictCode\" : [ \"108\" ],\r\n  \"dictLabel\" : [ \"支付宝个人\" ],\r\n  \"dictValue\" : [ \"alipay_sp\" ],\r\n  \"dictType\" : [ \"u_receipt_account_type\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"3\" ],\r\n  \"listClass\" : [ \"primary\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"statu',0,NULL,'2018-11-14 20:41:26'),
(208,'字典数据',2,'com.ruoyi.web.controller.system.SysDictDataController.editSave()',1,'admin',NULL,'/system/dict/data/edit','127.0.0.1','内网IP','{\r\n  \"dictCode\" : [ \"109\" ],\r\n  \"dictLabel\" : [ \"微信个人\" ],\r\n  \"dictValue\" : [ \"wechat_sp\" ],\r\n  \"dictType\" : [ \"u_receipt_account_type\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"4\" ],\r\n  \"listClass\" : [ \"primary\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status',0,NULL,'2018-11-14 20:41:30'),
(209,'字典数据',2,'com.ruoyi.web.controller.system.SysDictDataController.editSave()',1,'admin',NULL,'/system/dict/data/edit','127.0.0.1','内网IP','{\r\n  \"dictCode\" : [ \"106\" ],\r\n  \"dictLabel\" : [ \"支付宝\" ],\r\n  \"dictValue\" : [ \"alipay\" ],\r\n  \"dictType\" : [ \"u_receipt_account_type\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"1\" ],\r\n  \"listClass\" : [ \"success\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : ',0,NULL,'2018-11-14 20:41:44'),
(210,'字典数据',2,'com.ruoyi.web.controller.system.SysDictDataController.editSave()',1,'admin',NULL,'/system/dict/data/edit','127.0.0.1','内网IP','{\r\n  \"dictCode\" : [ \"107\" ],\r\n  \"dictLabel\" : [ \"微信\" ],\r\n  \"dictValue\" : [ \"wechat\" ],\r\n  \"dictType\" : [ \"u_receipt_account_type\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"2\" ],\r\n  \"listClass\" : [ \"success\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [',0,NULL,'2018-11-14 20:41:48'),
(211,'字典数据',2,'com.ruoyi.web.controller.system.SysDictDataController.editSave()',1,'admin',NULL,'/system/dict/data/edit','127.0.0.1','内网IP','{\r\n  \"dictCode\" : [ \"108\" ],\r\n  \"dictLabel\" : [ \"支付宝个人\" ],\r\n  \"dictValue\" : [ \"alipay_sp\" ],\r\n  \"dictType\" : [ \"u_receipt_account_type\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"3\" ],\r\n  \"listClass\" : [ \"success\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"statu',0,NULL,'2018-11-14 20:41:52'),
(212,'字典数据',2,'com.ruoyi.web.controller.system.SysDictDataController.editSave()',1,'admin',NULL,'/system/dict/data/edit','127.0.0.1','内网IP','{\r\n  \"dictCode\" : [ \"109\" ],\r\n  \"dictLabel\" : [ \"微信个人\" ],\r\n  \"dictValue\" : [ \"wechat_sp\" ],\r\n  \"dictType\" : [ \"u_receipt_account_type\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"4\" ],\r\n  \"listClass\" : [ \"success\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status',0,NULL,'2018-11-14 20:41:56'),
(213,'字典数据',2,'com.ruoyi.web.controller.system.SysDictDataController.editSave()',1,'admin',NULL,'/system/dict/data/edit','127.0.0.1','内网IP','{\r\n  \"dictCode\" : [ \"110\" ],\r\n  \"dictLabel\" : [ \"支付宝扫码\" ],\r\n  \"dictValue\" : [ \"alipay_qr\" ],\r\n  \"dictType\" : [ \"u_payment_type\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"1\" ],\r\n  \"listClass\" : [ \"info\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ',0,NULL,'2018-11-14 20:42:28'),
(214,'字典数据',2,'com.ruoyi.web.controller.system.SysDictDataController.editSave()',1,'admin',NULL,'/system/dict/data/edit','127.0.0.1','内网IP','{\r\n  \"dictCode\" : [ \"107\" ],\r\n  \"dictLabel\" : [ \"微信\" ],\r\n  \"dictValue\" : [ \"wechat\" ],\r\n  \"dictType\" : [ \"u_receipt_account_type\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"2\" ],\r\n  \"listClass\" : [ \"info\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0',0,NULL,'2018-11-14 20:42:52'),
(215,'字典数据',2,'com.ruoyi.web.controller.system.SysDictDataController.editSave()',1,'admin',NULL,'/system/dict/data/edit','127.0.0.1','内网IP','{\r\n  \"dictCode\" : [ \"106\" ],\r\n  \"dictLabel\" : [ \"支付宝\" ],\r\n  \"dictValue\" : [ \"alipay\" ],\r\n  \"dictType\" : [ \"u_receipt_account_type\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"1\" ],\r\n  \"listClass\" : [ \"info\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"',0,NULL,'2018-11-14 20:42:55'),
(216,'字典数据',2,'com.ruoyi.web.controller.system.SysDictDataController.editSave()',1,'admin',NULL,'/system/dict/data/edit','127.0.0.1','内网IP','{\r\n  \"dictCode\" : [ \"108\" ],\r\n  \"dictLabel\" : [ \"支付宝个人\" ],\r\n  \"dictValue\" : [ \"alipay_sp\" ],\r\n  \"dictType\" : [ \"u_receipt_account_type\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"3\" ],\r\n  \"listClass\" : [ \"info\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" ',0,NULL,'2018-11-14 20:42:59'),
(217,'字典数据',2,'com.ruoyi.web.controller.system.SysDictDataController.editSave()',1,'admin',NULL,'/system/dict/data/edit','127.0.0.1','内网IP','{\r\n  \"dictCode\" : [ \"109\" ],\r\n  \"dictLabel\" : [ \"微信个人\" ],\r\n  \"dictValue\" : [ \"wechat_sp\" ],\r\n  \"dictType\" : [ \"u_receipt_account_type\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"4\" ],\r\n  \"listClass\" : [ \"info\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" :',0,NULL,'2018-11-14 20:43:02'),
(218,'收款账号',2,'com.ruoyi.web.controller.system.ReceiptAccountsController.editSave()',1,'admin',NULL,'/system/receiptAccounts/edit','127.0.0.1','内网IP','{\r\n  \"receiptAccount\" : [ \"13611112222\" ],\r\n  \"receiptPhone\" : [ \"13611112222\" ],\r\n  \"receiptType\" : [ \"alipay\" ],\r\n  \"paymentType\" : [ \"alipay_qr\" ],\r\n  \"receiptGateway\" : [ \"http://localhost:8080/gateway\" ],\r\n  \"accountPubKey\" : [ \"123456\" ],\r\n  \"accoun',0,NULL,'2018-11-14 21:06:37'),
(219,'收款账号',2,'com.ruoyi.web.controller.system.ReceiptAccountsController.editSave()',1,'admin',NULL,'/system/receiptAccounts/edit','127.0.0.1','内网IP','{\r\n  \"id\" : [ \"1\" ],\r\n  \"receiptAccount\" : [ \"13611112222\" ],\r\n  \"receiptPhone\" : [ \"13611112222\" ],\r\n  \"receiptType\" : [ \"alipay\" ],\r\n  \"paymentType\" : [ \"alipay_qr\" ],\r\n  \"receiptGateway\" : [ \"http://localhost:8080/gateway\" ],\r\n  \"accountPubKey\" : [ \"12',0,NULL,'2018-11-14 21:11:33'),
(220,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()',1,'admin',NULL,'/system/role/edit','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"102\" ],\r\n  \"roleName\" : [ \"系统管理员\" ],\r\n  \"roleKey\" : [ \"system\" ],\r\n  \"roleSort\" : [ \"4\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"系统管理员\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,103,1015,1016,1017,1018,104,1019,1020,102',0,NULL,'2018-11-14 21:12:05'),
(221,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"102\" ],\r\n  \"roleName\" : [ \"系统管理员\" ],\r\n  \"roleKey\" : [ \"system\" ],\r\n  \"roleSort\" : [ \"4\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"系统管理员\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1004,1005,103,1015,1016,1017,104,1019,1020,1021,1023,107',0,NULL,'2018-11-14 21:13:28'),
(222,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"102\" ],\r\n  \"roleName\" : [ \"系统管理员\" ],\r\n  \"roleKey\" : [ \"system\" ],\r\n  \"roleSort\" : [ \"4\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"系统管理员\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1004,1005,103,1015,1016,1017,104,1019,1020,1021,1023,107',0,NULL,'2018-11-14 21:14:17'),
(223,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"102\" ],\r\n  \"roleName\" : [ \"系统管理员\" ],\r\n  \"roleKey\" : [ \"system\" ],\r\n  \"roleSort\" : [ \"4\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"系统管理员\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1004,1005,103,1015,1016,1017,104,1019,1020,1021,1023,107',0,NULL,'2018-11-14 21:15:15'),
(224,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"102\" ],\r\n  \"roleName\" : [ \"系统管理员\" ],\r\n  \"roleKey\" : [ \"system\" ],\r\n  \"roleSort\" : [ \"4\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"系统管理员\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1004,1005,103,1015,1016,1017,104,1019,1020,1021,1023,107',0,NULL,'2018-11-14 21:16:24'),
(225,'收款账号',1,'com.ruoyi.web.controller.system.ReceiptAccountsController.addSave()',1,'admin','研发部门','/system/receiptAccounts/add','127.0.0.1','内网IP','{\r\n  \"receiptAccount\" : [ \"13611112223\" ],\r\n  \"receiptPhone\" : [ \"13611112223\" ],\r\n  \"receiptType\" : [ \"wechat_sp\" ],\r\n  \"paymentType\" : [ \"wechat_qr\" ],\r\n  \"receiptGateway\" : [ \"http://localhost:8080/gateway\" ],\r\n  \"accountPubKey\" : [ \"123456\" ],\r\n  \"acc',0,NULL,'2018-11-14 21:22:33'),
(226,'收款账号',1,'com.ruoyi.web.controller.system.ReceiptAccountsController.addSave()',1,'system','研发部门','/system/receiptAccounts/add','127.0.0.1','内网IP','{\r\n  \"receiptAccount\" : [ \"13611112221\" ],\r\n  \"receiptPhone\" : [ \"13611112221\" ],\r\n  \"receiptType\" : [ \"wechat_sp\" ],\r\n  \"paymentType\" : [ \"wechat_qr\" ],\r\n  \"receiptGateway\" : [ \"http://localhost:8080/gateway\" ],\r\n  \"accountPubKey\" : [ \"123456\" ],\r\n  \"acc',0,NULL,'2018-11-14 21:23:13'),
(227,'代码生成',8,'com.ruoyi.web.controller.tool.GenController.genCode()',1,'admin',NULL,'/tool/gen/genCode/t_merchant_receipts','127.0.0.1','内网IP','{ }',0,NULL,'2018-11-14 21:36:37'),
(228,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.editSave()',1,'admin',NULL,'/system/user/edit','127.0.0.1','内网IP','{\r\n  \"userId\" : [ \"1\" ],\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"小A\" ],\r\n  \"email\" : [ \"xx@163.com\" ],\r\n  \"phonenumber\" : [ \"15888888888\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"1\" ],\r\n  \"postIds\" : [ \"1\" ]\r\n}',0,NULL,'2018-11-14 21:37:37'),
(229,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.editSave()',1,'admin',NULL,'/system/user/edit','127.0.0.1','内网IP','{\r\n  \"userId\" : [ \"2\" ],\r\n  \"deptId\" : [ \"105\" ],\r\n  \"userName\" : [ \"小B\" ],\r\n  \"email\" : [ \"xx@qq.com\" ],\r\n  \"phonenumber\" : [ \"15666666666\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"status\" : [ \"1\" ],\r\n  \"roleIds\" : [ \"2\" ],\r\n  \"postIds\" : [ \"2\" ]\r\n}',0,NULL,'2018-11-14 21:37:53'),
(230,'部门管理',2,'com.ruoyi.web.controller.system.SysDeptController.editSave()',1,'admin','研发部门','/system/dept/edit','127.0.0.1','内网IP','{\r\n  \"deptId\" : [ \"100\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"parentName\" : [ \"无\" ],\r\n  \"deptName\" : [ \"汇丰科技\" ],\r\n  \"orderNum\" : [ \"0\" ],\r\n  \"leader\" : [ \"小A\" ],\r\n  \"phone\" : [ \"15888888888\" ],\r\n  \"email\" : [ \"xx@qq.com\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2018-11-14 21:39:35'),
(231,'通知公告',2,'com.ruoyi.web.controller.system.SysNoticeController.editSave()',1,'admin','研发部门','/system/notice/edit','127.0.0.1','内网IP','{\r\n  \"noticeId\" : [ \"1\" ],\r\n  \"noticeTitle\" : [ \"温馨提醒：2018-07-01 汇丰科技新版本发布啦\" ],\r\n  \"noticeType\" : [ \"2\" ],\r\n  \"noticeContent\" : [ \"新版本内容\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2018-11-14 21:40:15'),
(232,'通知公告',2,'com.ruoyi.web.controller.system.SysNoticeController.editSave()',1,'admin','研发部门','/system/notice/edit','127.0.0.1','内网IP','{\r\n  \"noticeId\" : [ \"2\" ],\r\n  \"noticeTitle\" : [ \"维护通知：2018-07-01 汇丰科技系统凌晨维护\" ],\r\n  \"noticeType\" : [ \"1\" ],\r\n  \"noticeContent\" : [ \"维护内容\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2018-11-14 21:40:24'),
(233,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.addSave()',1,'admin',NULL,'/system/menu/add','127.0.0.1','内网IP','{\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"运营管理\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"fa fa-balance-scale\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2018-11-14 21:54:16'),
(234,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin',NULL,'/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"3\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"系统工具\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"4\" ],\r\n  \"icon\" : [ \"fa fa-bars\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2018-11-14 21:54:29'),
(235,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin',NULL,'/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"系统监控\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"23\" ],\r\n  \"icon\" : [ \"fa fa-video-camera\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2018-11-14 21:54:34'),
(236,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin',NULL,'/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"系统监控\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"fa fa-video-camera\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2018-11-14 21:54:40'),
(237,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin',NULL,'/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2005\" ],\r\n  \"parentId\" : [ \"2020\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"商户信息\" ],\r\n  \"url\" : [ \"/system/merchantInfo\" ],\r\n  \"perms\" : [ \"system:merchantInfo:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [',0,NULL,'2018-11-14 21:55:12'),
(238,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin',NULL,'/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2010\" ],\r\n  \"parentId\" : [ \"2020\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"收款账号\" ],\r\n  \"url\" : [ \"/system/receiptAccounts\" ],\r\n  \"perms\" : [ \"system:receiptAccounts:view\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visibl',0,NULL,'2018-11-14 21:55:26'),
(239,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin',NULL,'/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2021\" ],\r\n  \"parentId\" : [ \"2020\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"收款规则\" ],\r\n  \"url\" : [ \"/om/merchantReceipts\" ],\r\n  \"perms\" : [ \"om:merchantReceipts:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [',0,NULL,'2018-11-14 21:57:35'),
(240,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin',NULL,'/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2021\" ],\r\n  \"parentId\" : [ \"2020\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"收款规则\" ],\r\n  \"url\" : [ \"/om/merchantReceipts\" ],\r\n  \"perms\" : [ \"om:merchantReceipts:view\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [',0,NULL,'2018-11-14 21:57:45'),
(241,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin',NULL,'/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2005\" ],\r\n  \"parentId\" : [ \"2020\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"商户信息\" ],\r\n  \"url\" : [ \"/om/merchantInfo\" ],\r\n  \"perms\" : [ \"om:merchantInfo:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n',0,NULL,'2018-11-14 21:59:19'),
(242,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin',NULL,'/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2006\" ],\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"商户查询\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"perms\" : [ \"om:merchantInfo:list\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2018-11-14 21:59:36'),
(243,'用户管理',1,'com.ruoyi.web.controller.system.SysUserController.addSave()',1,'admin','研发部门','/system/user/add','127.0.0.1','内网IP','{\r\n  \"deptId\" : [ \"107\" ],\r\n  \"loginName\" : [ \"test4\" ],\r\n  \"userName\" : [ \"test4\" ],\r\n  \"password\" : [ \"111111\" ],\r\n  \"email\" : [ \"test4@1.1\" ],\r\n  \"phonenumber\" : [ \"13611112224\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"2\" ],\r\n  \"',0,NULL,'2018-11-14 22:10:19'),
(244,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.editSave()',1,'admin','研发部门','/system/user/edit','127.0.0.1','内网IP','{\r\n  \"userId\" : [ \"106\" ],\r\n  \"deptId\" : [ \"107\" ],\r\n  \"userName\" : [ \"test4\" ],\r\n  \"email\" : [ \"test4@1.1\" ],\r\n  \"phonenumber\" : [ \"13611112224\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"100\" ],\r\n  \"postIds\" : [ \"4\" ]\r\n}',0,NULL,'2018-11-14 22:10:30'),
(245,'商户信息',1,'com.ruoyi.web.controller.om.MerchantInfoController.addSave()',1,'admin','研发部门','/om/merchantInfo/add','127.0.0.1','内网IP','{\r\n  \"merchantNo\" : [ \"m10004\" ],\r\n  \"loginName\" : [ \"test4\" ],\r\n  \"userId\" : [ \"106\" ],\r\n  \"merchantKey\" : [ \"123456\" ],\r\n  \"merchatFeeRate\" : [ \"0.5\" ],\r\n  \"notifyUrl\" : [ \"notify.m10004.com\" ],\r\n  \"company\" : [ \"m10004\" ],\r\n  \"website\" : [ \"m10004.com\"',0,NULL,'2018-11-14 22:11:18'),
(246,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2022\" ],\r\n  \"parentId\" : [ \"2021\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"收款规则查询\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"perms\" : [ \"om:merchantReceipts:list\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2018-11-14 22:13:55'),
(247,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2023\" ],\r\n  \"parentId\" : [ \"2021\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"收款规则新增\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"perms\" : [ \"om:merchantReceipts:add\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2018-11-14 22:14:03'),
(248,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2024\" ],\r\n  \"parentId\" : [ \"2021\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"收款规则修改\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"perms\" : [ \"om:merchantReceipts:edit\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2018-11-14 22:14:09'),
(249,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2025\" ],\r\n  \"parentId\" : [ \"2021\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"收款规则删除\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"perms\" : [ \"om:merchantReceipts:remove\" ],\r\n  \"orderNum\" : [ \"4\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2018-11-14 22:14:16'),
(250,'收款账号规则',1,'com.ruoyi.web.controller.om.MerchantReceiptsController.addSave()',1,'admin','研发部门','/om/merchantReceipts/add','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"1,2\" ]\r\n}',0,NULL,'2018-11-15 22:37:09'),
(251,'收款账号规则',1,'com.ruoyi.web.controller.om.MerchantReceiptsController.addSave()',1,'admin','研发部门','/om/merchantReceipts/add','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"2,3\" ]\r\n}',0,NULL,'2018-11-15 22:38:27'),
(252,'收款账号规则',1,'com.ruoyi.web.controller.om.MerchantReceiptsController.addSave()',1,'admin','研发部门','/om/merchantReceipts/add','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"1,2\" ],\r\n  \"merchantId\" : [ \"1\" ]\r\n}',1,'nested exception is org.apache.ibatis.binding.BindingException: Parameter \'array\' not found. Available parameters are [arg2, arg1, arg0, param3, param1, param2]','2018-11-15 22:39:13'),
(253,'收款账号规则',1,'com.ruoyi.web.controller.om.MerchantReceiptsController.addSave()',1,'admin',NULL,'/om/merchantReceipts/add','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"1,2\" ],\r\n  \"merchantId\" : [ \"1\" ]\r\n}',1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_merchant_receipts(merchantInfoId, receiptAccountId, create_by, create_time)         values                      (              ?              ?,              ?,              sysdate()          )           ,           (              ?              ?,              ?,              sysdate()          )\r\n### Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n; bad SQL grammar []; nested exception is java.sql.SQLException: Column count doesn\'t match value count at row 1','2018-11-15 22:40:49'),
(254,'收款账号规则',1,'com.ruoyi.web.controller.om.MerchantReceiptsController.addSave()',1,'admin',NULL,'/om/merchantReceipts/add','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"1,2\" ],\r\n  \"merchantId\" : [ \"1\" ]\r\n}',1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_merchant_receipts(merchant_info_id, receipt_account_id, create_by, create_time)         values                      (              ?              ?,              ?,              sysdate()          )           ,           (              ?              ?,              ?,              sysdate()          )\r\n### Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n; bad SQL grammar []; nested exception is java.sql.SQLException: Column count doesn\'t match value count at row 1','2018-11-15 22:42:51'),
(255,'收款账号规则',1,'com.ruoyi.web.controller.om.MerchantReceiptsController.addSave()',1,'admin',NULL,'/om/merchantReceipts/add','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"1,2\" ],\r\n  \"merchantId\" : [ \"1\" ]\r\n}',0,NULL,'2018-11-15 22:44:11'),
(256,'收款账号规则',1,'com.ruoyi.web.controller.om.MerchantReceiptsController.addSave()',1,'admin','研发部门','/om/merchantReceipts/add','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"3\" ],\r\n  \"merchantId\" : [ \"1\" ]\r\n}',0,NULL,'2018-11-15 22:57:50'),
(257,'收款账号规则',3,'com.ruoyi.web.controller.om.MerchantReceiptsController.remove()',1,'admin',NULL,'/om/merchantReceipts/remove','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"3\" ]\r\n}',0,NULL,'2018-11-15 23:43:14'),
(258,'收款账号规则',3,'com.ruoyi.web.controller.om.MerchantReceiptsController.remove()',1,'admin',NULL,'/om/merchantReceipts/remove','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"1,2\" ]\r\n}',0,NULL,'2018-11-15 23:44:18'),
(259,'收款账号规则',1,'com.ruoyi.web.controller.om.MerchantReceiptsController.addSave()',1,'admin',NULL,'/om/merchantReceipts/add','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"2,3\" ],\r\n  \"merchantId\" : [ \"1\" ]\r\n}',0,NULL,'2018-11-15 23:44:25'),
(260,'收款账号规则',1,'com.ruoyi.web.controller.om.MerchantReceiptsController.addSave()',1,'admin',NULL,'/om/merchantReceipts/add','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"1\" ],\r\n  \"merchantId\" : [ \"1\" ]\r\n}',0,NULL,'2018-11-15 23:44:38'),
(261,'收款账号规则',1,'com.ruoyi.web.controller.om.MerchantReceiptsController.addSave()',1,'admin',NULL,'/om/merchantReceipts/add','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"1,2,3\" ],\r\n  \"merchantId\" : [ \"4\" ]\r\n}',0,NULL,'2018-11-16 00:04:06'),
(262,'收款账号规则',3,'com.ruoyi.web.controller.om.MerchantReceiptsController.remove()',1,'admin',NULL,'/om/merchantReceipts/remove','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"7\" ]\r\n}',0,NULL,'2018-11-16 00:04:14'),
(263,'收款账号规则',3,'com.ruoyi.web.controller.om.MerchantReceiptsController.remove()',1,'admin',NULL,'/om/merchantReceipts/remove','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"6\" ]\r\n}',0,NULL,'2018-11-16 00:08:53'),
(264,'收款账号规则',1,'com.ruoyi.web.controller.om.MerchantReceiptsController.addSave()',1,'admin',NULL,'/om/merchantReceipts/add','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"1\" ],\r\n  \"merchantId\" : [ \"1\" ]\r\n}',0,NULL,'2018-11-16 00:08:58'),
(265,'收款账号规则',3,'com.ruoyi.web.controller.om.MerchantReceiptsController.remove()',1,'admin',NULL,'/om/merchantReceipts/remove','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"10\" ]\r\n}',0,NULL,'2018-11-16 00:12:48'),
(266,'收款账号规则',1,'com.ruoyi.web.controller.om.MerchantReceiptsController.addSave()',1,'admin',NULL,'/om/merchantReceipts/add','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"1\" ],\r\n  \"merchantId\" : [ \"1\" ]\r\n}',0,NULL,'2018-11-16 00:12:52'),
(267,'收款账号规则',3,'com.ruoyi.web.controller.om.MerchantReceiptsController.remove()',1,'admin',NULL,'/om/merchantReceipts/remove','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"11\" ]\r\n}',0,NULL,'2018-11-16 00:13:36'),
(268,'收款账号规则',1,'com.ruoyi.web.controller.om.MerchantReceiptsController.addSave()',1,'admin',NULL,'/om/merchantReceipts/add','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"1\" ],\r\n  \"merchantId\" : [ \"1\" ]\r\n}',0,NULL,'2018-11-16 00:13:41'),
(269,'商户信息',2,'com.ruoyi.web.controller.om.MerchantInfoController.editSave()',1,'admin','研发部门','/om/merchantInfo/edit','127.0.0.1','内网IP','{\r\n  \"id\" : [ \"4\" ],\r\n  \"merchantNo\" : [ \"m10002\" ],\r\n  \"loginName\" : [ \"test2\" ],\r\n  \"userId\" : [ \"102\" ],\r\n  \"merchantKey\" : [ \"123456\" ],\r\n  \"merchatFeeRate\" : [ \"0.500\" ],\r\n  \"notifyUrl\" : [ \"notify.m10002.com\" ],\r\n  \"company\" : [ \"m10002\" ],\r\n  \"webs',0,NULL,'2018-11-16 00:45:09'),
(270,'商户信息',2,'com.ruoyi.web.controller.om.MerchantInfoController.editSave()',1,'admin','研发部门','/om/merchantInfo/edit','127.0.0.1','内网IP','{\r\n  \"id\" : [ \"5\" ],\r\n  \"merchantNo\" : [ \"m10003\" ],\r\n  \"loginName\" : [ \"test3\" ],\r\n  \"userId\" : [ \"103\" ],\r\n  \"merchantKey\" : [ \"123456\" ],\r\n  \"merchatFeeRate\" : [ \"0.600\" ],\r\n  \"notifyUrl\" : [ \"notify.m10003.com\" ],\r\n  \"company\" : [ \"m10003\" ],\r\n  \"webs',0,NULL,'2018-11-16 00:46:20'),
(271,'商户信息',2,'com.ruoyi.web.controller.om.MerchantInfoController.editSave()',1,'admin','研发部门','/om/merchantInfo/edit','127.0.0.1','内网IP','{\r\n  \"id\" : [ \"5\" ],\r\n  \"merchantNo\" : [ \"m10003\" ],\r\n  \"loginName\" : [ \"test3\" ],\r\n  \"userId\" : [ \"103\" ],\r\n  \"merchantKey\" : [ \"123456\" ],\r\n  \"merchatFeeRate\" : [ \"0.600\" ],\r\n  \"notifyUrl\" : [ \"notify.m10003.com\" ],\r\n  \"company\" : [ \"m10003\" ],\r\n  \"webs',0,NULL,'2018-11-16 00:46:29'),
(272,'商户信息',2,'com.ruoyi.web.controller.om.MerchantInfoController.editSave()',1,'admin','研发部门','/om/merchantInfo/edit','127.0.0.1','内网IP','{\r\n  \"id\" : [ \"4\" ],\r\n  \"merchantNo\" : [ \"m10002\" ],\r\n  \"loginName\" : [ \"test2\" ],\r\n  \"userId\" : [ \"102\" ],\r\n  \"merchantKey\" : [ \"123456\" ],\r\n  \"merchatFeeRate\" : [ \"0.500\" ],\r\n  \"notifyUrl\" : [ \"notify.m10002.com\" ],\r\n  \"company\" : [ \"m10002\" ],\r\n  \"webs',0,NULL,'2018-11-16 00:46:34'),
(273,'商户信息',2,'com.ruoyi.web.controller.om.MerchantInfoController.editSave()',1,'admin',NULL,'/om/merchantInfo/edit','127.0.0.1','内网IP','{\r\n  \"id\" : [ \"4\" ],\r\n  \"merchantNo\" : [ \"m10002\" ],\r\n  \"loginName\" : [ \"test2\" ],\r\n  \"userId\" : [ \"102\" ],\r\n  \"merchantKey\" : [ \"123456\" ],\r\n  \"merchatFeeRate\" : [ \"0.500\" ],\r\n  \"notifyUrl\" : [ \"notify.m10002.com\" ],\r\n  \"company\" : [ \"m10002\" ],\r\n  \"webs',0,NULL,'2018-11-16 01:03:39'),
(274,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"102\" ],\r\n  \"roleName\" : [ \"系统管理员\" ],\r\n  \"roleKey\" : [ \"system\" ],\r\n  \"roleSort\" : [ \"4\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"系统管理员\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1004,1005,103,1015,1016,1017,104,1019,1020,1021,1023,107',0,NULL,'2018-11-16 01:37:14'),
(275,'收款账号规则',3,'com.ruoyi.web.controller.om.MerchantReceiptsController.remove()',1,'admin',NULL,'/om/merchantReceipts/remove','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"9\" ]\r\n}',0,NULL,'2018-11-16 01:42:28'),
(276,'收款账号规则',1,'com.ruoyi.web.controller.om.MerchantReceiptsController.addSave()',1,'admin',NULL,'/om/merchantReceipts/add','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"1,3\" ],\r\n  \"merchantId\" : [ \"4\" ]\r\n}',0,NULL,'2018-11-16 01:42:34'),
(277,'收款账号规则',3,'com.ruoyi.web.controller.om.MerchantReceiptsController.remove()',1,'admin',NULL,'/om/merchantReceipts/remove','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"14\" ]\r\n}',0,NULL,'2018-11-16 01:42:38'),
(278,'收款账号规则',3,'com.ruoyi.web.controller.om.MerchantReceiptsController.remove()',1,'admin',NULL,'/om/merchantReceipts/remove','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"4,5\" ]\r\n}',0,NULL,'2018-11-16 01:43:03'),
(279,'收款账号规则',1,'com.ruoyi.web.controller.om.MerchantReceiptsController.addSave()',1,'admin','研发部门','/om/merchantReceipts/add','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"2\" ],\r\n  \"merchantId\" : [ \"1\" ]\r\n}',0,NULL,'2018-11-17 13:50:19'),
(280,'收款账号规则',1,'com.ruoyi.web.controller.om.MerchantReceiptsController.addSave()',1,'admin','研发部门','/om/merchantReceipts/add','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"3\" ],\r\n  \"merchantId\" : [ \"1\" ]\r\n}',0,NULL,'2018-11-17 13:50:33');

/*Table structure for table `sys_post` */

DROP TABLE IF EXISTS `sys_post`;

CREATE TABLE `sys_post` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='岗位信息表';

/*Data for the table `sys_post` */

insert  into `sys_post`(`post_id`,`post_code`,`post_name`,`post_sort`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(1,'ceo','董事长',1,'0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(2,'se','项目经理',2,'0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(3,'hr','人力资源',3,'0','admin','2018-03-16 11:33:00','admin','2018-11-11 22:24:34',''),
(4,'user','普通员工',4,'0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),
(5,'merchant','外部联系人',99,'0','admin','2018-11-11 17:43:06','',NULL,'');

/*Table structure for table `sys_role` */

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限）',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 COMMENT='角色信息表';

/*Data for the table `sys_role` */

insert  into `sys_role`(`role_id`,`role_name`,`role_key`,`role_sort`,`data_scope`,`status`,`del_flag`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(1,'超级管理员','admin',1,'1','0','0','admin','2018-03-16 11:33:00','admin','2018-11-13 23:46:44','管理员'),
(2,'普通角色','common',2,'2','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','普通角色'),
(100,'运营商','merchant',3,'1','0','0','admin','2018-11-11 11:05:35','admin','2018-11-13 23:19:11',''),
(101,'系统管理','system-admin',4,'1','0','2','admin','2018-11-13 23:38:57','',NULL,'系统管理'),
(102,'系统管理员','system',4,'1','0','0','admin','2018-11-13 23:48:52','admin','2018-11-16 01:37:14','系统管理员');

/*Table structure for table `sys_role_dept` */

DROP TABLE IF EXISTS `sys_role_dept`;

CREATE TABLE `sys_role_dept` (
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  `dept_id` int(11) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和部门关联表';

/*Data for the table `sys_role_dept` */

insert  into `sys_role_dept`(`role_id`,`dept_id`) values 
(2,100),
(2,101),
(2,105);

/*Table structure for table `sys_role_menu` */

DROP TABLE IF EXISTS `sys_role_menu`;

CREATE TABLE `sys_role_menu` (
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  `menu_id` int(11) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联表';

/*Data for the table `sys_role_menu` */

insert  into `sys_role_menu`(`role_id`,`menu_id`) values 
(1,1),
(1,2),
(1,3),
(1,100),
(1,101),
(1,102),
(1,103),
(1,104),
(1,105),
(1,106),
(1,107),
(1,108),
(1,109),
(1,110),
(1,111),
(1,112),
(1,113),
(1,114),
(1,500),
(1,501),
(1,1000),
(1,1001),
(1,1002),
(1,1003),
(1,1004),
(1,1005),
(1,1006),
(1,1007),
(1,1008),
(1,1009),
(1,1010),
(1,1011),
(1,1012),
(1,1013),
(1,1014),
(1,1015),
(1,1016),
(1,1017),
(1,1018),
(1,1019),
(1,1020),
(1,1021),
(1,1022),
(1,1023),
(1,1024),
(1,1025),
(1,1026),
(1,1027),
(1,1028),
(1,1029),
(1,1030),
(1,1031),
(1,1032),
(1,1033),
(1,1034),
(1,1035),
(1,1036),
(1,1037),
(1,1038),
(1,1039),
(1,1040),
(1,1041),
(1,1042),
(1,1043),
(1,1044),
(1,1045),
(1,1046),
(1,1047),
(1,1048),
(1,1049),
(1,1050),
(1,1051),
(1,1052),
(1,1053),
(1,1054),
(1,1055),
(1,2005),
(1,2006),
(1,2007),
(1,2008),
(1,2009),
(2,1),
(2,2),
(2,3),
(2,100),
(2,101),
(2,102),
(2,103),
(2,104),
(2,105),
(2,106),
(2,107),
(2,108),
(2,109),
(2,110),
(2,111),
(2,112),
(2,113),
(2,114),
(2,500),
(2,501),
(2,1000),
(2,1001),
(2,1002),
(2,1003),
(2,1004),
(2,1005),
(2,1006),
(2,1007),
(2,1008),
(2,1009),
(2,1010),
(2,1011),
(2,1012),
(2,1013),
(2,1014),
(2,1015),
(2,1016),
(2,1017),
(2,1018),
(2,1019),
(2,1020),
(2,1021),
(2,1022),
(2,1023),
(2,1024),
(2,1025),
(2,1026),
(2,1027),
(2,1028),
(2,1029),
(2,1030),
(2,1031),
(2,1032),
(2,1033),
(2,1034),
(2,1035),
(2,1036),
(2,1037),
(2,1038),
(2,1039),
(2,1040),
(2,1041),
(2,1042),
(2,1043),
(2,1044),
(2,1045),
(2,1046),
(2,1047),
(2,1048),
(2,1049),
(2,1050),
(2,1051),
(2,1052),
(2,1053),
(2,1054),
(2,1055),
(100,1),
(100,2),
(100,109),
(100,110),
(100,111),
(100,1045),
(100,1046),
(100,1047),
(100,1048),
(100,1049),
(100,1050),
(100,1051),
(100,1052),
(100,1053),
(100,2005),
(100,2006),
(100,2007),
(100,2008),
(101,1),
(101,100),
(101,101),
(101,102),
(101,103),
(101,104),
(101,105),
(101,106),
(101,107),
(101,108),
(101,500),
(101,501),
(101,1000),
(101,1001),
(101,1002),
(101,1003),
(101,1004),
(101,1005),
(101,1006),
(101,1007),
(101,1008),
(101,1009),
(101,1010),
(101,1011),
(101,1012),
(101,1013),
(101,1014),
(101,1015),
(101,1016),
(101,1017),
(101,1018),
(101,1019),
(101,1020),
(101,1021),
(101,1022),
(101,1023),
(101,1024),
(101,1025),
(101,1026),
(101,1027),
(101,1028),
(101,1029),
(101,1030),
(101,1031),
(101,1032),
(101,1033),
(101,1034),
(101,1035),
(101,1036),
(101,1037),
(101,1038),
(101,1039),
(101,1040),
(101,1041),
(101,1042),
(101,1043),
(101,1044),
(101,2005),
(101,2006),
(101,2007),
(101,2008),
(101,2009),
(102,1),
(102,2),
(102,100),
(102,103),
(102,104),
(102,107),
(102,108),
(102,109),
(102,500),
(102,501),
(102,1000),
(102,1001),
(102,1002),
(102,1004),
(102,1005),
(102,1015),
(102,1016),
(102,1017),
(102,1019),
(102,1020),
(102,1021),
(102,1023),
(102,1034),
(102,1035),
(102,1036),
(102,1038),
(102,1040),
(102,1041),
(102,1042),
(102,1044),
(102,1045),
(102,1046),
(102,1047),
(102,2005),
(102,2006),
(102,2007),
(102,2008),
(102,2010),
(102,2011),
(102,2012),
(102,2013);

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` int(11) DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) DEFAULT '' COMMENT '密码',
  `salt` varchar(20) DEFAULT '' COMMENT '盐加密',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(20) DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

/*Data for the table `sys_user` */

insert  into `sys_user`(`user_id`,`dept_id`,`login_name`,`user_name`,`user_type`,`email`,`phonenumber`,`sex`,`avatar`,`password`,`salt`,`status`,`del_flag`,`login_ip`,`login_date`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(1,103,'admin','小A','00','ry@163.com','15888888888','1','','29c67a30398638269fe600f73a054934','111111','0','0','127.0.0.1','2018-11-17 13:47:37','admin','2018-03-16 11:33:00','ry','2018-11-17 13:47:37','管理员'),
(2,105,'ry','小B','00','xx@qq.com','15666666666','1','','8e6d98b90472783cc73c17047ddccf36','222222','1','0','127.0.0.1','2018-03-16 11:33:00','admin','2018-03-16 11:33:00','admin','2018-11-14 21:37:53','测试员'),
(100,200,'test','test','00','test@1.1','13666666666','0','','8b4633eef1e139ee173db72c9c6586ee','993cf9','0','0','127.0.0.1','2018-11-13 23:41:20','admin','2018-11-11 11:04:47','om','2018-11-13 23:41:20',''),
(101,200,'test1','test1','00','test1@1.1','13666666661','0','','85928b63c5f82c9d79475e07d8a13ec8','bd3795','0','2','',NULL,'admin','2018-11-13 23:21:06','',NULL,''),
(102,200,'test2','test2','00','test2@1.1','13666666662','0','','81d77bc4380ed53af24f2335acc34f5a','f94f40','0','0','',NULL,'admin','2018-11-13 23:27:59','',NULL,''),
(103,200,'test3','test3','00','test3@1.1','13666666663','0','','9087b608515764251edc76aa02c4cdf4','538f6a','0','0','',NULL,'admin','2018-11-13 23:31:23','',NULL,''),
(104,104,'om','om','00','om@1.1','13611112222','0','','6144dca4042b64883a53710fb9d18dc3','d55fa7','0','0','127.0.0.1','2018-11-13 23:45:28','admin','2018-11-13 23:36:12','admin','2018-11-13 23:49:18',''),
(105,103,'system','system','00','system@1.1','13611112221','0','','0a00d0c9b7e3f7e560fea0cad89c7275','99552e','0','0','127.0.0.1','2018-11-14 21:22:49','admin','2018-11-13 23:50:02','','2018-11-14 21:22:49',''),
(106,107,'test4','test4','00','test4@1.1','13611112224','1','','995c945d38bc99a1f2dd53d33661b734','fd627f','0','0','',NULL,'admin','2018-11-14 22:10:19','admin','2018-11-14 22:10:30','');

/*Table structure for table `sys_user_online` */

DROP TABLE IF EXISTS `sys_user_online`;

CREATE TABLE `sys_user_online` (
  `sessionId` varchar(50) NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) DEFAULT '0' COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='在线用户记录';

/*Data for the table `sys_user_online` */

insert  into `sys_user_online`(`sessionId`,`login_name`,`dept_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`start_timestamp`,`last_access_time`,`expire_time`) values 
('f0ece4d6-5ccb-4152-881e-47089e178e52','admin','研发部门','127.0.0.1','内网IP','Chrome','Windows 10','on_line','2018-11-17 13:47:27','2018-11-17 13:50:21',1800000);

/*Table structure for table `sys_user_post` */

DROP TABLE IF EXISTS `sys_user_post`;

CREATE TABLE `sys_user_post` (
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `post_id` int(11) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与岗位关联表';

/*Data for the table `sys_user_post` */

insert  into `sys_user_post`(`user_id`,`post_id`) values 
(1,1),
(2,2),
(100,5),
(101,5),
(102,5),
(103,5),
(104,4),
(105,4),
(106,4);

/*Table structure for table `sys_user_role` */

DROP TABLE IF EXISTS `sys_user_role`;

CREATE TABLE `sys_user_role` (
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户和角色关联表';

/*Data for the table `sys_user_role` */

insert  into `sys_user_role`(`user_id`,`role_id`) values 
(1,1),
(2,2),
(100,1),
(101,100),
(102,100),
(103,100),
(104,2),
(105,102),
(106,100);

/*Table structure for table `t_merchant_info` */

DROP TABLE IF EXISTS `t_merchant_info`;

CREATE TABLE `t_merchant_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '表id，自增',
  `merchant_no` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '商户号',
  `merchant_key` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '商户key',
  `merchat_fee_rate` decimal(10,3) NOT NULL COMMENT '商户费率（每订单，百分数）',
  `company` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '公司名称',
  `website` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '公司网站',
  `create_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '创建人',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  `merchat_flag` smallint(6) NOT NULL COMMENT '商户号状态:\n            0：禁用\n            1：正常\n            2：欠费',
  `notify_url` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '商户订单通知地址',
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `login_name` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '登陆名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UDX_MERCHANT_INFO_NO` (`merchant_no`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='商户信息表';

/*Data for the table `t_merchant_info` */

insert  into `t_merchant_info`(`id`,`merchant_no`,`merchant_key`,`merchat_fee_rate`,`company`,`website`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`,`merchat_flag`,`notify_url`,`user_id`,`login_name`) values 
(1,'m10001','123456',0.600,'m10001','m10001.com','admin','2018-11-13 20:51:24','admin','2018-11-13 23:10:54','一个备注',1,'notify.m10001.com',100,'test'),
(4,'m10002','123456',0.500,'m10002','m10002.com','admin','2018-11-13 23:30:34','admin','2018-11-16 01:03:38','一个备注',1,'notify.m10002.com',102,'test2'),
(5,'m10003','123456',0.600,'m10003','m10003.com','admin','2018-11-14 00:59:17','admin','2018-11-16 00:46:29','一个备注',1,'notify.m10003.com',103,'test3'),
(6,'m10004','123456',0.500,'m10004','m10004.com','admin','2018-11-14 22:11:18',NULL,NULL,'一个备注',1,'notify.m10004.com',106,'test4');

/*Table structure for table `t_merchant_receipts` */

DROP TABLE IF EXISTS `t_merchant_receipts`;

CREATE TABLE `t_merchant_receipts` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '表ID，自增',
  `merchant_info_id` int(11) NOT NULL COMMENT '商户表ID',
  `receipt_account_id` int(11) NOT NULL COMMENT '收款账号表ID',
  `create_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '创建人',
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='收款账号规则表';

/*Data for the table `t_merchant_receipts` */

insert  into `t_merchant_receipts`(`id`,`merchant_info_id`,`receipt_account_id`,`create_by`,`create_time`) values 
(8,4,2,'admin','2018-11-16 00:04:06'),
(12,1,1,'admin','2018-11-16 00:13:41'),
(13,4,1,'admin','2018-11-16 01:42:34'),
(15,1,2,'admin','2018-11-17 13:50:19'),
(16,1,3,'admin','2018-11-17 13:50:33');

/*Table structure for table `t_orders` */

DROP TABLE IF EXISTS `t_orders`;

CREATE TABLE `t_orders` (
  `id` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '表id',
  `merchant_no` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '商户号',
  `merchant_order_id` varchar(80) COLLATE utf8_bin NOT NULL COMMENT '商户方订单号',
  `order_id` varchar(80) COLLATE utf8_bin NOT NULL COMMENT '系统流水号',
  `order_amount` decimal(10,2) NOT NULL COMMENT '订单金额，单位元',
  `receipt_amount` decimal(10,2) DEFAULT NULL COMMENT '已充值金额，单位元',
  `order_flag` int(4) NOT NULL COMMENT '订单状态：\n            2：支付金额不足\n            1：成功\n            0：等待',
  `receipt_order_id` varchar(80) COLLATE utf8_bin DEFAULT NULL COMMENT '第三方流水号',
  `receipt_id` int(11) DEFAULT NULL COMMENT '收款账号记录ID',
  `payment_type` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '支付类型：\n            alipay_qr：支付宝扫码\n            alipay_app：支付宝app\n            wechat_qr：微信扫码\n            wechat_app：微信app\n            wechat_qr_sp：特别微信扫码',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `create_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '创建人',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '更新人',
  `notify_count` int(4) NOT NULL DEFAULT '0' COMMENT '通知次数',
  `notify_flag` int(4) DEFAULT NULL COMMENT '通知商户标识：\n            2：通知失败\n            1：已通知（商户返回成功）\n            0：等待',
  `notify_time` datetime DEFAULT NULL COMMENT '通知商户时间',
  `notify_result` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '商户对通知的返回',
  `payid_time` datetime DEFAULT NULL COMMENT '用户支付确认回调时间(支付宝等)',
  `remark` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  `merchat_fee_rate` decimal(10,3) NOT NULL COMMENT '商户费率',
  `order_fee` decimal(10,2) NOT NULL COMMENT '订单手续费',
  `notify_url` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '通知商户地址',
  `settlement_flag` int(4) DEFAULT NULL COMMENT '订单结算状态\n            2：标记异常\n            1：已经结算\n            0：未结算',
  PRIMARY KEY (`id`),
  KEY `IDX_ORDER_MERCHANT_NO` (`merchant_no`),
  KEY `IDX_ORDER_MERCHANT_ORDER_ID` (`merchant_order_id`),
  KEY `IDX_ORDER_ORDER_ID` (`order_id`),
  KEY `IDX_ORDER_3RD_ORDER_ID` (`receipt_order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='订单信息表';

/*Data for the table `t_orders` */

/*Table structure for table `t_receipt_accounts` */

DROP TABLE IF EXISTS `t_receipt_accounts`;

CREATE TABLE `t_receipt_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '表id，自增',
  `receipt_account` varchar(80) COLLATE utf8_bin NOT NULL COMMENT '收款账号',
  `receipt_type` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '收款账号类型：\n            alipay：支付宝\n            wechat：微信\n            alipay_sp：支付宝个人\n            wechat_sp：微信个人\n            ',
  `payment_type` char(10) COLLATE utf8_bin DEFAULT NULL COMMENT '支付类型\n            alipay_qr：支付宝扫码\n            alipay_app：支付宝app\n            wechat_qr：微信扫码\n            wechat_app：微信app\n            wechat_qr_sp：特别微信扫码',
  `receipt_gateway` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '收款网关',
  `account_pub_key` varchar(2500) COLLATE utf8_bin DEFAULT NULL COMMENT '账号公钥',
  `account_prv_key` varchar(2500) COLLATE utf8_bin DEFAULT NULL COMMENT '账号私钥',
  `create_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '创建人',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  `third_pub_key` varchar(2500) COLLATE utf8_bin DEFAULT NULL COMMENT '第三方公钥',
  `account_flag` int(4) NOT NULL COMMENT '账号状态：\n            1：启用；\n            0：停用；\n            -1：日流量限额关闭',
  `daily_limit` decimal(12,3) NOT NULL COMMENT '账号每日限流',
  `daily_traffic` decimal(12,3) DEFAULT '0.000' COMMENT '账号每日流量',
  `third_account_id` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '第三方Id',
  `receipt_phone` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '收款账号手机号码',
  `receipt_notify_url` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '收款账号支付通知地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UDX_RECEIPT_ACC_ACCOUNT` (`receipt_account`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='收款账号表';

/*Data for the table `t_receipt_accounts` */

insert  into `t_receipt_accounts`(`id`,`receipt_account`,`receipt_type`,`payment_type`,`receipt_gateway`,`account_pub_key`,`account_prv_key`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`,`third_pub_key`,`account_flag`,`daily_limit`,`daily_traffic`,`third_account_id`,`receipt_phone`,`receipt_notify_url`) values 
(1,'13611112222','alipay','alipay_qr','http://localhost:8080/gateway','123456','123456','admin','2018-11-14 20:33:52','admin','2018-11-14 21:11:33','一个备注','123456',1,50000.000,0.000,'13611112222','13611112222',NULL),
(2,'13611112223','wechat_sp','wechat_qr','http://localhost:8080/gateway','123456','123456','admin','2018-11-14 21:22:33',NULL,NULL,'一个备注','123456',1,50000.000,0.000,'13611112223','13611112223',NULL),
(3,'13611112221','wechat_sp','wechat_qr','http://localhost:8080/gateway','123456','123456','system','2018-11-14 21:23:13',NULL,NULL,'一个备注','123456',1,50000.000,0.000,'13611112221','13611112221',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
