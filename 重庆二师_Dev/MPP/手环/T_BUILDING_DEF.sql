-- ----------------------------
-- MPP
-- ----------------------------
CREATE TABLE "ods"."SH_T_BUILDING_DEF" (
"BUILDING_ID" int(10) NOT NULL COMMENT '建筑物ID',
"BUILDING_NAME" VARCHAR(100 ) NULL COMMENT '建筑物名称',
"STATUS" int(2) NULL COMMENT '0：已删除，1：正常',
"STATUS_TIME" DATEtime NULL ,
"STATUS_GH" int(10) NULL 
)COMMENT '关键建筑物定义'

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

Date: 2018-04-02 09:35:31
*/


-- ----------------------------
-- Table structure for T_BUILDING_DEF
-- ----------------------------
DROP TABLE "SHOUHUAN"."T_BUILDING_DEF";
CREATE TABLE "SHOUHUAN"."T_BUILDING_DEF" (
"BUILDING_ID" NUMBER(10) NOT NULL ,
"BUILDING_NAME" VARCHAR2(100 BYTE) NULL ,
"STATUS" NUMBER(1) NULL ,
"STATUS_TIME" DATE NULL ,
"STATUS_GH" NUMBER(10) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Indexes structure for table T_BUILDING_DEF
-- ----------------------------

-- ----------------------------
-- Checks structure for table T_BUILDING_DEF
-- ----------------------------
ALTER TABLE "SHOUHUAN"."T_BUILDING_DEF" ADD CHECK ("BUILDING_ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table T_BUILDING_DEF
-- ----------------------------
ALTER TABLE "SHOUHUAN"."T_BUILDING_DEF" ADD PRIMARY KEY ("BUILDING_ID");
