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

 Date: 09/09/2020 23:05:48
*/


-- ----------------------------
-- Table structure for STAFF_INFO
-- ----------------------------
DROP TABLE "HIS"."STAFF_INFO";
CREATE TABLE "HIS"."STAFF_INFO" (
  "STAFF_INFO_ID" NUMBER(19,0) NOT NULL,
  "STAFF_NAME" VARCHAR2(10 CHAR),
  "NAME" VARCHAR2(10 CHAR),
  "PASSWORD" VARCHAR2(68 BYTE),
  "BIRTHDAY" DATE,
  "ID_CARD" VARCHAR2(18 BYTE),
  "SEX_CODE" VARCHAR2(1 BYTE),
  "REMARK" VARCHAR2(255 CHAR),
  "CREATE_USERNAME" VARCHAR2(10 BYTE),
  "UPDATE_USERNAME" VARCHAR2(10 BYTE),
  "CREATE_IP" VARCHAR2(15 BYTE),
  "UPDATE_IP" VARCHAR2(15 BYTE),
  "CREATE_DATE" DATE DEFAULT NULL,
  "UPDATE_DATE" DATE,
  "DELETED" NUMBER(1,0) DEFAULT 0

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
COMMENT ON COLUMN "HIS"."STAFF_INFO"."STAFF_INFO_ID" IS '员工表主键：PK_STAFF_INFO__STAFF_INFO_ID';
COMMENT ON COLUMN "HIS"."STAFF_INFO"."STAFF_NAME" IS '员工工号，长度10(中文占3个字符)，不为空：NN_STAFF_INFO__STAFF_NAME，唯一：UK_STAFF_INFO__STAFF_NAME';
COMMENT ON COLUMN "HIS"."STAFF_INFO"."NAME" IS '员工姓名，长度10(中文占3个字符)，不为空：NN_STAFF_INFO__NAME';
COMMENT ON COLUMN "HIS"."STAFF_INFO"."PASSWORD" IS '密码，长度68(中文占3个字符)，使用BCrypt加密的密码较长，长度60/68位，根据方法不同，略有区别，不为空：NN_STAFF_INFO__PASSWORD';
COMMENT ON COLUMN "HIS"."STAFF_INFO"."BIRTHDAY" IS '出生日期，不为空：NN_STAFF_INFO__BIRTHDAY';
COMMENT ON COLUMN "HIS"."STAFF_INFO"."ID_CARD" IS '身份证号码，长度18(中文占3个字符)，不为空：NN_STAFF_INFO__ID_CARD';
COMMENT ON COLUMN "HIS"."STAFF_INFO"."SEX_CODE" IS '性别代码，长度1，字典表：DICT_SEX，不为空：NN_STAFF_INFO__SEX_CODE，外键：NN_STAFF_INFO__SEX_CODE';
COMMENT ON COLUMN "HIS"."STAFF_INFO"."REMARK" IS '备注，长度255(中文占1个字符)';
COMMENT ON COLUMN "HIS"."STAFF_INFO"."CREATE_USERNAME" IS '创建者员工工号，长度10(中文占3个字符)，不为空：NN_STAFF_INFO__CREATE_USERNAME';
COMMENT ON COLUMN "HIS"."STAFF_INFO"."UPDATE_USERNAME" IS '修改者员工工号，长度10(中文占3个字符)';
COMMENT ON COLUMN "HIS"."STAFF_INFO"."CREATE_IP" IS '创建者IP，长度15(中文占3个字符)，不为空：NN_STAFF_INFO__CREATE_IP';
COMMENT ON COLUMN "HIS"."STAFF_INFO"."UPDATE_IP" IS '修改者IP，长度15(中文占3个字符)';
COMMENT ON COLUMN "HIS"."STAFF_INFO"."CREATE_DATE" IS '创建时间，插入数据当前时间，Oracle自动生成，不为空：NN_STAFF_INFO__CREATE_DATE';
COMMENT ON COLUMN "HIS"."STAFF_INFO"."UPDATE_DATE" IS '更新时间，更新数据时 Oracle自动生成，默认为null';
COMMENT ON TABLE "HIS"."STAFF_INFO" IS '员工表';

-- ----------------------------
-- Primary Key structure for table STAFF_INFO
-- ----------------------------
ALTER TABLE "HIS"."STAFF_INFO" ADD CONSTRAINT "PK_STAFF_INFO__STAFF_INFO_ID" PRIMARY KEY ("STAFF_INFO_ID");

-- ----------------------------
-- Uniques structure for table STAFF_INFO
-- ----------------------------
ALTER TABLE "HIS"."STAFF_INFO" ADD CONSTRAINT "UK_STAFF_INFO__STAFF_NAME" UNIQUE ("STAFF_NAME") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Checks structure for table STAFF_INFO
-- ----------------------------
ALTER TABLE "HIS"."STAFF_INFO" ADD CONSTRAINT "CK_STAFF_INFO__DELETED" CHECK ("DELETED" = 0 OR "DELETED" = 1) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HIS"."STAFF_INFO" ADD CONSTRAINT "NN_STAFF_INFO__BIRTHDAY" CHECK ("BIRTHDAY" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HIS"."STAFF_INFO" ADD CONSTRAINT "NN_STAFF_INFO__CREATE_DATE" CHECK ("CREATE_DATE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HIS"."STAFF_INFO" ADD CONSTRAINT "NN_STAFF_INFO__CREATE_IP" CHECK ("CREATE_IP" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HIS"."STAFF_INFO" ADD CONSTRAINT "NN_STAFF_INFO__CREATE_USERNAME" CHECK ("CREATE_USERNAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HIS"."STAFF_INFO" ADD CONSTRAINT "NN_STAFF_INFO__ID_CARD" CHECK ("ID_CARD" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HIS"."STAFF_INFO" ADD CONSTRAINT "NN_STAFF_INFO__NAME" CHECK ("NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HIS"."STAFF_INFO" ADD CONSTRAINT "NN_STAFF_INFO__PASSWORD" CHECK ("PASSWORD" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HIS"."STAFF_INFO" ADD CONSTRAINT "NN_STAFF_INFO__SEX_CODE" CHECK ("SEX_CODE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HIS"."STAFF_INFO" ADD CONSTRAINT "NN_STAFF_INFO__STAFF_INFO_ID" CHECK ("STAFF_INFO_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HIS"."STAFF_INFO" ADD CONSTRAINT "NN_STAFF_INFO__STAFF_NAME" CHECK ("STAFF_NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Triggers structure for table STAFF_INFO
-- ----------------------------
CREATE TRIGGER "HIS"."TIG_STAFF_INFO__INSERT" BEFORE INSERT ON "HIS"."STAFF_INFO" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
declare
  -- local variables here
begin
  if inserting then -- 插入数据时

    if :new.create_username is null then -- 创建者员工工号不能为空
      raise_application_error(-20001, '插入数据时，创建者员工工号不能为空');
    end if;

    :new.create_date := sysdate; -- 创建时间由数据库生成

    if :new.create_ip is null then -- 创建者IP不能为空
      raise_application_error(-20002, '插入数据时，创建者IP不能为空');
    end if;

    :new.update_username := null; -- 更新人置空
    :new.update_date := null; -- 更新时间置空
    :new.update_ip := null; -- 更新IP置空

  end if;
end TIG_STAFF_INFO__INSERT;
/
CREATE TRIGGER "HIS"."TIG_STAFF_INFO__UPDATE" BEFORE UPDATE ON "HIS"."STAFF_INFO" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
declare
  -- local variables here
begin
  if updating then -- 更新数据时

    :new.create_username := :old.create_username; -- 创建者员工工号不变
    :new.create_date := :old.create_date; -- 创建时间不变
    :new.create_ip := :old.create_ip; -- 创建者IP不变

    if :new.update_username is null then -- 更新者员工工号不能为空
      raise_application_error(-20003, '更新数据时，更新者员工工号不能为空');
    end if;

    :new.update_date := sysdate; -- 更新时间由数据库生成

    if :new.update_ip is null then -- 更新者IP不能为空
      raise_application_error(-20004, '更新数据时，更新者IP不能为空');
    end if;

  end if;
end TIG_STAFF_INFO__UPDATE;
/

-- ----------------------------
-- Foreign Keys structure for table STAFF_INFO
-- ----------------------------
ALTER TABLE "HIS"."STAFF_INFO" ADD CONSTRAINT "FK_STAFF_INFO__CREATE_USERNAME" FOREIGN KEY ("CREATE_USERNAME") REFERENCES "HIS"."STAFF_INFO" ("STAFF_NAME") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HIS"."STAFF_INFO" ADD CONSTRAINT "FK_STAFF_INFO__SEX_CODE" FOREIGN KEY ("SEX_CODE") REFERENCES "HIS"."DICT_SEX" ("SEX_CODE") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HIS"."STAFF_INFO" ADD CONSTRAINT "FK_STAFF_INFO__UPDATE_USERNAME" FOREIGN KEY ("UPDATE_USERNAME") REFERENCES "HIS"."STAFF_INFO" ("STAFF_NAME") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;