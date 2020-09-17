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

 Date: 18/09/2020 00:20:28
*/


-- ----------------------------
-- Table structure for THREE_LEVEL_RC001
-- ----------------------------
DROP TABLE "HIS"."THREE_LEVEL_RC001";
CREATE TABLE "HIS"."THREE_LEVEL_RC001" (
  "THREE_LEVEL_RC001_ID" NUMBER(10,0),
  "CODE" VARCHAR2(1 BYTE),
  "NAME" VARCHAR2(6 CHAR)
)
TABLESPACE "HIS_PERMANENT"
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
COMMENT ON COLUMN "HIS"."THREE_LEVEL_RC001"."THREE_LEVEL_RC001_ID" IS '附件3：三级公立医院绩效考核住院病案首页数据采集质量与接口标准.xlsx RC001 性别值域代码表 主键';
COMMENT ON COLUMN "HIS"."THREE_LEVEL_RC001"."CODE" IS '性别代码';
COMMENT ON COLUMN "HIS"."THREE_LEVEL_RC001"."NAME" IS '性别名称';
COMMENT ON TABLE "HIS"."THREE_LEVEL_RC001" IS '附件3：三级公立医院绩效考核住院病案首页数据采集质量与接口标准.xlsx RC001 性别值域代码表
此代码来源于国家标准《个人基本信息分类与代码》（GB/T 2261.1-2003）';

-- ----------------------------
-- Records of THREE_LEVEL_RC001
-- ----------------------------
INSERT INTO "HIS"."THREE_LEVEL_RC001" VALUES ('1', '0', '未知的性别');
INSERT INTO "HIS"."THREE_LEVEL_RC001" VALUES ('2', '1', '男');
INSERT INTO "HIS"."THREE_LEVEL_RC001" VALUES ('3', '2', '女');
INSERT INTO "HIS"."THREE_LEVEL_RC001" VALUES ('4', '9', '未说明的性别');

-- ----------------------------
-- Primary Key structure for table THREE_LEVEL_RC001
-- ----------------------------
ALTER TABLE "HIS"."THREE_LEVEL_RC001" ADD CONSTRAINT "PK_THREE_LEVEL_RC001__ID" PRIMARY KEY ("THREE_LEVEL_RC001_ID");

-- ----------------------------
-- Checks structure for table THREE_LEVEL_RC001
-- ----------------------------
ALTER TABLE "HIS"."THREE_LEVEL_RC001" ADD CONSTRAINT "NN_THREE_LEVEL_RC001__CODE" CHECK ("CODE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HIS"."THREE_LEVEL_RC001" ADD CONSTRAINT "NN_THREE_LEVEL_RC001__NAME" CHECK ("NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
