--------------------------------------------------------
--  颇老捞 积己凳 - 格夸老-2岿-02-2017   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ITEM
--------------------------------------------------------

  CREATE TABLE "SCOTT"."ITEM" 
   (	"TYPE" VARCHAR2(20 BYTE), 
	"ID" VARCHAR2(20 BYTE), 
	"PRICE" NUMBER, 
	"ITEMCOLOR" VARCHAR2(20 BYTE), 
	"ITEMSIZE" NUMBER, 
	"ITEMAMOUNT" NUMBER, 
	"ITEMNAME" VARCHAR2(40 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index ITEM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."ITEM_PK" ON "SCOTT"."ITEM" ("TYPE", "ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table ITEM
--------------------------------------------------------

  ALTER TABLE "SCOTT"."ITEM" ADD CONSTRAINT "ITEM_PK" PRIMARY KEY ("TYPE", "ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SCOTT"."ITEM" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."ITEM" MODIFY ("TYPE" NOT NULL ENABLE);
