/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.8.133_his
 Source Server Type    : Oracle
 Source Server Version : 110200
 Source Host           : 192.168.8.133:11521
 Source Schema         : HIS

 Target Server Type    : Oracle
 Target Server Version : 110200
 File Encoding         : 65001

 Date: 05/09/2020 16:15:48
*/


-- ----------------------------
-- Table structure for DICT_SEX
-- ----------------------------
DROP TABLE "HIS"."DICT_SEX";
CREATE TABLE "HIS"."DICT_SEX" (
  "SEX_ID" NUMBER(10,0) NOT NULL,
  "SEX_CODE" VARCHAR2(1 BYTE),
  "SEX_NAME" VARCHAR2(6 CHAR)
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536
  NEXT 1048576
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;
COMMENT ON COLUMN "HIS"."DICT_SEX"."SEX_ID" IS '性别主键：PK_DICT_SEX__ID';
COMMENT ON COLUMN "HIS"."DICT_SEX"."SEX_CODE" IS '性别代码，长度1，不为空：NN_DICT_SEX_SEX_CODE，唯一：UK_DICT_SEX__CODE';
COMMENT ON COLUMN "HIS"."DICT_SEX"."SEX_NAME" IS '性别名称，长度6(中文占1个字符)，不为空：NN_DICT_SEX_SEX_NAME';
COMMENT ON TABLE "HIS"."DICT_SEX" IS '个人基本信息分类与代码 第1部分:人的性别代码，参见：http://openstd.samr.gov.cn/bzgk/gb/newGbInfo?hcno=0FC942D542BC6EE3C707B2647EF81CD8';

-- ----------------------------
-- Records of DICT_SEX
-- ----------------------------
INSERT INTO "HIS"."DICT_SEX" VALUES ('1', '0', '未知的性别');
INSERT INTO "HIS"."DICT_SEX" VALUES ('2', '1', '男性');
INSERT INTO "HIS"."DICT_SEX" VALUES ('3', '2', '女性');
INSERT INTO "HIS"."DICT_SEX" VALUES ('4', '3', '未说明的性别');

-- ----------------------------
-- Primary Key structure for table DICT_SEX
-- ----------------------------
ALTER TABLE "HIS"."DICT_SEX" ADD CONSTRAINT "PK_DICT_SEX__ID" PRIMARY KEY ("SEX_ID");

-- ----------------------------
-- Uniques structure for table DICT_SEX
-- ----------------------------
ALTER TABLE "HIS"."DICT_SEX" ADD CONSTRAINT "UK_DICT_SEX__CODE" UNIQUE ("SEX_CODE") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Checks structure for table DICT_SEX
-- ----------------------------
ALTER TABLE "HIS"."DICT_SEX" ADD CONSTRAINT "NN_DICT_SEX_SEX_CODE" CHECK ("SEX_CODE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HIS"."DICT_SEX" ADD CONSTRAINT "NN_DICT_SEX_SEX_NAME" CHECK ("SEX_NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
