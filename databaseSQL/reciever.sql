--------------------------------------------------------
--  颇老捞 积己凳 - 格夸老-2岿-02-2017   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table RECIEVER
--------------------------------------------------------

  CREATE TABLE "SCOTT"."RECIEVER" 
   (	"RECIEVERADDRESS" VARCHAR2(50 BYTE), 
	"RECIEVERPHONE" NUMBER, 
	"RECIEVERMESSAGE" VARCHAR2(100 BYTE), 
	"ORDERNUMBER" NUMBER, 
	"RECIEVERNAME" VARCHAR2(20 BYTE), 
	"RECIEVERID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index RECIEVER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."RECIEVER_PK" ON "SCOTT"."RECIEVER" ("RECIEVERID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table RECIEVER
--------------------------------------------------------

  ALTER TABLE "SCOTT"."RECIEVER" ADD CONSTRAINT "RECIEVER_PK" PRIMARY KEY ("RECIEVERID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SCOTT"."RECIEVER" MODIFY ("RECIEVERID" NOT NULL ENABLE);
