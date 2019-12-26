
  CREATE TABLE "TRIP"."SCHEDULEREST" 
   (	"SC_RNO" NUMBER(10,0) CONSTRAINT "SCR_NO_NN" NOT NULL ENABLE, 
	"SC_SNO" NUMBER(10,0) NOT NULL ENABLE, 
	"SC_RNAME" VARCHAR2(100 CHAR) CONSTRAINT "SCR_NAME_NN" NOT NULL ENABLE, 
	"SC_RADDRESS" VARCHAR2(100 CHAR) CONSTRAINT "SCR_ADDRESS_NN" NOT NULL ENABLE, 
	"SC_RSDATE" DATE CONSTRAINT "SCR_SDATE_NN" NOT NULL ENABLE, 
	"SC_REDATE" DATE CONSTRAINT "SCR_EDATE_NN" NOT NULL ENABLE, 
	"SC_RCOST" NUMBER(9,0) CONSTRAINT "SCR_COST_NN" NOT NULL ENABLE, 
	"ORDER_NO" NUMBER(3,0) CONSTRAINT "SCR_ODNO_NN" NOT NULL ENABLE, 
	"SC_RBODY" VARCHAR2(4000 BYTE), 
	"S_DAY" NUMBER(2,0) NOT NULL ENABLE, 
	 CONSTRAINT "SCR_NO_PK" PRIMARY KEY ("SC_RNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE, 
	 CONSTRAINT "SCR_DSNO_FK" FOREIGN KEY ("SC_RNO")
	  REFERENCES "TRIP"."SCHEDULE" ("S_NO") ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
 