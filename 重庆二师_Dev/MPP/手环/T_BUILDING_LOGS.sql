-- ----------------------------
-- MPP(遗留4月的没有抽取，待规划增量)
-- ----------------------------

CREATE TABLE "ODS"."SH_T_BUILDING_LOGS" (
"BUILDING_ID" int(10) NULL COMMENT '建筑物ID',
"USER_ID" int(10) NULL COMMENT '用户ID',
"RFID_ID" VARCHAR(30 ) NULL COMMENT '手环id',
"IN_TIME" DATEtime NULL COMMENT '进入时间',
"OUT_TIME" DATEtime NULL COMMENT '离开时间',
"FLAG" int(1) NULL COMMENT '0：正常进出数据，1：正常进入，系统分割离开数据，2：正常进入未离开，3：:分割进入，正常离开，4：分割进入未离开，5：分割进入，分割离开'
)COMMENT '建筑物进出记录'

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

Date: 2018-04-02 09:35:52
*/


-- ----------------------------
-- Table structure for T_BUILDING_LOGS_201703
-- ----------------------------
DROP TABLE "SHOUHUAN"."T_BUILDING_LOGS_201703";
CREATE TABLE "SHOUHUAN"."T_BUILDING_LOGS_201703" (
"BUILDING_ID" NUMBER(10) NULL ,
"USER_ID" NUMBER(10) NULL ,
"RFID_ID" VARCHAR2(30 BYTE) NULL ,
"IN_TIME" DATE NULL ,
"OUT_TIME" DATE NULL ,
"FLAG" NUMBER(1) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Indexes structure for table T_BUILDING_LOGS_201703
-- ----------------------------
CREATE INDEX "SHOUHUAN"."I_BUILDING_LOGS_201703_1"
ON "SHOUHUAN"."T_BUILDING_LOGS_201703" ("BUILDING_ID" ASC)
LOGGING
VISIBLE;
CREATE INDEX "SHOUHUAN"."I_BUILDING_LOGS_201703_2"
ON "SHOUHUAN"."T_BUILDING_LOGS_201703" ("USER_ID" ASC)
LOGGING
VISIBLE;
CREATE INDEX "SHOUHUAN"."I_BUILDING_LOGS_201703_3"
ON "SHOUHUAN"."T_BUILDING_LOGS_201703" ("RFID_ID" ASC)
LOGGING
VISIBLE;
CREATE INDEX "SHOUHUAN"."I_BUILDING_LOGS_201703_4"
ON "SHOUHUAN"."T_BUILDING_LOGS_201703" ("IN_TIME" ASC)
LOGGING
VISIBLE;
CREATE INDEX "SHOUHUAN"."I_BUILDING_LOGS_201703_5"
ON "SHOUHUAN"."T_BUILDING_LOGS_201703" ("OUT_TIME" ASC)
LOGGING
VISIBLE;
