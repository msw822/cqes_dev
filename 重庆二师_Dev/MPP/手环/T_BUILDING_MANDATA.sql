-- ----------------------------
-- MPP
-- ----------------------------
CREATE TABLE "ods"."SH_T_BUILDING_MANDATA" (
"BUILDING_ID" int(10) NOT NULL COMMENT '建筑物ID',
"AMOUNT_TIME" DATEtime NOT NULL COMMENT '小时时段',
"AMOUNT" int(10) NULL COMMENT '人数',
"MANTIME" int(10) NULL COMMENT '人时（单位：人秒），截止到该时间点为止所有来过的人停留的时间之和',
"IN_AMOUNT" int(10) NULL COMMENT '该小时之内进入的人次',
"OUT_AMOUNT" int(10) NULL COMMENT '该小时之内离开的人次',
"IN_AMOUNT2" int(10) NULL COMMENT '该小时之内进入的人数',
"OUT_AMOUNT2" int(10) NULL COMMENT '该小时之内离开的人数'
)COMMENT '建筑物每个时段（小时）的人数统计'

/*
Navicat Oracle Data Transfer
Oracle Client Version : 11.2.0.4.0

Source Server         : 10.2.15.215-shouhuan
Source Server Version : 110200
Source Host           : 10.2.15.215:11521
Source Schema         : SHOUHUAN

Target Server Type    : ORACLE
Target Server Version : 110200
File Encoding         : 65001

Date: 2018-04-02 09:36:06
*/


-- ----------------------------
-- Table structure for T_BUILDING_MANDATA
-- ----------------------------
DROP TABLE "SHOUHUAN"."T_BUILDING_MANDATA";
CREATE TABLE "SHOUHUAN"."T_BUILDING_MANDATA" (
"BUILDING_ID" NUMBER(10) NOT NULL ,
"AMOUNT_TIME" DATE NOT NULL ,
"AMOUNT" NUMBER(10) NULL ,
"MANTIME" NUMBER(10) NULL ,
"IN_AMOUNT" NUMBER(10) NULL ,
"OUT_AMOUNT" NUMBER(10) NULL ,
"IN_AMOUNT2" NUMBER(10) NULL ,
"OUT_AMOUNT2" NUMBER(10) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Indexes structure for table T_BUILDING_MANDATA
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table T_BUILDING_MANDATA
-- ----------------------------
ALTER TABLE "SHOUHUAN"."T_BUILDING_MANDATA" ADD PRIMARY KEY ("BUILDING_ID", "AMOUNT_TIME");
