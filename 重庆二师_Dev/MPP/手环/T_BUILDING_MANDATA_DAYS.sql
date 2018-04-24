-- ----------------------------
-- MPP
-- ----------------------------
CREATE TABLE "ods"."SH_T_BUILDING_MANDATA_DAYS" (
"BUILDING_ID" int(10) NOT NULL COMMENT '建筑物ID',
"DATA_DATE" DATEtime NOT NULL ,
"MANTIME" int(15) NULL ,
"IN_AMOUNT" int(10) NULL COMMENT '到访人次',
"IN_AMOUNT2" int(10) NULL COMMENT '到访人数'
)COMMENT '建筑物每天的人数统计'

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

Date: 2018-04-02 09:36:21
*/


-- ----------------------------
-- Table structure for T_BUILDING_MANDATA_DAYS
-- ----------------------------
DROP TABLE "SHOUHUAN"."T_BUILDING_MANDATA_DAYS";
CREATE TABLE "SHOUHUAN"."T_BUILDING_MANDATA_DAYS" (
"BUILDING_ID" NUMBER(10) NOT NULL ,
"DATA_DATE" DATE NOT NULL ,
"MANTIME" NUMBER(15) NULL ,
"IN_AMOUNT" NUMBER(10) NULL ,
"IN_AMOUNT2" NUMBER(10) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Indexes structure for table T_BUILDING_MANDATA_DAYS
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table T_BUILDING_MANDATA_DAYS
-- ----------------------------
ALTER TABLE "SHOUHUAN"."T_BUILDING_MANDATA_DAYS" ADD PRIMARY KEY ("BUILDING_ID", "DATA_DATE");
