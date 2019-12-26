
  CREATE TABLE "TRIP"."SCHEDULEMOVE" 
   (	"SC_MNO" NUMBER(10,0) CONSTRAINT "SCM_NO_NN" NOT NULL ENABLE, 
	"SC_MTYPE" VARCHAR2(100 CHAR) CONSTRAINT "SCM_TYPE_NN" NOT NULL ENABLE, 
	"SC_MNAME" VARCHAR2(100 CHAR) CONSTRAINT "SCM_NAME_NN" NOT NULL ENABLE, 
	"SC_MSLOC" VARCHAR2(100 CHAR) CONSTRAINT "SCM_SLOC_NN" NOT NULL ENABLE, 
	"SC_MELOC" VARCHAR2(100 CHAR) CONSTRAINT "SCM_ELOC_NN" NOT NULL ENABLE, 
	"SC_MSDATE" DATE CONSTRAINT "SCM_SDATE_NN" NOT NULL ENABLE, 
	"SC_MEDATE" DATE CONSTRAINT "SCM_EDATE_NN" NOT NULL ENABLE, 
	"SC_MCOST" NUMBER(10,0) CONSTRAINT "SCM_COST_NN" NOT NULL ENABLE, 
	"ORDER_NO" NUMBER(10,0) CONSTRAINT "SCM_ODNO_NN" NOT NULL ENABLE, 
	"SC_MBODY" VARCHAR2(4000 BYTE), 
	"S_DAY" NUMBER(2,0) NOT NULL ENABLE, 
	"SC_SNO" NUMBER(10,0) NOT NULL ENABLE, 
	 CONSTRAINT "SCM_NO_PK" PRIMARY KEY ("SC_MNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE, 
	 CONSTRAINT "SCM_SNO_FK" FOREIGN KEY ("SC_MNO")
	  REFERENCES "TRIP"."SCHEDULE" ("S_NO") ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
 
