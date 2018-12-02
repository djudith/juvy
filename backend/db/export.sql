--------------------------------------------------------
--  File created - Thursday-September-20-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Type LOGMNR$COL_GG_REC
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "LOGMNR$COL_GG_REC" as object
(
LOGMNR_UID NUMBER,
OBJ# NUMBER,
MD_COL_NAME VARCHAR2(128),
MD_COL_NUM NUMBER,                 /* col# */
MD_COL_SEGCOL NUMBER,              /* segcol# */
MD_COL_TYPE NUMBER,                /* type# */
MD_COL_LEN NUMBER,
MD_COL_PREC NUMBER,                /* precision */
MD_COL_SCALE NUMBER,
MD_COL_CHARSETID NUMBER,           /* character set id */
MD_COL_CHARSETFORM NUMBER,         /* character set form */
MD_COL_ALT_TYPE VARCHAR2(4000),    /* adt type if any */
MD_COL_ALT_PREC NUMBER,            /* precision of the adt attribute */
MD_COL_ALT_CHAR_USED VARCHAR2(2),  /* charset used by the adt attribute */
MD_COL_ALT_LENGTH NUMBER,          /* length of the adt attribute */
MD_COL_ALT_XML_TYPE NUMBER,        /* 0/1. is xml_type column */
MD_COL_ALT_BINARYXML_TYPE NUMBER,  /* 0/1. is xml_type stored as binary */
MD_COL_ENC_ISENC VARCHAR2(3) ,     /* 'YES'/'NO' */
MD_COL_ENC_NOSALT VARCHAR2(3) ,    /* 'YES'/'NO' */
MD_COL_ENC_ISLOB VARCHAR2(3) ,     /* 'YES'/'NO' */
MD_COL_ALT_OBJECTXML_TYPE NUMBER,  /* 0/1 xml_type stored as object */
MD_COL_HASNOTNULLDEFAULT VARCHAR2(3) ,   /* 'YES'/'NO' */
MD_COL_ALT_TYPE_OWNER VARCHAR2(128),  /* owner of the adt type if any */
PROPERTY NUMBER,
XCOLTYPEFLAGS NUMBER,
XOPQTYPEFLAGS NUMBER,
EAFLAGS NUMBER,
XFQCOLNAME VARCHAR2(4000),
SPARE1  NUMBER,
SPARE2  NUMBER,
SPARE3  NUMBER,
SPARE4  VARCHAR2(4000),
SPARE5  VARCHAR2(4000),
SPARE6  VARCHAR2(4000),
/* Following fields added in 12.1.0.2 */
OBJV# NUMBER,
INTCOL# NUMBER,
INTERVAL_LEADING_PRECISION NUMBER,
INTERVAL_TRAILING_PRECISION NUMBER,
TOID RAW(16),
TYPENAME VARCHAR2(128),
NUMINTCOLS NUMBER,
NUMATTRS NUMBER,
ADTORDER NUMBER,
LOGMNR_SPARE1 NUMBER,
LOGMNR_SPARE2 NUMBER,
LOGMNR_SPARE3 VARCHAR2(1000),
LOGMNR_SPARE4 DATE,
LOGMNR_SPARE5 NUMBER,
LOGMNR_SPARE6 NUMBER,
LOGMNR_SPARE7 NUMBER,
LOGMNR_SPARE8 NUMBER,
LOGMNR_SPARE9 NUMBER,
XTYPENAME VARCHAR2(4000),
XTOPINTCOL NUMBER,
XREFFEDTABLEOBJN NUMBER,
XREFFEDTABLEOBJV NUMBER,
XOPQTYPETYPE NUMBER,
XOPQLOBINTCOL NUMBER,
XOPQOBJINTCOL NUMBER,
XXMLINTCOL    NUMBER,
LOGMNRDERIVEDFLAGS NUMBER
);

/

/
--------------------------------------------------------
--  DDL for Type LOGMNR$COL_GG_RECS
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "LOGMNR$COL_GG_RECS" AS TABLE OF  SYSTEM.LOGMNR$COL_GG_REC;

/

/
--------------------------------------------------------
--  DDL for Type LOGMNR$KEY_GG_REC
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "LOGMNR$KEY_GG_REC" as object
(
LOGMNR_UID NUMBER,
KEY# NUMBER,                   /* index obj# or con# */
KEY_FLAGS NUMBER,              /* index or constraint */
KEY_NAME VARCHAR2(128),        /* index name or constraint name */
INDEX_OWNER# NUMBER,
INDEX_OWNERNAME VARCHAR2(128),
COLNAME VARCHAR2(128),
INTCOL# NUMBER,
which number,
KEY_ORDER VARCHAR2(10),              /* asc or desc */
KEYCOL_FLAGS NUMBER,           /* Column properties such as is_null */
SPARE1  NUMBER,
SPARE2  NUMBER,
SPARE3  NUMBER,
SPARE4  VARCHAR2(4000),
SPARE5  VARCHAR2(4000),
SPARE6  VARCHAR2(4000)
);

/

/
--------------------------------------------------------
--  DDL for Type LOGMNR$KEY_GG_RECS
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "LOGMNR$KEY_GG_RECS" AS TABLE OF  SYSTEM.LOGMNR$KEY_GG_REC;

/

/
--------------------------------------------------------
--  DDL for Type LOGMNR$SEQ_GG_REC
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "LOGMNR$SEQ_GG_REC" as object
(
LOGMNR_UID NUMBER,
OBJ# NUMBER,
NAME VARCHAR2(128),
OWNER# NUMBER,
OWNERNAME VARCHAR2(128),
FLAGS NUMBER,
MD_TAB_SEQCACHE NUMBER,
MD_TAB_SEQINCREMENTBY NUMBER,
SPARE1  NUMBER,
SPARE2  NUMBER,
SPARE3  NUMBER,
SPARE4  VARCHAR2(4000),
SPARE5  VARCHAR2(4000),
SPARE6  VARCHAR2(4000)
);

/

/
--------------------------------------------------------
--  DDL for Type LOGMNR$SEQ_GG_RECS
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "LOGMNR$SEQ_GG_RECS" AS TABLE OF  SYSTEM.LOGMNR$SEQ_GG_REC;

/

/
--------------------------------------------------------
--  DDL for Type LOGMNR$TAB_GG_REC
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "LOGMNR$TAB_GG_REC" as object
(
LOGMNR_UID NUMBER,
OBJ# NUMBER,
BASEOBJV# NUMBER,
MD_TAB_USERID NUMBER,                /* owner# */
MD_TAB_COLCOUNT NUMBER,              /* user column count */
MD_TAB_TOTAL_COL_NUM NUMBER,         /* kernal column count */
MD_TAB_LOG_GROUP_EXISTS NUMBER,      /* Any log group exists for this table */
MD_TAB_IOT VARCHAR2(3) ,             /* 'YES'/'NO' IS IOT? */
MD_TAB_IOT_OVERFLOW VARCHAR2(3) ,    /* 'YES'/'NO' IOT with overflow ? */
MD_TAB_PARTITION  VARCHAR2(3) ,      /* 'YES'/'NO' is partitioned ? */
MD_TAB_SUBPARTITION VARCHAR2(3) ,    /* 'YES'/'NO' is sub partitioned? */
MD_TAB_XMLTYPETABLE VARCHAR2(3) ,    /* 'YES'/'NO' is xmltype table? */
MD_TAB_OBJECTID NUMBER,              /* object id if table object */
MD_TAB_OWNER VARCHAR2(128),          /* owner name */
MD_TAB_NAME VARCHAR2(128),           /* table name */
MD_TAB_OBJTYPE VARCHAR2(128),        /* Object type name */
MD_TAB_SCN NUMBER,                   /* COMMIT_SCN of this table version */
TAB_FLAGS NUMBER,
TRIGFLAG NUMBER,
OBJ_FLAGS NUMBER,
PROPERTY NUMBER,
PARTTYPE NUMBER,
SUBPARTTYPE NUMBER,
SPARE1  NUMBER,
SPARE2  NUMBER,
SPARE3  NUMBER,
SPARE4  VARCHAR2(4000),
SPARE5  VARCHAR2(4000),
SPARE6  VARCHAR2(4000),
/* Following fields added in 12.1.0.2 */
LVLCNT NUMBER,
LVL1OBJ# NUMBER,
LVL2OBJ# NUMBER,
LVL1TYPE# NUMBER,
LVL2TYPE# NUMBER,
LVL1NAME  VARCHAR2(128),
LVL2NAME  VARCHAR2(128),
INTCOLS   NUMBER,
ASSOC#    NUMBER,
XIDUSN    NUMBER,
XIDSLT    NUMBER,
XIDSQN    NUMBER,
DROP_SCN  NUMBER,
FLAGS     NUMBER,
LOGMNR_SPARE1   NUMBER,
LOGMNR_SPARE2   NUMBER,
LOGMNR_SPARE3   VARCHAR2(1000),
LOGMNR_SPARE4   DATE,
LOGMNR_SPARE5   NUMBER,
LOGMNR_SPARE6   NUMBER,
LOGMNR_SPARE7   NUMBER,
LOGMNR_SPARE8   NUMBER,
LOGMNR_SPARE9   NUMBER,
UNSUPPORTEDCOLS  NUMBER,
COMPLEXTYPECOLS  NUMBER,
NTPARENTOBJNUM   NUMBER,
NTPARENTOBJVERSION NUMBER,
NTPARENTINTCOLNUM  NUMBER,
LOGMNRTLOFLAGS    NUMBER,
LOGMNRMCV VARCHAR2(30)
);

/

/
--------------------------------------------------------
--  DDL for Type LOGMNR$TAB_GG_RECS
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "LOGMNR$TAB_GG_RECS" AS TABLE OF  SYSTEM.LOGMNR$TAB_GG_REC;

/

/
--------------------------------------------------------
--  DDL for Type REPCAT$_OBJECT_NULL_VECTOR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "REPCAT$_OBJECT_NULL_VECTOR" AS OBJECT
(
  -- type owner, name, hashcode for the type represented by null_vector
  type_owner      VARCHAR2(30),
  type_name       VARCHAR2(30),
  type_hashcode   RAW(17),
  -- null_vector for a particular object instance
  -- ROBJ REVISIT: should only contain the null image, and not version#
  null_vector     RAW(2000)
)

/

/
--------------------------------------------------------
--  DDL for Sequence IMM_APPOINTMENT_LOG_APPOI
--------------------------------------------------------

   CREATE SEQUENCE  "IMM_APPOINTMENT_LOG_APPOI"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 186 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
/
--------------------------------------------------------
--  DDL for Sequence IMM_APPOINTMENT_STATUS_ST
--------------------------------------------------------

   CREATE SEQUENCE  "IMM_APPOINTMENT_STATUS_ST"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
/
--------------------------------------------------------
--  DDL for Sequence IMM_APPOINTMENT_TIMESCHED
--------------------------------------------------------

   CREATE SEQUENCE  "IMM_APPOINTMENT_TIMESCHED"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
/
--------------------------------------------------------
--  DDL for Sequence IMM_BRANCH_ADMIN_BRANCH_A
--------------------------------------------------------

   CREATE SEQUENCE  "IMM_BRANCH_ADMIN_BRANCH_A"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
/
--------------------------------------------------------
--  DDL for Sequence IMM_BRANCH_BRANCH_ID_RC18
--------------------------------------------------------

   CREATE SEQUENCE  "IMM_BRANCH_BRANCH_ID_RC18"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 166 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
/
--------------------------------------------------------
--  DDL for Sequence IMM_HOLIDAY_HOLIDAY_ID_RC
--------------------------------------------------------

   CREATE SEQUENCE  "IMM_HOLIDAY_HOLIDAY_ID_RC"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 105 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
/
--------------------------------------------------------
--  DDL for Sequence IMM_SCHEDULE_LIMIT_SCHED_
--------------------------------------------------------

   CREATE SEQUENCE  "IMM_SCHEDULE_LIMIT_SCHED_"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 209 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
/
--------------------------------------------------------
--  DDL for Sequence LOGMNR_DIDS$
--------------------------------------------------------

   CREATE SEQUENCE  "LOGMNR_DIDS$"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  ORDER  NOCYCLE  NOPARTITION ;
/
--------------------------------------------------------
--  DDL for Sequence LOGMNR_EVOLVE_SEQ$
--------------------------------------------------------

   CREATE SEQUENCE  "LOGMNR_EVOLVE_SEQ$"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  ORDER  NOCYCLE  NOPARTITION ;
/
--------------------------------------------------------
--  DDL for Sequence LOGMNR_SEQ$
--------------------------------------------------------

   CREATE SEQUENCE  "LOGMNR_SEQ$"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  ORDER  NOCYCLE  NOPARTITION ;
/
--------------------------------------------------------
--  DDL for Sequence LOGMNR_UIDS$
--------------------------------------------------------

   CREATE SEQUENCE  "LOGMNR_UIDS$"  MINVALUE 100 MAXVALUE 99999 INCREMENT BY 1 START WITH 100 NOCACHE  ORDER  CYCLE  NOPARTITION ;
/
--------------------------------------------------------
--  DDL for Sequence MVIEW$_ADVSEQ_GENERIC
--------------------------------------------------------

   CREATE SEQUENCE  "MVIEW$_ADVSEQ_GENERIC"  MINVALUE 1 MAXVALUE 4294967295 INCREMENT BY 1 START WITH 1 CACHE 50 NOORDER  NOCYCLE  NOPARTITION ;
/
--------------------------------------------------------
--  DDL for Sequence MVIEW$_ADVSEQ_ID
--------------------------------------------------------

   CREATE SEQUENCE  "MVIEW$_ADVSEQ_ID"  MINVALUE 1 MAXVALUE 4294967295 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
/
--------------------------------------------------------
--  DDL for Sequence REPCAT$_EXCEPTIONS_S
--------------------------------------------------------

   CREATE SEQUENCE  "REPCAT$_EXCEPTIONS_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
/
--------------------------------------------------------
--  DDL for Sequence REPCAT$_FLAVORS_S
--------------------------------------------------------

   CREATE SEQUENCE  "REPCAT$_FLAVORS_S"  MINVALUE -2147483647 MAXVALUE 2147483647 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE  NOPARTITION ;
/
--------------------------------------------------------
--  DDL for Sequence REPCAT$_FLAVOR_NAME_S
--------------------------------------------------------

   CREATE SEQUENCE  "REPCAT$_FLAVOR_NAME_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE  NOPARTITION ;
/
--------------------------------------------------------
--  DDL for Sequence REPCAT$_REFRESH_TEMPLATES_S
--------------------------------------------------------

   CREATE SEQUENCE  "REPCAT$_REFRESH_TEMPLATES_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
/
--------------------------------------------------------
--  DDL for Sequence REPCAT$_REPPROP_KEY
--------------------------------------------------------

   CREATE SEQUENCE  "REPCAT$_REPPROP_KEY"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
/
--------------------------------------------------------
--  DDL for Sequence REPCAT$_RUNTIME_PARMS_S
--------------------------------------------------------

   CREATE SEQUENCE  "REPCAT$_RUNTIME_PARMS_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
/
--------------------------------------------------------
--  DDL for Sequence REPCAT$_TEMPLATE_OBJECTS_S
--------------------------------------------------------

   CREATE SEQUENCE  "REPCAT$_TEMPLATE_OBJECTS_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
/
--------------------------------------------------------
--  DDL for Sequence REPCAT$_TEMPLATE_PARMS_S
--------------------------------------------------------

   CREATE SEQUENCE  "REPCAT$_TEMPLATE_PARMS_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
/
--------------------------------------------------------
--  DDL for Sequence REPCAT$_TEMPLATE_REFGROUPS_S
--------------------------------------------------------

   CREATE SEQUENCE  "REPCAT$_TEMPLATE_REFGROUPS_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
/
--------------------------------------------------------
--  DDL for Sequence REPCAT$_TEMPLATE_SITES_S
--------------------------------------------------------

   CREATE SEQUENCE  "REPCAT$_TEMPLATE_SITES_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
/
--------------------------------------------------------
--  DDL for Sequence REPCAT$_TEMP_OUTPUT_S
--------------------------------------------------------

   CREATE SEQUENCE  "REPCAT$_TEMP_OUTPUT_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
/
--------------------------------------------------------
--  DDL for Sequence REPCAT$_USER_AUTHORIZATIONS_S
--------------------------------------------------------

   CREATE SEQUENCE  "REPCAT$_USER_AUTHORIZATIONS_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
/
--------------------------------------------------------
--  DDL for Sequence REPCAT$_USER_PARM_VALUES_S
--------------------------------------------------------

   CREATE SEQUENCE  "REPCAT$_USER_PARM_VALUES_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
/
--------------------------------------------------------
--  DDL for Sequence REPCAT_LOG_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "REPCAT_LOG_SEQUENCE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
/
--------------------------------------------------------
--  DDL for Sequence ROLLING_EVENT_SEQ$
--------------------------------------------------------

   CREATE SEQUENCE  "ROLLING_EVENT_SEQ$"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  ORDER  NOCYCLE  NOPARTITION ;
/
--------------------------------------------------------
--  DDL for Sequence TEMPLATE$_TARGETS_S
--------------------------------------------------------

   CREATE SEQUENCE  "TEMPLATE$_TARGETS_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
/
--------------------------------------------------------
--  DDL for Sequence VISA_ADMIN_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "VISA_ADMIN_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 141 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
/
--------------------------------------------------------
--  DDL for Sequence VISA_ANNOUNCEMENTS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "VISA_ANNOUNCEMENTS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
/
--------------------------------------------------------
--  DDL for Sequence VISA_APL_ACCREDITATION_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "VISA_APL_ACCREDITATION_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
/
--------------------------------------------------------
--  DDL for Sequence VISA_APL_REP_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "VISA_APL_REP_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
/
--------------------------------------------------------
--  DDL for Sequence VISA_APPLICANT_CHILDREN_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "VISA_APPLICANT_CHILDREN_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
/
--------------------------------------------------------
--  DDL for Sequence VISA_APPLICANT_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "VISA_APPLICANT_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 163 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
/
--------------------------------------------------------
--  DDL for Sequence VISA_APPLICATION_DETAILS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "VISA_APPLICATION_DETAILS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 186 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
/
--------------------------------------------------------
--  DDL for Sequence VISA_APPLICATION_LOG_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "VISA_APPLICATION_LOG_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 186 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
/
--------------------------------------------------------
--  DDL for Sequence VISA_APPLICATION_STATUS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "VISA_APPLICATION_STATUS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 121 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
/
--------------------------------------------------------
--  DDL for Sequence VISA_APPOINTMENT_LOG_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "VISA_APPOINTMENT_LOG_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
/
--------------------------------------------------------
--  DDL for Sequence VISA_APPOINTMENT_TIMES_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "VISA_APPOINTMENT_TIMES_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
/
--------------------------------------------------------
--  DDL for Sequence VISA_BRANCH_ADMIN_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "VISA_BRANCH_ADMIN_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 141 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
/
--------------------------------------------------------
--  DDL for Sequence VISA_CIVIL_STATUS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "VISA_CIVIL_STATUS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
/
--------------------------------------------------------
--  DDL for Sequence VISA_COUNTRY_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "VISA_COUNTRY_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
/
--------------------------------------------------------
--  DDL for Sequence VISA_DOCUMENT_PERSONNEL_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "VISA_DOCUMENT_PERSONNEL_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
/
--------------------------------------------------------
--  DDL for Sequence VISA_FAQ_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "VISA_FAQ_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
/
--------------------------------------------------------
--  DDL for Sequence VISA_FEES_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "VISA_FEES_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
/
--------------------------------------------------------
--  DDL for Sequence VISA_OR_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "VISA_OR_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 246 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
/
--------------------------------------------------------
--  DDL for Sequence VISA_PASSPORT_DETAILS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "VISA_PASSPORT_DETAILS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 167 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
/
--------------------------------------------------------
--  DDL for Sequence VISA_POSITION_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "VISA_POSITION_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
/
--------------------------------------------------------
--  DDL for Sequence VISA_REASON_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "VISA_REASON_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
/
--------------------------------------------------------
--  DDL for Sequence VISA_SETTINGS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "VISA_SETTINGS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
/
--------------------------------------------------------
--  DDL for Sequence VISA_USERS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "VISA_USERS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 163 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
/
--------------------------------------------------------
--  DDL for Table AQ$_INTERNET_AGENTS
--------------------------------------------------------

  CREATE TABLE "AQ$_INTERNET_AGENTS" 
   (	"AGENT_NAME" VARCHAR2(128 BYTE), 
	"PROTOCOL" NUMBER(*,0), 
	"SPARE1" VARCHAR2(128 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Table AQ$_INTERNET_AGENT_PRIVS
--------------------------------------------------------

  CREATE TABLE "AQ$_INTERNET_AGENT_PRIVS" 
   (	"AGENT_NAME" VARCHAR2(128 BYTE), 
	"DB_USERNAME" VARCHAR2(128 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Table AQ$_QUEUES
--------------------------------------------------------

  CREATE TABLE "AQ$_QUEUES" 
   (	"OID" RAW(16), 
	"EVENTID" NUMBER, 
	"NAME" VARCHAR2(128 BYTE), 
	"TABLE_OBJNO" NUMBER, 
	"USAGE" NUMBER, 
	"ENABLE_FLAG" NUMBER, 
	"MAX_RETRIES" NUMBER, 
	"RETRY_DELAY" NUMBER, 
	"PROPERTIES" NUMBER, 
	"RET_TIME" NUMBER, 
	"QUEUE_COMMENT" VARCHAR2(2000 BYTE), 
	"SUBSCRIBERS" "AQ$_SUBSCRIBERS" , 
	"MEMORY_THRESHOLD" NUMBER, 
	"SERVICE_NAME" VARCHAR2(64 BYTE), 
	"NETWORK_NAME" VARCHAR2(256 BYTE), 
	"SUB_OID" RAW(16), 
	"SHARDED" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Table AQ$_QUEUE_TABLES
--------------------------------------------------------

  CREATE TABLE "AQ$_QUEUE_TABLES" 
   (	"SCHEMA" VARCHAR2(128 BYTE), 
	"NAME" VARCHAR2(128 BYTE), 
	"UDATA_TYPE" NUMBER, 
	"OBJNO" NUMBER, 
	"FLAGS" NUMBER, 
	"SORT_COLS" NUMBER, 
	"TIMEZONE" VARCHAR2(64 BYTE), 
	"TABLE_COMMENT" VARCHAR2(2000 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Table AQ$_SCHEDULES
--------------------------------------------------------

  CREATE TABLE "AQ$_SCHEDULES" 
   (	"OID" RAW(16), 
	"DESTINATION" VARCHAR2(128 BYTE), 
	"START_TIME" DATE, 
	"DURATION" VARCHAR2(8 BYTE), 
	"NEXT_TIME" VARCHAR2(128 BYTE), 
	"LATENCY" VARCHAR2(8 BYTE), 
	"LAST_TIME" DATE, 
	"JOBNO" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Table DEF$_CALLDEST
--------------------------------------------------------

  CREATE TABLE "DEF$_CALLDEST" 
   (	"ENQ_TID" VARCHAR2(22 BYTE), 
	"STEP_NO" NUMBER, 
	"DBLINK" VARCHAR2(128 BYTE), 
	"SCHEMA_NAME" VARCHAR2(128 BYTE), 
	"PACKAGE_NAME" VARCHAR2(128 BYTE), 
	"CATCHUP" RAW(16) DEFAULT '00'
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "DEF$_CALLDEST"."ENQ_TID" IS 'Transaction ID';
   COMMENT ON COLUMN "DEF$_CALLDEST"."STEP_NO" IS 'Unique ID of call within transaction';
   COMMENT ON COLUMN "DEF$_CALLDEST"."DBLINK" IS 'The destination database';
   COMMENT ON COLUMN "DEF$_CALLDEST"."SCHEMA_NAME" IS 'The schema of the deferred remote procedure call';
   COMMENT ON COLUMN "DEF$_CALLDEST"."PACKAGE_NAME" IS 'The package of the deferred remote procedure call';
   COMMENT ON COLUMN "DEF$_CALLDEST"."CATCHUP" IS 'Dummy column for foreign key';
   COMMENT ON TABLE "DEF$_CALLDEST"  IS 'Information about call destinations for D-type and error transactions';
/
--------------------------------------------------------
--  DDL for Table DEF$_DEFAULTDEST
--------------------------------------------------------

  CREATE TABLE "DEF$_DEFAULTDEST" 
   (	"DBLINK" VARCHAR2(128 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "DEF$_DEFAULTDEST"."DBLINK" IS 'Default destination';
   COMMENT ON TABLE "DEF$_DEFAULTDEST"  IS 'Default destinations for deferred remote procedure calls';
/
--------------------------------------------------------
--  DDL for Table DEF$_DESTINATION
--------------------------------------------------------

  CREATE TABLE "DEF$_DESTINATION" 
   (	"DBLINK" VARCHAR2(128 BYTE), 
	"LAST_DELIVERED" NUMBER DEFAULT 0, 
	"LAST_ENQ_TID" VARCHAR2(22 BYTE), 
	"LAST_SEQ" NUMBER, 
	"DISABLED" CHAR(1 BYTE), 
	"JOB" NUMBER, 
	"LAST_TXN_COUNT" NUMBER, 
	"LAST_ERROR_NUMBER" NUMBER, 
	"LAST_ERROR_MESSAGE" VARCHAR2(2000 BYTE), 
	"APPLY_INIT" VARCHAR2(4000 BYTE), 
	"CATCHUP" RAW(16) DEFAULT '00', 
	"ALTERNATE" CHAR(1 BYTE) DEFAULT 'F', 
	"TOTAL_TXN_COUNT" NUMBER DEFAULT 0, 
	"TOTAL_PROP_TIME_THROUGHPUT" NUMBER DEFAULT 0, 
	"TOTAL_PROP_TIME_LATENCY" NUMBER DEFAULT 0, 
	"TO_COMMUNICATION_SIZE" NUMBER DEFAULT 0, 
	"FROM_COMMUNICATION_SIZE" NUMBER DEFAULT 0, 
	"FLAG" RAW(4) DEFAULT '00000000', 
	"SPARE1" NUMBER DEFAULT 0, 
	"SPARE2" NUMBER DEFAULT 0, 
	"SPARE3" NUMBER DEFAULT 0, 
	"SPARE4" NUMBER DEFAULT 0
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "DEF$_DESTINATION"."DBLINK" IS 'Destination';
   COMMENT ON COLUMN "DEF$_DESTINATION"."LAST_DELIVERED" IS 'Value of delivery_order of last transaction propagated';
   COMMENT ON COLUMN "DEF$_DESTINATION"."LAST_ENQ_TID" IS 'Transaction ID of last transaction propagated';
   COMMENT ON COLUMN "DEF$_DESTINATION"."LAST_SEQ" IS 'Parallel prop seq number of last transaction propagated';
   COMMENT ON COLUMN "DEF$_DESTINATION"."DISABLED" IS 'Is propagation to destination disabled';
   COMMENT ON COLUMN "DEF$_DESTINATION"."JOB" IS 'Number of job that pushes queue';
   COMMENT ON COLUMN "DEF$_DESTINATION"."LAST_TXN_COUNT" IS 'Number of transactions pushed during last attempt';
   COMMENT ON COLUMN "DEF$_DESTINATION"."LAST_ERROR_NUMBER" IS 'Oracle error number from last push';
   COMMENT ON COLUMN "DEF$_DESTINATION"."LAST_ERROR_MESSAGE" IS 'Error message from last push';
   COMMENT ON COLUMN "DEF$_DESTINATION"."CATCHUP" IS 'Used to break transaction into pieces';
   COMMENT ON COLUMN "DEF$_DESTINATION"."ALTERNATE" IS 'Used to break transaction into pieces';
   COMMENT ON COLUMN "DEF$_DESTINATION"."TOTAL_TXN_COUNT" IS 'Total number of transactions pushed';
   COMMENT ON COLUMN "DEF$_DESTINATION"."TOTAL_PROP_TIME_THROUGHPUT" IS 'Total propagation time in seconds for measuring throughput';
   COMMENT ON COLUMN "DEF$_DESTINATION"."TOTAL_PROP_TIME_LATENCY" IS 'Total propagation time in seconds for measuring latency';
   COMMENT ON COLUMN "DEF$_DESTINATION"."TO_COMMUNICATION_SIZE" IS 'Total number of bytes sent to this dblink';
   COMMENT ON COLUMN "DEF$_DESTINATION"."FROM_COMMUNICATION_SIZE" IS 'Total number of bytes received from this dblink';
   COMMENT ON COLUMN "DEF$_DESTINATION"."SPARE1" IS 'Total number of round trips for this dblink';
   COMMENT ON COLUMN "DEF$_DESTINATION"."SPARE2" IS 'Total number of administrative requests';
   COMMENT ON COLUMN "DEF$_DESTINATION"."SPARE3" IS 'Total number of error transactions pushed';
   COMMENT ON COLUMN "DEF$_DESTINATION"."SPARE4" IS 'Total time in seconds spent sleeping during push';
   COMMENT ON TABLE "DEF$_DESTINATION"  IS 'Information about propagation to different destinations';
/
--------------------------------------------------------
--  DDL for Table DEF$_ERROR
--------------------------------------------------------

  CREATE TABLE "DEF$_ERROR" 
   (	"ENQ_TID" VARCHAR2(22 BYTE), 
	"ORIGIN_TRAN_DB" VARCHAR2(128 BYTE), 
	"ORIGIN_ENQ_TID" VARCHAR2(22 BYTE), 
	"DESTINATION" VARCHAR2(128 BYTE), 
	"STEP_NO" NUMBER, 
	"RECEIVER" NUMBER, 
	"ENQ_TIME" DATE, 
	"ERROR_NUMBER" NUMBER, 
	"ERROR_MSG" VARCHAR2(2000 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "DEF$_ERROR"."ENQ_TID" IS 'The ID of the transaction that created the error';
   COMMENT ON COLUMN "DEF$_ERROR"."ORIGIN_TRAN_DB" IS 'The database originating the deferred transaction';
   COMMENT ON COLUMN "DEF$_ERROR"."ORIGIN_ENQ_TID" IS 'The original ID of the transaction';
   COMMENT ON COLUMN "DEF$_ERROR"."DESTINATION" IS 'Database link used to address destination';
   COMMENT ON COLUMN "DEF$_ERROR"."STEP_NO" IS 'Unique ID of call that caused an error';
   COMMENT ON COLUMN "DEF$_ERROR"."RECEIVER" IS 'User ID of the original receiver';
   COMMENT ON COLUMN "DEF$_ERROR"."ENQ_TIME" IS 'Time original transaction enqueued';
   COMMENT ON COLUMN "DEF$_ERROR"."ERROR_NUMBER" IS 'Oracle error number';
   COMMENT ON COLUMN "DEF$_ERROR"."ERROR_MSG" IS 'Error message text';
   COMMENT ON TABLE "DEF$_ERROR"  IS 'Information about all deferred transactions that caused an error';
/
--------------------------------------------------------
--  DDL for Table DEF$_LOB
--------------------------------------------------------

  CREATE TABLE "DEF$_LOB" 
   (	"ID" RAW(16), 
	"ENQ_TID" VARCHAR2(22 BYTE), 
	"BLOB_COL" BLOB, 
	"CLOB_COL" CLOB, 
	"NCLOB_COL" NCLOB
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" 
 LOB ("BLOB_COL") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 PCTVERSION 0
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("CLOB_COL") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 PCTVERSION 0
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("NCLOB_COL") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 PCTVERSION 0
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;

   COMMENT ON COLUMN "DEF$_LOB"."ID" IS 'Identifier of LOB parameter';
   COMMENT ON COLUMN "DEF$_LOB"."ENQ_TID" IS 'Transaction identifier for deferred RPC with this LOB parameter';
   COMMENT ON COLUMN "DEF$_LOB"."BLOB_COL" IS 'Binary LOB parameter';
   COMMENT ON COLUMN "DEF$_LOB"."CLOB_COL" IS 'Character LOB parameter';
   COMMENT ON COLUMN "DEF$_LOB"."NCLOB_COL" IS 'National Character LOB parameter';
   COMMENT ON TABLE "DEF$_LOB"  IS 'Storage for LOB parameters to deferred RPCs';
/
--------------------------------------------------------
--  DDL for Table DEF$_ORIGIN
--------------------------------------------------------

  CREATE TABLE "DEF$_ORIGIN" 
   (	"ORIGIN_DB" VARCHAR2(128 BYTE), 
	"ORIGIN_DBLINK" VARCHAR2(128 BYTE), 
	"INUSR" NUMBER, 
	"CSCN" NUMBER, 
	"ENQ_TID" VARCHAR2(22 BYTE), 
	"RECO_SEQ_NO" NUMBER, 
	"CATCHUP" RAW(16) DEFAULT '00'
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "DEF$_ORIGIN"."ORIGIN_DB" IS 'Originating database for the deferred transaction';
   COMMENT ON COLUMN "DEF$_ORIGIN"."ORIGIN_DBLINK" IS 'Database link from deferred transaction origin to this site';
   COMMENT ON COLUMN "DEF$_ORIGIN"."INUSR" IS 'Connected user receiving the deferred transaction';
   COMMENT ON COLUMN "DEF$_ORIGIN"."CSCN" IS 'Prepare SCN assigned at origin site';
   COMMENT ON COLUMN "DEF$_ORIGIN"."ENQ_TID" IS 'Transaction id assigned at origin site';
   COMMENT ON COLUMN "DEF$_ORIGIN"."RECO_SEQ_NO" IS 'Deferred transaction sequence number for recovery';
   COMMENT ON COLUMN "DEF$_ORIGIN"."CATCHUP" IS 'Used to break transaction into pieces';
   COMMENT ON TABLE "DEF$_ORIGIN"  IS 'Information about deferred transactions pushed to this site';
/
--------------------------------------------------------
--  DDL for Table DEF$_PROPAGATOR
--------------------------------------------------------

  CREATE TABLE "DEF$_PROPAGATOR" 
   (	"USERID" NUMBER, 
	"USERNAME" VARCHAR2(128 BYTE), 
	"CREATED" DATE DEFAULT SYSDATE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "DEF$_PROPAGATOR"."USERID" IS 'User ID of the propagator';
   COMMENT ON COLUMN "DEF$_PROPAGATOR"."USERNAME" IS 'User name of the propagator';
   COMMENT ON COLUMN "DEF$_PROPAGATOR"."CREATED" IS 'The time when the propagator is registered';
   COMMENT ON TABLE "DEF$_PROPAGATOR"  IS 'The propagator for deferred remote procedure calls';
/
--------------------------------------------------------
--  DDL for Table DEF$_PUSHED_TRANSACTIONS
--------------------------------------------------------

  CREATE TABLE "DEF$_PUSHED_TRANSACTIONS" 
   (	"SOURCE_SITE_ID" NUMBER, 
	"LAST_TRAN_ID" NUMBER DEFAULT 0, 
	"DISABLED" VARCHAR2(1 BYTE) DEFAULT 'F', 
	"SOURCE_SITE" VARCHAR2(128 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "DEF$_PUSHED_TRANSACTIONS"."SOURCE_SITE_ID" IS 'Originating database identifier for the deferred transaction';
   COMMENT ON COLUMN "DEF$_PUSHED_TRANSACTIONS"."LAST_TRAN_ID" IS 'Last committed transaction';
   COMMENT ON COLUMN "DEF$_PUSHED_TRANSACTIONS"."DISABLED" IS 'Disable propagation';
   COMMENT ON COLUMN "DEF$_PUSHED_TRANSACTIONS"."SOURCE_SITE" IS 'Obsolete - do not use';
   COMMENT ON TABLE "DEF$_PUSHED_TRANSACTIONS"  IS 'Information about deferred transactions pushed to this site by RepAPI clients';
/
--------------------------------------------------------
--  DDL for Table HELP
--------------------------------------------------------

  CREATE TABLE "HELP" 
   (	"TOPIC" VARCHAR2(50 BYTE), 
	"SEQ" NUMBER, 
	"INFO" VARCHAR2(80 BYTE)
   ) PCTFREE 0 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 49152 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Table LOGMNRC_CONCOL_GG
--------------------------------------------------------

  CREATE TABLE "LOGMNRC_CONCOL_GG" 
   (	"LOGMNR_UID" NUMBER, 
	"CON#" NUMBER, 
	"COMMIT_SCN" NUMBER, 
	"INTCOL#" NUMBER, 
	"POS#" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(4000 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Table LOGMNRC_CON_GG
--------------------------------------------------------

  CREATE TABLE "LOGMNRC_CON_GG" 
   (	"LOGMNR_UID" NUMBER, 
	"CON#" NUMBER, 
	"NAME" VARCHAR2(128 BYTE), 
	"COMMIT_SCN" NUMBER, 
	"DROP_SCN" NUMBER, 
	"BASEOBJ#" NUMBER, 
	"BASEOBJV#" NUMBER, 
	"FLAGS" NUMBER, 
	"INDEXOBJ#" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" NUMBER, 
	"SPARE4" VARCHAR2(4000 BYTE), 
	"SPARE5" VARCHAR2(4000 BYTE), 
	"SPARE6" VARCHAR2(4000 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Table LOGMNRC_DBNAME_UID_MAP
--------------------------------------------------------

  CREATE TABLE "LOGMNRC_DBNAME_UID_MAP" 
   (	"GLOBAL_NAME" VARCHAR2(128 BYTE), 
	"LOGMNR_UID" NUMBER, 
	"FLAGS" NUMBER, 
	"PDB_NAME" VARCHAR2(128 BYTE), 
	"LOGMNR_MDH" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
/
--------------------------------------------------------
--  DDL for Table LOGMNRC_GSBA
--------------------------------------------------------

  CREATE TABLE "LOGMNRC_GSBA" 
   (	"LOGMNR_UID" NUMBER, 
	"AS_OF_SCN" NUMBER, 
	"FDO_LENGTH" NUMBER, 
	"FDO_VALUE" RAW(255), 
	"CHARSETID" NUMBER, 
	"NCHARSETID" NUMBER, 
	"DBTIMEZONE_LEN" NUMBER, 
	"DBTIMEZONE_VALUE" VARCHAR2(64 BYTE), 
	"LOGMNR_SPARE1" NUMBER, 
	"LOGMNR_SPARE2" NUMBER, 
	"LOGMNR_SPARE3" VARCHAR2(1000 BYTE), 
	"LOGMNR_SPARE4" DATE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Table LOGMNRC_GSII
--------------------------------------------------------

  CREATE TABLE "LOGMNRC_GSII" 
   (	"LOGMNR_UID" NUMBER, 
	"OBJ#" NUMBER, 
	"BO#" NUMBER, 
	"INDTYPE#" NUMBER, 
	"DROP_SCN" NUMBER, 
	"LOGMNR_SPARE1" NUMBER, 
	"LOGMNR_SPARE2" NUMBER, 
	"LOGMNR_SPARE3" VARCHAR2(1000 BYTE), 
	"LOGMNR_SPARE4" DATE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Table LOGMNRC_GTCS
--------------------------------------------------------

  CREATE TABLE "LOGMNRC_GTCS" 
   (	"LOGMNR_UID" NUMBER, 
	"OBJ#" NUMBER, 
	"OBJV#" NUMBER, 
	"SEGCOL#" NUMBER, 
	"INTCOL#" NUMBER, 
	"COLNAME" VARCHAR2(128 BYTE), 
	"TYPE#" NUMBER, 
	"LENGTH" NUMBER, 
	"PRECISION" NUMBER, 
	"SCALE" NUMBER, 
	"INTERVAL_LEADING_PRECISION" NUMBER, 
	"INTERVAL_TRAILING_PRECISION" NUMBER, 
	"PROPERTY" NUMBER, 
	"TOID" RAW(16), 
	"CHARSETID" NUMBER, 
	"CHARSETFORM" NUMBER, 
	"TYPENAME" VARCHAR2(128 BYTE), 
	"FQCOLNAME" VARCHAR2(4000 BYTE), 
	"NUMINTCOLS" NUMBER, 
	"NUMATTRS" NUMBER, 
	"ADTORDER" NUMBER, 
	"LOGMNR_SPARE1" NUMBER, 
	"LOGMNR_SPARE2" NUMBER, 
	"LOGMNR_SPARE3" VARCHAR2(1000 BYTE), 
	"LOGMNR_SPARE4" DATE, 
	"LOGMNR_SPARE5" NUMBER, 
	"LOGMNR_SPARE6" NUMBER, 
	"LOGMNR_SPARE7" NUMBER, 
	"LOGMNR_SPARE8" NUMBER, 
	"LOGMNR_SPARE9" NUMBER, 
	"COL#" NUMBER, 
	"XTYPESCHEMANAME" VARCHAR2(128 BYTE), 
	"XTYPENAME" VARCHAR2(4000 BYTE), 
	"XFQCOLNAME" VARCHAR2(4000 BYTE), 
	"XTOPINTCOL" NUMBER, 
	"XREFFEDTABLEOBJN" NUMBER, 
	"XREFFEDTABLEOBJV" NUMBER, 
	"XCOLTYPEFLAGS" NUMBER, 
	"XOPQTYPETYPE" NUMBER, 
	"XOPQTYPEFLAGS" NUMBER, 
	"XOPQLOBINTCOL" NUMBER, 
	"XOPQOBJINTCOL" NUMBER, 
	"XXMLINTCOL" NUMBER, 
	"EAOWNER#" NUMBER, 
	"EAMKEYID" VARCHAR2(64 BYTE), 
	"EAENCALG" NUMBER, 
	"EAINTALG" NUMBER, 
	"EACOLKLC" RAW(2000), 
	"EAKLCLEN" NUMBER, 
	"EAFLAGS" NUMBER, 
	"LOGMNRDERIVEDFLAGS" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Table LOGMNRC_GTLO
--------------------------------------------------------

  CREATE TABLE "LOGMNRC_GTLO" 
   (	"LOGMNR_UID" NUMBER, 
	"KEYOBJ#" NUMBER, 
	"LVLCNT" NUMBER, 
	"BASEOBJ#" NUMBER, 
	"BASEOBJV#" NUMBER, 
	"LVL1OBJ#" NUMBER, 
	"LVL2OBJ#" NUMBER, 
	"LVL0TYPE#" NUMBER, 
	"LVL1TYPE#" NUMBER, 
	"LVL2TYPE#" NUMBER, 
	"OWNER#" NUMBER, 
	"OWNERNAME" VARCHAR2(128 BYTE), 
	"LVL0NAME" VARCHAR2(128 BYTE), 
	"LVL1NAME" VARCHAR2(128 BYTE), 
	"LVL2NAME" VARCHAR2(128 BYTE), 
	"INTCOLS" NUMBER, 
	"COLS" NUMBER, 
	"KERNELCOLS" NUMBER, 
	"TAB_FLAGS" NUMBER, 
	"TRIGFLAG" NUMBER, 
	"ASSOC#" NUMBER, 
	"OBJ_FLAGS" NUMBER, 
	"TS#" NUMBER, 
	"TSNAME" VARCHAR2(30 BYTE), 
	"PROPERTY" NUMBER, 
	"START_SCN" NUMBER, 
	"DROP_SCN" NUMBER, 
	"XIDUSN" NUMBER, 
	"XIDSLT" NUMBER, 
	"XIDSQN" NUMBER, 
	"FLAGS" NUMBER, 
	"LOGMNR_SPARE1" NUMBER, 
	"LOGMNR_SPARE2" NUMBER, 
	"LOGMNR_SPARE3" VARCHAR2(1000 BYTE), 
	"LOGMNR_SPARE4" DATE, 
	"LOGMNR_SPARE5" NUMBER, 
	"LOGMNR_SPARE6" NUMBER, 
	"LOGMNR_SPARE7" NUMBER, 
	"LOGMNR_SPARE8" NUMBER, 
	"LOGMNR_SPARE9" NUMBER, 
	"PARTTYPE" NUMBER, 
	"SUBPARTTYPE" NUMBER, 
	"UNSUPPORTEDCOLS" NUMBER, 
	"COMPLEXTYPECOLS" NUMBER, 
	"NTPARENTOBJNUM" NUMBER, 
	"NTPARENTOBJVERSION" NUMBER, 
	"NTPARENTINTCOLNUM" NUMBER, 
	"LOGMNRTLOFLAGS" NUMBER, 
	"LOGMNRMCV" VARCHAR2(30 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Table LOGMNRC_INDCOL_GG
--------------------------------------------------------

  CREATE TABLE "LOGMNRC_INDCOL_GG" 
   (	"LOGMNR_UID" NUMBER, 
	"OBJ#" NUMBER, 
	"COMMIT_SCN" NUMBER, 
	"INTCOL#" NUMBER, 
	"POS#" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(4000 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Table LOGMNRC_IND_GG
--------------------------------------------------------

  CREATE TABLE "LOGMNRC_IND_GG" 
   (	"LOGMNR_UID" NUMBER, 
	"OBJ#" NUMBER, 
	"NAME" VARCHAR2(128 BYTE), 
	"COMMIT_SCN" NUMBER, 
	"DROP_SCN" NUMBER, 
	"BASEOBJ#" NUMBER, 
	"BASEOBJV#" NUMBER, 
	"FLAGS" NUMBER, 
	"OWNER#" NUMBER, 
	"OWNERNAME" VARCHAR2(128 BYTE), 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" NUMBER, 
	"SPARE4" VARCHAR2(4000 BYTE), 
	"SPARE5" VARCHAR2(4000 BYTE), 
	"SPARE6" VARCHAR2(4000 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Table LOGMNRC_SEQ_GG
--------------------------------------------------------

  CREATE TABLE "LOGMNRC_SEQ_GG" 
   (	"LOGMNR_UID" NUMBER, 
	"OBJ#" NUMBER, 
	"COMMIT_SCN" NUMBER, 
	"DROP_SCN" NUMBER, 
	"SEQ_FLAGS" NUMBER, 
	"OWNER#" NUMBER, 
	"OWNERNAME" VARCHAR2(128 BYTE), 
	"OBJNAME" VARCHAR2(128 BYTE), 
	"SEQCACHE" NUMBER, 
	"SEQINC" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(4000 BYTE), 
	"SPARE4" VARCHAR2(4000 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Table LOGMNRGGC_GTCS
--------------------------------------------------------

  CREATE TABLE "LOGMNRGGC_GTCS" 
   (	"LOGMNR_UID" NUMBER, 
	"OBJ#" NUMBER, 
	"OBJV#" NUMBER, 
	"SEGCOL#" NUMBER, 
	"INTCOL#" NUMBER, 
	"COLNAME" VARCHAR2(128 BYTE), 
	"TYPE#" NUMBER, 
	"LENGTH" NUMBER, 
	"PRECISION" NUMBER, 
	"SCALE" NUMBER, 
	"INTERVAL_LEADING_PRECISION" NUMBER, 
	"INTERVAL_TRAILING_PRECISION" NUMBER, 
	"PROPERTY" NUMBER, 
	"TOID" RAW(16), 
	"CHARSETID" NUMBER, 
	"CHARSETFORM" NUMBER, 
	"TYPENAME" VARCHAR2(30 BYTE), 
	"FQCOLNAME" VARCHAR2(4000 BYTE), 
	"NUMINTCOLS" NUMBER, 
	"NUMATTRS" NUMBER, 
	"ADTORDER" NUMBER, 
	"LOGMNR_SPARE1" NUMBER, 
	"LOGMNR_SPARE2" NUMBER, 
	"LOGMNR_SPARE3" VARCHAR2(1000 BYTE), 
	"LOGMNR_SPARE4" DATE, 
	"LOGMNR_SPARE5" NUMBER, 
	"LOGMNR_SPARE6" NUMBER, 
	"LOGMNR_SPARE7" NUMBER, 
	"LOGMNR_SPARE8" NUMBER, 
	"LOGMNR_SPARE9" NUMBER, 
	"COL#" NUMBER, 
	"XTYPESCHEMANAME" VARCHAR2(128 BYTE), 
	"XTYPENAME" VARCHAR2(4000 BYTE), 
	"XFQCOLNAME" VARCHAR2(4000 BYTE), 
	"XTOPINTCOL" NUMBER, 
	"XREFFEDTABLEOBJN" NUMBER, 
	"XREFFEDTABLEOBJV" NUMBER, 
	"XCOLTYPEFLAGS" NUMBER, 
	"XOPQTYPETYPE" NUMBER, 
	"XOPQTYPEFLAGS" NUMBER, 
	"XOPQLOBINTCOL" NUMBER, 
	"XOPQOBJINTCOL" NUMBER, 
	"XXMLINTCOL" NUMBER, 
	"EAOWNER#" NUMBER, 
	"EAMKEYID" VARCHAR2(64 BYTE), 
	"EAENCALG" NUMBER, 
	"EAINTALG" NUMBER, 
	"EACOLKLC" RAW(2000), 
	"EAKLCLEN" NUMBER, 
	"EAFLAGS" NUMBER, 
	"LOGMNRDERIVEDFLAGS" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Table LOGMNRGGC_GTLO
--------------------------------------------------------

  CREATE TABLE "LOGMNRGGC_GTLO" 
   (	"LOGMNR_UID" NUMBER, 
	"KEYOBJ#" NUMBER, 
	"LVLCNT" NUMBER, 
	"BASEOBJ#" NUMBER, 
	"BASEOBJV#" NUMBER, 
	"LVL1OBJ#" NUMBER, 
	"LVL2OBJ#" NUMBER, 
	"LVL0TYPE#" NUMBER, 
	"LVL1TYPE#" NUMBER, 
	"LVL2TYPE#" NUMBER, 
	"OWNER#" NUMBER, 
	"OWNERNAME" VARCHAR2(128 BYTE), 
	"LVL0NAME" VARCHAR2(128 BYTE), 
	"LVL1NAME" VARCHAR2(128 BYTE), 
	"LVL2NAME" VARCHAR2(128 BYTE), 
	"INTCOLS" NUMBER, 
	"COLS" NUMBER, 
	"KERNELCOLS" NUMBER, 
	"TAB_FLAGS" NUMBER, 
	"TRIGFLAG" NUMBER, 
	"ASSOC#" NUMBER, 
	"OBJ_FLAGS" NUMBER, 
	"TS#" NUMBER, 
	"TSNAME" VARCHAR2(30 BYTE), 
	"PROPERTY" NUMBER, 
	"START_SCN" NUMBER, 
	"DROP_SCN" NUMBER, 
	"XIDUSN" NUMBER, 
	"XIDSLT" NUMBER, 
	"XIDSQN" NUMBER, 
	"FLAGS" NUMBER, 
	"LOGMNR_SPARE1" NUMBER, 
	"LOGMNR_SPARE2" NUMBER, 
	"LOGMNR_SPARE3" VARCHAR2(1000 BYTE), 
	"LOGMNR_SPARE4" DATE, 
	"LOGMNR_SPARE5" NUMBER, 
	"LOGMNR_SPARE6" NUMBER, 
	"LOGMNR_SPARE7" NUMBER, 
	"LOGMNR_SPARE8" NUMBER, 
	"LOGMNR_SPARE9" NUMBER, 
	"PARTTYPE" NUMBER, 
	"SUBPARTTYPE" NUMBER, 
	"UNSUPPORTEDCOLS" NUMBER, 
	"COMPLEXTYPECOLS" NUMBER, 
	"NTPARENTOBJNUM" NUMBER, 
	"NTPARENTOBJVERSION" NUMBER, 
	"NTPARENTINTCOLNUM" NUMBER, 
	"LOGMNRTLOFLAGS" NUMBER, 
	"LOGMNRMCV" VARCHAR2(30 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Table LOGMNRP_CTAS_PART_MAP
--------------------------------------------------------

  CREATE TABLE "LOGMNRP_CTAS_PART_MAP" 
   (	"LOGMNR_UID" NUMBER, 
	"BASEOBJ#" NUMBER, 
	"BASEOBJV#" NUMBER, 
	"KEYOBJ#" NUMBER, 
	"PART#" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(1000 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Table LOGMNRT_MDDL$
--------------------------------------------------------

  CREATE GLOBAL TEMPORARY TABLE "LOGMNRT_MDDL$" 
   (	"SOURCE_OBJ#" NUMBER, 
	"SOURCE_ROWID" ROWID, 
	"DEST_ROWID" ROWID
   ) ON COMMIT DELETE ROWS ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_AGE_SPILL$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_AGE_SPILL$" 
   (	"SESSION#" NUMBER, 
	"XIDUSN" NUMBER, 
	"XIDSLT" NUMBER, 
	"XIDSQN" NUMBER, 
	"CHUNK" NUMBER, 
	"SEQUENCE#" NUMBER, 
	"OFFSET" NUMBER, 
	"SPILL_DATA" BLOB, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
 LOB ("SPILL_DATA") STORE AS BASICFILE (
  TABLESPACE "SYSAUX" ENABLE STORAGE IN ROW CHUNK 16384 PCTVERSION 0
  CACHE 
  STORAGE(INITIAL 16384 NEXT 16384 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_ATTRCOL$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_ATTRCOL$" 
   (	"INTCOL#" NUMBER, 
	"NAME" VARCHAR2(4000 BYTE), 
	"OBJ#" NUMBER, 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_ATTRIBUTE$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_ATTRIBUTE$" 
   (	"VERSION#" NUMBER, 
	"NAME" VARCHAR2(128 BYTE), 
	"ATTRIBUTE#" NUMBER, 
	"ATTR_TOID" RAW(16), 
	"ATTR_VERSION#" NUMBER, 
	"SYNOBJ#" NUMBER, 
	"PROPERTIES" NUMBER, 
	"CHARSETID" NUMBER, 
	"CHARSETFORM" NUMBER, 
	"LENGTH" NUMBER, 
	"PRECISION#" NUMBER, 
	"SCALE" NUMBER, 
	"EXTERNNAME" VARCHAR2(4000 BYTE), 
	"XFLAGS" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" NUMBER, 
	"SPARE4" NUMBER, 
	"SPARE5" NUMBER, 
	"SETTER" NUMBER, 
	"GETTER" NUMBER, 
	"TOID" RAW(16), 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_CCOL$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_CCOL$" 
   (	"CON#" NUMBER, 
	"OBJ#" NUMBER, 
	"COL#" NUMBER, 
	"POS#" NUMBER, 
	"INTCOL#" NUMBER, 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_CDEF$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_CDEF$" 
   (	"CON#" NUMBER, 
	"COLS" NUMBER, 
	"TYPE#" NUMBER, 
	"ROBJ#" NUMBER, 
	"RCON#" NUMBER, 
	"ENABLED" NUMBER, 
	"DEFER" NUMBER, 
	"OBJ#" NUMBER, 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_COL$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_COL$" 
   (	"COL#" NUMBER(22,0), 
	"SEGCOL#" NUMBER(22,0), 
	"NAME" VARCHAR2(128 BYTE), 
	"TYPE#" NUMBER(22,0), 
	"LENGTH" NUMBER(22,0), 
	"PRECISION#" NUMBER(22,0), 
	"SCALE" NUMBER(22,0), 
	"NULL$" NUMBER(22,0), 
	"INTCOL#" NUMBER(22,0), 
	"PROPERTY" NUMBER(22,0), 
	"CHARSETID" NUMBER(22,0), 
	"CHARSETFORM" NUMBER(22,0), 
	"SPARE1" NUMBER(22,0), 
	"SPARE2" NUMBER(22,0), 
	"OBJ#" NUMBER(22,0), 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_COLTYPE$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_COLTYPE$" 
   (	"COL#" NUMBER, 
	"INTCOL#" NUMBER, 
	"TOID" RAW(16), 
	"VERSION#" NUMBER, 
	"PACKED" NUMBER, 
	"INTCOLS" NUMBER, 
	"INTCOL#S" RAW(2000), 
	"FLAGS" NUMBER, 
	"TYPIDCOL#" NUMBER, 
	"SYNOBJ#" NUMBER, 
	"OBJ#" NUMBER, 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_CON$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_CON$" 
   (	"OWNER#" NUMBER, 
	"NAME" VARCHAR2(128 BYTE), 
	"CON#" NUMBER, 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0), 
	"START_SCNBAS" NUMBER, 
	"START_SCNWRP" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_CONTAINER$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_CONTAINER$" 
   (	"OBJ#" NUMBER, 
	"CON_ID#" NUMBER, 
	"DBID" NUMBER, 
	"CON_UID" NUMBER, 
	"CREATE_SCNWRP" NUMBER, 
	"CREATE_SCNBAS" NUMBER, 
	"FLAGS" NUMBER, 
	"STATUS" NUMBER, 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_DICTIONARY$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_DICTIONARY$" 
   (	"DB_NAME" VARCHAR2(9 BYTE), 
	"DB_ID" NUMBER(20,0), 
	"DB_CREATED" VARCHAR2(20 BYTE), 
	"DB_DICT_CREATED" VARCHAR2(20 BYTE), 
	"DB_DICT_SCN" NUMBER(22,0), 
	"DB_THREAD_MAP" RAW(8), 
	"DB_TXN_SCNBAS" NUMBER(22,0), 
	"DB_TXN_SCNWRP" NUMBER(22,0), 
	"DB_RESETLOGS_CHANGE#" NUMBER(22,0), 
	"DB_RESETLOGS_TIME" VARCHAR2(20 BYTE), 
	"DB_VERSION_TIME" VARCHAR2(20 BYTE), 
	"DB_REDO_TYPE_ID" VARCHAR2(8 BYTE), 
	"DB_REDO_RELEASE" VARCHAR2(60 BYTE), 
	"DB_CHARACTER_SET" VARCHAR2(128 BYTE), 
	"DB_VERSION" VARCHAR2(64 BYTE), 
	"DB_STATUS" VARCHAR2(64 BYTE), 
	"DB_GLOBAL_NAME" VARCHAR2(128 BYTE), 
	"DB_DICT_MAXOBJECTS" NUMBER(22,0), 
	"DB_DICT_OBJECTCOUNT" NUMBER(22,0), 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0), 
	"PDB_NAME" VARCHAR2(30 BYTE), 
	"PDB_ID" NUMBER, 
	"PDB_UID" NUMBER, 
	"PDB_DBID" NUMBER, 
	"PDB_GUID" RAW(16), 
	"PDB_CREATE_SCN" NUMBER, 
	"PDB_COUNT" NUMBER, 
	"PDB_GLOBAL_NAME" VARCHAR2(128 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_DICTSTATE$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_DICTSTATE$" 
   (	"LOGMNR_UID" NUMBER(22,0), 
	"START_SCNBAS" NUMBER, 
	"START_SCNWRP" NUMBER, 
	"END_SCNBAS" NUMBER, 
	"END_SCNWRP" NUMBER, 
	"REDO_THREAD" NUMBER, 
	"RBASQN" NUMBER, 
	"RBABLK" NUMBER, 
	"RBABYTE" NUMBER, 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_DID$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_DID$" 
   (	"SESSION#" NUMBER, 
	"LOGMNR_DID" NUMBER, 
	"FLAGS" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(4000 BYTE), 
	"SPARE4" TIMESTAMP (6)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_ENC$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_ENC$" 
   (	"OBJ#" NUMBER, 
	"OWNER#" NUMBER, 
	"ENCALG" NUMBER, 
	"INTALG" NUMBER, 
	"COLKLC" RAW(2000), 
	"KLCLEN" NUMBER, 
	"FLAG" NUMBER, 
	"MKEYID" VARCHAR2(64 BYTE), 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_ERROR$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_ERROR$" 
   (	"SESSION#" NUMBER, 
	"TIME_OF_ERROR" DATE, 
	"CODE" NUMBER, 
	"MESSAGE" VARCHAR2(4000 BYTE), 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" NUMBER, 
	"SPARE4" VARCHAR2(4000 BYTE), 
	"SPARE5" VARCHAR2(4000 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_FILTER$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_FILTER$" 
   (	"SESSION#" NUMBER, 
	"FILTER_TYPE" VARCHAR2(30 BYTE), 
	"ATTR1" NUMBER, 
	"ATTR2" NUMBER, 
	"ATTR3" NUMBER, 
	"ATTR4" NUMBER, 
	"ATTR5" NUMBER, 
	"ATTR6" NUMBER, 
	"FILTER_SCN" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" DATE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_GLOBAL$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_GLOBAL$" 
   (	"HIGH_RECID_FOREIGN" NUMBER, 
	"HIGH_RECID_DELETED" NUMBER, 
	"LOCAL_RESET_SCN" NUMBER, 
	"LOCAL_RESET_TIMESTAMP" NUMBER, 
	"VERSION_TIMESTAMP" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" NUMBER, 
	"SPARE4" VARCHAR2(2000 BYTE), 
	"SPARE5" DATE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_GT_TAB_INCLUDE$
--------------------------------------------------------

  CREATE GLOBAL TEMPORARY TABLE "LOGMNR_GT_TAB_INCLUDE$" 
   (	"SCHEMA_NAME" VARCHAR2(130 BYTE), 
	"TABLE_NAME" VARCHAR2(130 BYTE), 
	"PDB_NAME" VARCHAR2(130 BYTE), 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(4000 BYTE)
   ) ON COMMIT PRESERVE ROWS ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_GT_USER_INCLUDE$
--------------------------------------------------------

  CREATE GLOBAL TEMPORARY TABLE "LOGMNR_GT_USER_INCLUDE$" 
   (	"USER_NAME" VARCHAR2(130 BYTE), 
	"USER_TYPE" NUMBER, 
	"PDB_NAME" VARCHAR2(130 BYTE), 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(4000 BYTE)
   ) ON COMMIT PRESERVE ROWS ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_GT_XID_INCLUDE$
--------------------------------------------------------

  CREATE GLOBAL TEMPORARY TABLE "LOGMNR_GT_XID_INCLUDE$" 
   (	"XIDUSN" NUMBER, 
	"XIDSLT" NUMBER, 
	"XIDSQN" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(4000 BYTE)
   ) ON COMMIT PRESERVE ROWS ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_ICOL$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_ICOL$" 
   (	"OBJ#" NUMBER, 
	"BO#" NUMBER, 
	"COL#" NUMBER, 
	"POS#" NUMBER, 
	"SEGCOL#" NUMBER, 
	"INTCOL#" NUMBER, 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_IND$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_IND$" 
   (	"BO#" NUMBER(22,0), 
	"COLS" NUMBER(22,0), 
	"TYPE#" NUMBER(22,0), 
	"FLAGS" NUMBER, 
	"PROPERTY" NUMBER, 
	"OBJ#" NUMBER(22,0), 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_INDCOMPART$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_INDCOMPART$" 
   (	"OBJ#" NUMBER, 
	"DATAOBJ#" NUMBER, 
	"BO#" NUMBER, 
	"PART#" NUMBER, 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_INDPART$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_INDPART$" 
   (	"OBJ#" NUMBER, 
	"BO#" NUMBER, 
	"PART#" NUMBER, 
	"TS#" NUMBER, 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_INDSUBPART$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_INDSUBPART$" 
   (	"OBJ#" NUMBER(22,0), 
	"DATAOBJ#" NUMBER(22,0), 
	"POBJ#" NUMBER(22,0), 
	"SUBPART#" NUMBER(22,0), 
	"TS#" NUMBER(22,0), 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_INTEGRATED_SPILL$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_INTEGRATED_SPILL$" 
   (	"SESSION#" NUMBER, 
	"XIDUSN" NUMBER, 
	"XIDSLT" NUMBER, 
	"XIDSQN" NUMBER, 
	"CHUNK" NUMBER, 
	"FLAG" NUMBER, 
	"CTIME" DATE, 
	"MTIME" DATE, 
	"SPILL_DATA" BLOB, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" NUMBER, 
	"SPARE4" DATE, 
	"SPARE5" DATE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
 LOB ("SPILL_DATA") STORE AS BASICFILE (
  TABLESPACE "SYSAUX" ENABLE STORAGE IN ROW CHUNK 32768 PCTVERSION 0
  CACHE 
  STORAGE(INITIAL 4194304 NEXT 2097152 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_KOPM$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_KOPM$" 
   (	"LENGTH" NUMBER, 
	"METADATA" RAW(255), 
	"NAME" VARCHAR2(128 BYTE), 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_LOB$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_LOB$" 
   (	"OBJ#" NUMBER, 
	"INTCOL#" NUMBER, 
	"COL#" NUMBER, 
	"LOBJ#" NUMBER, 
	"CHUNK" NUMBER, 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_LOBFRAG$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_LOBFRAG$" 
   (	"FRAGOBJ#" NUMBER, 
	"PARENTOBJ#" NUMBER, 
	"TABFRAGOBJ#" NUMBER, 
	"INDFRAGOBJ#" NUMBER, 
	"FRAG#" NUMBER, 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_LOG$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_LOG$" 
   (	"SESSION#" NUMBER, 
	"THREAD#" NUMBER, 
	"SEQUENCE#" NUMBER, 
	"FIRST_CHANGE#" NUMBER, 
	"NEXT_CHANGE#" NUMBER, 
	"FIRST_TIME" DATE, 
	"NEXT_TIME" DATE, 
	"FILE_NAME" VARCHAR2(513 BYTE), 
	"STATUS" NUMBER, 
	"INFO" VARCHAR2(32 BYTE), 
	"TIMESTAMP" DATE, 
	"DICT_BEGIN" VARCHAR2(3 BYTE), 
	"DICT_END" VARCHAR2(3 BYTE), 
	"STATUS_INFO" VARCHAR2(32 BYTE), 
	"DB_ID" NUMBER, 
	"RESETLOGS_CHANGE#" NUMBER, 
	"RESET_TIMESTAMP" NUMBER, 
	"PREV_RESETLOGS_CHANGE#" NUMBER, 
	"PREV_RESET_TIMESTAMP" NUMBER, 
	"BLOCKS" NUMBER, 
	"BLOCK_SIZE" NUMBER, 
	"FLAGS" NUMBER, 
	"CONTENTS" NUMBER, 
	"RECID" NUMBER, 
	"RECSTAMP" NUMBER, 
	"MARK_DELETE_TIMESTAMP" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" NUMBER, 
	"SPARE4" NUMBER, 
	"SPARE5" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_LOGMNR_BUILDLOG
--------------------------------------------------------

  CREATE TABLE "LOGMNR_LOGMNR_BUILDLOG" 
   (	"BUILD_DATE" VARCHAR2(20 BYTE), 
	"DB_TXN_SCNBAS" NUMBER, 
	"DB_TXN_SCNWRP" NUMBER, 
	"CURRENT_BUILD_STATE" NUMBER, 
	"COMPLETION_STATUS" NUMBER, 
	"MARKED_LOG_FILE_LOW_SCN" NUMBER, 
	"INITIAL_XID" VARCHAR2(22 BYTE), 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0), 
	"CDB_XID" VARCHAR2(22 BYTE), 
	"SPARE1" NUMBER, 
	"SPARE2" VARCHAR2(4000 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_NTAB$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_NTAB$" 
   (	"COL#" NUMBER, 
	"INTCOL#" NUMBER, 
	"NTAB#" NUMBER, 
	"NAME" VARCHAR2(4000 BYTE), 
	"OBJ#" NUMBER, 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_OBJ$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_OBJ$" 
   (	"OBJV#" NUMBER(22,0), 
	"OWNER#" NUMBER(22,0), 
	"NAME" VARCHAR2(128 BYTE), 
	"NAMESPACE" NUMBER(22,0), 
	"SUBNAME" VARCHAR2(128 BYTE), 
	"TYPE#" NUMBER(22,0), 
	"OID$" RAW(16), 
	"REMOTEOWNER" VARCHAR2(128 BYTE), 
	"LINKNAME" VARCHAR2(128 BYTE), 
	"FLAGS" NUMBER(22,0), 
	"SPARE3" NUMBER(22,0), 
	"STIME" DATE, 
	"OBJ#" NUMBER(22,0), 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0), 
	"START_SCNBAS" NUMBER, 
	"START_SCNWRP" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_OPQTYPE$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_OPQTYPE$" 
   (	"INTCOL#" NUMBER, 
	"TYPE" NUMBER, 
	"FLAGS" NUMBER, 
	"LOBCOL" NUMBER, 
	"OBJCOL" NUMBER, 
	"EXTRACOL" NUMBER, 
	"SCHEMAOID" RAW(16), 
	"ELEMNUM" NUMBER, 
	"SCHEMAURL" VARCHAR2(4000 BYTE), 
	"OBJ#" NUMBER, 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_PARAMETER$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_PARAMETER$" 
   (	"SESSION#" NUMBER, 
	"NAME" VARCHAR2(128 BYTE), 
	"VALUE" VARCHAR2(2000 BYTE), 
	"TYPE" NUMBER, 
	"SCN" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(2000 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_PARTOBJ$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_PARTOBJ$" 
   (	"PARTTYPE" NUMBER, 
	"PARTCNT" NUMBER, 
	"PARTKEYCOLS" NUMBER, 
	"FLAGS" NUMBER, 
	"DEFTS#" NUMBER, 
	"DEFPCTFREE" NUMBER, 
	"DEFPCTUSED" NUMBER, 
	"DEFPCTTHRES" NUMBER, 
	"DEFINITRANS" NUMBER, 
	"DEFMAXTRANS" NUMBER, 
	"DEFTINIEXTS" NUMBER, 
	"DEFEXTSIZE" NUMBER, 
	"DEFMINEXTS" NUMBER, 
	"DEFMAXEXTS" NUMBER, 
	"DEFEXTPCT" NUMBER, 
	"DEFLISTS" NUMBER, 
	"DEFGROUPS" NUMBER, 
	"DEFLOGGING" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" NUMBER, 
	"DEFINCLCOL" NUMBER, 
	"PARAMETERS" VARCHAR2(1000 BYTE), 
	"OBJ#" NUMBER, 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_PDB_INFO$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_PDB_INFO$" 
   (	"LOGMNR_DID" NUMBER, 
	"LOGMNR_MDH" NUMBER, 
	"PDB_NAME" VARCHAR2(128 BYTE), 
	"PDB_ID" NUMBER, 
	"PDB_UID" NUMBER, 
	"PLUGIN_SCN" NUMBER, 
	"UNPLUG_SCN" NUMBER, 
	"FLAGS" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(4000 BYTE), 
	"SPARE4" TIMESTAMP (6), 
	"PDB_GLOBAL_NAME" VARCHAR2(128 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_PROCESSED_LOG$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_PROCESSED_LOG$" 
   (	"SESSION#" NUMBER, 
	"THREAD#" NUMBER, 
	"SEQUENCE#" NUMBER, 
	"FIRST_CHANGE#" NUMBER, 
	"NEXT_CHANGE#" NUMBER, 
	"FIRST_TIME" DATE, 
	"NEXT_TIME" DATE, 
	"FILE_NAME" VARCHAR2(513 BYTE), 
	"STATUS" NUMBER, 
	"INFO" VARCHAR2(32 BYTE), 
	"TIMESTAMP" DATE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_PROPS$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_PROPS$" 
   (	"VALUE$" VARCHAR2(4000 BYTE), 
	"COMMENT$" VARCHAR2(4000 BYTE), 
	"NAME" VARCHAR2(128 BYTE), 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_REFCON$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_REFCON$" 
   (	"COL#" NUMBER, 
	"INTCOL#" NUMBER, 
	"REFTYP" NUMBER, 
	"STABID" RAW(16), 
	"EXPCTOID" RAW(16), 
	"OBJ#" NUMBER, 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_RESTART_CKPT$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_RESTART_CKPT$" 
   (	"SESSION#" NUMBER, 
	"VALID" NUMBER, 
	"CKPT_SCN" NUMBER, 
	"XIDUSN" NUMBER, 
	"XIDSLT" NUMBER, 
	"XIDSQN" NUMBER, 
	"SESSION_NUM" NUMBER, 
	"SERIAL_NUM" NUMBER, 
	"CKPT_INFO" BLOB, 
	"FLAG" NUMBER, 
	"OFFSET" NUMBER, 
	"CLIENT_DATA" BLOB, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
 LOB ("CKPT_INFO") STORE AS BASICFILE (
  TABLESPACE "SYSAUX" ENABLE STORAGE IN ROW CHUNK 16384 PCTVERSION 0
  CACHE 
  STORAGE(INITIAL 16384 NEXT 16384 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("CLIENT_DATA") STORE AS BASICFILE (
  TABLESPACE "SYSAUX" ENABLE STORAGE IN ROW CHUNK 16384 PCTVERSION 0
  CACHE 
  STORAGE(INITIAL 16384 NEXT 16384 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_RESTART_CKPT_TXINFO$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_RESTART_CKPT_TXINFO$" 
   (	"SESSION#" NUMBER, 
	"XIDUSN" NUMBER, 
	"XIDSLT" NUMBER, 
	"XIDSQN" NUMBER, 
	"SESSION_NUM" NUMBER, 
	"SERIAL_NUM" NUMBER, 
	"FLAG" NUMBER, 
	"START_SCN" NUMBER, 
	"EFFECTIVE_SCN" NUMBER, 
	"OFFSET" NUMBER, 
	"TX_DATA" BLOB
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
 LOB ("TX_DATA") STORE AS BASICFILE (
  TABLESPACE "SYSAUX" ENABLE STORAGE IN ROW CHUNK 16384 PCTVERSION 0
  CACHE 
  STORAGE(INITIAL 16384 NEXT 16384 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_SEED$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_SEED$" 
   (	"SEED_VERSION" NUMBER(22,0), 
	"GATHER_VERSION" NUMBER(22,0), 
	"SCHEMANAME" VARCHAR2(128 BYTE), 
	"OBJ#" NUMBER, 
	"OBJV#" NUMBER(22,0), 
	"TABLE_NAME" VARCHAR2(128 BYTE), 
	"COL_NAME" VARCHAR2(128 BYTE), 
	"COL#" NUMBER, 
	"INTCOL#" NUMBER, 
	"SEGCOL#" NUMBER, 
	"TYPE#" NUMBER, 
	"LENGTH" NUMBER, 
	"PRECISION#" NUMBER, 
	"SCALE" NUMBER, 
	"NULL$" NUMBER, 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_SESSION$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_SESSION$" 
   (	"SESSION#" NUMBER, 
	"CLIENT#" NUMBER, 
	"SESSION_NAME" VARCHAR2(128 BYTE), 
	"DB_ID" NUMBER, 
	"RESETLOGS_CHANGE#" NUMBER, 
	"SESSION_ATTR" NUMBER, 
	"SESSION_ATTR_VERBOSE" VARCHAR2(400 BYTE), 
	"START_SCN" NUMBER, 
	"END_SCN" NUMBER, 
	"SPILL_SCN" NUMBER, 
	"SPILL_TIME" DATE, 
	"OLDEST_SCN" NUMBER, 
	"RESUME_SCN" NUMBER, 
	"GLOBAL_DB_NAME" VARCHAR2(128 BYTE) DEFAULT null, 
	"RESET_TIMESTAMP" NUMBER, 
	"BRANCH_SCN" NUMBER, 
	"VERSION" VARCHAR2(64 BYTE), 
	"REDO_COMPAT" VARCHAR2(20 BYTE), 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" NUMBER, 
	"SPARE4" NUMBER, 
	"SPARE5" NUMBER, 
	"SPARE6" DATE, 
	"SPARE7" VARCHAR2(1000 BYTE), 
	"SPARE8" VARCHAR2(1000 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_SESSION_ACTIONS$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_SESSION_ACTIONS$" 
   (	"FLAGSRUNTIME" NUMBER DEFAULT 0, 
	"DROPSCN" NUMBER, 
	"MODIFYTIME" TIMESTAMP (6), 
	"DISPATCHTIME" TIMESTAMP (6), 
	"DROPTIME" TIMESTAMP (6), 
	"LCRCOUNT" NUMBER DEFAULT 0, 
	"ACTIONNAME" VARCHAR2(30 BYTE), 
	"LOGMNRSESSION#" NUMBER, 
	"PROCESSROLE#" NUMBER, 
	"ACTIONTYPE#" NUMBER, 
	"FLAGSDEFINETIME" NUMBER, 
	"CREATETIME" TIMESTAMP (6), 
	"XIDUSN" NUMBER, 
	"XIDSLT" NUMBER, 
	"XIDSQN" NUMBER, 
	"THREAD#" NUMBER, 
	"STARTSCN" NUMBER, 
	"STARTSUBSCN" NUMBER, 
	"ENDSCN" NUMBER, 
	"ENDSUBSCN" NUMBER, 
	"RBASQN" NUMBER, 
	"RBABLK" NUMBER, 
	"RBABYTE" NUMBER, 
	"SESSION#" NUMBER, 
	"OBJ#" NUMBER, 
	"ATTR1" NUMBER, 
	"ATTR2" NUMBER, 
	"ATTR3" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" TIMESTAMP (6), 
	"SPARE4" VARCHAR2(2000 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_SESSION_EVOLVE$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_SESSION_EVOLVE$" 
   (	"BRANCH_LEVEL" NUMBER, 
	"SESSION#" NUMBER, 
	"DB_ID" NUMBER, 
	"RESET_SCN" NUMBER, 
	"RESET_TIMESTAMP" NUMBER, 
	"PREV_RESET_SCN" NUMBER, 
	"PREV_RESET_TIMESTAMP" NUMBER, 
	"STATUS" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" NUMBER, 
	"SPARE4" DATE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_SPILL$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_SPILL$" 
   (	"SESSION#" NUMBER, 
	"XIDUSN" NUMBER, 
	"XIDSLT" NUMBER, 
	"XIDSQN" NUMBER, 
	"CHUNK" NUMBER, 
	"STARTIDX" NUMBER, 
	"ENDIDX" NUMBER, 
	"FLAG" NUMBER, 
	"SEQUENCE#" NUMBER, 
	"SPILL_DATA" BLOB, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
 LOB ("SPILL_DATA") STORE AS BASICFILE (
  TABLESPACE "SYSAUX" ENABLE STORAGE IN ROW CHUNK 16384 PCTVERSION 0
  CACHE 
  STORAGE(INITIAL 16384 NEXT 16384 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_SUBCOLTYPE$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_SUBCOLTYPE$" 
   (	"INTCOL#" NUMBER, 
	"TOID" RAW(16), 
	"VERSION#" NUMBER, 
	"INTCOLS" NUMBER, 
	"INTCOL#S" RAW(2000), 
	"FLAGS" NUMBER, 
	"SYNOBJ#" NUMBER, 
	"OBJ#" NUMBER, 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_TAB$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_TAB$" 
   (	"TS#" NUMBER(22,0), 
	"COLS" NUMBER(22,0), 
	"PROPERTY" NUMBER(22,0), 
	"INTCOLS" NUMBER(22,0), 
	"KERNELCOLS" NUMBER(22,0), 
	"BOBJ#" NUMBER(22,0), 
	"TRIGFLAG" NUMBER(22,0), 
	"FLAGS" NUMBER(22,0), 
	"OBJ#" NUMBER(22,0), 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_TABCOMPART$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_TABCOMPART$" 
   (	"OBJ#" NUMBER(22,0), 
	"BO#" NUMBER(22,0), 
	"PART#" NUMBER(22,0), 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_TABPART$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_TABPART$" 
   (	"OBJ#" NUMBER(22,0), 
	"TS#" NUMBER(22,0), 
	"PART#" NUMBER, 
	"BO#" NUMBER(22,0), 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_TABSUBPART$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_TABSUBPART$" 
   (	"OBJ#" NUMBER(22,0), 
	"DATAOBJ#" NUMBER(22,0), 
	"POBJ#" NUMBER(22,0), 
	"SUBPART#" NUMBER(22,0), 
	"TS#" NUMBER(22,0), 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_TS$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_TS$" 
   (	"TS#" NUMBER(22,0), 
	"NAME" VARCHAR2(30 BYTE), 
	"OWNER#" NUMBER(22,0), 
	"BLOCKSIZE" NUMBER(22,0), 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_TYPE$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_TYPE$" 
   (	"VERSION#" NUMBER, 
	"VERSION" VARCHAR2(128 BYTE), 
	"TVOID" RAW(16), 
	"TYPECODE" NUMBER, 
	"PROPERTIES" NUMBER, 
	"ATTRIBUTES" NUMBER, 
	"METHODS" NUMBER, 
	"HIDDENMETHODS" NUMBER, 
	"SUPERTYPES" NUMBER, 
	"SUBTYPES" NUMBER, 
	"EXTERNTYPE" NUMBER, 
	"EXTERNNAME" VARCHAR2(4000 BYTE), 
	"HELPERCLASSNAME" VARCHAR2(4000 BYTE), 
	"LOCAL_ATTRS" NUMBER, 
	"LOCAL_METHODS" NUMBER, 
	"TYPEID" RAW(16), 
	"ROOTTOID" RAW(16), 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" NUMBER, 
	"SUPERTOID" RAW(16), 
	"HASHCODE" RAW(17), 
	"TOID" RAW(16), 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_UID$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_UID$" 
   (	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_DID" NUMBER, 
	"LOGMNR_MDH" NUMBER, 
	"PDB_NAME" VARCHAR2(30 BYTE), 
	"PDB_ID" NUMBER, 
	"PDB_UID" NUMBER, 
	"START_SCN" NUMBER, 
	"END_SCN" NUMBER, 
	"FLAGS" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(4000 BYTE), 
	"SPARE4" TIMESTAMP (6)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
/
--------------------------------------------------------
--  DDL for Table LOGMNR_USER$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_USER$" 
   (	"USER#" NUMBER(22,0), 
	"NAME" VARCHAR2(128 BYTE), 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Table LOGSTDBY$APPLY_MILESTONE
--------------------------------------------------------

  CREATE TABLE "LOGSTDBY$APPLY_MILESTONE" 
   (	"SESSION_ID" NUMBER, 
	"COMMIT_SCN" NUMBER, 
	"COMMIT_TIME" DATE, 
	"SYNCH_SCN" NUMBER, 
	"EPOCH" NUMBER, 
	"PROCESSED_SCN" NUMBER, 
	"PROCESSED_TIME" DATE, 
	"FETCHLWM_SCN" NUMBER DEFAULT (0), 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(2000 BYTE), 
	"FLAGS" NUMBER, 
	"LWM_UPD_TIME" DATE, 
	"SPARE4" NUMBER, 
	"SPARE5" NUMBER, 
	"SPARE6" NUMBER, 
	"SPARE7" DATE, 
	"PTO_RECOVERY_SCN" NUMBER, 
	"PTO_RECOVERY_INCARNATION" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
/
--------------------------------------------------------
--  DDL for Table LOGSTDBY$APPLY_PROGRESS
--------------------------------------------------------

  CREATE TABLE "LOGSTDBY$APPLY_PROGRESS" 
   (	"XIDUSN" NUMBER, 
	"XIDSLT" NUMBER, 
	"XIDSQN" NUMBER, 
	"COMMIT_SCN" NUMBER, 
	"COMMIT_TIME" DATE, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(2000 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("COMMIT_SCN") 
 (PARTITION "P0"  VALUES LESS THAN (0) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Table LOGSTDBY$EDS_TABLES
--------------------------------------------------------

  CREATE TABLE "LOGSTDBY$EDS_TABLES" 
   (	"OWNER" VARCHAR2(128 BYTE), 
	"TABLE_NAME" VARCHAR2(128 BYTE), 
	"SHADOW_TABLE_NAME" VARCHAR2(128 BYTE), 
	"BASE_TRIGGER_NAME" VARCHAR2(128 BYTE), 
	"SHADOW_TRIGGER_NAME" VARCHAR2(128 BYTE), 
	"DBLINK" VARCHAR2(255 BYTE), 
	"FLAGS" NUMBER, 
	"STATE" VARCHAR2(255 BYTE), 
	"OBJV" NUMBER, 
	"OBJ#" NUMBER, 
	"SOBJ#" NUMBER, 
	"CTIME" TIMESTAMP (6), 
	"SPARE1" NUMBER, 
	"SPARE2" VARCHAR2(255 BYTE), 
	"SPARE3" NUMBER, 
	"MVIEW_NAME" VARCHAR2(128 BYTE), 
	"MVIEW_LOG_NAME" VARCHAR2(128 BYTE), 
	"MVIEW_TRIGGER_NAME" VARCHAR2(128 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
/
--------------------------------------------------------
--  DDL for Table LOGSTDBY$EVENTS
--------------------------------------------------------

  CREATE TABLE "LOGSTDBY$EVENTS" 
   (	"EVENT_TIME" TIMESTAMP (6), 
	"CURRENT_SCN" NUMBER, 
	"COMMIT_SCN" NUMBER, 
	"XIDUSN" NUMBER, 
	"XIDSLT" NUMBER, 
	"XIDSQN" NUMBER, 
	"ERRVAL" NUMBER, 
	"EVENT" VARCHAR2(2000 BYTE), 
	"FULL_EVENT" CLOB, 
	"ERROR" VARCHAR2(2000 BYTE), 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(2000 BYTE), 
	"CON_NAME" VARCHAR2(30 BYTE), 
	"CON_ID" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
 LOB ("FULL_EVENT") STORE AS SECUREFILE (
  TABLESPACE "SYSAUX" ENABLE STORAGE IN ROW CHUNK 16384
  CACHE  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 106496 NEXT 16384 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
/
--------------------------------------------------------
--  DDL for Table LOGSTDBY$FLASHBACK_SCN
--------------------------------------------------------

  CREATE TABLE "LOGSTDBY$FLASHBACK_SCN" 
   (	"PRIMARY_SCN" NUMBER, 
	"PRIMARY_TIME" DATE, 
	"STANDBY_SCN" NUMBER, 
	"STANDBY_TIME" DATE, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" DATE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
/
--------------------------------------------------------
--  DDL for Table LOGSTDBY$HISTORY
--------------------------------------------------------

  CREATE TABLE "LOGSTDBY$HISTORY" 
   (	"STREAM_SEQUENCE#" NUMBER, 
	"LMNR_SID" NUMBER, 
	"DBID" NUMBER, 
	"FIRST_CHANGE#" NUMBER, 
	"LAST_CHANGE#" NUMBER, 
	"SOURCE" NUMBER, 
	"STATUS" NUMBER, 
	"FIRST_TIME" DATE, 
	"LAST_TIME" DATE, 
	"DGNAME" VARCHAR2(255 BYTE), 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(2000 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
/
--------------------------------------------------------
--  DDL for Table LOGSTDBY$PARAMETERS
--------------------------------------------------------

  CREATE TABLE "LOGSTDBY$PARAMETERS" 
   (	"NAME" VARCHAR2(30 BYTE), 
	"VALUE" VARCHAR2(2000 BYTE), 
	"TYPE" NUMBER, 
	"SCN" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(2000 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Table LOGSTDBY$PLSQL
--------------------------------------------------------

  CREATE TABLE "LOGSTDBY$PLSQL" 
   (	"SESSION_ID" NUMBER, 
	"START_FINISH" NUMBER, 
	"CALL_TEXT" CLOB, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(2000 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
 LOB ("CALL_TEXT") STORE AS SECUREFILE (
  TABLESPACE "SYSAUX" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
/
--------------------------------------------------------
--  DDL for Table LOGSTDBY$SCN
--------------------------------------------------------

  CREATE TABLE "LOGSTDBY$SCN" 
   (	"OBJ#" NUMBER, 
	"OBJNAME" VARCHAR2(4000 BYTE), 
	"SCHEMA" VARCHAR2(128 BYTE), 
	"TYPE" VARCHAR2(20 BYTE), 
	"SCN" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(2000 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
/
--------------------------------------------------------
--  DDL for Table LOGSTDBY$SKIP
--------------------------------------------------------

  CREATE TABLE "LOGSTDBY$SKIP" 
   (	"ERROR" NUMBER, 
	"STATEMENT_OPT" VARCHAR2(128 BYTE), 
	"SCHEMA" VARCHAR2(128 BYTE), 
	"NAME" VARCHAR2(261 BYTE), 
	"USE_LIKE" NUMBER, 
	"ESC" VARCHAR2(1 BYTE), 
	"PROC" VARCHAR2(392 BYTE), 
	"ACTIVE" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(2000 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
/
--------------------------------------------------------
--  DDL for Table LOGSTDBY$SKIP_SUPPORT
--------------------------------------------------------

  CREATE TABLE "LOGSTDBY$SKIP_SUPPORT" 
   (	"ACTION" NUMBER, 
	"NAME" VARCHAR2(128 BYTE), 
	"NAME2" VARCHAR2(128 BYTE), 
	"NAME3" VARCHAR2(128 BYTE), 
	"NAME4" VARCHAR2(128 BYTE), 
	"NAME5" VARCHAR2(128 BYTE), 
	"REG" NUMBER(*,0), 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(2000 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
/
--------------------------------------------------------
--  DDL for Table LOGSTDBY$SKIP_TRANSACTION
--------------------------------------------------------

  CREATE TABLE "LOGSTDBY$SKIP_TRANSACTION" 
   (	"XIDUSN" NUMBER, 
	"XIDSLT" NUMBER, 
	"XIDSQN" NUMBER, 
	"ACTIVE" NUMBER, 
	"COMMIT_SCN" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(2000 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
/
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_AJG
--------------------------------------------------------

  CREATE TABLE "MVIEW$_ADV_AJG" 
   (	"AJGID#" NUMBER, 
	"RUNID#" NUMBER, 
	"AJGDESLEN" NUMBER, 
	"AJGDES" LONG RAW, 
	"HASHVALUE" NUMBER, 
	"FREQUENCY" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON TABLE "MVIEW$_ADV_AJG"  IS 'Anchor-join graph representation';
/
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_BASETABLE
--------------------------------------------------------

  CREATE TABLE "MVIEW$_ADV_BASETABLE" 
   (	"COLLECTIONID#" NUMBER, 
	"QUERYID#" NUMBER, 
	"OWNER" VARCHAR2(128 BYTE), 
	"TABLE_NAME" VARCHAR2(128 BYTE), 
	"TABLE_TYPE" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON TABLE "MVIEW$_ADV_BASETABLE"  IS 'Base tables refered by a query';
/
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_CLIQUE
--------------------------------------------------------

  CREATE TABLE "MVIEW$_ADV_CLIQUE" 
   (	"CLIQUEID#" NUMBER, 
	"RUNID#" NUMBER, 
	"CLIQUEDESLEN" NUMBER, 
	"CLIQUEDES" LONG RAW, 
	"HASHVALUE" NUMBER, 
	"FREQUENCY" NUMBER, 
	"BYTECOST" NUMBER, 
	"ROWSIZE" NUMBER, 
	"NUMROWS" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON TABLE "MVIEW$_ADV_CLIQUE"  IS 'Table for storing canonical form of Clique queries';
/
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_ELIGIBLE
--------------------------------------------------------

  CREATE TABLE "MVIEW$_ADV_ELIGIBLE" 
   (	"SUMOBJN#" NUMBER, 
	"RUNID#" NUMBER, 
	"BYTECOST" NUMBER, 
	"FLAGS" NUMBER, 
	"FREQUENCY" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON TABLE "MVIEW$_ADV_ELIGIBLE"  IS 'Summary management rewrite eligibility information';
/
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_EXCEPTIONS
--------------------------------------------------------

  CREATE TABLE "MVIEW$_ADV_EXCEPTIONS" 
   (	"RUNID#" NUMBER, 
	"OWNER" VARCHAR2(128 BYTE), 
	"TABLE_NAME" VARCHAR2(128 BYTE), 
	"DIMENSION_NAME" VARCHAR2(128 BYTE), 
	"RELATIONSHIP" VARCHAR2(11 BYTE), 
	"BAD_ROWID" ROWID
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON TABLE "MVIEW$_ADV_EXCEPTIONS"  IS 'Output table for dimension validations';
/
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_FILTER
--------------------------------------------------------

  CREATE TABLE "MVIEW$_ADV_FILTER" 
   (	"FILTERID#" NUMBER, 
	"SUBFILTERNUM#" NUMBER, 
	"SUBFILTERTYPE" NUMBER, 
	"STR_VALUE" VARCHAR2(1028 BYTE), 
	"NUM_VALUE1" NUMBER, 
	"NUM_VALUE2" NUMBER, 
	"DATE_VALUE1" DATE, 
	"DATE_VALUE2" DATE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON TABLE "MVIEW$_ADV_FILTER"  IS 'Table for workload filter definition';
/
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_FILTERINSTANCE
--------------------------------------------------------

  CREATE TABLE "MVIEW$_ADV_FILTERINSTANCE" 
   (	"RUNID#" NUMBER, 
	"FILTERID#" NUMBER, 
	"SUBFILTERNUM#" NUMBER, 
	"SUBFILTERTYPE" NUMBER, 
	"STR_VALUE" VARCHAR2(1028 BYTE), 
	"NUM_VALUE1" NUMBER, 
	"NUM_VALUE2" NUMBER, 
	"DATE_VALUE1" DATE, 
	"DATE_VALUE2" DATE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON TABLE "MVIEW$_ADV_FILTERINSTANCE"  IS 'Table for workload filter instance definition';
/
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_FJG
--------------------------------------------------------

  CREATE TABLE "MVIEW$_ADV_FJG" 
   (	"FJGID#" NUMBER, 
	"AJGID#" NUMBER, 
	"FJGDESLEN" NUMBER, 
	"FJGDES" LONG RAW, 
	"HASHVALUE" NUMBER, 
	"FREQUENCY" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON TABLE "MVIEW$_ADV_FJG"  IS 'Representation for query join sub-graph not in AJG ';
/
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_GC
--------------------------------------------------------

  CREATE TABLE "MVIEW$_ADV_GC" 
   (	"GCID#" NUMBER, 
	"FJGID#" NUMBER, 
	"GCDESLEN" NUMBER, 
	"GCDES" LONG RAW, 
	"HASHVALUE" NUMBER, 
	"FREQUENCY" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON TABLE "MVIEW$_ADV_GC"  IS 'Group-by columns of a query';
/
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_INFO
--------------------------------------------------------

  CREATE TABLE "MVIEW$_ADV_INFO" 
   (	"RUNID#" NUMBER, 
	"SEQ#" NUMBER, 
	"TYPE" NUMBER, 
	"INFOLEN" NUMBER, 
	"INFO" LONG RAW, 
	"STATUS" NUMBER, 
	"FLAG" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON TABLE "MVIEW$_ADV_INFO"  IS 'Internal table for passing information from the SQL analyzer';
/
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_JOURNAL
--------------------------------------------------------

  CREATE TABLE "MVIEW$_ADV_JOURNAL" 
   (	"RUNID#" NUMBER, 
	"SEQ#" NUMBER, 
	"TIMESTAMP" DATE, 
	"FLAGS" NUMBER, 
	"NUM" NUMBER, 
	"TEXT" LONG, 
	"TEXTLEN" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON TABLE "MVIEW$_ADV_JOURNAL"  IS 'Summary advisor journal table for debugging and information';
/
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_LEVEL
--------------------------------------------------------

  CREATE TABLE "MVIEW$_ADV_LEVEL" 
   (	"RUNID#" NUMBER, 
	"LEVELID#" NUMBER, 
	"DIMOBJ#" NUMBER, 
	"FLAGS" NUMBER, 
	"TBLOBJ#" NUMBER, 
	"COLUMNLIST" RAW(70), 
	"LEVELNAME" VARCHAR2(128 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON TABLE "MVIEW$_ADV_LEVEL"  IS 'Level definition';
/
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_LOG
--------------------------------------------------------

  CREATE TABLE "MVIEW$_ADV_LOG" 
   (	"RUNID#" NUMBER, 
	"FILTERID#" NUMBER, 
	"RUN_BEGIN" DATE, 
	"RUN_END" DATE, 
	"RUN_TYPE" NUMBER, 
	"UNAME" VARCHAR2(128 BYTE), 
	"STATUS" NUMBER, 
	"MESSAGE" VARCHAR2(2000 BYTE), 
	"COMPLETED" NUMBER, 
	"TOTAL" NUMBER, 
	"ERROR_CODE" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON TABLE "MVIEW$_ADV_LOG"  IS 'Log all calls to summary advisory functions';
/
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_OUTPUT
--------------------------------------------------------

  CREATE TABLE "MVIEW$_ADV_OUTPUT" 
   (	"RUNID#" NUMBER, 
	"OUTPUT_TYPE" NUMBER, 
	"RANK#" NUMBER, 
	"ACTION_TYPE" VARCHAR2(6 BYTE), 
	"SUMMARY_OWNER" VARCHAR2(128 BYTE), 
	"SUMMARY_NAME" VARCHAR2(128 BYTE), 
	"GROUP_BY_COLUMNS" VARCHAR2(2000 BYTE), 
	"WHERE_CLAUSE" VARCHAR2(2000 BYTE), 
	"FROM_CLAUSE" VARCHAR2(2000 BYTE), 
	"MEASURES_LIST" VARCHAR2(2000 BYTE), 
	"FACT_TABLES" VARCHAR2(1000 BYTE), 
	"GROUPING_LEVELS" VARCHAR2(2000 BYTE), 
	"QUERYLEN" NUMBER, 
	"QUERY_TEXT" LONG, 
	"STORAGE_IN_BYTES" NUMBER, 
	"PCT_PERFORMANCE_GAIN" NUMBER, 
	"FREQUENCY" NUMBER, 
	"CUMULATIVE_BENEFIT" NUMBER, 
	"BENEFIT_TO_COST_RATIO" NUMBER, 
	"VALIDATED" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON TABLE "MVIEW$_ADV_OUTPUT"  IS 'Output table for summary recommendations and evaluations';
/
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_PARAMETERS
--------------------------------------------------------

  CREATE TABLE "MVIEW$_ADV_PARAMETERS" 
   (	"PARAMETER_NAME" VARCHAR2(128 BYTE), 
	"PARAMETER_TYPE" NUMBER, 
	"STRING_VALUE" VARCHAR2(30 BYTE), 
	"DATE_VALUE" DATE, 
	"NUMERICAL_VALUE" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON TABLE "MVIEW$_ADV_PARAMETERS"  IS 'Summary advisor tuning parameters';
/
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_PLAN
--------------------------------------------------------

  CREATE TABLE "MVIEW$_ADV_PLAN" 
   (	"STATEMENT_ID" VARCHAR2(30 BYTE), 
	"TIMESTAMP" DATE, 
	"REMARKS" VARCHAR2(80 BYTE), 
	"OPERATION" VARCHAR2(30 BYTE), 
	"OPTIONS" VARCHAR2(255 BYTE), 
	"OBJECT_NODE" VARCHAR2(128 BYTE), 
	"OBJECT_OWNER" VARCHAR2(128 BYTE), 
	"OBJECT_NAME" VARCHAR2(128 BYTE), 
	"OBJECT_INSTANCE" NUMBER(*,0), 
	"OBJECT_TYPE" VARCHAR2(30 BYTE), 
	"OPTIMIZER" VARCHAR2(255 BYTE), 
	"SEARCH_COLUMNS" NUMBER, 
	"ID" NUMBER(*,0), 
	"PARENT_ID" NUMBER(*,0), 
	"POSITION" NUMBER(*,0), 
	"COST" NUMBER(*,0), 
	"CARDINALITY" NUMBER(*,0), 
	"BYTES" NUMBER(*,0), 
	"OTHER_TAG" VARCHAR2(255 BYTE), 
	"PARTITION_START" VARCHAR2(255 BYTE), 
	"PARTITION_STOP" VARCHAR2(255 BYTE), 
	"PARTITION_ID" NUMBER(*,0), 
	"OTHER" LONG, 
	"DISTRIBUTION" VARCHAR2(30 BYTE), 
	"CPU_COST" NUMBER(*,0), 
	"IO_COST" NUMBER(*,0), 
	"TEMP_SPACE" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON TABLE "MVIEW$_ADV_PLAN"  IS 'Private plan table for estimate_mview_size operations';
/
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_PRETTY
--------------------------------------------------------

  CREATE TABLE "MVIEW$_ADV_PRETTY" 
   (	"QUERYID#" NUMBER, 
	"SQL_TEXT" LONG
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON TABLE "MVIEW$_ADV_PRETTY"  IS 'Table for sql parsing';
/
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_ROLLUP
--------------------------------------------------------

  CREATE TABLE "MVIEW$_ADV_ROLLUP" 
   (	"RUNID#" NUMBER, 
	"CLEVELID#" NUMBER, 
	"PLEVELID#" NUMBER, 
	"FLAGS" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON TABLE "MVIEW$_ADV_ROLLUP"  IS 'Each row repesents either a functional dependency or join-key relationship';
/
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_SQLDEPEND
--------------------------------------------------------

  CREATE TABLE "MVIEW$_ADV_SQLDEPEND" 
   (	"COLLECTIONID#" NUMBER, 
	"INST_ID" NUMBER, 
	"FROM_ADDRESS" RAW(16), 
	"FROM_HASH" NUMBER, 
	"TO_OWNER" VARCHAR2(128 BYTE), 
	"TO_NAME" VARCHAR2(1000 BYTE), 
	"TO_TYPE" NUMBER, 
	"CARDINALITY" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON TABLE "MVIEW$_ADV_SQLDEPEND"  IS 'Temporary table for workload collections';
/
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_TEMP
--------------------------------------------------------

  CREATE TABLE "MVIEW$_ADV_TEMP" 
   (	"ID#" NUMBER, 
	"SEQ#" NUMBER, 
	"TEXT" LONG
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON TABLE "MVIEW$_ADV_TEMP"  IS 'Table for temporary data';
/
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_WORKLOAD
--------------------------------------------------------

  CREATE TABLE "MVIEW$_ADV_WORKLOAD" 
   (	"QUERYID#" NUMBER, 
	"COLLECTIONID#" NUMBER, 
	"COLLECTTIME" DATE, 
	"APPLICATION" VARCHAR2(128 BYTE), 
	"CARDINALITY" NUMBER, 
	"RESULTSIZE" NUMBER, 
	"UNAME" VARCHAR2(128 BYTE), 
	"QDATE" DATE, 
	"PRIORITY" NUMBER, 
	"EXEC_TIME" NUMBER, 
	"SQL_TEXT" LONG, 
	"SQL_TEXTLEN" NUMBER, 
	"SQL_HASH" NUMBER, 
	"SQL_ADDR" RAW(16), 
	"FREQUENCY" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON TABLE "MVIEW$_ADV_WORKLOAD"  IS 'Shared workload repository for DBA users of summary advisor';
/
--------------------------------------------------------
--  DDL for Table OL$
--------------------------------------------------------

  CREATE GLOBAL TEMPORARY TABLE "OL$" 
   (	"OL_NAME" VARCHAR2(128 BYTE), 
	"SQL_TEXT" LONG, 
	"TEXTLEN" NUMBER, 
	"SIGNATURE" RAW(16), 
	"HASH_VALUE" NUMBER, 
	"HASH_VALUE2" NUMBER, 
	"CATEGORY" VARCHAR2(128 BYTE), 
	"VERSION" VARCHAR2(64 BYTE), 
	"CREATOR" VARCHAR2(128 BYTE), 
	"TIMESTAMP" DATE, 
	"FLAGS" NUMBER, 
	"HINTCOUNT" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" VARCHAR2(1000 BYTE)
   ) ON COMMIT PRESERVE ROWS ;
/
--------------------------------------------------------
--  DDL for Table OL$HINTS
--------------------------------------------------------

  CREATE GLOBAL TEMPORARY TABLE "OL$HINTS" 
   (	"OL_NAME" VARCHAR2(128 BYTE), 
	"HINT#" NUMBER, 
	"CATEGORY" VARCHAR2(128 BYTE), 
	"HINT_TYPE" NUMBER, 
	"HINT_TEXT" VARCHAR2(512 BYTE), 
	"STAGE#" NUMBER, 
	"NODE#" NUMBER, 
	"TABLE_NAME" VARCHAR2(128 BYTE), 
	"TABLE_TIN" NUMBER, 
	"TABLE_POS" NUMBER, 
	"REF_ID" NUMBER, 
	"USER_TABLE_NAME" VARCHAR2(260 BYTE), 
	"COST" FLOAT(126), 
	"CARDINALITY" FLOAT(126), 
	"BYTES" FLOAT(126), 
	"HINT_TEXTOFF" NUMBER, 
	"HINT_TEXTLEN" NUMBER, 
	"JOIN_PRED" VARCHAR2(2000 BYTE), 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"HINT_STRING" CLOB
   ) ON COMMIT PRESERVE ROWS ;
/
--------------------------------------------------------
--  DDL for Table OL$NODES
--------------------------------------------------------

  CREATE GLOBAL TEMPORARY TABLE "OL$NODES" 
   (	"OL_NAME" VARCHAR2(128 BYTE), 
	"CATEGORY" VARCHAR2(128 BYTE), 
	"NODE_ID" NUMBER, 
	"PARENT_ID" NUMBER, 
	"NODE_TYPE" NUMBER, 
	"NODE_TEXTLEN" NUMBER, 
	"NODE_TEXTOFF" NUMBER, 
	"NODE_NAME" VARCHAR2(64 BYTE)
   ) ON COMMIT PRESERVE ROWS ;
/
--------------------------------------------------------
--  DDL for Table REDO_DB
--------------------------------------------------------

  CREATE TABLE "REDO_DB" 
   (	"DBID" NUMBER, 
	"GLOBAL_DBNAME" VARCHAR2(129 BYTE), 
	"DBUNAME" VARCHAR2(32 BYTE), 
	"VERSION" VARCHAR2(32 BYTE), 
	"THREAD#" NUMBER, 
	"RESETLOGS_SCN_BAS" NUMBER, 
	"RESETLOGS_SCN_WRP" NUMBER, 
	"RESETLOGS_TIME" NUMBER, 
	"PRESETLOGS_SCN_BAS" NUMBER, 
	"PRESETLOGS_SCN_WRP" NUMBER, 
	"PRESETLOGS_TIME" NUMBER, 
	"SEQNO_RCV_CUR" NUMBER, 
	"SEQNO_RCV_LO" NUMBER, 
	"SEQNO_RCV_HI" NUMBER, 
	"SEQNO_DONE_CUR" NUMBER, 
	"SEQNO_DONE_LO" NUMBER, 
	"SEQNO_DONE_HI" NUMBER, 
	"GAP_SEQNO" NUMBER, 
	"GAP_RET" NUMBER, 
	"GAP_DONE" NUMBER, 
	"APPLY_SEQNO" NUMBER, 
	"APPLY_DONE" NUMBER, 
	"PURGE_DONE" NUMBER, 
	"HAS_CHILD" NUMBER, 
	"ERROR1" NUMBER, 
	"STATUS" NUMBER, 
	"CREATE_DATE" DATE, 
	"TS1" NUMBER, 
	"TS2" NUMBER, 
	"GAP_NEXT_SCN" NUMBER, 
	"GAP_NEXT_TIME" NUMBER, 
	"CURSCN_TIME" NUMBER, 
	"RESETLOGS_SCN" NUMBER, 
	"PRESETLOGS_SCN" NUMBER, 
	"GAP_RET2" NUMBER, 
	"CURLOG" NUMBER, 
	"ENDIAN" NUMBER, 
	"ENQIDX" NUMBER, 
	"SPARE4" NUMBER, 
	"SPARE5" DATE, 
	"SPARE6" VARCHAR2(65 BYTE), 
	"SPARE7" VARCHAR2(129 BYTE), 
	"TS3" NUMBER, 
	"CURBLKNO" NUMBER, 
	"SPARE8" NUMBER, 
	"SPARE9" NUMBER, 
	"SPARE10" NUMBER, 
	"SPARE11" NUMBER, 
	"SPARE12" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
/
--------------------------------------------------------
--  DDL for Table REDO_LOG
--------------------------------------------------------

  CREATE TABLE "REDO_LOG" 
   (	"DBID" NUMBER, 
	"GLOBAL_DBNAME" VARCHAR2(129 BYTE), 
	"DBUNAME" VARCHAR2(32 BYTE), 
	"VERSION" VARCHAR2(32 BYTE), 
	"THREAD#" NUMBER, 
	"RESETLOGS_SCN_BAS" NUMBER, 
	"RESETLOGS_SCN_WRP" NUMBER, 
	"RESETLOGS_TIME" NUMBER, 
	"PRESETLOGS_SCN_BAS" NUMBER, 
	"PRESETLOGS_SCN_WRP" NUMBER, 
	"PRESETLOGS_TIME" NUMBER, 
	"SEQUENCE#" NUMBER, 
	"DUPID" NUMBER, 
	"STATUS1" NUMBER, 
	"STATUS2" NUMBER, 
	"CREATE_TIME" VARCHAR2(32 BYTE), 
	"CLOSE_TIME" VARCHAR2(32 BYTE), 
	"DONE_TIME" VARCHAR2(32 BYTE), 
	"FIRST_SCN_BAS" NUMBER, 
	"FIRST_SCN_WRP" NUMBER, 
	"FIRST_TIME" NUMBER, 
	"NEXT_SCN_BAS" NUMBER, 
	"NEXT_SCN_WRP" NUMBER, 
	"NEXT_TIME" NUMBER, 
	"FIRST_SCN" NUMBER, 
	"NEXT_SCN" NUMBER, 
	"RESETLOGS_SCN" NUMBER, 
	"BLOCKS" NUMBER, 
	"BLOCK_SIZE" NUMBER, 
	"OLD_BLOCKS" NUMBER, 
	"CREATE_DATE" DATE, 
	"ERROR1" NUMBER, 
	"ERROR2" NUMBER, 
	"FILENAME" VARCHAR2(513 BYTE), 
	"TS1" NUMBER, 
	"TS2" NUMBER, 
	"ENDIAN" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" NUMBER, 
	"SPARE4" NUMBER, 
	"SPARE5" DATE, 
	"SPARE6" VARCHAR2(65 BYTE), 
	"SPARE7" VARCHAR2(129 BYTE), 
	"TS3" NUMBER, 
	"PRESETLOGS_SCN" NUMBER, 
	"SPARE8" NUMBER, 
	"SPARE9" NUMBER, 
	"SPARE10" NUMBER, 
	"OLD_STATUS1" NUMBER, 
	"OLD_STATUS2" NUMBER, 
	"OLD_FILENAME" VARCHAR2(513 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
/
--------------------------------------------------------
--  DDL for Table REDO_RTA
--------------------------------------------------------

  CREATE TABLE "REDO_RTA" 
   (	"DBID" NUMBER, 
	"DBUNAME" VARCHAR2(32 BYTE), 
	"THREAD" NUMBER, 
	"RLS" NUMBER, 
	"SPARE9" NUMBER, 
	"RLC" NUMBER, 
	"SEQNO" NUMBER, 
	"BLKNO" NUMBER, 
	"PSCN" NUMBER, 
	"SPARE10" NUMBER, 
	"PTIME" NUMBER, 
	"PSEQ" NUMBER, 
	"RSCN" NUMBER, 
	"SPARE11" NUMBER, 
	"RTIME" NUMBER, 
	"RCVNAB" NUMBER, 
	"RCVSEQ" NUMBER, 
	"CTIME" NUMBER, 
	"FLAG" NUMBER, 
	"TIMEDIF" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" NUMBER, 
	"SPARE4" NUMBER, 
	"SPARE5" DATE, 
	"SPARE6" VARCHAR2(32 BYTE), 
	"SPARE7" NUMBER, 
	"SPARE8" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
/
--------------------------------------------------------
--  DDL for Table REPCAT$_AUDIT_ATTRIBUTE
--------------------------------------------------------

  CREATE TABLE "REPCAT$_AUDIT_ATTRIBUTE" 
   (	"ATTRIBUTE" VARCHAR2(128 BYTE), 
	"DATA_TYPE_ID" NUMBER(*,0), 
	"DATA_LENGTH" NUMBER(*,0), 
	"SOURCE" VARCHAR2(386 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "REPCAT$_AUDIT_ATTRIBUTE"."ATTRIBUTE" IS 'Description of the attribute';
   COMMENT ON COLUMN "REPCAT$_AUDIT_ATTRIBUTE"."DATA_TYPE_ID" IS 'Datatype of the attribute value';
   COMMENT ON COLUMN "REPCAT$_AUDIT_ATTRIBUTE"."DATA_LENGTH" IS 'Length of the attribute value in byte';
   COMMENT ON COLUMN "REPCAT$_AUDIT_ATTRIBUTE"."SOURCE" IS 'Name of the function which returns the attribute value';
   COMMENT ON TABLE "REPCAT$_AUDIT_ATTRIBUTE"  IS 'Information about attributes automatically maintained for replication';
/
--------------------------------------------------------
--  DDL for Table REPCAT$_AUDIT_COLUMN
--------------------------------------------------------

  CREATE TABLE "REPCAT$_AUDIT_COLUMN" 
   (	"SNAME" VARCHAR2(128 BYTE), 
	"ONAME" VARCHAR2(128 BYTE), 
	"COLUMN_NAME" VARCHAR2(128 BYTE), 
	"BASE_SNAME" VARCHAR2(128 BYTE), 
	"BASE_ONAME" VARCHAR2(128 BYTE), 
	"BASE_CONFLICT_TYPE_ID" NUMBER(*,0), 
	"BASE_REFERENCE_NAME" VARCHAR2(128 BYTE), 
	"ATTRIBUTE" VARCHAR2(128 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "REPCAT$_AUDIT_COLUMN"."SNAME" IS 'Owner of the shadow table';
   COMMENT ON COLUMN "REPCAT$_AUDIT_COLUMN"."ONAME" IS 'Name of the shadow table';
   COMMENT ON COLUMN "REPCAT$_AUDIT_COLUMN"."COLUMN_NAME" IS 'Name of the column in the shadow table';
   COMMENT ON COLUMN "REPCAT$_AUDIT_COLUMN"."BASE_SNAME" IS 'Owner of replicated table';
   COMMENT ON COLUMN "REPCAT$_AUDIT_COLUMN"."BASE_ONAME" IS 'Name of the replicated table';
   COMMENT ON COLUMN "REPCAT$_AUDIT_COLUMN"."BASE_CONFLICT_TYPE_ID" IS 'Type of conflict';
   COMMENT ON COLUMN "REPCAT$_AUDIT_COLUMN"."BASE_REFERENCE_NAME" IS 'Table name, unique constraint name, or column group name';
   COMMENT ON COLUMN "REPCAT$_AUDIT_COLUMN"."ATTRIBUTE" IS 'Description of the attribute';
   COMMENT ON TABLE "REPCAT$_AUDIT_COLUMN"  IS 'Information about columns in all shadow tables for all replicated tables in the database';
/
--------------------------------------------------------
--  DDL for Table REPCAT$_COLUMN_GROUP
--------------------------------------------------------

  CREATE TABLE "REPCAT$_COLUMN_GROUP" 
   (	"SNAME" VARCHAR2(128 BYTE), 
	"ONAME" VARCHAR2(128 BYTE), 
	"GROUP_NAME" VARCHAR2(30 BYTE), 
	"GROUP_COMMENT" VARCHAR2(80 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "REPCAT$_COLUMN_GROUP"."SNAME" IS 'Owner of replicated object';
   COMMENT ON COLUMN "REPCAT$_COLUMN_GROUP"."ONAME" IS 'Name of the replicated object';
   COMMENT ON COLUMN "REPCAT$_COLUMN_GROUP"."GROUP_NAME" IS 'Name of the column group';
   COMMENT ON COLUMN "REPCAT$_COLUMN_GROUP"."GROUP_COMMENT" IS 'Description of the column group';
   COMMENT ON TABLE "REPCAT$_COLUMN_GROUP"  IS 'All column groups of replicated tables in the database';
/
--------------------------------------------------------
--  DDL for Table REPCAT$_CONFLICT
--------------------------------------------------------

  CREATE TABLE "REPCAT$_CONFLICT" 
   (	"SNAME" VARCHAR2(128 BYTE), 
	"ONAME" VARCHAR2(128 BYTE), 
	"CONFLICT_TYPE_ID" NUMBER(*,0), 
	"REFERENCE_NAME" VARCHAR2(128 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "REPCAT$_CONFLICT"."SNAME" IS 'Owner of replicated object';
   COMMENT ON COLUMN "REPCAT$_CONFLICT"."ONAME" IS 'Name of the replicated object';
   COMMENT ON COLUMN "REPCAT$_CONFLICT"."CONFLICT_TYPE_ID" IS 'Type of conflict';
   COMMENT ON COLUMN "REPCAT$_CONFLICT"."REFERENCE_NAME" IS 'Table name, unique constraint name, or column group name';
   COMMENT ON TABLE "REPCAT$_CONFLICT"  IS 'All conflicts for which users have specified resolutions in the database';
/
--------------------------------------------------------
--  DDL for Table REPCAT$_DDL
--------------------------------------------------------

  CREATE TABLE "REPCAT$_DDL" 
   (	"LOG_ID" NUMBER, 
	"SOURCE" VARCHAR2(128 BYTE), 
	"ROLE" VARCHAR2(1 BYTE), 
	"MASTER" VARCHAR2(128 BYTE), 
	"LINE" NUMBER(*,0), 
	"TEXT" VARCHAR2(2000 BYTE), 
	"DDL_NUM" NUMBER(*,0) DEFAULT 1       -- order of ddls to execute

   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "REPCAT$_DDL"."LOG_ID" IS 'Identifying number of the repcat log record';
   COMMENT ON COLUMN "REPCAT$_DDL"."SOURCE" IS 'Name of the database at which the request originated';
   COMMENT ON COLUMN "REPCAT$_DDL"."ROLE" IS 'Is this database the masterdef for the request';
   COMMENT ON COLUMN "REPCAT$_DDL"."MASTER" IS 'Name of the database that processes this request';
   COMMENT ON COLUMN "REPCAT$_DDL"."LINE" IS 'Ordering of records within a single request';
   COMMENT ON COLUMN "REPCAT$_DDL"."TEXT" IS 'Portion of an argument';
   COMMENT ON COLUMN "REPCAT$_DDL"."DDL_NUM" IS 'Ordering of DDLs to execute';
   COMMENT ON TABLE "REPCAT$_DDL"  IS 'Arguments that do not fit in a single repcat log record';
/
--------------------------------------------------------
--  DDL for Table REPCAT$_EXCEPTIONS
--------------------------------------------------------

  CREATE TABLE "REPCAT$_EXCEPTIONS" 
   (	"EXCEPTION_ID" NUMBER, 
	"USER_NAME" VARCHAR2(128 BYTE), 
	"REQUEST" CLOB, 
	"JOB" NUMBER, 
	"ERROR_DATE" DATE, 
	"ERROR_NUMBER" NUMBER, 
	"ERROR_MESSAGE" VARCHAR2(4000 BYTE), 
	"LINE_NUMBER" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" 
 LOB ("REQUEST") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;

   COMMENT ON COLUMN "REPCAT$_EXCEPTIONS"."EXCEPTION_ID" IS 'Internal primary key of the exceptions table.';
   COMMENT ON COLUMN "REPCAT$_EXCEPTIONS"."USER_NAME" IS 'User name of user submitting the exception.';
   COMMENT ON COLUMN "REPCAT$_EXCEPTIONS"."REQUEST" IS 'Originating request containing the exception.';
   COMMENT ON COLUMN "REPCAT$_EXCEPTIONS"."JOB" IS 'Originating job containing the exception.';
   COMMENT ON COLUMN "REPCAT$_EXCEPTIONS"."ERROR_DATE" IS 'Date of occurance for the exception.';
   COMMENT ON COLUMN "REPCAT$_EXCEPTIONS"."ERROR_NUMBER" IS 'Error number generating the exception.';
   COMMENT ON COLUMN "REPCAT$_EXCEPTIONS"."ERROR_MESSAGE" IS 'Error message associated with the error generating the exception.';
   COMMENT ON COLUMN "REPCAT$_EXCEPTIONS"."LINE_NUMBER" IS 'Line number of the exception.';
   COMMENT ON TABLE "REPCAT$_EXCEPTIONS"  IS 'Repcat processing exceptions table.';
/
--------------------------------------------------------
--  DDL for Table REPCAT$_EXTENSION
--------------------------------------------------------

  CREATE TABLE "REPCAT$_EXTENSION" 
   (	"EXTENSION_ID" RAW(16), 
	"EXTENSION_CODE" NUMBER, 
	"MASTERDEF" VARCHAR2(128 BYTE), 
	"EXPORT_REQUIRED" VARCHAR2(1 BYTE), 
	"REPCATLOG_ID" NUMBER, 
	"EXTENSION_STATUS" NUMBER, 
	"FLASHBACK_SCN" NUMBER, 
	"PUSH_TO_MDEF" VARCHAR2(1 BYTE), 
	"PUSH_TO_NEW" VARCHAR2(1 BYTE), 
	"PERCENTAGE_FOR_CATCHUP_MDEF" NUMBER, 
	"CYCLE_SECONDS_MDEF" NUMBER, 
	"PERCENTAGE_FOR_CATCHUP_NEW" NUMBER, 
	"CYCLE_SECONDS_NEW" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "REPCAT$_EXTENSION"."EXTENSION_ID" IS 'Globally unique identifier for replication extension';
   COMMENT ON COLUMN "REPCAT$_EXTENSION"."EXTENSION_CODE" IS 'Kind of replication extension';
   COMMENT ON COLUMN "REPCAT$_EXTENSION"."MASTERDEF" IS 'Master definition site for replication extension';
   COMMENT ON COLUMN "REPCAT$_EXTENSION"."EXPORT_REQUIRED" IS 'YES if this extension requires an export, and NO if no export is required';
   COMMENT ON COLUMN "REPCAT$_EXTENSION"."REPCATLOG_ID" IS 'Identifier of repcatlog records related to replication extension';
   COMMENT ON COLUMN "REPCAT$_EXTENSION"."EXTENSION_STATUS" IS 'Status of replication extension';
   COMMENT ON COLUMN "REPCAT$_EXTENSION"."FLASHBACK_SCN" IS 'Flashback_scn for export or change-based recovery for replication extension';
   COMMENT ON COLUMN "REPCAT$_EXTENSION"."PUSH_TO_MDEF" IS 'YES if existing masters partially push to masterdef, NO if no pushing';
   COMMENT ON COLUMN "REPCAT$_EXTENSION"."PUSH_TO_NEW" IS 'YES if existing masters partially push to new masters, NO if no pushing';
   COMMENT ON COLUMN "REPCAT$_EXTENSION"."PERCENTAGE_FOR_CATCHUP_MDEF" IS 'Fraction of push to masterdef cycle devoted to catching up';
   COMMENT ON COLUMN "REPCAT$_EXTENSION"."CYCLE_SECONDS_MDEF" IS 'Length of push to masterdef cycle when catching up';
   COMMENT ON COLUMN "REPCAT$_EXTENSION"."PERCENTAGE_FOR_CATCHUP_NEW" IS 'Fraction of push to new masters cycle devoted to catching up';
   COMMENT ON COLUMN "REPCAT$_EXTENSION"."CYCLE_SECONDS_NEW" IS 'Length of push to new masters cycle when catching up';
   COMMENT ON TABLE "REPCAT$_EXTENSION"  IS 'Information about replication extension requests';
/
--------------------------------------------------------
--  DDL for Table REPCAT$_FLAVORS
--------------------------------------------------------

  CREATE TABLE "REPCAT$_FLAVORS" 
   (	"FLAVOR_ID" NUMBER, 
	"GOWNER" VARCHAR2(128 BYTE) DEFAULT 'PUBLIC', 
	"GNAME" VARCHAR2(30 BYTE), 
	"FNAME" VARCHAR2(30 BYTE), 
	"CREATION_DATE" DATE DEFAULT SYSDATE, 
	"CREATED_BY" NUMBER DEFAULT UID, 
	"PUBLISHED" VARCHAR2(1 BYTE) DEFAULT 'N'
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "REPCAT$_FLAVORS"."FLAVOR_ID" IS 'Flavor identifier, unique within object group';
   COMMENT ON COLUMN "REPCAT$_FLAVORS"."GOWNER" IS 'Owner of the object group';
   COMMENT ON COLUMN "REPCAT$_FLAVORS"."GNAME" IS 'Name of the object group';
   COMMENT ON COLUMN "REPCAT$_FLAVORS"."FNAME" IS 'Name of the flavor';
   COMMENT ON COLUMN "REPCAT$_FLAVORS"."CREATION_DATE" IS 'Date on which the flavor was created';
   COMMENT ON COLUMN "REPCAT$_FLAVORS"."CREATED_BY" IS 'Identifier of user that created the flavor';
   COMMENT ON COLUMN "REPCAT$_FLAVORS"."PUBLISHED" IS 'Indicates whether flavor is published (Y/N) or obsolete (O)';
   COMMENT ON TABLE "REPCAT$_FLAVORS"  IS 'Flavors defined for replicated object groups';
/
--------------------------------------------------------
--  DDL for Table REPCAT$_FLAVOR_OBJECTS
--------------------------------------------------------

  CREATE TABLE "REPCAT$_FLAVOR_OBJECTS" 
   (	"FLAVOR_ID" NUMBER, 
	"GOWNER" VARCHAR2(128 BYTE) DEFAULT 'PUBLIC', 
	"GNAME" VARCHAR2(30 BYTE), 
	"SNAME" VARCHAR2(128 BYTE), 
	"ONAME" VARCHAR2(128 BYTE), 
	"TYPE" NUMBER, 
	"VERSION#" NUMBER, 
	"HASHCODE" RAW(17), 
	"COLUMNS_PRESENT" RAW(125)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "REPCAT$_FLAVOR_OBJECTS"."FLAVOR_ID" IS 'Flavor identifier';
   COMMENT ON COLUMN "REPCAT$_FLAVOR_OBJECTS"."GOWNER" IS 'Owner of the object group containing object';
   COMMENT ON COLUMN "REPCAT$_FLAVOR_OBJECTS"."GNAME" IS 'Object group containing object';
   COMMENT ON COLUMN "REPCAT$_FLAVOR_OBJECTS"."SNAME" IS 'Schema containing object';
   COMMENT ON COLUMN "REPCAT$_FLAVOR_OBJECTS"."ONAME" IS 'Name of object';
   COMMENT ON COLUMN "REPCAT$_FLAVOR_OBJECTS"."TYPE" IS 'Object type';
   COMMENT ON COLUMN "REPCAT$_FLAVOR_OBJECTS"."VERSION#" IS 'Version# of a user-defined type';
   COMMENT ON COLUMN "REPCAT$_FLAVOR_OBJECTS"."HASHCODE" IS 'Hashcode of a user-defined type';
   COMMENT ON COLUMN "REPCAT$_FLAVOR_OBJECTS"."COLUMNS_PRESENT" IS 'For tables, encoded mapping of columns present';
   COMMENT ON TABLE "REPCAT$_FLAVOR_OBJECTS"  IS 'Replicated objects in flavors';
/
--------------------------------------------------------
--  DDL for Table REPCAT$_GENERATED
--------------------------------------------------------

  CREATE TABLE "REPCAT$_GENERATED" 
   (	"SNAME" VARCHAR2(128 BYTE), 
	"ONAME" VARCHAR2(128 BYTE), 
	"TYPE" NUMBER(*,0), 
	"REASON" NUMBER, 
	"BASE_SNAME" VARCHAR2(128 BYTE), 
	"BASE_ONAME" VARCHAR2(128 BYTE), 
	"BASE_TYPE" NUMBER(*,0), 
	"PACKAGE_PREFIX" VARCHAR2(128 BYTE), 
	"PROCEDURE_PREFIX" VARCHAR2(128 BYTE), 
	"DISTRIBUTED" VARCHAR2(1 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "REPCAT$_GENERATED"."SNAME" IS 'Schema containing the generated object';
   COMMENT ON COLUMN "REPCAT$_GENERATED"."ONAME" IS 'Name of the generated object';
   COMMENT ON COLUMN "REPCAT$_GENERATED"."TYPE" IS 'Type of the generated object';
   COMMENT ON COLUMN "REPCAT$_GENERATED"."REASON" IS 'Reason the object was generated';
   COMMENT ON COLUMN "REPCAT$_GENERATED"."BASE_SNAME" IS 'Name of the object''s owner';
   COMMENT ON COLUMN "REPCAT$_GENERATED"."BASE_ONAME" IS 'Name of the object';
   COMMENT ON COLUMN "REPCAT$_GENERATED"."BASE_TYPE" IS 'Type of the object';
   COMMENT ON COLUMN "REPCAT$_GENERATED"."PACKAGE_PREFIX" IS 'Prefix for package wrapper';
   COMMENT ON COLUMN "REPCAT$_GENERATED"."PROCEDURE_PREFIX" IS 'Procedure prefix for package wrapper or procedure wrapper';
   COMMENT ON COLUMN "REPCAT$_GENERATED"."DISTRIBUTED" IS 'Is the generated object separately generated at each master';
   COMMENT ON TABLE "REPCAT$_GENERATED"  IS 'Objects generated to support replication';
/
--------------------------------------------------------
--  DDL for Table REPCAT$_GROUPED_COLUMN
--------------------------------------------------------

  CREATE TABLE "REPCAT$_GROUPED_COLUMN" 
   (	"SNAME" VARCHAR2(128 BYTE), 
	"ONAME" VARCHAR2(128 BYTE), 
	"GROUP_NAME" VARCHAR2(30 BYTE), 
	"COLUMN_NAME" VARCHAR2(128 BYTE), 
	"POS" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "REPCAT$_GROUPED_COLUMN"."SNAME" IS 'Owner of replicated object';
   COMMENT ON COLUMN "REPCAT$_GROUPED_COLUMN"."ONAME" IS 'Name of the replicated object';
   COMMENT ON COLUMN "REPCAT$_GROUPED_COLUMN"."GROUP_NAME" IS 'Name of the column group';
   COMMENT ON COLUMN "REPCAT$_GROUPED_COLUMN"."COLUMN_NAME" IS 'Name of the column in the column group';
   COMMENT ON COLUMN "REPCAT$_GROUPED_COLUMN"."POS" IS 'Position of a column or an attribute in the table';
   COMMENT ON TABLE "REPCAT$_GROUPED_COLUMN"  IS 'Columns in all column groups of replicated tables in the database';
/
--------------------------------------------------------
--  DDL for Table REPCAT$_INSTANTIATION_DDL
--------------------------------------------------------

  CREATE TABLE "REPCAT$_INSTANTIATION_DDL" 
   (	"REFRESH_TEMPLATE_ID" NUMBER, 
	"DDL_TEXT" CLOB, 
	"DDL_NUM" NUMBER, 
	"PHASE" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" 
 LOB ("DDL_TEXT") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;

   COMMENT ON COLUMN "REPCAT$_INSTANTIATION_DDL"."REFRESH_TEMPLATE_ID" IS 'Primary key of template containing supplementary DDL.';
   COMMENT ON COLUMN "REPCAT$_INSTANTIATION_DDL"."DDL_TEXT" IS 'Supplementary DDL string.';
   COMMENT ON COLUMN "REPCAT$_INSTANTIATION_DDL"."DDL_NUM" IS 'Column for ordering of supplementary DDL.';
   COMMENT ON COLUMN "REPCAT$_INSTANTIATION_DDL"."PHASE" IS 'Phase to execute the DDL string.';
   COMMENT ON TABLE "REPCAT$_INSTANTIATION_DDL"  IS 'Table containing supplementary DDL to be executed during instantiation.';
/
--------------------------------------------------------
--  DDL for Table REPCAT$_KEY_COLUMNS
--------------------------------------------------------

  CREATE TABLE "REPCAT$_KEY_COLUMNS" 
   (	"SNAME" VARCHAR2(128 BYTE), 
	"ONAME" VARCHAR2(128 BYTE), 
	"TYPE" NUMBER(*,0), 
	"COL" VARCHAR2(128 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "REPCAT$_KEY_COLUMNS"."SNAME" IS 'Schema containing table';
   COMMENT ON COLUMN "REPCAT$_KEY_COLUMNS"."ONAME" IS 'Name of the table';
   COMMENT ON COLUMN "REPCAT$_KEY_COLUMNS"."TYPE" IS 'Type identifier';
   COMMENT ON COLUMN "REPCAT$_KEY_COLUMNS"."COL" IS 'Column in the table';
   COMMENT ON TABLE "REPCAT$_KEY_COLUMNS"  IS 'Primary columns for a table using column-level replication';
/
--------------------------------------------------------
--  DDL for Table REPCAT$_OBJECT_PARMS
--------------------------------------------------------

  CREATE TABLE "REPCAT$_OBJECT_PARMS" 
   (	"TEMPLATE_PARAMETER_ID" NUMBER, 
	"TEMPLATE_OBJECT_ID" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "REPCAT$_OBJECT_PARMS"."TEMPLATE_PARAMETER_ID" IS 'Primary key of template parameter.';
   COMMENT ON COLUMN "REPCAT$_OBJECT_PARMS"."TEMPLATE_OBJECT_ID" IS 'Primary key of object using the paramter.';
/
--------------------------------------------------------
--  DDL for Table REPCAT$_OBJECT_TYPES
--------------------------------------------------------

  CREATE TABLE "REPCAT$_OBJECT_TYPES" 
   (	"OBJECT_TYPE_ID" NUMBER, 
	"OBJECT_TYPE_NAME" VARCHAR2(200 BYTE), 
	"FLAGS" RAW(255), 
	"SPARE1" VARCHAR2(4000 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "REPCAT$_OBJECT_TYPES"."OBJECT_TYPE_ID" IS 'Internal primary key of the template object types table.';
   COMMENT ON COLUMN "REPCAT$_OBJECT_TYPES"."OBJECT_TYPE_NAME" IS 'Descriptive name for the object type.';
   COMMENT ON COLUMN "REPCAT$_OBJECT_TYPES"."FLAGS" IS 'Internal flags for object type processing.';
   COMMENT ON COLUMN "REPCAT$_OBJECT_TYPES"."SPARE1" IS 'Reserved for future use.';
   COMMENT ON TABLE "REPCAT$_OBJECT_TYPES"  IS 'Internal table for template object types.';
/
--------------------------------------------------------
--  DDL for Table REPCAT$_PARAMETER_COLUMN
--------------------------------------------------------

  CREATE TABLE "REPCAT$_PARAMETER_COLUMN" 
   (	"SNAME" VARCHAR2(128 BYTE), 
	"ONAME" VARCHAR2(128 BYTE), 
	"CONFLICT_TYPE_ID" NUMBER(*,0), 
	"REFERENCE_NAME" VARCHAR2(128 BYTE), 
	"SEQUENCE_NO" NUMBER, 
	"PARAMETER_TABLE_NAME" VARCHAR2(128 BYTE), 
	"PARAMETER_COLUMN_NAME" VARCHAR2(4000 BYTE), 
	"PARAMETER_SEQUENCE_NO" NUMBER, 
	"COLUMN_POS" NUMBER, 
	"ATTRIBUTE_SEQUENCE_NO" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "REPCAT$_PARAMETER_COLUMN"."SNAME" IS 'Owner of replicated object';
   COMMENT ON COLUMN "REPCAT$_PARAMETER_COLUMN"."ONAME" IS 'Name of the replicated object';
   COMMENT ON COLUMN "REPCAT$_PARAMETER_COLUMN"."CONFLICT_TYPE_ID" IS 'Type of conflict';
   COMMENT ON COLUMN "REPCAT$_PARAMETER_COLUMN"."REFERENCE_NAME" IS 'Table name, unique constraint name, or column group name';
   COMMENT ON COLUMN "REPCAT$_PARAMETER_COLUMN"."SEQUENCE_NO" IS 'Ordering on resolution';
   COMMENT ON COLUMN "REPCAT$_PARAMETER_COLUMN"."PARAMETER_TABLE_NAME" IS 'Name of the table to which the parameter column belongs';
   COMMENT ON COLUMN "REPCAT$_PARAMETER_COLUMN"."PARAMETER_COLUMN_NAME" IS 'Name of the parameter column used for resolving the conflict';
   COMMENT ON COLUMN "REPCAT$_PARAMETER_COLUMN"."PARAMETER_SEQUENCE_NO" IS 'Ordering on parameter column';
   COMMENT ON COLUMN "REPCAT$_PARAMETER_COLUMN"."COLUMN_POS" IS 'Column position of an attribute or a column';
   COMMENT ON COLUMN "REPCAT$_PARAMETER_COLUMN"."ATTRIBUTE_SEQUENCE_NO" IS 'Sequence number for an attribute of an ADT/pkREF column or a scalar column';
   COMMENT ON TABLE "REPCAT$_PARAMETER_COLUMN"  IS 'All columns used for resolving conflicts in the database';
/
--------------------------------------------------------
--  DDL for Table REPCAT$_PRIORITY
--------------------------------------------------------

  CREATE TABLE "REPCAT$_PRIORITY" 
   (	"SNAME" VARCHAR2(30 BYTE), 
	"PRIORITY_GROUP" VARCHAR2(30 BYTE), 
	"PRIORITY" NUMBER, 
	"RAW_VALUE" RAW(2000), 
	"CHAR_VALUE" CHAR(255 BYTE), 
	"NUMBER_VALUE" NUMBER, 
	"DATE_VALUE" DATE, 
	"VARCHAR2_VALUE" VARCHAR2(4000 BYTE), 
	"NCHAR_VALUE" NCHAR(500), 
	"NVARCHAR2_VALUE" NVARCHAR2(1000), 
	"LARGE_CHAR_VALUE" CHAR(2000 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "REPCAT$_PRIORITY"."SNAME" IS 'Name of the replicated object group';
   COMMENT ON COLUMN "REPCAT$_PRIORITY"."PRIORITY_GROUP" IS 'Name of the priority group';
   COMMENT ON COLUMN "REPCAT$_PRIORITY"."PRIORITY" IS 'Priority of the value';
   COMMENT ON COLUMN "REPCAT$_PRIORITY"."RAW_VALUE" IS 'Raw value';
   COMMENT ON COLUMN "REPCAT$_PRIORITY"."CHAR_VALUE" IS 'Blank-padded character string';
   COMMENT ON COLUMN "REPCAT$_PRIORITY"."NUMBER_VALUE" IS 'Numeric value';
   COMMENT ON COLUMN "REPCAT$_PRIORITY"."DATE_VALUE" IS 'Date value';
   COMMENT ON COLUMN "REPCAT$_PRIORITY"."VARCHAR2_VALUE" IS 'Character string';
   COMMENT ON COLUMN "REPCAT$_PRIORITY"."NCHAR_VALUE" IS 'NCHAR string';
   COMMENT ON COLUMN "REPCAT$_PRIORITY"."NVARCHAR2_VALUE" IS 'NVARCHAR2 string';
   COMMENT ON COLUMN "REPCAT$_PRIORITY"."LARGE_CHAR_VALUE" IS 'Blank-padded character string over 255 characters';
   COMMENT ON TABLE "REPCAT$_PRIORITY"  IS 'Values and their corresponding priorities in all priority groups in the database';
/
--------------------------------------------------------
--  DDL for Table REPCAT$_PRIORITY_GROUP
--------------------------------------------------------

  CREATE TABLE "REPCAT$_PRIORITY_GROUP" 
   (	"SNAME" VARCHAR2(30 BYTE), 
	"PRIORITY_GROUP" VARCHAR2(30 BYTE), 
	"DATA_TYPE_ID" NUMBER(*,0), 
	"FIXED_DATA_LENGTH" NUMBER(*,0), 
	"PRIORITY_COMMENT" VARCHAR2(80 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "REPCAT$_PRIORITY_GROUP"."SNAME" IS 'Name of the replicated object group';
   COMMENT ON COLUMN "REPCAT$_PRIORITY_GROUP"."PRIORITY_GROUP" IS 'Name of the priority group';
   COMMENT ON COLUMN "REPCAT$_PRIORITY_GROUP"."DATA_TYPE_ID" IS 'Datatype of the value in the priority group';
   COMMENT ON COLUMN "REPCAT$_PRIORITY_GROUP"."FIXED_DATA_LENGTH" IS 'Length of the value in bytes if the datatype is CHAR';
   COMMENT ON COLUMN "REPCAT$_PRIORITY_GROUP"."PRIORITY_COMMENT" IS 'Description of the priority group';
   COMMENT ON TABLE "REPCAT$_PRIORITY_GROUP"  IS 'Information about all priority groups in the database';
/
--------------------------------------------------------
--  DDL for Table REPCAT$_REFRESH_TEMPLATES
--------------------------------------------------------

  CREATE TABLE "REPCAT$_REFRESH_TEMPLATES" 
   (	"REFRESH_TEMPLATE_ID" NUMBER, 
	"OWNER" VARCHAR2(128 BYTE), 
	"REFRESH_GROUP_NAME" VARCHAR2(30 BYTE), 
	"REFRESH_TEMPLATE_NAME" VARCHAR2(30 BYTE), 
	"TEMPLATE_COMMENT" VARCHAR2(2000 BYTE), 
	"PUBLIC_TEMPLATE" VARCHAR2(1 BYTE), 
	"LAST_MODIFIED" DATE, 
	"MODIFIED_BY" NUMBER, 
	"CREATION_DATE" DATE, 
	"CREATED_BY" NUMBER, 
	"REFRESH_GROUP_ID" NUMBER DEFAULT 0, 
	"TEMPLATE_TYPE_ID" NUMBER DEFAULT 1, 
	"TEMPLATE_STATUS_ID" NUMBER DEFAULT 0, 
	"FLAGS" RAW(255), 
	"SPARE1" VARCHAR2(4000 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "REPCAT$_REFRESH_TEMPLATES"."REFRESH_TEMPLATE_ID" IS 'Internal primary key of the REPCAT$_REFRESH_TEMPLATES table.';
   COMMENT ON COLUMN "REPCAT$_REFRESH_TEMPLATES"."OWNER" IS 'Owner of the refresh group template.';
   COMMENT ON COLUMN "REPCAT$_REFRESH_TEMPLATES"."REFRESH_GROUP_NAME" IS 'Name of the refresh group to create during instantiation.';
   COMMENT ON COLUMN "REPCAT$_REFRESH_TEMPLATES"."REFRESH_TEMPLATE_NAME" IS 'Name of the refresh group template.';
   COMMENT ON COLUMN "REPCAT$_REFRESH_TEMPLATES"."TEMPLATE_COMMENT" IS 'Optional comment field for the refresh group template.';
   COMMENT ON COLUMN "REPCAT$_REFRESH_TEMPLATES"."PUBLIC_TEMPLATE" IS 'Flag specifying public template or private template.';
   COMMENT ON COLUMN "REPCAT$_REFRESH_TEMPLATES"."LAST_MODIFIED" IS 'Date the row was last modified.';
   COMMENT ON COLUMN "REPCAT$_REFRESH_TEMPLATES"."MODIFIED_BY" IS 'User id of the user that modified the row.';
   COMMENT ON COLUMN "REPCAT$_REFRESH_TEMPLATES"."CREATION_DATE" IS 'Date the row was created.';
   COMMENT ON COLUMN "REPCAT$_REFRESH_TEMPLATES"."CREATED_BY" IS 'User id of the user that created the row.';
   COMMENT ON COLUMN "REPCAT$_REFRESH_TEMPLATES"."REFRESH_GROUP_ID" IS 'Internal primary key to default refresh group for the template.';
   COMMENT ON COLUMN "REPCAT$_REFRESH_TEMPLATES"."TEMPLATE_TYPE_ID" IS 'Internal primary key to the template types.';
   COMMENT ON COLUMN "REPCAT$_REFRESH_TEMPLATES"."TEMPLATE_STATUS_ID" IS 'Internal primary key to the template status table.';
   COMMENT ON COLUMN "REPCAT$_REFRESH_TEMPLATES"."FLAGS" IS 'Internal flags for the template.';
   COMMENT ON COLUMN "REPCAT$_REFRESH_TEMPLATES"."SPARE1" IS 'Reserved for future use.';
   COMMENT ON TABLE "REPCAT$_REFRESH_TEMPLATES"  IS 'Primary table containing deployment template information.';
/
--------------------------------------------------------
--  DDL for Table REPCAT$_REPCAT
--------------------------------------------------------

  CREATE TABLE "REPCAT$_REPCAT" 
   (	"GOWNER" VARCHAR2(128 BYTE) DEFAULT 'PUBLIC', 
	"SNAME" VARCHAR2(30 BYTE), 
	"MASTER" VARCHAR2(1 BYTE), 
	"STATUS" NUMBER(*,0), 
	"SCHEMA_COMMENT" VARCHAR2(80 BYTE), 
	"FLAVOR_ID" NUMBER, 
	"FLAG" RAW(4) DEFAULT '00000000'
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "REPCAT$_REPCAT"."GOWNER" IS 'Owner of the object group';
   COMMENT ON COLUMN "REPCAT$_REPCAT"."SNAME" IS 'Name of the replicated object group';
   COMMENT ON COLUMN "REPCAT$_REPCAT"."MASTER" IS 'Is the site a master site for the replicated object group';
   COMMENT ON COLUMN "REPCAT$_REPCAT"."STATUS" IS 'If the site is a master, the master''s status';
   COMMENT ON COLUMN "REPCAT$_REPCAT"."SCHEMA_COMMENT" IS 'Description of the replicated object group';
   COMMENT ON COLUMN "REPCAT$_REPCAT"."FLAVOR_ID" IS 'Flavor identifier';
   COMMENT ON COLUMN "REPCAT$_REPCAT"."FLAG" IS 'Miscellaneous repgroup info';
   COMMENT ON TABLE "REPCAT$_REPCAT"  IS 'Information about all replicated object groups';
/
--------------------------------------------------------
--  DDL for Table REPCAT$_REPCATLOG
--------------------------------------------------------

  CREATE TABLE "REPCAT$_REPCATLOG" 
   (	"VERSION" NUMBER, 
	"ID" NUMBER, 
	"SOURCE" VARCHAR2(128 BYTE), 
	"USERID" VARCHAR2(128 BYTE), 
	"TIMESTAMP" DATE, 
	"ROLE" VARCHAR2(1 BYTE), 
	"MASTER" VARCHAR2(128 BYTE), 
	"SNAME" VARCHAR2(128 BYTE), 
	"REQUEST" NUMBER(*,0), 
	"ONAME" VARCHAR2(128 BYTE), 
	"TYPE" NUMBER(*,0), 
	"A_COMMENT" VARCHAR2(2000 BYTE), 
	"BOOL_ARG" VARCHAR2(1 BYTE), 
	"ANO_BOOL_ARG" VARCHAR2(1 BYTE), 
	"INT_ARG" NUMBER(*,0), 
	"ANO_INT_ARG" NUMBER(*,0), 
	"LINES" NUMBER(*,0), 
	"STATUS" NUMBER(*,0), 
	"MESSAGE" VARCHAR2(200 BYTE), 
	"ERRNUM" NUMBER, 
	"GNAME" VARCHAR2(30 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "REPCAT$_REPCATLOG"."VERSION" IS 'Version of the repcat log record';
   COMMENT ON COLUMN "REPCAT$_REPCATLOG"."ID" IS 'Identifying number of repcat log record';
   COMMENT ON COLUMN "REPCAT$_REPCATLOG"."SOURCE" IS 'Name of the database at which the request originated';
   COMMENT ON COLUMN "REPCAT$_REPCATLOG"."USERID" IS 'Name of the user who submitted the request';
   COMMENT ON COLUMN "REPCAT$_REPCATLOG"."TIMESTAMP" IS 'When the request was submitted';
   COMMENT ON COLUMN "REPCAT$_REPCATLOG"."ROLE" IS 'Is this database the masterdef for the request';
   COMMENT ON COLUMN "REPCAT$_REPCATLOG"."MASTER" IS 'Name of the database that processes this request$_ddl';
   COMMENT ON COLUMN "REPCAT$_REPCATLOG"."SNAME" IS 'Schema of replicated object';
   COMMENT ON COLUMN "REPCAT$_REPCATLOG"."REQUEST" IS 'Name of the requested operation';
   COMMENT ON COLUMN "REPCAT$_REPCATLOG"."ONAME" IS 'Replicated object name, if applicable';
   COMMENT ON COLUMN "REPCAT$_REPCATLOG"."TYPE" IS 'Type of replicated object, if applicable';
   COMMENT ON COLUMN "REPCAT$_REPCATLOG"."A_COMMENT" IS 'Textual argument used for comments';
   COMMENT ON COLUMN "REPCAT$_REPCATLOG"."BOOL_ARG" IS 'Boolean argument';
   COMMENT ON COLUMN "REPCAT$_REPCATLOG"."ANO_BOOL_ARG" IS 'Another Boolean argument';
   COMMENT ON COLUMN "REPCAT$_REPCATLOG"."INT_ARG" IS 'Integer argument';
   COMMENT ON COLUMN "REPCAT$_REPCATLOG"."ANO_INT_ARG" IS 'Another integer argument';
   COMMENT ON COLUMN "REPCAT$_REPCATLOG"."LINES" IS 'The number of rows in system.repcat$_ddl at the processing site';
   COMMENT ON COLUMN "REPCAT$_REPCATLOG"."STATUS" IS 'Status of the request at this database';
   COMMENT ON COLUMN "REPCAT$_REPCATLOG"."MESSAGE" IS 'Error message associated with processing the request';
   COMMENT ON COLUMN "REPCAT$_REPCATLOG"."ERRNUM" IS 'Oracle error number associated with processing the request';
   COMMENT ON COLUMN "REPCAT$_REPCATLOG"."GNAME" IS 'Name of the replicated object group';
   COMMENT ON TABLE "REPCAT$_REPCATLOG"  IS 'Information about asynchronous administration requests';
/
--------------------------------------------------------
--  DDL for Table REPCAT$_REPCOLUMN
--------------------------------------------------------

  CREATE TABLE "REPCAT$_REPCOLUMN" 
   (	"SNAME" VARCHAR2(128 BYTE), 
	"ONAME" VARCHAR2(128 BYTE), 
	"TYPE" NUMBER(*,0), 
	"CNAME" VARCHAR2(128 BYTE), 
	"LCNAME" VARCHAR2(4000 BYTE), 
	"TOID" RAW(16), 
	"VERSION#" NUMBER, 
	"HASHCODE" RAW(17), 
	"CTYPE_NAME" VARCHAR2(128 BYTE), 
	"CTYPE_OWNER" VARCHAR2(128 BYTE), 
	"ID" NUMBER, 
	"POS" NUMBER, 
	"TOP" VARCHAR2(128 BYTE), 
	"FLAG" RAW(2) DEFAULT '0000', 
	"CTYPE" NUMBER, 
	"LENGTH" NUMBER, 
	"PRECISION#" NUMBER, 
	"SCALE" NUMBER, 
	"NULL$" NUMBER, 
	"CHARSETID" NUMBER, 
	"CHARSETFORM" NUMBER, 
	"PROPERTY" RAW(4) DEFAULT '00000000', 
	"CLENGTH" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "REPCAT$_REPCOLUMN"."SNAME" IS 'Name of the object owner';
   COMMENT ON COLUMN "REPCAT$_REPCOLUMN"."ONAME" IS 'Name of the object';
   COMMENT ON COLUMN "REPCAT$_REPCOLUMN"."TYPE" IS 'Type of the object';
   COMMENT ON COLUMN "REPCAT$_REPCOLUMN"."CNAME" IS 'Column name';
   COMMENT ON COLUMN "REPCAT$_REPCOLUMN"."LCNAME" IS 'Long column name';
   COMMENT ON COLUMN "REPCAT$_REPCOLUMN"."TOID" IS 'Type object identifier of a user-defined type';
   COMMENT ON COLUMN "REPCAT$_REPCOLUMN"."VERSION#" IS 'Version# of a column of user-defined type';
   COMMENT ON COLUMN "REPCAT$_REPCOLUMN"."HASHCODE" IS 'Hashcode of a column of user-defined type';
   COMMENT ON COLUMN "REPCAT$_REPCOLUMN"."ID" IS 'Column ID';
   COMMENT ON COLUMN "REPCAT$_REPCOLUMN"."POS" IS 'Ordering of column used as IN parameter in the replication procedures';
   COMMENT ON COLUMN "REPCAT$_REPCOLUMN"."TOP" IS 'Top column name for an attribute';
   COMMENT ON COLUMN "REPCAT$_REPCOLUMN"."FLAG" IS 'Replication information about column';
   COMMENT ON COLUMN "REPCAT$_REPCOLUMN"."CTYPE" IS 'Type of the column';
   COMMENT ON COLUMN "REPCAT$_REPCOLUMN"."LENGTH" IS 'Length of the column in bytes';
   COMMENT ON COLUMN "REPCAT$_REPCOLUMN"."PRECISION#" IS 'Length: decimal digits (NUMBER) or binary digits (FLOAT)';
   COMMENT ON COLUMN "REPCAT$_REPCOLUMN"."SCALE" IS 'Digits to right of decimal point in a number';
   COMMENT ON COLUMN "REPCAT$_REPCOLUMN"."NULL$" IS 'Does column allow NULL values?';
   COMMENT ON COLUMN "REPCAT$_REPCOLUMN"."CHARSETID" IS 'Character set identifier';
   COMMENT ON COLUMN "REPCAT$_REPCOLUMN"."CHARSETFORM" IS 'Character set form';
   COMMENT ON COLUMN "REPCAT$_REPCOLUMN"."CLENGTH" IS 'The maximum length of the column in characters';
   COMMENT ON TABLE "REPCAT$_REPCOLUMN"  IS 'Replicated columns for a table sorted alphabetically in ascending order';
/
--------------------------------------------------------
--  DDL for Table REPCAT$_REPGROUP_PRIVS
--------------------------------------------------------

  CREATE TABLE "REPCAT$_REPGROUP_PRIVS" 
   (	"USERID" NUMBER, 
	"USERNAME" VARCHAR2(128 BYTE), 
	"GOWNER" VARCHAR2(128 BYTE), 
	"GNAME" VARCHAR2(30 BYTE), 
	"GLOBAL_FLAG" NUMBER, 
	"CREATED" DATE, 
	"PRIVILEGE" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "REPCAT$_REPGROUP_PRIVS"."USERID" IS 'OBSOLETE COLUMN: Identifying number of the user';
   COMMENT ON COLUMN "REPCAT$_REPGROUP_PRIVS"."USERNAME" IS 'Identifying name of the registered user';
   COMMENT ON COLUMN "REPCAT$_REPGROUP_PRIVS"."GOWNER" IS 'Owner of the replicated object group';
   COMMENT ON COLUMN "REPCAT$_REPGROUP_PRIVS"."GNAME" IS 'Name of the replicated object group';
   COMMENT ON COLUMN "REPCAT$_REPGROUP_PRIVS"."GLOBAL_FLAG" IS '1 if gname is NULL, 0 otherwise';
   COMMENT ON COLUMN "REPCAT$_REPGROUP_PRIVS"."CREATED" IS 'Registration date';
   COMMENT ON COLUMN "REPCAT$_REPGROUP_PRIVS"."PRIVILEGE" IS 'Registered privileges';
   COMMENT ON TABLE "REPCAT$_REPGROUP_PRIVS"  IS 'Information about users who are registered for object group privileges';
/
--------------------------------------------------------
--  DDL for Table REPCAT$_REPOBJECT
--------------------------------------------------------

  CREATE TABLE "REPCAT$_REPOBJECT" 
   (	"SNAME" VARCHAR2(128 BYTE), 
	"ONAME" VARCHAR2(128 BYTE), 
	"TYPE" NUMBER(*,0), 
	"VERSION#" NUMBER, 
	"HASHCODE" RAW(17), 
	"ID" NUMBER, 
	"OBJECT_COMMENT" VARCHAR2(80 BYTE), 
	"STATUS" NUMBER(*,0), 
	"GENPACKAGE" NUMBER(*,0), 
	"GENPLOGID" NUMBER(*,0), 
	"GENTRIGGER" NUMBER(*,0), 
	"GENTLOGID" NUMBER(*,0), 
	"GOWNER" VARCHAR2(128 BYTE), 
	"GNAME" VARCHAR2(30 BYTE), 
	"FLAG" RAW(4) DEFAULT '00000000'
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "REPCAT$_REPOBJECT"."SNAME" IS 'Name of the object owner';
   COMMENT ON COLUMN "REPCAT$_REPOBJECT"."ONAME" IS 'Name of the object';
   COMMENT ON COLUMN "REPCAT$_REPOBJECT"."TYPE" IS 'Type of the object';
   COMMENT ON COLUMN "REPCAT$_REPOBJECT"."VERSION#" IS 'Version of objects of TYPE';
   COMMENT ON COLUMN "REPCAT$_REPOBJECT"."HASHCODE" IS 'Hashcode of objects of TYPE';
   COMMENT ON COLUMN "REPCAT$_REPOBJECT"."ID" IS 'Identifier of the local object';
   COMMENT ON COLUMN "REPCAT$_REPOBJECT"."OBJECT_COMMENT" IS 'Description of the replicated object';
   COMMENT ON COLUMN "REPCAT$_REPOBJECT"."STATUS" IS 'Status of the last create or alter request on the local object';
   COMMENT ON COLUMN "REPCAT$_REPOBJECT"."GENPACKAGE" IS 'Status of whether the object needs to generate replication package';
   COMMENT ON COLUMN "REPCAT$_REPOBJECT"."GENPLOGID" IS 'Log id of message sent for generating package support';
   COMMENT ON COLUMN "REPCAT$_REPOBJECT"."GENTRIGGER" IS 'Status of whether the object needs to generate replication trigger';
   COMMENT ON COLUMN "REPCAT$_REPOBJECT"."GENTLOGID" IS 'Log id of message sent for generating trigger support';
   COMMENT ON COLUMN "REPCAT$_REPOBJECT"."GOWNER" IS 'Owner of the object''s object group';
   COMMENT ON COLUMN "REPCAT$_REPOBJECT"."GNAME" IS 'Name of the object''s object group';
   COMMENT ON COLUMN "REPCAT$_REPOBJECT"."FLAG" IS 'Information about replicated object';
   COMMENT ON TABLE "REPCAT$_REPOBJECT"  IS 'Information about replicated objects';
/
--------------------------------------------------------
--  DDL for Table REPCAT$_REPPROP
--------------------------------------------------------

  CREATE TABLE "REPCAT$_REPPROP" 
   (	"SNAME" VARCHAR2(128 BYTE), 
	"ONAME" VARCHAR2(128 BYTE), 
	"TYPE" NUMBER(*,0), 
	"DBLINK" VARCHAR2(128 BYTE), 
	"HOW" NUMBER(*,0), 
	"PROPAGATE_COMMENT" VARCHAR2(80 BYTE), 
	"DELIVERY_ORDER" NUMBER, 
	"RECIPIENT_KEY" NUMBER, 
	"EXTENSION_ID" RAW(16) DEFAULT '00'
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "REPCAT$_REPPROP"."SNAME" IS 'Name of the object owner';
   COMMENT ON COLUMN "REPCAT$_REPPROP"."ONAME" IS 'Name of the object';
   COMMENT ON COLUMN "REPCAT$_REPPROP"."TYPE" IS 'Type of the object';
   COMMENT ON COLUMN "REPCAT$_REPPROP"."DBLINK" IS 'Destination database for propagation';
   COMMENT ON COLUMN "REPCAT$_REPPROP"."HOW" IS 'Propagation choice for the destination database';
   COMMENT ON COLUMN "REPCAT$_REPPROP"."PROPAGATE_COMMENT" IS 'Description of the propagation choice';
   COMMENT ON COLUMN "REPCAT$_REPPROP"."DELIVERY_ORDER" IS 'Value of delivery order when the master was added';
   COMMENT ON COLUMN "REPCAT$_REPPROP"."RECIPIENT_KEY" IS 'Recipient key for sname and oname, used in joining with def$_aqcall';
   COMMENT ON COLUMN "REPCAT$_REPPROP"."EXTENSION_ID" IS 'Identifier of any active extension request';
   COMMENT ON TABLE "REPCAT$_REPPROP"  IS 'Propagation information about replicated objects';
/
--------------------------------------------------------
--  DDL for Table REPCAT$_REPSCHEMA
--------------------------------------------------------

  CREATE TABLE "REPCAT$_REPSCHEMA" 
   (	"GOWNER" VARCHAR2(128 BYTE) DEFAULT 'PUBLIC', 
	"SNAME" VARCHAR2(30 BYTE), 
	"DBLINK" VARCHAR2(128 BYTE), 
	"MASTERDEF" VARCHAR2(1 BYTE), 
	"SNAPMASTER" VARCHAR2(1 BYTE), 
	"MASTER_COMMENT" VARCHAR2(80 BYTE), 
	"MASTER" VARCHAR2(1 BYTE), 
	"PROP_UPDATES" NUMBER DEFAULT 0, 
	"MY_DBLINK" VARCHAR2(1 BYTE), 
	"EXTENSION_ID" RAW(16) DEFAULT '00'
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "REPCAT$_REPSCHEMA"."GOWNER" IS 'Owner of the replicated object group';
   COMMENT ON COLUMN "REPCAT$_REPSCHEMA"."SNAME" IS 'Name of the replicated object group';
   COMMENT ON COLUMN "REPCAT$_REPSCHEMA"."DBLINK" IS 'A database site replicating the object group';
   COMMENT ON COLUMN "REPCAT$_REPSCHEMA"."MASTERDEF" IS 'Is the database the master definition site for the replicated object group';
   COMMENT ON COLUMN "REPCAT$_REPSCHEMA"."SNAPMASTER" IS 'For a snapshot site, is this the current refresh_master';
   COMMENT ON COLUMN "REPCAT$_REPSCHEMA"."MASTER_COMMENT" IS 'Description of the database site';
   COMMENT ON COLUMN "REPCAT$_REPSCHEMA"."MASTER" IS 'Redundant information from repcat$_repcat.master';
   COMMENT ON COLUMN "REPCAT$_REPSCHEMA"."PROP_UPDATES" IS 'Number of requested updates for master in repcat$_repprop';
   COMMENT ON COLUMN "REPCAT$_REPSCHEMA"."MY_DBLINK" IS 'A sanity check after import: is this master the current site';
   COMMENT ON COLUMN "REPCAT$_REPSCHEMA"."EXTENSION_ID" IS 'Dummy column for foreign key';
   COMMENT ON TABLE "REPCAT$_REPSCHEMA"  IS 'N-way replication information';
/
--------------------------------------------------------
--  DDL for Table REPCAT$_RESOLUTION
--------------------------------------------------------

  CREATE TABLE "REPCAT$_RESOLUTION" 
   (	"SNAME" VARCHAR2(128 BYTE), 
	"ONAME" VARCHAR2(128 BYTE), 
	"CONFLICT_TYPE_ID" NUMBER(*,0), 
	"REFERENCE_NAME" VARCHAR2(128 BYTE), 
	"SEQUENCE_NO" NUMBER, 
	"METHOD_NAME" VARCHAR2(80 BYTE), 
	"FUNCTION_NAME" VARCHAR2(386 BYTE), 
	"PRIORITY_GROUP" VARCHAR2(30 BYTE), 
	"RESOLUTION_COMMENT" VARCHAR2(80 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "REPCAT$_RESOLUTION"."SNAME" IS 'Owner of replicated object';
   COMMENT ON COLUMN "REPCAT$_RESOLUTION"."ONAME" IS 'Name of the replicated object';
   COMMENT ON COLUMN "REPCAT$_RESOLUTION"."CONFLICT_TYPE_ID" IS 'Type of conflict';
   COMMENT ON COLUMN "REPCAT$_RESOLUTION"."REFERENCE_NAME" IS 'Table name, unique constraint name, or column group name';
   COMMENT ON COLUMN "REPCAT$_RESOLUTION"."SEQUENCE_NO" IS 'Ordering on resolution';
   COMMENT ON COLUMN "REPCAT$_RESOLUTION"."METHOD_NAME" IS 'Name of the conflict resolution method';
   COMMENT ON COLUMN "REPCAT$_RESOLUTION"."FUNCTION_NAME" IS 'Name of the resolution function';
   COMMENT ON COLUMN "REPCAT$_RESOLUTION"."PRIORITY_GROUP" IS 'Name of the priority group used in conflict resolution';
   COMMENT ON COLUMN "REPCAT$_RESOLUTION"."RESOLUTION_COMMENT" IS 'Description of the conflict resolution';
   COMMENT ON TABLE "REPCAT$_RESOLUTION"  IS 'Description of all conflict resolutions in the database';
/
--------------------------------------------------------
--  DDL for Table REPCAT$_RESOLUTION_METHOD
--------------------------------------------------------

  CREATE TABLE "REPCAT$_RESOLUTION_METHOD" 
   (	"CONFLICT_TYPE_ID" NUMBER(*,0), 
	"METHOD_NAME" VARCHAR2(80 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "REPCAT$_RESOLUTION_METHOD"."CONFLICT_TYPE_ID" IS 'Type of conflict';
   COMMENT ON COLUMN "REPCAT$_RESOLUTION_METHOD"."METHOD_NAME" IS 'Name of the conflict resolution method';
   COMMENT ON TABLE "REPCAT$_RESOLUTION_METHOD"  IS 'All conflict resolution methods in the database';
/
--------------------------------------------------------
--  DDL for Table REPCAT$_RESOLUTION_STATISTICS
--------------------------------------------------------

  CREATE TABLE "REPCAT$_RESOLUTION_STATISTICS" 
   (	"SNAME" VARCHAR2(128 BYTE), 
	"ONAME" VARCHAR2(128 BYTE), 
	"CONFLICT_TYPE_ID" NUMBER(*,0), 
	"REFERENCE_NAME" VARCHAR2(128 BYTE), 
	"METHOD_NAME" VARCHAR2(80 BYTE), 
	"FUNCTION_NAME" VARCHAR2(386 BYTE), 
	"PRIORITY_GROUP" VARCHAR2(30 BYTE), 
	"RESOLVED_DATE" DATE, 
	"PRIMARY_KEY_VALUE" VARCHAR2(2000 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "REPCAT$_RESOLUTION_STATISTICS"."SNAME" IS 'Owner of replicated object';
   COMMENT ON COLUMN "REPCAT$_RESOLUTION_STATISTICS"."ONAME" IS 'Name of the replicated object';
   COMMENT ON COLUMN "REPCAT$_RESOLUTION_STATISTICS"."CONFLICT_TYPE_ID" IS 'Type of conflict';
   COMMENT ON COLUMN "REPCAT$_RESOLUTION_STATISTICS"."REFERENCE_NAME" IS 'Table name, unique constraint name, or column group name';
   COMMENT ON COLUMN "REPCAT$_RESOLUTION_STATISTICS"."METHOD_NAME" IS 'Name of the conflict resolution method';
   COMMENT ON COLUMN "REPCAT$_RESOLUTION_STATISTICS"."FUNCTION_NAME" IS 'Name of the resolution function';
   COMMENT ON COLUMN "REPCAT$_RESOLUTION_STATISTICS"."PRIORITY_GROUP" IS 'Name of the priority group used in conflict resolution';
   COMMENT ON COLUMN "REPCAT$_RESOLUTION_STATISTICS"."RESOLVED_DATE" IS 'Timestamp for the resolution of the conflict';
   COMMENT ON COLUMN "REPCAT$_RESOLUTION_STATISTICS"."PRIMARY_KEY_VALUE" IS 'Primary key of the replicated row (character data)';
   COMMENT ON TABLE "REPCAT$_RESOLUTION_STATISTICS"  IS 'Statistics for conflict resolutions for all replicated tables in the database';
/
--------------------------------------------------------
--  DDL for Table REPCAT$_RESOL_STATS_CONTROL
--------------------------------------------------------

  CREATE TABLE "REPCAT$_RESOL_STATS_CONTROL" 
   (	"SNAME" VARCHAR2(128 BYTE), 
	"ONAME" VARCHAR2(128 BYTE), 
	"CREATED" DATE, 
	"STATUS" NUMBER(*,0), 
	"STATUS_UPDATE_DATE" DATE, 
	"PURGED_DATE" DATE, 
	"LAST_PURGE_START_DATE" DATE, 
	"LAST_PURGE_END_DATE" DATE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "REPCAT$_RESOL_STATS_CONTROL"."SNAME" IS 'Owner of replicated object';
   COMMENT ON COLUMN "REPCAT$_RESOL_STATS_CONTROL"."ONAME" IS 'Name of the replicated object';
   COMMENT ON COLUMN "REPCAT$_RESOL_STATS_CONTROL"."CREATED" IS 'Timestamp for which statistics collection was first started';
   COMMENT ON COLUMN "REPCAT$_RESOL_STATS_CONTROL"."STATUS" IS 'Status of statistics collection: ACTIVE, CANCELLED';
   COMMENT ON COLUMN "REPCAT$_RESOL_STATS_CONTROL"."STATUS_UPDATE_DATE" IS 'Timestamp for which the status was last updated';
   COMMENT ON COLUMN "REPCAT$_RESOL_STATS_CONTROL"."PURGED_DATE" IS 'Timestamp for the last purge of statistics data';
   COMMENT ON COLUMN "REPCAT$_RESOL_STATS_CONTROL"."LAST_PURGE_START_DATE" IS 'The last start date of the statistics purging date range';
   COMMENT ON COLUMN "REPCAT$_RESOL_STATS_CONTROL"."LAST_PURGE_END_DATE" IS 'The last end date of the statistics purging date range';
   COMMENT ON TABLE "REPCAT$_RESOL_STATS_CONTROL"  IS 'Information about statistics collection for conflict resolutions for all replicated tables in the database';
/
--------------------------------------------------------
--  DDL for Table REPCAT$_RUNTIME_PARMS
--------------------------------------------------------

  CREATE TABLE "REPCAT$_RUNTIME_PARMS" 
   (	"RUNTIME_PARM_ID" NUMBER, 
	"PARAMETER_NAME" VARCHAR2(128 BYTE), 
	"PARM_VALUE" CLOB
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" 
 LOB ("PARM_VALUE") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;

   COMMENT ON COLUMN "REPCAT$_RUNTIME_PARMS"."RUNTIME_PARM_ID" IS 'Primary key of the parameter values table.';
   COMMENT ON COLUMN "REPCAT$_RUNTIME_PARMS"."PARAMETER_NAME" IS 'Name of the parameter.';
   COMMENT ON COLUMN "REPCAT$_RUNTIME_PARMS"."PARM_VALUE" IS 'Parameter value.';
/
--------------------------------------------------------
--  DDL for Table REPCAT$_SITES_NEW
--------------------------------------------------------

  CREATE TABLE "REPCAT$_SITES_NEW" 
   (	"EXTENSION_ID" RAW(16), 
	"GOWNER" VARCHAR2(128 BYTE), 
	"GNAME" VARCHAR2(30 BYTE), 
	"DBLINK" VARCHAR2(128 BYTE), 
	"FULL_INSTANTIATION" VARCHAR2(1 BYTE), 
	"MASTER_STATUS" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "REPCAT$_SITES_NEW"."EXTENSION_ID" IS 'Globally unique identifier for replication extension';
   COMMENT ON COLUMN "REPCAT$_SITES_NEW"."GOWNER" IS 'Owner of the object group';
   COMMENT ON COLUMN "REPCAT$_SITES_NEW"."GNAME" IS 'Name of the replicated object group';
   COMMENT ON COLUMN "REPCAT$_SITES_NEW"."DBLINK" IS 'A database site that will replicate the object group';
   COMMENT ON COLUMN "REPCAT$_SITES_NEW"."FULL_INSTANTIATION" IS 'Y if the database uses full-database export or change-based recovery';
   COMMENT ON COLUMN "REPCAT$_SITES_NEW"."MASTER_STATUS" IS 'Instantiation status of the new master';
   COMMENT ON TABLE "REPCAT$_SITES_NEW"  IS 'Information about new masters for replication extension';
/
--------------------------------------------------------
--  DDL for Table REPCAT$_SITE_OBJECTS
--------------------------------------------------------

  CREATE TABLE "REPCAT$_SITE_OBJECTS" 
   (	"TEMPLATE_SITE_ID" NUMBER, 
	"SNAME" VARCHAR2(128 BYTE), 
	"ONAME" VARCHAR2(128 BYTE), 
	"OBJECT_TYPE_ID" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "REPCAT$_SITE_OBJECTS"."TEMPLATE_SITE_ID" IS 'Internal primary key of the template sites table.';
   COMMENT ON COLUMN "REPCAT$_SITE_OBJECTS"."SNAME" IS 'Schema containing the deployed database object.';
   COMMENT ON COLUMN "REPCAT$_SITE_OBJECTS"."ONAME" IS 'Name of the deployed database object.';
   COMMENT ON COLUMN "REPCAT$_SITE_OBJECTS"."OBJECT_TYPE_ID" IS 'Internal ID of the object type of the deployed database object.';
   COMMENT ON TABLE "REPCAT$_SITE_OBJECTS"  IS 'Table for maintaining database objects deployed at a site.';
/
--------------------------------------------------------
--  DDL for Table REPCAT$_SNAPGROUP
--------------------------------------------------------

  CREATE TABLE "REPCAT$_SNAPGROUP" 
   (	"GOWNER" VARCHAR2(128 BYTE) DEFAULT 'PUBLIC', 
	"GNAME" VARCHAR2(30 BYTE), 
	"DBLINK" VARCHAR2(128 BYTE), 
	"GROUP_COMMENT" VARCHAR2(80 BYTE), 
	"REP_TYPE" NUMBER, 
	"FLAVOR_ID" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "REPCAT$_SNAPGROUP"."GOWNER" IS 'Owner of the snapshot repgroup';
   COMMENT ON COLUMN "REPCAT$_SNAPGROUP"."GNAME" IS 'Name of the snapshot repgroup';
   COMMENT ON COLUMN "REPCAT$_SNAPGROUP"."DBLINK" IS 'Database site of the snapshot repgroup';
   COMMENT ON COLUMN "REPCAT$_SNAPGROUP"."GROUP_COMMENT" IS 'Description of the snapshot repgroup';
   COMMENT ON COLUMN "REPCAT$_SNAPGROUP"."REP_TYPE" IS 'Identifier of flavor at snapshot';
   COMMENT ON TABLE "REPCAT$_SNAPGROUP"  IS 'Snapshot repgroup registration information';
/
--------------------------------------------------------
--  DDL for Table REPCAT$_TEMPLATE_OBJECTS
--------------------------------------------------------

  CREATE TABLE "REPCAT$_TEMPLATE_OBJECTS" 
   (	"TEMPLATE_OBJECT_ID" NUMBER, 
	"REFRESH_TEMPLATE_ID" NUMBER, 
	"OBJECT_NAME" VARCHAR2(128 BYTE), 
	"OBJECT_TYPE" NUMBER, 
	"OBJECT_VERSION#" NUMBER, 
	"DDL_TEXT" CLOB, 
	"MASTER_ROLLBACK_SEG" VARCHAR2(30 BYTE), 
	"DERIVED_FROM_SNAME" VARCHAR2(128 BYTE), 
	"DERIVED_FROM_ONAME" VARCHAR2(128 BYTE), 
	"FLAVOR_ID" NUMBER, 
	"SCHEMA_NAME" VARCHAR2(128 BYTE), 
	"DDL_NUM" NUMBER DEFAULT 1, 
	"TEMPLATE_REFGROUP_ID" NUMBER DEFAULT 0, 
	"FLAGS" RAW(255), 
	"SPARE1" VARCHAR2(4000 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" 
 LOB ("DDL_TEXT") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;

   COMMENT ON COLUMN "REPCAT$_TEMPLATE_OBJECTS"."TEMPLATE_OBJECT_ID" IS 'Internal primary key of the REPCAT$_TEMPLATE_OBJECTS table.';
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_OBJECTS"."REFRESH_TEMPLATE_ID" IS 'Internal primary key of the REPCAT$_REFRESH_TEMPLATES table.';
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_OBJECTS"."OBJECT_NAME" IS 'Name of the database object.';
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_OBJECTS"."OBJECT_TYPE" IS 'Type of database object.';
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_OBJECTS"."OBJECT_VERSION#" IS 'Version# of database object of TYPE.';
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_OBJECTS"."DDL_TEXT" IS 'DDL string for creating the object or WHERE clause for snapshot query.';
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_OBJECTS"."MASTER_ROLLBACK_SEG" IS 'Rollback segment for use during snapshot refreshes.';
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_OBJECTS"."DERIVED_FROM_SNAME" IS 'Schema name of schema containing object this was derived from.';
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_OBJECTS"."DERIVED_FROM_ONAME" IS 'Object name of object this object was derived from.';
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_OBJECTS"."FLAVOR_ID" IS 'Foreign key to the REPCAT$_FLAVORS table.';
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_OBJECTS"."SCHEMA_NAME" IS 'Schema containing the object.';
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_OBJECTS"."DDL_NUM" IS 'Order of ddls to execute.';
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_OBJECTS"."TEMPLATE_REFGROUP_ID" IS 'Internal ID of the refresh group to contain the object.';
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_OBJECTS"."FLAGS" IS 'Internal flags for the object.';
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_OBJECTS"."SPARE1" IS 'Reserved for future use.';
/
--------------------------------------------------------
--  DDL for Table REPCAT$_TEMPLATE_PARMS
--------------------------------------------------------

  CREATE TABLE "REPCAT$_TEMPLATE_PARMS" 
   (	"TEMPLATE_PARAMETER_ID" NUMBER, 
	"REFRESH_TEMPLATE_ID" NUMBER, 
	"PARAMETER_NAME" VARCHAR2(128 BYTE), 
	"DEFAULT_PARM_VALUE" CLOB, 
	"PROMPT_STRING" VARCHAR2(2000 BYTE), 
	"USER_OVERRIDE" VARCHAR2(1 BYTE) DEFAULT 'Y'
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" 
 LOB ("DEFAULT_PARM_VALUE") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;

   COMMENT ON COLUMN "REPCAT$_TEMPLATE_PARMS"."TEMPLATE_PARAMETER_ID" IS 'Internal primary key of the REPCAT$_TEMPLATE_PARMS table.';
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_PARMS"."REFRESH_TEMPLATE_ID" IS 'Internal primary key of the REPCAT$_REFRESH_TEMPLATES table.';
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_PARMS"."PARAMETER_NAME" IS 'name of the parameter.';
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_PARMS"."DEFAULT_PARM_VALUE" IS 'Default value for the parameter.';
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_PARMS"."PROMPT_STRING" IS 'String for use in prompting for parameter values.';
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_PARMS"."USER_OVERRIDE" IS 'User override flag.';
/
--------------------------------------------------------
--  DDL for Table REPCAT$_TEMPLATE_REFGROUPS
--------------------------------------------------------

  CREATE TABLE "REPCAT$_TEMPLATE_REFGROUPS" 
   (	"REFRESH_GROUP_ID" NUMBER, 
	"REFRESH_GROUP_NAME" VARCHAR2(30 BYTE), 
	"REFRESH_TEMPLATE_ID" NUMBER, 
	"ROLLBACK_SEG" VARCHAR2(30 BYTE), 
	"START_DATE" VARCHAR2(200 BYTE), 
	"INTERVAL" VARCHAR2(200 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "REPCAT$_TEMPLATE_REFGROUPS"."REFRESH_GROUP_ID" IS 'Internal primary key of the refresh groups table.';
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_REFGROUPS"."REFRESH_GROUP_NAME" IS 'Name of the refresh group';
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_REFGROUPS"."REFRESH_TEMPLATE_ID" IS 'Primary key of the template containing the refresh group.';
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_REFGROUPS"."ROLLBACK_SEG" IS 'Name of the rollback segment to use during refresh.';
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_REFGROUPS"."START_DATE" IS 'Refresh start date.';
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_REFGROUPS"."INTERVAL" IS 'Refresh interval.';
   COMMENT ON TABLE "REPCAT$_TEMPLATE_REFGROUPS"  IS 'Table for maintaining refresh group information for template.';
/
--------------------------------------------------------
--  DDL for Table REPCAT$_TEMPLATE_SITES
--------------------------------------------------------

  CREATE TABLE "REPCAT$_TEMPLATE_SITES" 
   (	"TEMPLATE_SITE_ID" NUMBER, 
	"REFRESH_TEMPLATE_NAME" VARCHAR2(30 BYTE), 
	"REFRESH_GROUP_NAME" VARCHAR2(30 BYTE), 
	"TEMPLATE_OWNER" VARCHAR2(128 BYTE), 
	"USER_NAME" VARCHAR2(128 BYTE), 
	"SITE_NAME" VARCHAR2(128 BYTE), 
	"REPAPI_SITE_ID" NUMBER, 
	"STATUS" NUMBER, 
	"REFRESH_TEMPLATE_ID" NUMBER, 
	"USER_ID" NUMBER, 
	"INSTANTIATION_DATE" DATE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "REPCAT$_TEMPLATE_SITES"."TEMPLATE_SITE_ID" IS 'Internal primary key of the REPCAT$_TEMPLATE_SITES table.';
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_SITES"."REFRESH_TEMPLATE_NAME" IS 'Name of the refresh group template.';
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_SITES"."REFRESH_GROUP_NAME" IS 'Name of the refresh group to create during instantiation.';
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_SITES"."TEMPLATE_OWNER" IS 'Owner of the refresh group template.';
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_SITES"."USER_NAME" IS 'Database user name.';
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_SITES"."SITE_NAME" IS 'Name of the site that has instantiated the template.';
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_SITES"."REPAPI_SITE_ID" IS 'Name of the site that has instantiated the template.';
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_SITES"."STATUS" IS 'Obsolete - do not use.';
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_SITES"."REFRESH_TEMPLATE_ID" IS 'Obsolete - do not use.';
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_SITES"."USER_ID" IS 'Obsolete - do not use.';
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_SITES"."INSTANTIATION_DATE" IS 'Date template was instantiated.';
/
--------------------------------------------------------
--  DDL for Table REPCAT$_TEMPLATE_STATUS
--------------------------------------------------------

  CREATE TABLE "REPCAT$_TEMPLATE_STATUS" 
   (	"TEMPLATE_STATUS_ID" NUMBER, 
	"STATUS_TYPE_NAME" VARCHAR2(100 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "REPCAT$_TEMPLATE_STATUS"."TEMPLATE_STATUS_ID" IS 'Internal primary key for the template status table.';
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_STATUS"."STATUS_TYPE_NAME" IS 'User friendly name for the template status.';
   COMMENT ON TABLE "REPCAT$_TEMPLATE_STATUS"  IS 'Table for template status and template status codes.';
/
--------------------------------------------------------
--  DDL for Table REPCAT$_TEMPLATE_TARGETS
--------------------------------------------------------

  CREATE TABLE "REPCAT$_TEMPLATE_TARGETS" 
   (	"TEMPLATE_TARGET_ID" NUMBER, 
	"TARGET_DATABASE" VARCHAR2(128 BYTE), 
	"TARGET_COMMENT" VARCHAR2(2000 BYTE), 
	"CONNECT_STRING" VARCHAR2(4000 BYTE), 
	"SPARE1" VARCHAR2(4000 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "REPCAT$_TEMPLATE_TARGETS"."TEMPLATE_TARGET_ID" IS 'Internal primary key of the template targets table.';
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_TARGETS"."TARGET_DATABASE" IS 'Global identifier of the target database.';
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_TARGETS"."TARGET_COMMENT" IS 'Comment on the target database.';
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_TARGETS"."CONNECT_STRING" IS 'The connection descriptor used to connect to the target database.';
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_TARGETS"."SPARE1" IS 'The spare column';
   COMMENT ON TABLE "REPCAT$_TEMPLATE_TARGETS"  IS 'Internal table for tracking potential target databases for templates.';
/
--------------------------------------------------------
--  DDL for Table REPCAT$_TEMPLATE_TYPES
--------------------------------------------------------

  CREATE TABLE "REPCAT$_TEMPLATE_TYPES" 
   (	"TEMPLATE_TYPE_ID" NUMBER, 
	"TEMPLATE_DESCRIPTION" VARCHAR2(200 BYTE), 
	"FLAGS" RAW(255), 
	"SPARE1" VARCHAR2(4000 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "REPCAT$_TEMPLATE_TYPES"."TEMPLATE_TYPE_ID" IS 'Internal primary key of the template types table.';
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_TYPES"."TEMPLATE_DESCRIPTION" IS 'Description of the template type.';
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_TYPES"."FLAGS" IS 'Bitmap flags controlling each type of template.';
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_TYPES"."SPARE1" IS 'Reserved for future expansion.';
   COMMENT ON TABLE "REPCAT$_TEMPLATE_TYPES"  IS 'Internal table for maintaining types of templates.';
/
--------------------------------------------------------
--  DDL for Table REPCAT$_USER_AUTHORIZATIONS
--------------------------------------------------------

  CREATE TABLE "REPCAT$_USER_AUTHORIZATIONS" 
   (	"USER_AUTHORIZATION_ID" NUMBER, 
	"USER_ID" NUMBER, 
	"REFRESH_TEMPLATE_ID" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "REPCAT$_USER_AUTHORIZATIONS"."USER_AUTHORIZATION_ID" IS 'Internal primary key of the REPCAT$_USER_AUTHORIZATIONS table.';
   COMMENT ON COLUMN "REPCAT$_USER_AUTHORIZATIONS"."USER_ID" IS 'Database user id.';
   COMMENT ON COLUMN "REPCAT$_USER_AUTHORIZATIONS"."REFRESH_TEMPLATE_ID" IS 'Internal primary key of the REPCAT$_REFRESH_TEMPLATES table.';
/
--------------------------------------------------------
--  DDL for Table REPCAT$_USER_PARM_VALUES
--------------------------------------------------------

  CREATE TABLE "REPCAT$_USER_PARM_VALUES" 
   (	"USER_PARAMETER_ID" NUMBER, 
	"TEMPLATE_PARAMETER_ID" NUMBER, 
	"USER_ID" NUMBER, 
	"PARM_VALUE" CLOB
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" 
 LOB ("PARM_VALUE") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;

   COMMENT ON COLUMN "REPCAT$_USER_PARM_VALUES"."USER_PARAMETER_ID" IS 'Internal primary key of the REPCAT$_USER_PARM_VALUES table.';
   COMMENT ON COLUMN "REPCAT$_USER_PARM_VALUES"."TEMPLATE_PARAMETER_ID" IS 'Internal primary key of the REPCAT$_TEMPLATE_PARMS table.';
   COMMENT ON COLUMN "REPCAT$_USER_PARM_VALUES"."USER_ID" IS 'Database user id.';
   COMMENT ON COLUMN "REPCAT$_USER_PARM_VALUES"."PARM_VALUE" IS 'Value of the parameter for this user.';
/
--------------------------------------------------------
--  DDL for Table ROLLING$CONNECTIONS
--------------------------------------------------------

  CREATE TABLE "ROLLING$CONNECTIONS" 
   (	"SOURCE_RDBID" NUMBER, 
	"DEST_RDBID" NUMBER, 
	"ATTRIBUTES" NUMBER, 
	"SERVICE_NAME" VARCHAR2(256 BYTE), 
	"CONN_HANDLE" NUMBER, 
	"CONNECT_TIME" TIMESTAMP (6), 
	"SEND_TIME" TIMESTAMP (6), 
	"DISCONNECT_TIME" TIMESTAMP (6), 
	"UPDATE_TIME" TIMESTAMP (6), 
	"SOURCE_PID" NUMBER, 
	"DEST_PID" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(128 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Table ROLLING$DATABASES
--------------------------------------------------------

  CREATE TABLE "ROLLING$DATABASES" 
   (	"RDBID" NUMBER, 
	"ATTRIBUTES" NUMBER, 
	"ATTRIBUTES2" NUMBER, 
	"DBUN" VARCHAR2(128 BYTE), 
	"DBID" NUMBER, 
	"PROD_RSCN" NUMBER, 
	"PROD_RID" NUMBER, 
	"PROD_SCN" NUMBER, 
	"CONS_RSCN" NUMBER, 
	"CONS_RID" NUMBER, 
	"CONS_SCN" NUMBER, 
	"ENGINE_STATUS" NUMBER, 
	"VERSION" VARCHAR2(128 BYTE), 
	"REDO_SOURCE" NUMBER, 
	"UPDATE_TIME" TIMESTAMP (6), 
	"REVISION" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(128 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Table ROLLING$DIRECTIVES
--------------------------------------------------------

  CREATE TABLE "ROLLING$DIRECTIVES" 
   (	"DIRECTID" NUMBER, 
	"PHASE" NUMBER, 
	"TASKID" NUMBER, 
	"FEATURE" VARCHAR2(32 BYTE), 
	"DESCRIPTION" VARCHAR2(256 BYTE), 
	"TARGET" NUMBER, 
	"FLAGS" VARCHAR2(64 BYTE), 
	"OPCODE" NUMBER, 
	"P1" VARCHAR2(256 BYTE), 
	"P2" VARCHAR2(256 BYTE), 
	"P3" VARCHAR2(256 BYTE), 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(256 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Table ROLLING$EVENTS
--------------------------------------------------------

  CREATE TABLE "ROLLING$EVENTS" 
   (	"EVENTID" NUMBER, 
	"INSTID" NUMBER, 
	"REVISION" NUMBER, 
	"EVENT_TIME" TIMESTAMP (6), 
	"TYPE" VARCHAR2(16 BYTE), 
	"STATUS" NUMBER, 
	"MESSAGE" VARCHAR2(256 BYTE), 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(128 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Table ROLLING$PARAMETERS
--------------------------------------------------------

  CREATE TABLE "ROLLING$PARAMETERS" 
   (	"SCOPE" NUMBER, 
	"NAME" VARCHAR2(32 BYTE), 
	"ID" NUMBER, 
	"DESCRIP" VARCHAR2(256 BYTE), 
	"TYPE" NUMBER, 
	"DATATYPE" NUMBER, 
	"ATTRIBUTES" NUMBER, 
	"CURVAL" VARCHAR2(256 BYTE), 
	"LSTVAL" VARCHAR2(256 BYTE), 
	"DEFVAL" VARCHAR2(256 BYTE), 
	"MINVAL" NUMBER, 
	"MAXVAL" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(128 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Table ROLLING$PLAN
--------------------------------------------------------

  CREATE TABLE "ROLLING$PLAN" 
   (	"INSTID" NUMBER, 
	"BATCHID" NUMBER, 
	"DIRECTID" NUMBER, 
	"TASKID" NUMBER, 
	"REVISION" NUMBER, 
	"PHASE" NUMBER, 
	"STATUS" NUMBER, 
	"PROGRESS" NUMBER, 
	"SOURCE" NUMBER, 
	"TARGET" NUMBER, 
	"RFLAGS" NUMBER, 
	"OPCODE" NUMBER, 
	"P1" VARCHAR2(256 BYTE), 
	"P2" VARCHAR2(256 BYTE), 
	"P3" VARCHAR2(256 BYTE), 
	"P4" VARCHAR2(256 BYTE), 
	"DESCRIPTION" VARCHAR2(256 BYTE), 
	"EXEC_STATUS" NUMBER, 
	"EXEC_INFO" VARCHAR2(256 BYTE), 
	"EXEC_TIME" TIMESTAMP (6), 
	"FINISH_TIME" TIMESTAMP (6), 
	"POST_STATUS" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(256 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Table ROLLING$STATISTICS
--------------------------------------------------------

  CREATE TABLE "ROLLING$STATISTICS" 
   (	"STATID" NUMBER, 
	"RDBID" NUMBER, 
	"ATTRIBUTES" NUMBER, 
	"TYPE" NUMBER, 
	"NAME" VARCHAR2(256 BYTE), 
	"VALUESTR" VARCHAR2(256 BYTE), 
	"VALUENUM" NUMBER, 
	"VALUETS" TIMESTAMP (6), 
	"VALUEINT" INTERVAL DAY (3) TO SECOND (2), 
	"UPDATE_TIME" TIMESTAMP (6), 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(128 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Table ROLLING$STATUS
--------------------------------------------------------

  CREATE TABLE "ROLLING$STATUS" 
   (	"REVISION" NUMBER, 
	"PHASE" NUMBER, 
	"BATCHID" NUMBER, 
	"STATUS" NUMBER, 
	"COORDID" NUMBER, 
	"OPRIMARY" NUMBER, 
	"FPRIMARY" NUMBER, 
	"PID" NUMBER, 
	"INSTANCE" NUMBER, 
	"DBTOTAL" NUMBER, 
	"DBACTIVE" NUMBER, 
	"LOCATION" VARCHAR2(128 BYTE), 
	"INIT_TIME" TIMESTAMP (6), 
	"BUILD_TIME" TIMESTAMP (6), 
	"START_TIME" TIMESTAMP (6), 
	"SWITCH_TIME" TIMESTAMP (6), 
	"FINISH_TIME" TIMESTAMP (6), 
	"LAST_INSTID" NUMBER, 
	"LAST_BATCHID" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(128 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Table SCHEDULER_JOB_ARGS_TBL
--------------------------------------------------------

  CREATE TABLE "SCHEDULER_JOB_ARGS_TBL" 
   (	"OWNER" VARCHAR2(128 BYTE), 
	"JOB_NAME" VARCHAR2(128 BYTE), 
	"ARGUMENT_NAME" VARCHAR2(128 BYTE), 
	"ARGUMENT_POSITION" NUMBER, 
	"ARGUMENT_TYPE" VARCHAR2(257 BYTE), 
	"VALUE" VARCHAR2(4000 BYTE), 
	"ANYDATA_VALUE" "ANYDATA" , 
	"OUT_ARGUMENT" VARCHAR2(5 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" 
 OPAQUE TYPE "ANYDATA_VALUE" STORE AS BASICFILE LOB (
  ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  CACHE 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
/
--------------------------------------------------------
--  DDL for Table SCHEDULER_PROGRAM_ARGS_TBL
--------------------------------------------------------

  CREATE TABLE "SCHEDULER_PROGRAM_ARGS_TBL" 
   (	"OWNER" VARCHAR2(128 BYTE), 
	"PROGRAM_NAME" VARCHAR2(128 BYTE), 
	"ARGUMENT_NAME" VARCHAR2(128 BYTE), 
	"ARGUMENT_POSITION" NUMBER, 
	"ARGUMENT_TYPE" VARCHAR2(257 BYTE), 
	"METADATA_ATTRIBUTE" VARCHAR2(19 BYTE), 
	"DEFAULT_VALUE" VARCHAR2(4000 BYTE), 
	"DEFAULT_ANYDATA_VALUE" "ANYDATA" , 
	"OUT_ARGUMENT" VARCHAR2(5 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" 
 OPAQUE TYPE "DEFAULT_ANYDATA_VALUE" STORE AS BASICFILE LOB (
  ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  CACHE 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
/
--------------------------------------------------------
--  DDL for Table SQLPLUS_PRODUCT_PROFILE
--------------------------------------------------------

  CREATE TABLE "SQLPLUS_PRODUCT_PROFILE" 
   (	"PRODUCT" VARCHAR2(30 BYTE), 
	"USERID" VARCHAR2(30 BYTE), 
	"ATTRIBUTE" VARCHAR2(240 BYTE), 
	"SCOPE" VARCHAR2(240 BYTE), 
	"NUMERIC_VALUE" NUMBER(15,2), 
	"CHAR_VALUE" VARCHAR2(240 BYTE), 
	"DATE_VALUE" DATE, 
	"LONG_VALUE" LONG
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Table VISA_ADMIN
--------------------------------------------------------

  CREATE TABLE "VISA_ADMIN" 
   (	"ADMIN_ID" NUMBER(*,0), 
	"USER_EMAIL" VARCHAR2(255 BYTE), 
	"ADMIN_FIRST_NAME" VARCHAR2(100 BYTE), 
	"ADMIN_MIDDLE_NAME" VARCHAR2(100 BYTE), 
	"ADMIN_LAST_NAME" VARCHAR2(100 BYTE), 
	"ADMIN_BIRTHDATE" DATE, 
	"ADMIN_GENDER_ID" NUMBER(*,0), 
	"ADMIN_CONTACT_NUM" VARCHAR2(255 BYTE), 
	"ADMIN_EMAIL" VARCHAR2(255 BYTE), 
	"ADMIN_COUNTRY_ID" NUMBER(*,0), 
	"DATE_CREATED" DATE DEFAULT sysdate, 
	"DATE_UPDATED" DATE DEFAULT sysdate, 
	"ENABLED" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Table VISA_ANNOUNCEMENTS
--------------------------------------------------------

  CREATE TABLE "VISA_ANNOUNCEMENTS" 
   (	"ANNOUNCEMENT_ID" NUMBER, 
	"SUBJECT" VARCHAR2(222 BYTE), 
	"CONTENT" LONG, 
	"DISPLAY_UNTIL" DATE, 
	"POSTED_BY" NUMBER, 
	"DATE_CREATED" DATE, 
	"DATE_UPDATED" DATE, 
	"ENABLED" NUMBER DEFAULT 1
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Table VISA_APL_ACCREDITATION
--------------------------------------------------------

  CREATE TABLE "VISA_APL_ACCREDITATION" 
   (	"ACC_ID" NUMBER(*,0), 
	"APP_ID" NUMBER(*,0), 
	"ACC_NUMBER" VARCHAR2(50 BYTE), 
	"ENABLED" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Table VISA_APL_REP
--------------------------------------------------------

  CREATE TABLE "VISA_APL_REP" 
   (	"REP_ID" NUMBER(*,0), 
	"APP_ID" NUMBER(*,0), 
	"FIRST_NAME" VARCHAR2(50 BYTE), 
	"MIDDLE_NAME" VARCHAR2(50 BYTE), 
	"LAST_NAME" VARCHAR2(50 BYTE), 
	"ENABLED" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Table VISA_APPLICANT
--------------------------------------------------------

  CREATE TABLE "VISA_APPLICANT" 
   (	"APPLICANT_ID" NUMBER(*,0), 
	"APPLICANT_NO" VARCHAR2(50 BYTE), 
	"USER_EMAIL" VARCHAR2(255 BYTE), 
	"FIRST_NAME" VARCHAR2(100 BYTE), 
	"MIDDLE_NAME" VARCHAR2(100 BYTE), 
	"LAST_NAME" VARCHAR2(100 BYTE), 
	"EXT_NAME" VARCHAR2(255 BYTE), 
	"BIRTHDATE" DATE, 
	"GENDER" VARCHAR2(10 BYTE), 
	"CIVIL_STATUS" NUMBER(*,0), 
	"COUNTRY_BIRTH" VARCHAR2(255 BYTE), 
	"CITIZENSHIP" VARCHAR2(255 BYTE), 
	"HEIGHT" VARCHAR2(10 BYTE), 
	"WEIGHT" VARCHAR2(10 BYTE), 
	"MOBILE_NO" VARCHAR2(13 BYTE), 
	"PH_STREET_NO" VARCHAR2(255 BYTE), 
	"PH_VILLAGE" VARCHAR2(255 BYTE), 
	"PH_BARANGAY" VARCHAR2(255 BYTE), 
	"PH_CITY" VARCHAR2(255 BYTE), 
	"PH_PROVINCE" VARCHAR2(255 BYTE), 
	"PH_ZIPCODE" VARCHAR2(255 BYTE), 
	"DATE_CREATED" DATE, 
	"DATE_UPDATED" DATE, 
	"ENABLED" NUMBER(*,0), 
	"OCCUPATION" VARCHAR2(500 BYTE), 
	"HAIR_COLOR" VARCHAR2(500 BYTE), 
	"EYE_COLOR" VARCHAR2(100 BYTE), 
	"RACE" VARCHAR2(20 BYTE), 
	"COMPLEXION" VARCHAR2(20 BYTE), 
	"MARKS" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Table VISA_APPLICANT_CHILDREN
--------------------------------------------------------

  CREATE TABLE "VISA_APPLICANT_CHILDREN" 
   (	"CHILD_ID" NUMBER(*,0), 
	"APP_ID" NUMBER(*,0), 
	"CHILD_FIRSTNAME" VARCHAR2(50 BYTE), 
	"CHILD_MIDDLENAME" VARCHAR2(50 BYTE), 
	"CHILD_LASTNAME" VARCHAR2(50 BYTE), 
	"CHILD_BDAY" DATE, 
	"ENABLED" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Table VISA_APPLICATION_DETAILS
--------------------------------------------------------

  CREATE TABLE "VISA_APPLICATION_DETAILS" 
   (	"APP_ID" NUMBER(*,0), 
	"USER_EMAIL" VARCHAR2(255 BYTE), 
	"APP_METHOD" VARCHAR2(50 BYTE), 
	"REASON" VARCHAR2(255 BYTE), 
	"WITH_VALID" VARCHAR2(255 BYTE), 
	"REASON_WITH_YESNO" NUMBER(*,0), 
	"HAS_REPRESENTATIVE" NUMBER(*,0), 
	"HAS_CHILD" NUMBER(*,0), 
	"APPLICATION_COUNTRY_ID" NUMBER(*,0), 
	"DATE_CREATED" DATE, 
	"REFERENCE_NO" VARCHAR2(50 BYTE), 
	"ENABLED" NUMBER(*,0), 
	"ARRDATE" DATE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Table VISA_APPLICATION_LOG
--------------------------------------------------------

  CREATE TABLE "VISA_APPLICATION_LOG" 
   (	"LOG_ID" NUMBER(*,0), 
	"APP_ID" NUMBER(*,0), 
	"REFERENCE_NO" VARCHAR2(50 BYTE), 
	"PAYMENT_MODE" VARCHAR2(50 BYTE), 
	"FEE_WAIVER" FLOAT(63), 
	"FEE_APPLICATION" FLOAT(63), 
	"FEE_CERTIFICATION" FLOAT(63), 
	"FEE_LRF" FLOAT(63), 
	"FEE_STICKER" FLOAT(63), 
	"FEE_EXPRESS" FLOAT(63), 
	"FEE_SERVICE" FLOAT(63), 
	"TOTAL_AMOUNT" FLOAT(63), 
	"OR_NO" VARCHAR2(50 BYTE), 
	"QR_CODE" BLOB, 
	"APP_STATUS" NUMBER(*,0), 
	"DATE_CREATED" DATE, 
	"ENABLED" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" 
 LOB ("QR_CODE") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
/
--------------------------------------------------------
--  DDL for Table VISA_APPLICATION_STATUS
--------------------------------------------------------

  CREATE TABLE "VISA_APPLICATION_STATUS" 
   (	"STATUS_ID" NUMBER, 
	"APP_ID" VARCHAR2(20 BYTE), 
	"REFERENCE_NO" VARCHAR2(20 BYTE), 
	"IMMIGSTAT" VARCHAR2(20 BYTE), 
	"ALWDSTAY" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Table VISA_APPOINTMENT_LOG
--------------------------------------------------------

  CREATE TABLE "VISA_APPOINTMENT_LOG" 
   (	"APPOINTMENT_ID" NUMBER(*,0), 
	"APP_REFERENCE_NO" NVARCHAR2(255), 
	"BRANCH_ID" NUMBER(*,0), 
	"APPOINTMENT_DATESCHED" DATE, 
	"DATE_CREATED" DATE DEFAULT sysdate, 
	"DATE_UPDATED" DATE DEFAULT sysdate, 
	"ENABLED" NUMBER(*,0) DEFAULT 1, 
	"APPOINTMENT_HOURSCHED" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Table VISA_APPOINTMENT_STATUS
--------------------------------------------------------

  CREATE TABLE "VISA_APPOINTMENT_STATUS" 
   (	"STATUS_ID" NUMBER(*,0), 
	"STATUS_DESCRIPTION" NVARCHAR2(255), 
	"DATE_CREATED" TIMESTAMP (6), 
	"DATE_UPDATED" TIMESTAMP (6), 
	"ENABLED" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Table VISA_APPOINTMENT_TIMES
--------------------------------------------------------

  CREATE TABLE "VISA_APPOINTMENT_TIMES" 
   (	"ID" NUMBER, 
	"TIMESCHED_DESCRIPTION" VARCHAR2(200 BYTE), 
	"AVAILABILITY" NUMBER, 
	"DATE_CREATED" DATE DEFAULT sysdate, 
	"DATE_UPDATED" DATE DEFAULT sysdate, 
	"ENABLED" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Table VISA_BRANCH
--------------------------------------------------------

  CREATE TABLE "VISA_BRANCH" 
   (	"BRANCH_ID" NUMBER(*,0), 
	"BRANCH_NAME" NVARCHAR2(100), 
	"BRANCH_CODE" NVARCHAR2(100), 
	"BRANCH_ADDRESS" NVARCHAR2(200), 
	"DATE_CREATED" DATE DEFAULT sysdate, 
	"DATE_UPDATED" DATE DEFAULT sysdate, 
	"ENABLED" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Table VISA_BRANCH_ADMIN
--------------------------------------------------------

  CREATE TABLE "VISA_BRANCH_ADMIN" 
   (	"BRANCH_ADMIN_ID" NUMBER, 
	"ACCOUNT_BRANCH_ID" NUMBER, 
	"ACCOUNT_EMAIL" VARCHAR2(100 BYTE), 
	"DATE_CREATED" DATE DEFAULT sysdate, 
	"DATE_UPDATED" DATE DEFAULT sysdate, 
	"ENABLED" NUMBER DEFAULT 1
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Table VISA_BRANCH_SCHEDULE
--------------------------------------------------------

  CREATE TABLE "VISA_BRANCH_SCHEDULE" 
   (	"SCHED_LIMIT_ID" NUMBER(*,0), 
	"SCHED_LIMIT_BRANCH_ID" NUMBER(*,0), 
	"START_DATE" DATE DEFAULT sysdate, 
	"END_DATE" DATE DEFAULT sysdate, 
	"DAY_LIMIT" NUMBER(*,0) DEFAULT 1, 
	"HOUR_LIMIT" NUMBER, 
	"CREATED_BY" NUMBER(*,0), 
	"DATE_CREATED" DATE DEFAULT sysdate, 
	"DATE_UPDATED" DATE DEFAULT sysdate, 
	"ENABLED" NUMBER(*,0) DEFAULT 1
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Table VISA_CIVIL_STATUS
--------------------------------------------------------

  CREATE TABLE "VISA_CIVIL_STATUS" 
   (	"CIVIL_STATUS_ID" NUMBER(*,0), 
	"NAME" VARCHAR2(255 BYTE), 
	"DATE_CREATED" DATE, 
	"DATE_UPDATED" DATE, 
	"ENABLED" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Table VISA_COUNTRY
--------------------------------------------------------

  CREATE TABLE "VISA_COUNTRY" 
   (	"COUNTRY_ID" NUMBER(*,0), 
	"NAME" VARCHAR2(50 BYTE), 
	"COUNTRY_CODE" VARCHAR2(5 BYTE), 
	"PERIOD" NUMBER(*,0), 
	"ENABLED" NUMBER(*,0), 
	"CITIZENSHIP" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Table VISA_FAQ
--------------------------------------------------------

  CREATE TABLE "VISA_FAQ" 
   (	"FAQ_ID" NUMBER, 
	"FAQ_QUESTION" VARCHAR2(222 BYTE), 
	"FAQ_ANSWER" LONG, 
	"ENABLED" NUMBER DEFAULT 1
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Table VISA_FEES
--------------------------------------------------------

  CREATE TABLE "VISA_FEES" 
   (	"FEE_ID" NUMBER(*,0), 
	"FEE_NAME" VARCHAR2(50 BYTE), 
	"FEE_COST" NUMBER(*,0), 
	"ENABLED" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Table VISA_HOLIDAY
--------------------------------------------------------

  CREATE TABLE "VISA_HOLIDAY" 
   (	"HOLIDAY_ID" NUMBER(*,0), 
	"HOLIDAY_DESCRIPTION" NVARCHAR2(255), 
	"HOLIDAY_DATE" DATE, 
	"DATE_CREATED" DATE DEFAULT sysdate, 
	"DATE_UPDATED" DATE DEFAULT sysdate, 
	"ENABLED" NUMBER(*,0), 
	"HOLIDAY_BRANCH" VARCHAR2(20 BYTE) DEFAULT 0
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "VISA_HOLIDAY"."HOLIDAY_BRANCH" IS '0 = all branch ;';
/
--------------------------------------------------------
--  DDL for Table VISA_OR
--------------------------------------------------------

  CREATE TABLE "VISA_OR" 
   (	"OR_ID" NUMBER(*,0), 
	"OR_NO" VARCHAR2(50 BYTE), 
	"REFERENCE_NO" NUMBER(*,0), 
	"DATE_CREATED" DATE, 
	"ENABLED" NUMBER(*,0) DEFAULT 1
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Table VISA_PASSPORT_DETAILS
--------------------------------------------------------

  CREATE TABLE "VISA_PASSPORT_DETAILS" 
   (	"PASSPORT_ID" NUMBER(*,0), 
	"USER_EMAIL" VARCHAR2(255 BYTE), 
	"PASS_NO" VARCHAR2(50 BYTE), 
	"PASS_DATE_ISSUE" DATE, 
	"PASS_ISSUING_AUTHORITY" VARCHAR2(100 BYTE), 
	"PASS_VALID_UNTIL" DATE, 
	"PASS_IMG" VARCHAR2(255 BYTE), 
	"PASS_STAMP_IMG" VARCHAR2(255 BYTE), 
	"ARRIVAL_DATE" DATE, 
	"ENABLED" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Table VISA_POSITION
--------------------------------------------------------

  CREATE TABLE "VISA_POSITION" 
   (	"POSITION_ID" NUMBER(*,0), 
	"POSITION" VARCHAR2(255 BYTE), 
	"ENABLED" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Table VISA_REASON
--------------------------------------------------------

  CREATE TABLE "VISA_REASON" 
   (	"REASON_ID" NUMBER(*,0), 
	"REASON" VARCHAR2(50 BYTE), 
	"WITH_VALID" VARCHAR2(50 BYTE), 
	"ENABLED" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Table VISA_SETTINGS
--------------------------------------------------------

  CREATE TABLE "VISA_SETTINGS" 
   (	"SETTINGS_ID" NUMBER, 
	"SETTINGS_NAME" VARCHAR2(50 BYTE), 
	"SETTINGS_VALUE" VARCHAR2(50 BYTE), 
	"SETTINGS_CODE" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Table VISA_USERS
--------------------------------------------------------

  CREATE TABLE "VISA_USERS" 
   (	"USER_ID" NUMBER(*,0), 
	"USER_EMAIL" VARCHAR2(255 BYTE), 
	"PASSWORD" VARCHAR2(100 BYTE), 
	"POSITION_ID" NUMBER(*,0), 
	"DATE_ACTIVATED" DATE DEFAULT sysdate, 
	"DATE_CREATED" DATE DEFAULT sysdate, 
	"DATE_UPDATED" DATE DEFAULT sysdate, 
	"ENABLED" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Table VISA_VIMS
--------------------------------------------------------

  CREATE TABLE "VISA_VIMS" 
   (	"APPLIC_ID" VARCHAR2(20 BYTE), 
	"LASTNAME" VARCHAR2(200 BYTE), 
	"FIRSTNAME" VARCHAR2(200 BYTE), 
	"MIDDLENAME" VARCHAR2(50 BYTE), 
	"BDATE" DATE, 
	"CTRY_CITZ" VARCHAR2(3 BYTE), 
	"GENDER" VARCHAR2(6 BYTE), 
	"PPTNUM" VARCHAR2(15 BYTE), 
	"ISSUEDATE  " DATE, 
	"EXPIRYDATE" DATE, 
	"COUNTRY    " VARCHAR2(3 BYTE), 
	"ARRDATE" DATE, 
	"IMMIGSTAT" VARCHAR2(11 BYTE), 
	"ALWDSTAY" NUMBER, 
	"MORNO" VARCHAR2(20 BYTE), 
	"MORAMT" NUMBER, 
	"MORDATE" DATE, 
	"PROVINCE" VARCHAR2(50 BYTE), 
	"CTYMUN" VARCHAR2(50 BYTE), 
	"VILLAGE" VARCHAR2(50 BYTE), 
	"NO_STREET" VARCHAR2(50 BYTE), 
	"ZIPCODE " VARCHAR2(10 BYTE), 
	"CIVIL_STATUS " VARCHAR2(100 BYTE), 
	"BIRTHPLACE" VARCHAR2(500 BYTE), 
	"OCCUPATION" VARCHAR2(500 BYTE), 
	"HEIGHT" VARCHAR2(100 BYTE), 
	"WEIGHT" VARCHAR2(100 BYTE), 
	"HAIR_COLOR" VARCHAR2(100 BYTE), 
	"EYE_COLOR" VARCHAR2(100 BYTE), 
	"RACE" VARCHAR2(500 BYTE), 
	"COMPLEXION" VARCHAR2(500 BYTE), 
	"MARKS" VARCHAR2(500 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for View AQ$DEF$_AQCALL
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "AQ$DEF$_AQCALL" ("QUEUE", "MSG_ID", "CORR_ID", "MSG_PRIORITY", "MSG_STATE", "DELAY", "DELAY_TIMESTAMP", "EXPIRATION", "ENQ_TIME", "ENQ_TIMESTAMP", "ENQ_USER_ID", "ENQ_TXN_ID", "DEQ_TIME", "DEQ_TIMESTAMP", "DEQ_USER_ID", "DEQ_TXN_ID", "RETRY_COUNT", "EXCEPTION_QUEUE_OWNER", "EXCEPTION_QUEUE", "USER_DATA", "ORIGINAL_QUEUE_NAME", "ORIGINAL_QUEUE_OWNER", "EXPIRATION_REASON") AS 
  SELECT q_name QUEUE, msgid MSG_ID, corrid CORR_ID, priority MSG_PRIORITY, decode(state, 0,   'READY',
                                1,   'WAIT',
                                2,   'PROCESSED',
                                3,   'EXPIRED',
                                10,  'BUFFERED_EXPIRED') MSG_STATE, cast(FROM_TZ(delay, '00:00')
                  at time zone sessiontimezone as date) DELAY, cast(FROM_TZ(delay, '00:00')
               at time zone sessiontimezone as timestamp) DELAY_TIMESTAMP, expiration, cast(FROM_TZ(enq_time, '00:00')
                  at time zone sessiontimezone as date) ENQ_TIME, cast(FROM_TZ(enq_time, '00:00')
                  at time zone sessiontimezone as timestamp) 
                  ENQ_TIMESTAMP, enq_uid ENQ_USER_ID, enq_tid ENQ_TXN_ID, cast(FROM_TZ(deq_time, '00:00')
                  at time zone sessiontimezone as date) DEQ_TIME, cast(FROM_TZ(deq_time, '00:00')
                  at time zone sessiontimezone as timestamp) 
                  DEQ_TIMESTAMP, deq_uid DEQ_USER_ID, deq_tid DEQ_TXN_ID, retry_count,  decode (state, 0, exception_qschema, 
                                  1, exception_qschema, 
                                  2, exception_qschema,  
                                  NULL) EXCEPTION_QUEUE_OWNER,  decode (state, 0, exception_queue, 
                                  1, exception_queue, 
                                  2, exception_queue,  
                                  NULL) EXCEPTION_QUEUE,  user_data,  decode (state, 3, 
                     decode (deq_tid, 'INVALID_TRANSACTION', NULL, 
                             exception_queue), NULL)
                                ORIGINAL_QUEUE_NAME,  decode (state, 3, 
                     decode (deq_tid, 'INVALID_TRANSACTION', NULL, 
                             exception_qschema), NULL)
                                ORIGINAL_QUEUE_OWNER,  decode(state, 3, 
                     decode(deq_time, NULL, 
                       decode(deq_tid, NULL,
                       decode (expiration , NULL , 'MAX_RETRY_EXCEEDED',
                            'TIME_EXPIRATION'),
                              'INVALID_TRANSACTION', NULL,
                              'MAX_RETRY_EXCEEDED'), NULL), NULL) 
                             EXPIRATION_REASON  FROM "DEF$_AQCALL" WHERE state != 7 AND   state != 9 WITH READ ONLY;
/
--------------------------------------------------------
--  DDL for View AQ$DEF$_AQERROR
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "AQ$DEF$_AQERROR" ("QUEUE", "MSG_ID", "CORR_ID", "MSG_PRIORITY", "MSG_STATE", "DELAY", "DELAY_TIMESTAMP", "EXPIRATION", "ENQ_TIME", "ENQ_TIMESTAMP", "ENQ_USER_ID", "ENQ_TXN_ID", "DEQ_TIME", "DEQ_TIMESTAMP", "DEQ_USER_ID", "DEQ_TXN_ID", "RETRY_COUNT", "EXCEPTION_QUEUE_OWNER", "EXCEPTION_QUEUE", "USER_DATA", "ORIGINAL_QUEUE_NAME", "ORIGINAL_QUEUE_OWNER", "EXPIRATION_REASON") AS 
  SELECT q_name QUEUE, msgid MSG_ID, corrid CORR_ID, priority MSG_PRIORITY, decode(state, 0,   'READY',
                                1,   'WAIT',
                                2,   'PROCESSED',
                                3,   'EXPIRED',
                                10,  'BUFFERED_EXPIRED') MSG_STATE, cast(FROM_TZ(delay, '00:00')
                  at time zone sessiontimezone as date) DELAY, cast(FROM_TZ(delay, '00:00')
               at time zone sessiontimezone as timestamp) DELAY_TIMESTAMP, expiration, cast(FROM_TZ(enq_time, '00:00')
                  at time zone sessiontimezone as date) ENQ_TIME, cast(FROM_TZ(enq_time, '00:00')
                  at time zone sessiontimezone as timestamp) 
                  ENQ_TIMESTAMP, enq_uid ENQ_USER_ID, enq_tid ENQ_TXN_ID, cast(FROM_TZ(deq_time, '00:00')
                  at time zone sessiontimezone as date) DEQ_TIME, cast(FROM_TZ(deq_time, '00:00')
                  at time zone sessiontimezone as timestamp) 
                  DEQ_TIMESTAMP, deq_uid DEQ_USER_ID, deq_tid DEQ_TXN_ID, retry_count,  decode (state, 0, exception_qschema, 
                                  1, exception_qschema, 
                                  2, exception_qschema,  
                                  NULL) EXCEPTION_QUEUE_OWNER,  decode (state, 0, exception_queue, 
                                  1, exception_queue, 
                                  2, exception_queue,  
                                  NULL) EXCEPTION_QUEUE,  user_data,  decode (state, 3, 
                     decode (deq_tid, 'INVALID_TRANSACTION', NULL, 
                             exception_queue), NULL)
                                ORIGINAL_QUEUE_NAME,  decode (state, 3, 
                     decode (deq_tid, 'INVALID_TRANSACTION', NULL, 
                             exception_qschema), NULL)
                                ORIGINAL_QUEUE_OWNER,  decode(state, 3, 
                     decode(deq_time, NULL, 
                       decode(deq_tid, NULL,
                       decode (expiration , NULL , 'MAX_RETRY_EXCEEDED',
                            'TIME_EXPIRATION'),
                              'INVALID_TRANSACTION', NULL,
                              'MAX_RETRY_EXCEEDED'), NULL), NULL) 
                             EXPIRATION_REASON  FROM "DEF$_AQERROR" WHERE state != 7 AND   state != 9 WITH READ ONLY;
/
--------------------------------------------------------
--  DDL for View AQ$_DEF$_AQCALL_F
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "AQ$_DEF$_AQCALL_F" ("Q_NAME", "ROW_ID", "MSGID", "CORRID", "PRIORITY", "STATE", "DELAY", "EXPIRATION", "ENQ_TIME", "ENQ_UID", "ENQ_TID", "DEQ_TIME", "DEQ_UID", "DEQ_TID", "RETRY_COUNT", "EXCEPTION_QSCHEMA", "EXCEPTION_QUEUE", "CSCN", "DSCN", "CHAIN_NO", "LOCAL_ORDER_NO", "TIME_MANAGER_INFO", "STEP_NO", "USER_DATA", "QUEUE_ID") AS 
  SELECT  /*+ NO_MERGE (qo) USE_NL(qt) */ qt.q_name Q_NAME, qt.rowid ROW_ID, qt.msgid MSGID, qt.corrid CORRID, qt.priority PRIORITY, qt.state STATE, cast(FROM_TZ(qt.delay, '00:00') at time zone sessiontimezone as timestamp) DELAY, qt.expiration EXPIRATION, cast(FROM_TZ(qt.enq_time, '00:00') at time zone sessiontimezone as timestamp) ENQ_TIME, qt.enq_uid ENQ_UID, qt.enq_tid ENQ_TID, cast(FROM_TZ(qt.deq_time, '00:00') at time zone sessiontimezone as timestamp) DEQ_TIME, qt.deq_uid DEQ_UID, qt.deq_tid DEQ_TID, qt.retry_count RETRY_COUNT, qt.exception_qschema EXCEPTION_QSCHEMA, qt.exception_queue EXCEPTION_QUEUE, qt.cscn CSCN, qt.dscn DSCN, qt.chain_no CHAIN_NO, qt.local_order_no LOCAL_ORDER_NO, cast(FROM_TZ(qt.time_manager_info, '00:00') at time zone sessiontimezone as timestamp)   TIME_MANAGER_INFO, qt.step_no STEP_NO, qt.user_data USER_DATA , qo.qid QUEUE_ID  FROM "DEF$_AQCALL" qt, SYS.ALL_INT_DEQUEUE_QUEUES  qo  WHERE qt.q_name = qo.name AND qo.owner = 'SYSTEM' WITH READ ONLY;
/
--------------------------------------------------------
--  DDL for View AQ$_DEF$_AQERROR_F
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "AQ$_DEF$_AQERROR_F" ("Q_NAME", "ROW_ID", "MSGID", "CORRID", "PRIORITY", "STATE", "DELAY", "EXPIRATION", "ENQ_TIME", "ENQ_UID", "ENQ_TID", "DEQ_TIME", "DEQ_UID", "DEQ_TID", "RETRY_COUNT", "EXCEPTION_QSCHEMA", "EXCEPTION_QUEUE", "CSCN", "DSCN", "CHAIN_NO", "LOCAL_ORDER_NO", "TIME_MANAGER_INFO", "STEP_NO", "USER_DATA", "QUEUE_ID") AS 
  SELECT  /*+ NO_MERGE (qo) USE_NL(qt) */ qt.q_name Q_NAME, qt.rowid ROW_ID, qt.msgid MSGID, qt.corrid CORRID, qt.priority PRIORITY, qt.state STATE, cast(FROM_TZ(qt.delay, '00:00') at time zone sessiontimezone as timestamp) DELAY, qt.expiration EXPIRATION, cast(FROM_TZ(qt.enq_time, '00:00') at time zone sessiontimezone as timestamp) ENQ_TIME, qt.enq_uid ENQ_UID, qt.enq_tid ENQ_TID, cast(FROM_TZ(qt.deq_time, '00:00') at time zone sessiontimezone as timestamp) DEQ_TIME, qt.deq_uid DEQ_UID, qt.deq_tid DEQ_TID, qt.retry_count RETRY_COUNT, qt.exception_qschema EXCEPTION_QSCHEMA, qt.exception_queue EXCEPTION_QUEUE, qt.cscn CSCN, qt.dscn DSCN, qt.chain_no CHAIN_NO, qt.local_order_no LOCAL_ORDER_NO, cast(FROM_TZ(qt.time_manager_info, '00:00') at time zone sessiontimezone as timestamp)   TIME_MANAGER_INFO, qt.step_no STEP_NO, qt.user_data USER_DATA , qo.qid QUEUE_ID  FROM "DEF$_AQERROR" qt, SYS.ALL_INT_DEQUEUE_QUEUES  qo  WHERE qt.q_name = qo.name AND qo.owner = 'SYSTEM' WITH READ ONLY;
/
--------------------------------------------------------
--  DDL for View MVIEW_EVALUATIONS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "MVIEW_EVALUATIONS" ("RUNID", "MVIEW_OWNER", "MVIEW_NAME", "RANK", "STORAGE_IN_BYTES", "FREQUENCY", "CUMULATIVE_BENEFIT", "BENEFIT_TO_COST_RATIO") AS 
  select
  t1.runid# as runid,
  summary_owner AS mview_owner,
  summary_name AS mview_name,
  rank# as rank,
  storage_in_bytes,
  frequency,
  cumulative_benefit,
  benefit_to_cost_ratio
from SYSTEM.MVIEW$_ADV_OUTPUT t1, SYSTEM.MVIEW$_ADV_LOG t2, ALL_USERS u
where
  t1.runid# = t2.runid# and
  u.username = t2.uname and
  u.user_id = userenv('SCHEMAID') and
  t1.output_type = 1
order by t1.rank#;

   COMMENT ON TABLE "MVIEW_EVALUATIONS"  IS 'This view gives DBA access to summary evaluation output';
/
--------------------------------------------------------
--  DDL for View MVIEW_EXCEPTIONS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "MVIEW_EXCEPTIONS" ("RUNID", "OWNER", "TABLE_NAME", "DIMENSION_NAME", "RELATIONSHIP", "BAD_ROWID") AS 
  select
  t1.runid# as runid,
  owner,
  table_name,
  dimension_name,
  relationship,
  bad_rowid
from SYSTEM.MVIEW$_ADV_EXCEPTIONS t1, SYSTEM.MVIEW$_ADV_LOG t2, ALL_USERS u
where
  t1.runid# = t2.runid# and
  u.username = t2.uname and
  u.user_id = userenv('SCHEMAID');

   COMMENT ON TABLE "MVIEW_EXCEPTIONS"  IS 'This view gives DBA access to dimension validation results';
/
--------------------------------------------------------
--  DDL for View MVIEW_FILTER
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "MVIEW_FILTER" ("FILTERID", "SUBFILTERNUM", "SUBFILTERTYPE", "STR_VALUE", "NUM_VALUE1", "NUM_VALUE2", "DATE_VALUE1", "DATE_VALUE2") AS 
  select
      a.filterid# as filterid,
      a.subfilternum# as subfilternum,
      decode(a.subfiltertype,1,'APPLICATION',2,'CARDINALITY',3,'LASTUSE',
                             4,'FREQUENCY',5,'USER',6,'PRIORITY',7,'BASETABLE',
                             8,'RESPONSETIME',9,'COLLECTIONID',10,'TRACENAME',
                             11,'SCHEMA','UNKNOWN') AS subfiltertype,
      a.str_value,
      to_number(decode(a.num_value1,-999,NULL,a.num_value1)) AS num_value1,
      to_number(decode(a.num_value2,-999,NULL,a.num_value2)) AS num_value2,
      a.date_value1,
      a.date_value2
   from system.mview$_adv_filter a, system.mview$_adv_log b, ALL_USERS u
   WHERE a.filterid# = b.runid#
   AND b.uname = u.username
   AND u.user_id = userenv('SCHEMAID');

   COMMENT ON TABLE "MVIEW_FILTER"  IS 'Workload filter records';
/
--------------------------------------------------------
--  DDL for View MVIEW_FILTERINSTANCE
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "MVIEW_FILTERINSTANCE" ("RUNID", "FILTERID", "SUBFILTERNUM", "SUBFILTERTYPE", "STR_VALUE", "NUM_VALUE1", "NUM_VALUE2", "DATE_VALUE1", "DATE_VALUE2") AS 
  select
      a.runid# as runid,
      a.filterid# as filterid,
      a.subfilternum# as subfilternum,
      decode(a.subfiltertype,1,'APPLICATION',2,'CARDINALITY',3,'LASTUSE',
                             4,'FREQUENCY',5,'USER',6,'PRIORITY',7,'BASETABLE',
                             8,'RESPONSETIME',9,'COLLECTIONID',10,'TRACENAME',
                             11,'SCHEMA','UNKNOWN') AS subfiltertype,
      a.str_value,
      to_number(decode(a.num_value1,-999,NULL,a.num_value1)) AS num_value1,
      to_number(decode(a.num_value2,-999,NULL,a.num_value2)) AS num_value2,
      a.date_value1,
      a.date_value2
   from system.mview$_adv_filterinstance a;

   COMMENT ON TABLE "MVIEW_FILTERINSTANCE"  IS 'Workload filter instance records';
/
--------------------------------------------------------
--  DDL for View MVIEW_LOG
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "MVIEW_LOG" ("ID", "FILTERID", "RUN_BEGIN", "RUN_END", "TYPE", "STATUS", "MESSAGE", "COMPLETED", "TOTAL", "ERROR_CODE") AS 
  select
      m.runid# as id,
      m.filterid# as filterid,
      m.run_begin,
      m.run_end,
      decode(m.run_type,1,'EVALUATE',2,'EVALUATE_W',3,'RECOMMEND',
                      4,'RECOMMEND_W',5,'VALIDATE',6,'WORKLOAD',
                      7,'FILTER','UNKNOWN') AS type,
      decode(m.status,0,'UNUSED',1,'CANCELLED',2,'IN_PROGRESS',3,'COMPLETED',
                    4,'ERROR','UNKNOWN') AS status,
      m.message,
      m.completed,
      m.total,
      m.error_code
   from system.mview$_adv_log m, all_users u
   where m.uname = u.username
   and   u.user_id = userenv('SCHEMAID');

   COMMENT ON TABLE "MVIEW_LOG"  IS 'Advisor session log';
/
--------------------------------------------------------
--  DDL for View MVIEW_RECOMMENDATIONS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "MVIEW_RECOMMENDATIONS" ("RUNID", "ALL_TABLES", "FACT_TABLES", "GROUPING_LEVELS", "QUERY_TEXT", "RECOMMENDATION_NUMBER", "RECOMMENDED_ACTION", "MVIEW_OWNER", "MVIEW_NAME", "STORAGE_IN_BYTES", "PCT_PERFORMANCE_GAIN", "BENEFIT_TO_COST_RATIO") AS 
  select
  t1.runid# as runid,
  t1.from_clause as all_tables,
  fact_tables,
  grouping_levels,
  query_text,
  rank# as recommendation_number,
  action_type as recommended_action,
  summary_owner as mview_owner,
  summary_name as mview_name,
  storage_in_bytes,
  pct_performance_gain,
  benefit_to_cost_ratio
from SYSTEM.MVIEW$_ADV_OUTPUT t1, SYSTEM.MVIEW$_ADV_LOG t2, ALL_USERS u
where
  t1.runid# = t2.runid# and
  u.username = t2.uname and
  u.user_id = userenv('SCHEMAID') and
  t1.output_type = 0
order by t1.rank#;

   COMMENT ON TABLE "MVIEW_RECOMMENDATIONS"  IS 'This view gives DBA access to summary recommendations';
/
--------------------------------------------------------
--  DDL for View MVIEW_WORKLOAD
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "MVIEW_WORKLOAD" ("WORKLOADID", "IMPORT_TIME", "QUERYID", "APPLICATION", "CARDINALITY", "RESULTSIZE", "LASTUSE", "FREQUENCY", "OWNER", "PRIORITY", "QUERY", "RESPONSETIME") AS 
  select
  a.collectionid# as workloadid,
  a.collecttime as import_time,
  a.queryid# as queryid,
  a.application,
  a.cardinality,
  a.resultsize,
  a.qdate as lastuse,
  a.frequency,
  a.uname as owner,
  a.priority,
  a.sql_text as query,
  a.exec_time as responsetime
from SYSTEM.MVIEW$_ADV_WORKLOAD A, SYSTEM.MVIEW$_ADV_LOG B, ALL_USERS D
WHERE a.collectionid# = b.runid#
AND b.uname = d.username
AND d.user_id = userenv('SCHEMAID');

   COMMENT ON TABLE "MVIEW_WORKLOAD"  IS 'This view gives DBA access to shared workload';
/
--------------------------------------------------------
--  DDL for View PRODUCT_PRIVS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "PRODUCT_PRIVS" ("PRODUCT", "USERID", "ATTRIBUTE", "SCOPE", "NUMERIC_VALUE", "CHAR_VALUE", "DATE_VALUE", "LONG_VALUE") AS 
  SELECT PRODUCT, USERID, ATTRIBUTE, SCOPE,
         NUMERIC_VALUE, CHAR_VALUE, DATE_VALUE, LONG_VALUE
  FROM SQLPLUS_PRODUCT_PROFILE
  WHERE USERID = 'PUBLIC' OR USER LIKE USERID;
/
--------------------------------------------------------
--  DDL for View SCHEDULER_JOB_ARGS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SCHEDULER_JOB_ARGS" ("OWNER", "JOB_NAME", "ARGUMENT_NAME", "ARGUMENT_POSITION", "ARGUMENT_TYPE", "VALUE", "ANYDATA_VALUE", "OUT_ARGUMENT") AS 
  SELECT "OWNER","JOB_NAME","ARGUMENT_NAME","ARGUMENT_POSITION","ARGUMENT_TYPE","VALUE","ANYDATA_VALUE","OUT_ARGUMENT" FROM sys.all_scheduler_job_args;
/
--------------------------------------------------------
--  DDL for View SCHEDULER_PROGRAM_ARGS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SCHEDULER_PROGRAM_ARGS" ("OWNER", "PROGRAM_NAME", "ARGUMENT_NAME", "ARGUMENT_POSITION", "ARGUMENT_TYPE", "METADATA_ATTRIBUTE", "DEFAULT_VALUE", "DEFAULT_ANYDATA_VALUE", "OUT_ARGUMENT") AS 
  SELECT "OWNER","PROGRAM_NAME","ARGUMENT_NAME","ARGUMENT_POSITION","ARGUMENT_TYPE","METADATA_ATTRIBUTE","DEFAULT_VALUE","DEFAULT_ANYDATA_VALUE","OUT_ARGUMENT" FROM sys.all_scheduler_program_args;
/
REM INSERTING into AQ$_INTERNET_AGENTS
SET DEFINE OFF;
Insert into AQ$_INTERNET_AGENTS (AGENT_NAME,PROTOCOL,SPARE1) values ('SCHEDULER$_EVENT_AGENT',0,null);
Insert into AQ$_INTERNET_AGENTS (AGENT_NAME,PROTOCOL,SPARE1) values ('SCHEDULER$_REMDB_AGENT',0,null);
Insert into AQ$_INTERNET_AGENTS (AGENT_NAME,PROTOCOL,SPARE1) values ('SERVER_ALERT',0,null);
Insert into AQ$_INTERNET_AGENTS (AGENT_NAME,PROTOCOL,SPARE1) values ('HAE_SUB',0,null);
Insert into AQ$_INTERNET_AGENTS (AGENT_NAME,PROTOCOL,SPARE1) values ('ILM_AGENT',0,null);
REM INSERTING into AQ$_INTERNET_AGENT_PRIVS
SET DEFINE OFF;
Insert into AQ$_INTERNET_AGENT_PRIVS (AGENT_NAME,DB_USERNAME) values ('SCHEDULER$_EVENT_AGENT','SYS');
Insert into AQ$_INTERNET_AGENT_PRIVS (AGENT_NAME,DB_USERNAME) values ('SCHEDULER$_REMDB_AGENT','SYS');
Insert into AQ$_INTERNET_AGENT_PRIVS (AGENT_NAME,DB_USERNAME) values ('SERVER_ALERT','SYS');
REM INSERTING into AQ$_QUEUES
SET DEFINE OFF;
Insert into AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED) values ('89DD9E2B618B45F895B4850CEA33CCA4',17406,'AQ$_SCHEDULER$_EVENT_QTAB_E',17384,1,0,0,0,0,0,'exception queue',null,null,null,null,null,0);
Insert into AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED) values ('6C5873C297864630BED5B0E7FF022E78',17407,'SCHEDULER$_EVENT_QUEUE',17384,0,3,5,0,0,3600,'Scheduler event queue',null,null,null,null,null,0);
Insert into AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED) values ('303EEF2280C84E9CA4496C06CB9728EE',17440,'AQ$_SCHEDULER$_REMDB_JOBQTAB_E',17411,1,0,0,0,0,0,'exception queue',null,null,null,null,null,0);
Insert into AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED) values ('8BE34E975600499F877B947B3FDB2466',17441,'SCHEDULER$_REMDB_JOBQ',17411,0,3,5,0,0,0,'Scheduler remote db job queue',null,null,null,null,null,0);
Insert into AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED) values ('99831A5120304E399990BD7B43733563',17470,'AQ$_SCHEDULER_FILEWATCHER_QT_E',17445,1,0,0,0,0,0,'exception queue',null,null,null,null,null,0);
Insert into AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED) values ('3E77EEA806DD480BA79445456226C07D',17471,'SCHEDULER_FILEWATCHER_Q',17445,0,3,5,0,0,0,'Scheduler file watcher results queue',null,null,null,null,null,0);
Insert into AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED) values ('FAEACCBD9BB34F08AD774BE9812D3D19',17525,'AQ$_ALERT_QT_E',17503,1,2,0,0,0,0,'exception queue',null,null,null,null,null,0);
Insert into AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED) values ('6E19706B110D44F999D64C24C849EFB4',17526,'ALERT_QUE',17503,0,3,5,0,0,0,'Server Generated Alert Queue',null,null,null,null,null,0);
Insert into AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED) values ('A8F77674DFBD4BDAB77D00B2FDFAA545',17634,'AQ$_KUPC$DATAPUMP_QUETAB_E',17587,1,0,0,0,0,0,'exception queue',null,null,null,null,null,0);
Insert into AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED) values ('5D1D0F52429346F6B82F4CE374FC6F3F',17956,'AQ$_AQ$_MEM_MC_E',17932,1,0,0,0,0,0,'exception queue',null,null,null,null,null,0);
Insert into AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED) values ('DB1C15A935504E15A4D65D9DE86AE42C',17957,'SRVQUEUE',17932,2,3,0,0,0,0,null,null,null,null,null,null,0);
Insert into AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED) values ('15F2CC27035B425089C6D185732EAE89',17968,'AQ$_AQ_EVENT_TABLE_E',17958,1,0,0,0,0,0,'exception queue',null,null,null,null,null,0);
Insert into AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED) values ('833940F8FCCA4385AAAB31FCD9B35B0B',17969,'AQ_EVENT_TABLE_Q',17958,0,3,5,0,0,0,'CREATING AQ_EVENT_TABLE_Q QUEUE',null,null,null,null,null,0);
Insert into AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED) values ('CFC054DD1C8D42EFBAFC9E5BEF255770',17992,'AQ$_AQ_PROP_TABLE_E',17970,1,0,0,0,0,0,'exception queue',null,null,null,null,null,0);
Insert into AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED) values ('003405408E20483E9FC18C0007FC9614',17993,'AQ_PROP_NOTIFY',17970,0,3,5,0,0,0,'Queue for Notifying events in AQ Prop. Scheduling',null,null,null,null,null,0);
Insert into AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED) values ('71306DE8410A47E4A6A495634D1A3CDC',18246,'AQ$_DEF$_AQCALL_E',18238,1,0,0,0,0,0,'exception queue',null,null,null,null,null,0);
Insert into AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED) values ('843170A33B6E48FF8D804FB188949C11',18247,'DEF$_AQCALL',18238,0,3,5,0,1,0,'Deferred RPC Queue',null,null,null,null,null,0);
Insert into AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED) values ('AD2478AB6BE7411EA2EE2EE0BDBA848B',18257,'AQ$_DEF$_AQERROR_E',18249,1,0,0,0,0,0,'exception queue',null,null,null,null,null,0);
Insert into AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED) values ('174AFE969B4A4415B6AB308FCF3CE332',18258,'DEF$_AQERROR',18249,0,3,5,0,1,0,'Error Queue for Deferred RPCs',null,null,null,null,null,0);
Insert into AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED) values ('DFC6C72269594C4AA6B02F15FFD7961C',18299,'AQ$_SYS$SERVICE_METRICS_TAB_E',18277,1,0,0,0,0,0,'exception queue',null,null,null,null,null,0);
Insert into AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED) values ('E71D803212204BFF853D792FB218D1F0',18300,'SYS$SERVICE_METRICS',18277,0,3,5,0,0,3600,null,null,null,null,null,null,0);
Insert into AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED) values ('636C2FCD53394C9790674DC6C33224E0',19736,'AQ$_CHANGE_LOG_QUEUE_TABLE_E',19714,1,0,0,0,0,0,'exception queue',null,null,null,null,null,0);
Insert into AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED) values ('7E3F32897A414A96A4AC818C6CEF0C43',19737,'CHANGE_LOG_QUEUE',19714,0,3,5,0,0,0,'GSM Change Log Queue',null,null,null,null,null,0);
Insert into AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED) values ('87652D073E244AA181D82165047DE9EA',19954,'AQ$_WM$EVENT_QUEUE_TABLE_E',19927,1,0,0,0,0,0,'exception queue',null,null,null,null,null,0);
Insert into AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED) values ('FAF5744DFCA74D21A9F2CE320CEB3857',19955,'WM$EVENT_QUEUE',19927,0,3,5,0,0,0,'OWM Events Queue',null,null,null,null,null,0);
REM INSERTING into AQ$_QUEUE_TABLES
SET DEFINE OFF;
Insert into AQ$_QUEUE_TABLES (SCHEMA,NAME,UDATA_TYPE,OBJNO,FLAGS,SORT_COLS,TIMEZONE,TABLE_COMMENT) values ('SYS','SCHEDULER$_EVENT_QTAB',1,17384,16805897,2,'00:00','Scheduler event queue table');
Insert into AQ$_QUEUE_TABLES (SCHEMA,NAME,UDATA_TYPE,OBJNO,FLAGS,SORT_COLS,TIMEZONE,TABLE_COMMENT) values ('SYS','SCHEDULER$_REMDB_JOBQTAB',1,17411,16801801,2,'00:00','Scheduler remote db job queue table');
Insert into AQ$_QUEUE_TABLES (SCHEMA,NAME,UDATA_TYPE,OBJNO,FLAGS,SORT_COLS,TIMEZONE,TABLE_COMMENT) values ('SYS','SCHEDULER_FILEWATCHER_QT',1,17445,16805897,2,'00:00','Scheduler file watcher result queue table');
Insert into AQ$_QUEUE_TABLES (SCHEMA,NAME,UDATA_TYPE,OBJNO,FLAGS,SORT_COLS,TIMEZONE,TABLE_COMMENT) values ('SYS','ALERT_QT',1,17503,16805897,2,'00:00','Server Generated Alert Queue Table');
Insert into AQ$_QUEUE_TABLES (SCHEMA,NAME,UDATA_TYPE,OBJNO,FLAGS,SORT_COLS,TIMEZONE,TABLE_COMMENT) values ('SYS','KUPC$DATAPUMP_QUETAB',1,17587,16793609,2,'00:00','DataPump Queue Table');
Insert into AQ$_QUEUE_TABLES (SCHEMA,NAME,UDATA_TYPE,OBJNO,FLAGS,SORT_COLS,TIMEZONE,TABLE_COMMENT) values ('SYS','AQ$_MEM_MC',3,17932,16801801,2,'00:00','table for non_persistent queues');
Insert into AQ$_QUEUE_TABLES (SCHEMA,NAME,UDATA_TYPE,OBJNO,FLAGS,SORT_COLS,TIMEZONE,TABLE_COMMENT) values ('SYS','AQ_EVENT_TABLE',1,17958,16793600,2,'00:00','CREATING AQ_EVENT_TABLE QUEUE TABLE');
Insert into AQ$_QUEUE_TABLES (SCHEMA,NAME,UDATA_TYPE,OBJNO,FLAGS,SORT_COLS,TIMEZONE,TABLE_COMMENT) values ('SYS','AQ_PROP_TABLE',1,17970,16801801,2,'00:00','Queue Table for Notification in AQ Prop. Scheduling');
Insert into AQ$_QUEUE_TABLES (SCHEMA,NAME,UDATA_TYPE,OBJNO,FLAGS,SORT_COLS,TIMEZONE,TABLE_COMMENT) values ('SYSTEM','DEF$_AQCALL',2,18238,16793600,2,'00:00',null);
Insert into AQ$_QUEUE_TABLES (SCHEMA,NAME,UDATA_TYPE,OBJNO,FLAGS,SORT_COLS,TIMEZONE,TABLE_COMMENT) values ('SYSTEM','DEF$_AQERROR',2,18249,16793600,2,'00:00',null);
Insert into AQ$_QUEUE_TABLES (SCHEMA,NAME,UDATA_TYPE,OBJNO,FLAGS,SORT_COLS,TIMEZONE,TABLE_COMMENT) values ('SYS','SYS$SERVICE_METRICS_TAB',1,18277,16801801,2,'00:00',null);
Insert into AQ$_QUEUE_TABLES (SCHEMA,NAME,UDATA_TYPE,OBJNO,FLAGS,SORT_COLS,TIMEZONE,TABLE_COMMENT) values ('GSMADMIN_INTERNAL','CHANGE_LOG_QUEUE_TABLE',1,19714,16801801,2,'00:00','Creating GSM change log queue table');
Insert into AQ$_QUEUE_TABLES (SCHEMA,NAME,UDATA_TYPE,OBJNO,FLAGS,SORT_COLS,TIMEZONE,TABLE_COMMENT) values ('WMSYS','WM$EVENT_QUEUE_TABLE',1,19927,16801801,2,'00:00',null);
REM INSERTING into AQ$_SCHEDULES
SET DEFINE OFF;
REM INSERTING into DEF$_CALLDEST
SET DEFINE OFF;
REM INSERTING into DEF$_DEFAULTDEST
SET DEFINE OFF;
REM INSERTING into DEF$_DESTINATION
SET DEFINE OFF;
REM INSERTING into DEF$_ERROR
SET DEFINE OFF;
REM INSERTING into DEF$_LOB
SET DEFINE OFF;
REM INSERTING into DEF$_ORIGIN
SET DEFINE OFF;
REM INSERTING into DEF$_PROPAGATOR
SET DEFINE OFF;
REM INSERTING into DEF$_PUSHED_TRANSACTIONS
SET DEFINE OFF;
REM INSERTING into HELP
SET DEFINE OFF;
Insert into HELP (TOPIC,SEQ,INFO) values ('@',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('@',2,' @ ("at" sign)');
Insert into HELP (TOPIC,SEQ,INFO) values ('@',3,' -------------');
Insert into HELP (TOPIC,SEQ,INFO) values ('@',4,' Runs the SQL*Plus statements in the specified script. The script can be');
Insert into HELP (TOPIC,SEQ,INFO) values ('@',5,' called from the local file system or a web server.');
Insert into HELP (TOPIC,SEQ,INFO) values ('@',6,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('@',7,' @ {url|file_name[.ext]} [arg ...]');
Insert into HELP (TOPIC,SEQ,INFO) values ('@',8,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('@',9,' where url supports HTTP and FTP protocols in the form:');
Insert into HELP (TOPIC,SEQ,INFO) values ('@',10,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('@',11,'    http://host.domain/script.sql');
Insert into HELP (TOPIC,SEQ,INFO) values ('@',12,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('@@',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('@@',2,' @@ (double "at" sign)');
Insert into HELP (TOPIC,SEQ,INFO) values ('@@',3,' ---------------------');
Insert into HELP (TOPIC,SEQ,INFO) values ('@@',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('@@',5,' Runs the specified script. This command is almost identical to');
Insert into HELP (TOPIC,SEQ,INFO) values ('@@',6,' the @ command. It is useful for running nested scripts because it');
Insert into HELP (TOPIC,SEQ,INFO) values ('@@',7,' has the additional functionality of looking for the nested script');
Insert into HELP (TOPIC,SEQ,INFO) values ('@@',8,' in the same url or path as the calling script.');
Insert into HELP (TOPIC,SEQ,INFO) values ('@@',9,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('@@',10,' @@ {url|file_name[.ext]} [arg ...]');
Insert into HELP (TOPIC,SEQ,INFO) values ('@@',11,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('/',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('/',2,' / (slash)');
Insert into HELP (TOPIC,SEQ,INFO) values ('/',3,' ---------');
Insert into HELP (TOPIC,SEQ,INFO) values ('/',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('/',5,' Executes the most recently executed SQL command or PL/SQL block');
Insert into HELP (TOPIC,SEQ,INFO) values ('/',6,' which is stored in the SQL buffer. Use slash (/) at the command');
Insert into HELP (TOPIC,SEQ,INFO) values ('/',7,' prompt or line number prompt in SQL*Plus command line. The buffer');
Insert into HELP (TOPIC,SEQ,INFO) values ('/',8,' has no command history and does not record SQL*Plus commands.');
Insert into HELP (TOPIC,SEQ,INFO) values ('/',9,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('/',10,' /');
Insert into HELP (TOPIC,SEQ,INFO) values ('/',11,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('ACCEPT',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('ACCEPT',2,' ACCEPT');
Insert into HELP (TOPIC,SEQ,INFO) values ('ACCEPT',3,' ------');
Insert into HELP (TOPIC,SEQ,INFO) values ('ACCEPT',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('ACCEPT',5,' Reads a line of input and stores it in a given substitution variable.');
Insert into HELP (TOPIC,SEQ,INFO) values ('ACCEPT',6,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('ACCEPT',7,' ACC[EPT] variable [NUM[BER] | CHAR | DATE | BINARY_FLOAT | BINARY_DOUBLE]');
Insert into HELP (TOPIC,SEQ,INFO) values ('ACCEPT',8,' [FOR[MAT] format] [DEF[AULT] default] [PROMPT text | NOPR[OMPT]] [HIDE]');
Insert into HELP (TOPIC,SEQ,INFO) values ('ACCEPT',9,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('APPEND',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('APPEND',2,' APPEND');
Insert into HELP (TOPIC,SEQ,INFO) values ('APPEND',3,' ------');
Insert into HELP (TOPIC,SEQ,INFO) values ('APPEND',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('APPEND',5,' Adds text to the end of the current line in the SQL buffer.');
Insert into HELP (TOPIC,SEQ,INFO) values ('APPEND',6,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('APPEND',7,' A[PPEND] text');
Insert into HELP (TOPIC,SEQ,INFO) values ('APPEND',8,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('ARCHIVE LOG',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('ARCHIVE LOG',2,' ARCHIVE LOG');
Insert into HELP (TOPIC,SEQ,INFO) values ('ARCHIVE LOG',3,' -----------');
Insert into HELP (TOPIC,SEQ,INFO) values ('ARCHIVE LOG',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('ARCHIVE LOG',5,' Displays information about redo log files.');
Insert into HELP (TOPIC,SEQ,INFO) values ('ARCHIVE LOG',6,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('ARCHIVE LOG',7,' ARCHIVE LOG LIST');
Insert into HELP (TOPIC,SEQ,INFO) values ('ARCHIVE LOG',8,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',2,' ATTRIBUTE');
Insert into HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',3,' ---------');
Insert into HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',5,' Specifies display characteristics for a given attribute of an Object Type');
Insert into HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',6,' column, such as the format of NUMBER data. Columns and attributes should');
Insert into HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',7,' not have the same names as they share a common namespace. Lists the');
Insert into HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',8,' current display characteristics for a single attribute or all attributes.');
Insert into HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',9,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',10,' ATTRIBUTE [type_name.attribute_name [option ... ]]');
Insert into HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',11,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',12,' where option represents one of the following terms or clauses:');
Insert into HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',13,'     ALI[AS] alias');
Insert into HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',14,'     CLE[AR]');
Insert into HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',15,'     FOR[MAT] format');
Insert into HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',16,'     LIKE {type_name.attribute_name | alias}');
Insert into HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',17,'     ON|OFF');
Insert into HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',18,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('BREAK',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('BREAK',2,' BREAK');
Insert into HELP (TOPIC,SEQ,INFO) values ('BREAK',3,' -----');
Insert into HELP (TOPIC,SEQ,INFO) values ('BREAK',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('BREAK',5,' Specifies where changes occur in a report and the formatting');
Insert into HELP (TOPIC,SEQ,INFO) values ('BREAK',6,' action to perform, such as:');
Insert into HELP (TOPIC,SEQ,INFO) values ('BREAK',7,' - suppressing display of duplicate values for a given column');
Insert into HELP (TOPIC,SEQ,INFO) values ('BREAK',8,' - skipping a line each time a given column value changes');
Insert into HELP (TOPIC,SEQ,INFO) values ('BREAK',9,' - printing computed figures each time a given column value');
Insert into HELP (TOPIC,SEQ,INFO) values ('BREAK',10,'   changes or at the end of the report.');
Insert into HELP (TOPIC,SEQ,INFO) values ('BREAK',11,' Enter BREAK with no clauses to list the current BREAK definition.');
Insert into HELP (TOPIC,SEQ,INFO) values ('BREAK',12,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('BREAK',13,' BRE[AK] [ON report_element [action [action]]] ...');
Insert into HELP (TOPIC,SEQ,INFO) values ('BREAK',14,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('BREAK',15,' where report_element has the following syntax:');
Insert into HELP (TOPIC,SEQ,INFO) values ('BREAK',16,'     {column | expression | ROW | REPORT}');
Insert into HELP (TOPIC,SEQ,INFO) values ('BREAK',17,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('BREAK',18,' and where action has the following syntax:');
Insert into HELP (TOPIC,SEQ,INFO) values ('BREAK',19,'     [SKI[P] n | [SKI[P]] PAGE] [NODUP[LICATES] | DUP[LICATES]]');
Insert into HELP (TOPIC,SEQ,INFO) values ('BREAK',20,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('BTITLE',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('BTITLE',2,' BTITLE');
Insert into HELP (TOPIC,SEQ,INFO) values ('BTITLE',3,' ------');
Insert into HELP (TOPIC,SEQ,INFO) values ('BTITLE',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('BTITLE',5,' Places and formats a specified title at the bottom of each report');
Insert into HELP (TOPIC,SEQ,INFO) values ('BTITLE',6,' page, or lists the current BTITLE definition.');
Insert into HELP (TOPIC,SEQ,INFO) values ('BTITLE',7,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('BTITLE',8,' BTI[TLE] [printspec [text|variable] ...] | [OFF|ON]');
Insert into HELP (TOPIC,SEQ,INFO) values ('BTITLE',9,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('BTITLE',10,' where printspec represents one or more of the following clauses:');
Insert into HELP (TOPIC,SEQ,INFO) values ('BTITLE',11,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('BTITLE',12,'     COL n          LE[FT]        BOLD');
Insert into HELP (TOPIC,SEQ,INFO) values ('BTITLE',13,'     S[KIP] [n]     CE[NTER]      FORMAT text');
Insert into HELP (TOPIC,SEQ,INFO) values ('BTITLE',14,'     TAB n          R[IGHT]');
Insert into HELP (TOPIC,SEQ,INFO) values ('BTITLE',15,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('CHANGE',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('CHANGE',2,' CHANGE');
Insert into HELP (TOPIC,SEQ,INFO) values ('CHANGE',3,' ------');
Insert into HELP (TOPIC,SEQ,INFO) values ('CHANGE',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('CHANGE',5,' Changes the first occurrence of the specified text on the current');
Insert into HELP (TOPIC,SEQ,INFO) values ('CHANGE',6,' line of the SQL buffer. The buffer has no command history list and');
Insert into HELP (TOPIC,SEQ,INFO) values ('CHANGE',7,' does not record SQL*Plus commands.');
Insert into HELP (TOPIC,SEQ,INFO) values ('CHANGE',8,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('CHANGE',9,' C[HANGE] sepchar old [sepchar [new[sepchar]]]');
Insert into HELP (TOPIC,SEQ,INFO) values ('CHANGE',10,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('CLEAR',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('CLEAR',2,' CLEAR');
Insert into HELP (TOPIC,SEQ,INFO) values ('CLEAR',3,' -----');
Insert into HELP (TOPIC,SEQ,INFO) values ('CLEAR',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('CLEAR',5,' Resets or erases the current value or setting for the specified option.');
Insert into HELP (TOPIC,SEQ,INFO) values ('CLEAR',6,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('CLEAR',7,' CL[EAR] option ...');
Insert into HELP (TOPIC,SEQ,INFO) values ('CLEAR',8,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('CLEAR',9,' where option represents one of the following clauses:');
Insert into HELP (TOPIC,SEQ,INFO) values ('CLEAR',10,'     BRE[AKS]');
Insert into HELP (TOPIC,SEQ,INFO) values ('CLEAR',11,'     BUFF[ER]');
Insert into HELP (TOPIC,SEQ,INFO) values ('CLEAR',12,'     COL[UMNS]');
Insert into HELP (TOPIC,SEQ,INFO) values ('CLEAR',13,'     COMP[UTES]');
Insert into HELP (TOPIC,SEQ,INFO) values ('CLEAR',14,'     SCR[EEN]');
Insert into HELP (TOPIC,SEQ,INFO) values ('CLEAR',15,'     SQL');
Insert into HELP (TOPIC,SEQ,INFO) values ('CLEAR',16,'     TIMI[NG]');
Insert into HELP (TOPIC,SEQ,INFO) values ('CLEAR',17,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',2,' COLUMN');
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',3,' ------');
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',5,' Specifies display attributes for a given column, such as:');
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',6,'     - text for the column heading');
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',7,'     - alignment for the column heading');
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',8,'     - format for NUMBER data');
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',9,'     - wrapping of column data');
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',10,' Also lists the current display attributes for a single column');
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',11,' or all columns.');
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',12,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',13,' COL[UMN] [{column | expr} [option ...] ]');
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',14,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',15,' where option represents one of the following clauses:');
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',16,'     ALI[AS] alias');
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',17,'     CLE[AR]');
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',18,'     ENTMAP {ON|OFF}');
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',19,'     FOLD_A[FTER]');
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',20,'     FOLD_B[EFORE]');
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',21,'     FOR[MAT] format');
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',22,'     HEA[DING] text');
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',23,'     JUS[TIFY] {L[EFT] | C[ENTER] | R[IGHT]}');
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',24,'     LIKE {expr | alias}');
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',25,'     NEWL[INE]');
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',26,'     NEW_V[ALUE] variable');
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',27,'     NOPRI[NT] | PRI[NT]');
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',28,'     NUL[L] text');
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',29,'     OLD_V[ALUE] variable');
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',30,'     ON|OFF');
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',31,'     WRA[PPED] | WOR[D_WRAPPED] | TRU[NCATED]');
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',32,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('COMPUTE',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('COMPUTE',2,' COMPUTE');
Insert into HELP (TOPIC,SEQ,INFO) values ('COMPUTE',3,' -------');
Insert into HELP (TOPIC,SEQ,INFO) values ('COMPUTE',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('COMPUTE',5,' In combination with the BREAK command, calculates and prints');
Insert into HELP (TOPIC,SEQ,INFO) values ('COMPUTE',6,' summary lines using various standard computations. Also lists');
Insert into HELP (TOPIC,SEQ,INFO) values ('COMPUTE',7,' all COMPUTE definitions.');
Insert into HELP (TOPIC,SEQ,INFO) values ('COMPUTE',8,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('COMPUTE',9,' COMP[UTE] [function [LAB[EL] text] ...');
Insert into HELP (TOPIC,SEQ,INFO) values ('COMPUTE',10,'   OF {expr|column|alias} ...');
Insert into HELP (TOPIC,SEQ,INFO) values ('COMPUTE',11,'   ON {expr|column|alias|REPORT|ROW} ...]');
Insert into HELP (TOPIC,SEQ,INFO) values ('COMPUTE',12,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('CONNECT',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('CONNECT',2,' CONNECT');
Insert into HELP (TOPIC,SEQ,INFO) values ('CONNECT',3,' -------');
Insert into HELP (TOPIC,SEQ,INFO) values ('CONNECT',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('CONNECT',5,' Connects a given username to the Oracle Database. When you run a');
Insert into HELP (TOPIC,SEQ,INFO) values ('CONNECT',6,' CONNECT command, the site profile, glogin.sql, and the user profile,');
Insert into HELP (TOPIC,SEQ,INFO) values ('CONNECT',7,' login.sql, are processed in that order. CONNECT does not reprompt');
Insert into HELP (TOPIC,SEQ,INFO) values ('CONNECT',8,' for username or password if the initial connection does not succeed.');
Insert into HELP (TOPIC,SEQ,INFO) values ('CONNECT',9,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('CONNECT',10,' CONN[ECT] [{logon|/|proxy}');
Insert into HELP (TOPIC,SEQ,INFO) values ('CONNECT',11,' [AS {SYSASM|SYSBACKUP|SYSDBA|SYSDG|SYSOPER|SYSRAC|SYSKM}]');
Insert into HELP (TOPIC,SEQ,INFO) values ('CONNECT',12,' [edition=value]]');
Insert into HELP (TOPIC,SEQ,INFO) values ('CONNECT',13,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('CONNECT',14,' where logon has the following syntax:');
Insert into HELP (TOPIC,SEQ,INFO) values ('CONNECT',15,'     username[/password][@connect_identifier]');
Insert into HELP (TOPIC,SEQ,INFO) values ('CONNECT',16,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('CONNECT',17,' where proxy has the syntax:');
Insert into HELP (TOPIC,SEQ,INFO) values ('CONNECT',18,'     proxyuser[username][/password][@connect_identifier]');
Insert into HELP (TOPIC,SEQ,INFO) values ('CONNECT',19,' NOTE: Brackets around username in proxy are required syntax');
Insert into HELP (TOPIC,SEQ,INFO) values ('CONNECT',20,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('COPY',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('COPY',2,' COPY');
Insert into HELP (TOPIC,SEQ,INFO) values ('COPY',3,' ----');
Insert into HELP (TOPIC,SEQ,INFO) values ('COPY',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('COPY',5,' Copies data from a query to a table in the same or another');
Insert into HELP (TOPIC,SEQ,INFO) values ('COPY',6,' database. COPY supports CHAR, DATE, LONG, NUMBER and VARCHAR2.');
Insert into HELP (TOPIC,SEQ,INFO) values ('COPY',7,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('COPY',8,' COPY {FROM database | TO database | FROM database TO database}');
Insert into HELP (TOPIC,SEQ,INFO) values ('COPY',9,'            {APPEND|CREATE|INSERT|REPLACE} destination_table');
Insert into HELP (TOPIC,SEQ,INFO) values ('COPY',10,'            [(column, column, column, ...)] USING query');
Insert into HELP (TOPIC,SEQ,INFO) values ('COPY',11,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('COPY',12,' where database has the following syntax:');
Insert into HELP (TOPIC,SEQ,INFO) values ('COPY',13,'     username[/password]@connect_identifier');
Insert into HELP (TOPIC,SEQ,INFO) values ('COPY',14,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('DEFINE',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('DEFINE',2,' DEFINE');
Insert into HELP (TOPIC,SEQ,INFO) values ('DEFINE',3,' ------');
Insert into HELP (TOPIC,SEQ,INFO) values ('DEFINE',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('DEFINE',5,' Specifies a substitution variable and assigns a CHAR value to it, or');
Insert into HELP (TOPIC,SEQ,INFO) values ('DEFINE',6,' lists the value and variable type of a single variable or all variables.');
Insert into HELP (TOPIC,SEQ,INFO) values ('DEFINE',7,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('DEFINE',8,' DEF[INE] [variable] | [variable = text]');
Insert into HELP (TOPIC,SEQ,INFO) values ('DEFINE',9,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('DEL',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('DEL',2,' DEL');
Insert into HELP (TOPIC,SEQ,INFO) values ('DEL',3,' ---');
Insert into HELP (TOPIC,SEQ,INFO) values ('DEL',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('DEL',5,' Deletes one or more lines of the SQL buffer. The buffer has no');
Insert into HELP (TOPIC,SEQ,INFO) values ('DEL',6,' command history list and does not record SQL*Plus commands.');
Insert into HELP (TOPIC,SEQ,INFO) values ('DEL',7,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('DEL',8,' DEL [n | n m | n * | n LAST | * | * n | * LAST | LAST]');
Insert into HELP (TOPIC,SEQ,INFO) values ('DEL',9,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('DESCRIBE',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('DESCRIBE',2,' DESCRIBE');
Insert into HELP (TOPIC,SEQ,INFO) values ('DESCRIBE',3,' --------');
Insert into HELP (TOPIC,SEQ,INFO) values ('DESCRIBE',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('DESCRIBE',5,' Lists the column definitions for a table, view, or synonym,');
Insert into HELP (TOPIC,SEQ,INFO) values ('DESCRIBE',6,' or the specifications for a function or procedure.');
Insert into HELP (TOPIC,SEQ,INFO) values ('DESCRIBE',7,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('DESCRIBE',8,' DESC[RIBE] {[schema.]object[@connect_identifier]}');
Insert into HELP (TOPIC,SEQ,INFO) values ('DESCRIBE',9,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',2,' DISCONNECT');
Insert into HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',3,' ----------');
Insert into HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',5,' Commits pending changes to the database and logs the current');
Insert into HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',6,' user out of Oracle, but does not exit SQL*Plus.');
Insert into HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',7,' In SQL*Plus command line, use EXIT or QUIT to log out of Oracle');
Insert into HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',8,' and return control to your computer''s operating system.');
Insert into HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',9,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',10,' DISC[ONNECT]');
Insert into HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',11,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('EDIT',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('EDIT',2,' EDIT');
Insert into HELP (TOPIC,SEQ,INFO) values ('EDIT',3,' ----');
Insert into HELP (TOPIC,SEQ,INFO) values ('EDIT',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('EDIT',5,' Invokes an operating system text editor on the contents of the');
Insert into HELP (TOPIC,SEQ,INFO) values ('EDIT',6,' specified file or on the contents of the SQL buffer. The buffer');
Insert into HELP (TOPIC,SEQ,INFO) values ('EDIT',7,' has no command history list and does not record SQL*Plus commands.');
Insert into HELP (TOPIC,SEQ,INFO) values ('EDIT',8,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('EDIT',9,' ED[IT] [file_name[.ext]]');
Insert into HELP (TOPIC,SEQ,INFO) values ('EDIT',10,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('EXECUTE',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('EXECUTE',2,' EXECUTE');
Insert into HELP (TOPIC,SEQ,INFO) values ('EXECUTE',3,' -------');
Insert into HELP (TOPIC,SEQ,INFO) values ('EXECUTE',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('EXECUTE',5,' Executes a single PL/SQL statement or runs a stored procedure.');
Insert into HELP (TOPIC,SEQ,INFO) values ('EXECUTE',6,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('EXECUTE',7,' EXEC[UTE] statement');
Insert into HELP (TOPIC,SEQ,INFO) values ('EXECUTE',8,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('EXIT',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('EXIT',2,' EXIT');
Insert into HELP (TOPIC,SEQ,INFO) values ('EXIT',3,' ----');
Insert into HELP (TOPIC,SEQ,INFO) values ('EXIT',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('EXIT',5,' Commits or rolls back all pending changes, logs out of Oracle,');
Insert into HELP (TOPIC,SEQ,INFO) values ('EXIT',6,' terminates SQL*Plus and returns control to the operating system.');
Insert into HELP (TOPIC,SEQ,INFO) values ('EXIT',7,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('EXIT',8,' {EXIT|QUIT} [SUCCESS|FAILURE|WARNING|n|variable|:BindVariable]');
Insert into HELP (TOPIC,SEQ,INFO) values ('EXIT',9,'   [COMMIT|ROLLBACK]');
Insert into HELP (TOPIC,SEQ,INFO) values ('EXIT',10,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('GET',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('GET',2,' GET');
Insert into HELP (TOPIC,SEQ,INFO) values ('GET',3,' ---');
Insert into HELP (TOPIC,SEQ,INFO) values ('GET',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('GET',5,' Loads a SQL statement or PL/SQL block from a script into the SQL buffer.');
Insert into HELP (TOPIC,SEQ,INFO) values ('GET',6,' The buffer has no command history list and does not record SQL*Plus commands.');
Insert into HELP (TOPIC,SEQ,INFO) values ('GET',7,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('GET',8,' GET [FILE] file_name[.ext] [LIST | NOLIST]');
Insert into HELP (TOPIC,SEQ,INFO) values ('GET',9,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('HELP',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('HELP',2,' HELP');
Insert into HELP (TOPIC,SEQ,INFO) values ('HELP',3,' ----');
Insert into HELP (TOPIC,SEQ,INFO) values ('HELP',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('HELP',5,' Accesses this command line help system. Enter HELP INDEX or ? INDEX');
Insert into HELP (TOPIC,SEQ,INFO) values ('HELP',6,' for a list of topics.');
Insert into HELP (TOPIC,SEQ,INFO) values ('HELP',7,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('HELP',8,' You can view SQL*Plus resources at');
Insert into HELP (TOPIC,SEQ,INFO) values ('HELP',9,'     http://www.oracle.com/technology/documentation/');
Insert into HELP (TOPIC,SEQ,INFO) values ('HELP',10,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('HELP',11,' HELP|? [topic]');
Insert into HELP (TOPIC,SEQ,INFO) values ('HELP',12,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('HOST',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('HOST',2,' HOST');
Insert into HELP (TOPIC,SEQ,INFO) values ('HOST',3,' ----');
Insert into HELP (TOPIC,SEQ,INFO) values ('HOST',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('HOST',5,' Executes an operating system command without leaving SQL*Plus.');
Insert into HELP (TOPIC,SEQ,INFO) values ('HOST',6,' Enter HOST without command to display an operating system prompt.');
Insert into HELP (TOPIC,SEQ,INFO) values ('HOST',7,' You can then enter multiple operating system commands.');
Insert into HELP (TOPIC,SEQ,INFO) values ('HOST',8,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('HOST',9,' HO[ST] [command]');
Insert into HELP (TOPIC,SEQ,INFO) values ('HOST',10,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('INDEX',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('INDEX',2,'Enter Help [topic] for help.');
Insert into HELP (TOPIC,SEQ,INFO) values ('INDEX',3,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('INDEX',4,' @             COPY         PAUSE                    SHUTDOWN');
Insert into HELP (TOPIC,SEQ,INFO) values ('INDEX',5,' @@            DEFINE       PRINT                    SPOOL');
Insert into HELP (TOPIC,SEQ,INFO) values ('INDEX',6,' /             DEL          PROMPT                   SQLPLUS');
Insert into HELP (TOPIC,SEQ,INFO) values ('INDEX',7,' ACCEPT        DESCRIBE     QUIT                     START');
Insert into HELP (TOPIC,SEQ,INFO) values ('INDEX',8,' APPEND        DISCONNECT   RECOVER                  STARTUP');
Insert into HELP (TOPIC,SEQ,INFO) values ('INDEX',9,' ARCHIVE LOG   EDIT         REMARK                   STORE');
Insert into HELP (TOPIC,SEQ,INFO) values ('INDEX',10,' ATTRIBUTE     EXECUTE      REPFOOTER                TIMING');
Insert into HELP (TOPIC,SEQ,INFO) values ('INDEX',11,' BREAK         EXIT         REPHEADER                TTITLE');
Insert into HELP (TOPIC,SEQ,INFO) values ('INDEX',12,' BTITLE        GET          RESERVED WORDS (SQL)     UNDEFINE');
Insert into HELP (TOPIC,SEQ,INFO) values ('INDEX',13,' CHANGE        HELP         RESERVED WORDS (PL/SQL)  VARIABLE');
Insert into HELP (TOPIC,SEQ,INFO) values ('INDEX',14,' CLEAR         HOST         RUN                      WHENEVER OSERROR');
Insert into HELP (TOPIC,SEQ,INFO) values ('INDEX',15,' COLUMN        INPUT        SAVE                     WHENEVER SQLERROR');
Insert into HELP (TOPIC,SEQ,INFO) values ('INDEX',16,' COMPUTE       LIST         SET                      XQUERY');
Insert into HELP (TOPIC,SEQ,INFO) values ('INDEX',17,' CONNECT       PASSWORD     SHOW');
Insert into HELP (TOPIC,SEQ,INFO) values ('INDEX',18,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('INPUT',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('INPUT',2,' INPUT');
Insert into HELP (TOPIC,SEQ,INFO) values ('INPUT',3,' -----');
Insert into HELP (TOPIC,SEQ,INFO) values ('INPUT',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('INPUT',5,' Adds one or more new lines of text after the current line in the');
Insert into HELP (TOPIC,SEQ,INFO) values ('INPUT',6,' SQL buffer. The buffer has no command history list and does not');
Insert into HELP (TOPIC,SEQ,INFO) values ('INPUT',7,' record SQL*Plus commands.');
Insert into HELP (TOPIC,SEQ,INFO) values ('INPUT',8,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('INPUT',9,' I[NPUT] [text]');
Insert into HELP (TOPIC,SEQ,INFO) values ('INPUT',10,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('LIST',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('LIST',2,' LIST');
Insert into HELP (TOPIC,SEQ,INFO) values ('LIST',3,' ----');
Insert into HELP (TOPIC,SEQ,INFO) values ('LIST',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('LIST',5,' Lists one or more lines of the most recently executed SQL command');
Insert into HELP (TOPIC,SEQ,INFO) values ('LIST',6,' or PL/SQL block which is stored in the SQL buffer. Enter LIST with');
Insert into HELP (TOPIC,SEQ,INFO) values ('LIST',7,' no clauses to list all lines. In SQL*Plus command-line you can also');
Insert into HELP (TOPIC,SEQ,INFO) values ('LIST',8,' use ";" to list all the lines in the SQL buffer. The buffer has no');
Insert into HELP (TOPIC,SEQ,INFO) values ('LIST',9,' command history list and does not record SQL*Plus commands.');
Insert into HELP (TOPIC,SEQ,INFO) values ('LIST',10,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('LIST',11,' L[IST] [n | n m | n  * | n LAST | * | * n | * LAST | LAST]');
Insert into HELP (TOPIC,SEQ,INFO) values ('LIST',12,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('MENU',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('MENU',2,' Menu');
Insert into HELP (TOPIC,SEQ,INFO) values ('MENU',3,' ----');
Insert into HELP (TOPIC,SEQ,INFO) values ('MENU',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('MENU',5,' Enter HELP INDEX for a list of help topics.');
Insert into HELP (TOPIC,SEQ,INFO) values ('MENU',6,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('PASSWORD',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('PASSWORD',2,' PASSWORD');
Insert into HELP (TOPIC,SEQ,INFO) values ('PASSWORD',3,' --------');
Insert into HELP (TOPIC,SEQ,INFO) values ('PASSWORD',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('PASSWORD',5,' Allows you to change a password without displaying it on an input device.');
Insert into HELP (TOPIC,SEQ,INFO) values ('PASSWORD',6,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('PASSWORD',7,' PASSW[ORD] [username]');
Insert into HELP (TOPIC,SEQ,INFO) values ('PASSWORD',8,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('PAUSE',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('PAUSE',2,' PAUSE');
Insert into HELP (TOPIC,SEQ,INFO) values ('PAUSE',3,' -----');
Insert into HELP (TOPIC,SEQ,INFO) values ('PAUSE',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('PAUSE',5,' Displays the specified text then waits for the user to press RETURN.');
Insert into HELP (TOPIC,SEQ,INFO) values ('PAUSE',6,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('PAUSE',7,' PAU[SE] [text]');
Insert into HELP (TOPIC,SEQ,INFO) values ('PAUSE',8,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('PRINT',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('PRINT',2,' PRINT');
Insert into HELP (TOPIC,SEQ,INFO) values ('PRINT',3,' -----');
Insert into HELP (TOPIC,SEQ,INFO) values ('PRINT',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('PRINT',5,' Displays the current values of bind variables, or lists all bind');
Insert into HELP (TOPIC,SEQ,INFO) values ('PRINT',6,' variables.');
Insert into HELP (TOPIC,SEQ,INFO) values ('PRINT',7,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('PRINT',8,' PRINT [variable ...]');
Insert into HELP (TOPIC,SEQ,INFO) values ('PRINT',9,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('PROMPT',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('PROMPT',2,' PROMPT');
Insert into HELP (TOPIC,SEQ,INFO) values ('PROMPT',3,' ------');
Insert into HELP (TOPIC,SEQ,INFO) values ('PROMPT',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('PROMPT',5,' Sends the specified message or a blank line to the user''s screen.');
Insert into HELP (TOPIC,SEQ,INFO) values ('PROMPT',6,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('PROMPT',7,' PRO[MPT] [text]');
Insert into HELP (TOPIC,SEQ,INFO) values ('PROMPT',8,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('QUIT',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('QUIT',2,' QUIT (Identical to EXIT)');
Insert into HELP (TOPIC,SEQ,INFO) values ('QUIT',3,' ----');
Insert into HELP (TOPIC,SEQ,INFO) values ('QUIT',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('QUIT',5,' Commits or rolls back all pending changes, logs out of Oracle,');
Insert into HELP (TOPIC,SEQ,INFO) values ('QUIT',6,' terminates SQL*Plus and returns control to the operating system.');
Insert into HELP (TOPIC,SEQ,INFO) values ('QUIT',7,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('QUIT',8,' {QUIT|EXIT} [SUCCESS|FAILURE|WARNING|n|variable|:BindVariable]');
Insert into HELP (TOPIC,SEQ,INFO) values ('QUIT',9,'   [COMMIT|ROLLBACK]');
Insert into HELP (TOPIC,SEQ,INFO) values ('QUIT',10,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',2,' RECOVER');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',3,' -------');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',5,' Performs media recovery on one or more tablespaces, one or more');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',6,' datafiles, or the entire database.');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',7,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',8,' RECOVER {general | managed} | BEGIN BACKUP | END BACKUP}');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',9,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',10,' where the general clause has the following syntax:');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',11,'   [AUTOMATIC] [FROM location]');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',12,'   { {full_database_recovery | partial_database_recovery |LOGFILE filename}');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',13,'   [ {TEST | ALLOW integer CORRUPTION | parallel_clause}');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',14,'   [TEST | ALLOW integer CORRUPTION | parallel_clause] ...]');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',15,'   |CONTINUE [DEFAULT]|CANCEL}');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',16,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',17,'   where the full_database_recovery clause has the following syntax:');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',18,'     [STANDBY] DATABASE');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',19,'     [{ UNTIL {CANCEL | TIME date | CHANGE integer}');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',20,'      | USING BACKUP CONTROLFILE}');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',21,'      [ UNTIL {CANCEL | TIME date | CHANGE integer}');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',22,'      | USING BACKUP CONTROLFILE] ...]');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',23,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',24,'   where the partial_database_recovery clause has the following syntax:');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',25,'     {TABLESPACE tablespace [, tablespace] ...');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',26,'      | DATAFILE filename | filenumber} [,filename | filenumber] ...');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',27,'      | STANDBY');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',28,'       {TABLESPACE tablespace [, tablespace] ...');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',29,'       | DATAFILE filename | filenumber} [,filename | filenumber] ...}');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',30,'     UNTIL [CONSISTENT WITH] CONTROLFILE }');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',31,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',32,' where the parallel clause has the following syntax:');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',33,'   {NOPARALLEL | PARALLEL [integer]}');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',34,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',35,' where the managed clause has the following syntax:');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',36,'   MANAGED STANDBY DATABASE recover_clause | cancel_clause | finish_clause');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',37,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',38,' where the recover_clause has the following syntax:');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',39,'   {{DISCONNECT [FROM SESSION] | {TIMEOUT integer | NOTIMEOUT} }');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',40,'    |{NODELAY | DEFAULT DELAY | DELAY integer} | NEXT integer');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',41,'    |{EXPIRE integer | NO EXPIRE} | parallel_clause');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',42,'    | USING CURRENT LOGFILE | UNTIL CHANGE integer');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',43,'    | THROUGH {[THREAD integer] SEQUENCE integer');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',44,'              | ALL ARCHIVELOG  | {ALL | LAST | NEXT } SWITCHOVER} }');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',45,'      [DISCONNECT [FROM SESSION ]  | {TIMEOUT integer | NOTIMEOUT}');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',46,'       | {NODELAY | DEFAULT DELAY | DELAY integer} | NEXT integer');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',47,'       | {EXPIRE integer | NO EXPIRE} | parallel_clause');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',48,'       | USING CURRENT LOGFILE | UNTIL CHANGE integer');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',49,'       | THROUGH {[THREAD integer] SEQUENCE integer');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',50,'                 | ALL ARCHIVELOG  | {ALL | LAST | NEXT } SWITCHOVER} ]...');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',51,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',52,' where the cancel_clause has the following syntax:');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',53,'   CANCEL [IMMEDIATE] [WAIT | NOWAIT]');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',54,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',55,' where the finish_clause has the following syntax:');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',56,'   [DISCONNECT [FROM SESSION]] [parallel_clause]');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',57,'   FINISH [SKIP [STANDBY LOGFILE]] [WAIT | NOWAIT]');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',58,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',59,' where the parallel_clause has the following syntax:');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',60,'   {NOPARALLEL | PARALLEL [integer] }');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',61,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('REMARK',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('REMARK',2,' REMARK');
Insert into HELP (TOPIC,SEQ,INFO) values ('REMARK',3,' ------');
Insert into HELP (TOPIC,SEQ,INFO) values ('REMARK',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('REMARK',5,' Begins a comment in a script. SQL*Plus does not interpret the comment');
Insert into HELP (TOPIC,SEQ,INFO) values ('REMARK',6,' as a command.');
Insert into HELP (TOPIC,SEQ,INFO) values ('REMARK',7,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('REMARK',8,' REM[ARK]');
Insert into HELP (TOPIC,SEQ,INFO) values ('REMARK',9,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',2,' REPFOOTER');
Insert into HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',3,' ---------');
Insert into HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',5,' Places and formats a footer at the bottom of a report, or lists the');
Insert into HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',6,' REPFOOTER definition.');
Insert into HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',7,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',8,' REPF[OOTER] [PAGE] [printspec [text|variable] ...] | [OFF|ON]');
Insert into HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',9,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',10,' where printspec represents one or more of the following clauses:');
Insert into HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',11,'     COL n          LE[FT]        BOLD');
Insert into HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',12,'     S[KIP] [n]     CE[NTER]      FORMAT text');
Insert into HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',13,'     TAB n          R[IGHT]');
Insert into HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',14,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('REPHEADER',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('REPHEADER',2,' REPHEADER');
Insert into HELP (TOPIC,SEQ,INFO) values ('REPHEADER',3,' ---------');
Insert into HELP (TOPIC,SEQ,INFO) values ('REPHEADER',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('REPHEADER',5,' Places and formats a header at the top of a report, or lists the');
Insert into HELP (TOPIC,SEQ,INFO) values ('REPHEADER',6,' REPHEADER definition.');
Insert into HELP (TOPIC,SEQ,INFO) values ('REPHEADER',7,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('REPHEADER',8,' REPH[EADER] [PAGE] [printspec [text|variable] ...] | [OFF|ON]');
Insert into HELP (TOPIC,SEQ,INFO) values ('REPHEADER',9,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('REPHEADER',10,' where printspec represents one or more of the following clauses:');
Insert into HELP (TOPIC,SEQ,INFO) values ('REPHEADER',11,'     COL n          LE[FT]        BOLD');
Insert into HELP (TOPIC,SEQ,INFO) values ('REPHEADER',12,'     S[KIP] [n]     CE[NTER]      FORMAT text');
Insert into HELP (TOPIC,SEQ,INFO) values ('REPHEADER',13,'     TAB n          R[IGHT]');
Insert into HELP (TOPIC,SEQ,INFO) values ('REPHEADER',14,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',2,' RESERVED WORDS (SQL)');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',3,' --------------------');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',5,' SQL Reserved Words have special meaning in SQL, and may not be used for');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',6,' identifier names unless enclosed in "quotes".');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',7,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',8,' An asterisk (*) indicates words are also ANSI Reserved Words.');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',9,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',10,' Oracle prefixes implicitly generated schema object and subobject names');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',11,' with "SYS_". To avoid name resolution conflict, Oracle discourages you');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',12,' from prefixing your schema object and subobject names with "SYS_".');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',13,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',14,' ACCESS          DEFAULT*         INTEGER*        ONLINE          START');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',15,' ADD*            DELETE*          INTERSECT*      OPTION*         SUCCESSFUL');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',16,' ALL*            DESC*            INTO*           OR*             SYNONYM');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',17,' ALTER*          DISTINCT*        IS*             ORDER*          SYSDATE');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',18,' AND*            DROP*            LEVEL*          PCTFREE         TABLE*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',19,' ANY*            ELSE*            LIKE*           PRIOR*          THEN*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',20,' AS*             EXCLUSIVE        LOCK            PRIVILEGES*     TO*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',21,' ASC*            EXISTS           LONG            PUBLIC*         TRIGGER');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',22,' AUDIT           FILE             MAXEXTENTS      RAW             UID');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',23,' BETWEEN*        FLOAT*           MINUS           RENAME          UNION*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',24,' BY*             FOR*             MLSLABEL        RESOURCE        UNIQUE*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',25,' CHAR*           FROM*            MODE            REVOKE*         UPDATE*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',26,' CHECK*          GRANT*           MODIFY          ROW             USER*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',27,' CLUSTER         GROUP*           NOAUDIT         ROWID           VALIDATE');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',28,' COLUMN          HAVING*          NOCOMPRESS      ROWNUM          VALUES*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',29,' COMMENT         IDENTIFIED       NOT*            ROWS*           VARCHAR*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',30,' COMPRESS        IMMEDIATE*       NOWAIT          SELECT*         VARCHAR2');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',31,' CONNECT*        IN*              NULL*           SESSION*        VIEW*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',32,' CREATE*         INCREMENT        NUMBER          SET*            WHENEVER*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',33,' CURRENT*        INDEX            OF*             SHARE           WHERE');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',34,' DATE*           INITIAL          OFFLINE         SIZE*           WITH*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',35,' DECIMAL*        INSERT*          ON*             SMALLINT*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',36,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',2,' RESERVED WORDS (PL/SQL)');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',3,' -----------------------');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',5,' PL/SQL Reserved Words have special meaning in PL/SQL, and may not be used');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',6,' for identifier names (unless enclosed in "quotes").');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',7,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',8,' An asterisk (*) indicates words are also SQL Reserved Words.');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',9,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',10,' ALL*            DESC*           JAVA            PACKAGE         SUBTYPE');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',11,' ALTER*          DISTINCT*       LEVEL*          PARTITION       SUCCESSFUL*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',12,' AND*            DO              LIKE*           PCTFREE*        SUM');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',13,' ANY*            DROP*           LIMITED         PLS_INTEGER     SYNONYM*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',14,' ARRAY           ELSE*           LOCK*           POSITIVE        SYSDATE*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',15,' AS*             ELSIF           LONG*           POSITIVEN       TABLE*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',16,' ASC*            END             LOOP            PRAGMA          THEN*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',17,' AT              EXCEPTION       MAX             PRIOR*          TIME');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',18,' AUTHID          EXCLUSIVE*      MIN             PRIVATE         TIMESTAMP');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',19,' AVG             EXECUTE         MINUS*          PROCEDURE       TIMEZONE_ABBR');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',20,' BEGIN           EXISTS*         MINUTE          PUBLIC*         TIMEZONE_HOUR');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',21,' BETWEEN*        EXIT            MLSLABEL*       RAISE           TIMEZONE_MINUTE');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',22,' BINARY_INTEGER  EXTENDS         MOD             RANGE           TIMEZONE_REGION');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',23,' BODY            EXTRACT         MODE*           RAW*            TO*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',24,' BOOLEAN         FALSE           MONTH           REAL            TRIGGER*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',25,' BULK            FETCH           NATURAL         RECORD          TRUE');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',26,' BY*             FLOAT*          NATURALN        REF             TYPE');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',27,' CHAR*           FOR*            NEW             RELEASE         UI');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',28,' CHAR_BASE       FORALL          NEXTVAL         RETURN          UNION*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',29,' CHECK*          FROM*           NOCOPY          REVERSE         UNIQUE*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',30,' CLOSE           FUNCTION        NOT*            ROLLBACK        UPDATE*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',31,' CLUSTER*        GOTO            NOWAIT*         ROW*            USE');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',32,' COALESCE        GROUP*          NULL*           ROWID*          USER*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',33,' COLLECT         HAVING*         NULLIF          ROWNUM*         VALIDATE*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',34,' COMMENT*        HEAP            NUMBER*         ROWTYPE         VALUES*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',35,' COMMIT          HOUR            NUMBER_BASE     SAVEPOINT       VARCHAR*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',36,' COMPRESS*       IF              OCIROWID        SECOND          VARCHAR2*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',37,' CONNECT*        IMMEDIATE*      OF*             SELECT*         VARIANCE');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',38,' CONSTANT        IN*             ON*             SEPERATE        VIEW*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',39,' CREATE*         INDEX*          OPAQUE          SET*            WHEN');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',40,' CURRENT*        INDICATOR       OPEN            SHARE*          WHENEVER*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',41,' CURRVAL         INSERT*         OPERATOR        SMALLINT*       WHERE*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',42,' CURSOR          INTEGER*        OPTION*         SPACE           WHILE');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',43,' DATE*           INTERFACE       OR*             SQL             WITH*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',44,' DAY             INTERSECT*      ORDER*          SQLCODE         WORK');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',45,' DECIMAL*        INTERVAL        ORGANIZATION    SQLERRM         WRITE');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',46,' DECLARE         INTO*           OTHERS          START*          YEAR');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',47,' DEFAULT*        IS*             OUT             STDDEV          ZONE');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',48,' DELETE*         ISOLATION');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',49,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RUN',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RUN',2,' RUN');
Insert into HELP (TOPIC,SEQ,INFO) values ('RUN',3,' ---');
Insert into HELP (TOPIC,SEQ,INFO) values ('RUN',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RUN',5,' Lists and executes the most recently executed SQL command or');
Insert into HELP (TOPIC,SEQ,INFO) values ('RUN',6,' PL/SQL block which is stored in the SQL buffer. The buffer has');
Insert into HELP (TOPIC,SEQ,INFO) values ('RUN',7,' no command history list and does not record SQL*Plus commands.');
Insert into HELP (TOPIC,SEQ,INFO) values ('RUN',8,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RUN',9,' R[UN]');
Insert into HELP (TOPIC,SEQ,INFO) values ('RUN',10,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SAVE',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SAVE',2,' SAVE');
Insert into HELP (TOPIC,SEQ,INFO) values ('SAVE',3,' ----');
Insert into HELP (TOPIC,SEQ,INFO) values ('SAVE',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SAVE',5,' Saves the contents of the SQL buffer in a script. The');
Insert into HELP (TOPIC,SEQ,INFO) values ('SAVE',6,' buffer has no command history list and does not record SQL*Plus commands.');
Insert into HELP (TOPIC,SEQ,INFO) values ('SAVE',7,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SAVE',8,' SAV[E] [FILE] file_name[.ext] [CRE[ATE] | REP[LACE] | APP[END]]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SAVE',9,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',2,' SET');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',3,' ---');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',5,' Sets a system variable to alter the SQL*Plus environment settings');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',6,' for your current session. For example, to:');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',7,'     -   set the display width for data');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',8,'     -   customize HTML formatting');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',9,'     -   enable or disable printing of column headings');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',10,'     -   set the number of lines per page');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',11,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',12,' SET system_variable value');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',13,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',14,' where system_variable and value represent one of the following clauses:');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',15,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',16,'   APPI[NFO]{OFF|ON|text}                   NEWP[AGE] {1|n|NONE}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',17,'   ARRAY[SIZE] {15|n}                       NULL text');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',18,'   AUTO[COMMIT] {OFF|ON|IMM[EDIATE]|n}      NUMF[ORMAT] format');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',19,'   AUTOP[RINT] {OFF|ON}                     NUM[WIDTH] {10|n}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',20,'   AUTORECOVERY {OFF|ON}                    PAGES[IZE] {14|n}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',21,'   AUTOT[RACE] {OFF|ON|TRACE[ONLY]}         PAU[SE] {OFF|ON|text}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',22,'     [EXP[LAIN]] [STAT[ISTICS]]             RECSEP {WR[APPED]|EA[CH]|OFF}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',23,'   BLO[CKTERMINATOR] {.|c|ON|OFF}           RECSEPCHAR {_|c}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',24,'   CMDS[EP] {;|c|OFF|ON}                    SERVEROUT[PUT] {ON|OFF}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',25,'   COLINVI[SIBLE] {OFF|ON}                    [SIZE {n | UNLIMITED}]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',26,'   COLSEP {_|text}                            [FOR[MAT]  {WRA[PPED] |');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',27,'   CON[CAT] {.|c|ON|OFF}                       WOR[D_WRAPPED] |');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',28,'   COPYC[OMMIT] {0|n}                          TRU[NCATED]}]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',29,'   COPYTYPECHECK {ON|OFF}                   SHIFT[INOUT] {VIS[IBLE] |');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',30,'   DEF[INE] {&|c|ON|OFF}                      INV[ISIBLE]}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',31,'   DESCRIBE [DEPTH {1|n|ALL}]               SHOW[MODE] {OFF|ON}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',32,'     [LINENUM {OFF|ON}] [INDENT {OFF|ON}]   SQLBL[ANKLINES] {OFF|ON}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',33,'   ECHO {OFF|ON}                            SQLC[ASE] {MIX[ED] |');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',34,'   EDITF[ILE] file_name[.ext]                 LO[WER] | UP[PER]}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',35,'   EMB[EDDED] {OFF|ON}                      SQLCO[NTINUE] {> | text}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',36,'   ERRORL[OGGING] {ON|OFF}                  SQLN[UMBER] {ON|OFF}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',37,'     [TABLE [schema.]tablename]             SQLPLUSCOMPAT[IBILITY] {x.y[.z]}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',38,'     [TRUNCATE] [IDENTIFIER identifier]     SQLPRE[FIX] {#|c}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',39,'   ESC[APE] {\|c|OFF|ON}                    SQLP[ROMPT] {SQL>|text}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',40,'   ESCCHAR {@|?|%|$|OFF}                    SQLT[ERMINATOR] {;|c|ON|OFF}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',41,'   EXITC[OMMIT] {ON|OFF}                    SUF[FIX] {SQL|text}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',42,'   FEED[BACK] {6|n|ON|OFF}                  TAB {ON|OFF}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',43,'   FLAGGER {OFF|ENTRY|INTERMED[IATE]|FULL}  TERM[OUT] {ON|OFF}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',44,'   FLU[SH] {ON|OFF}                         TI[ME] {OFF|ON}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',45,'   HEA[DING] {ON|OFF}                       TIMI[NG] {OFF|ON}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',46,'   HEADS[EP] {||c|ON|OFF}                   TRIM[OUT] {ON|OFF}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',47,'   INSTANCE [instance_path|LOCAL]           TRIMS[POOL] {OFF|ON}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',48,'   LIN[ESIZE] {80|n}                        UND[ERLINE] {-|c|ON|OFF}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',49,'   LOBOF[FSET] {1|n}                        VER[IFY] {ON|OFF}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',50,'   LOGSOURCE [pathname]                     WRA[P] {ON|OFF}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',51,'   LONG {80|n}                              XQUERY {BASEURI text|');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',52,'   LONGC[HUNKSIZE] {80|n}                     ORDERING{UNORDERED|');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',53,'   MARK[UP] HTML [OFF|ON]                              ORDERED|DEFAULT}|');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',54,'     [HEAD text] [BODY text] [TABLE text]     NODE{BYVALUE|BYREFERENCE|');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',55,'     [ENTMAP {ON|OFF}]                             DEFAULT}|');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',56,'     [SPOOL {OFF|ON}]                         CONTEXT text}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',57,'     [PRE[FORMAT] {OFF|ON}]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',58,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',2,' SHOW');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',3,' ----');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',5,' Shows the value of a SQL*Plus system variable, or the current');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',6,' SQL*Plus environment. SHOW SGA requires a DBA privileged login.');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',7,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',8,' SHO[W] option');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',9,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',10,' where option represents one of the following terms or clauses:');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',11,'     system_variable');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',12,'     ALL');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',13,'     BTI[TLE]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',14,'     CON_ID');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',15,'     CON_NAME');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',16,'     ERR[ORS] [{FUNCTION | PROCEDURE | PACKAGE | PACKAGE BODY | TRIGGER');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',17,'        | VIEW | TYPE | TYPE BODY | DIMENSION | JAVA CLASS} [schema.]name]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',18,'     LNO');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',19,'     PARAMETERS [parameter_name]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',20,'     PDBS');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',21,'     PNO');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',22,'     RECYC[LEBIN] [original_name]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',23,'     REL[EASE]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',24,'     REPF[OOTER]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',25,'     REPH[EADER]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',26,'     SGA');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',27,'     SPOO[L]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',28,'     SPPARAMETERS [parameter_name]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',29,'     SQLCODE');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',30,'     TTI[TLE]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',31,'     USER');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',32,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SHUTDOWN',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SHUTDOWN',2,' SHUTDOWN');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHUTDOWN',3,' --------');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHUTDOWN',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SHUTDOWN',5,' Shuts down a currently running Oracle Database instance, optionally');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHUTDOWN',6,' closing and dismounting a database.');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHUTDOWN',7,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SHUTDOWN',8,' SHUTDOWN [ABORT|IMMEDIATE|NORMAL|TRANSACTIONAL [LOCAL]]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHUTDOWN',9,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SPOOL',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SPOOL',2,' SPOOL');
Insert into HELP (TOPIC,SEQ,INFO) values ('SPOOL',3,' -----');
Insert into HELP (TOPIC,SEQ,INFO) values ('SPOOL',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SPOOL',5,' Stores query results in a file, or optionally sends the file to a printer.');
Insert into HELP (TOPIC,SEQ,INFO) values ('SPOOL',6,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SPOOL',7,' SPO[OL] [file_name[.ext] [CRE[ATE] | REP[LACE] | APP[END]] | OFF | OUT]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SPOOL',8,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',2,' SQLPLUS');
Insert into HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',3,' -------');
Insert into HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',5,' Starts SQL*Plus from the operating system prompt.');
Insert into HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',6,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',7,' SQLPLUS [ [option] [logon|/NOLOG] [start] ]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',8,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',9,' where option has the following syntax:');
Insert into HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',10,'     -H[ELP]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',11,'     | -V[ERSION]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',12,'     | [[-C[OMPATIBILITY] x.y[.z]] [-L[OGON]]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',13,'        [-M[ARKUP] markup_option] [-NOLOGINTIME] [-R[ESTRICT] {1|2|3}]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',14,'	[-S[ILENT]] ]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',15,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',16,' and where markup_option has the following syntax:');
Insert into HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',17,'     HTML [ON|OFF] [HEAD text] [BODY text] [TABLE text]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',18,'          [ENTMAP {ON|OFF}] [SPOOL {ON|OFF}] [PRE[FORMAT] {ON|OFF}]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',19,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',20,' and where logon has the following syntax:');
Insert into HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',21,'     {username[/password][@connect_identifier] | /}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',22,'     [AS {SYSASM|SYSBACKUP|SYSDBA|SYSDG|SYSOPER|SYSRAC|SYSKM}]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',23,'     [edition=value]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',24,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',25,' and where start has the following syntax:');
Insert into HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',26,'     @{url|filename[.ext]} [arg ...]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',27,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('START',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('START',2,' START');
Insert into HELP (TOPIC,SEQ,INFO) values ('START',3,' -----');
Insert into HELP (TOPIC,SEQ,INFO) values ('START',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('START',5,' Runs the SQL*Plus statements in the specified script. The script can be');
Insert into HELP (TOPIC,SEQ,INFO) values ('START',6,' called from the local file system or a web server.');
Insert into HELP (TOPIC,SEQ,INFO) values ('START',7,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('START',8,' STA[RT] {url|file_name[.ext]} [arg ...]');
Insert into HELP (TOPIC,SEQ,INFO) values ('START',9,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('START',10,' where url supports HTTP and FTP protocols in the form:');
Insert into HELP (TOPIC,SEQ,INFO) values ('START',11,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('START',12,'    http://host.domain/script.sql');
Insert into HELP (TOPIC,SEQ,INFO) values ('START',13,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',2,' STARTUP');
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',3,' -------');
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',5,' Starts an Oracle instance with several options, including mounting,');
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',6,' and opening a database.');
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',7,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',8,' STARTUP db_options | cdb_options | upgrade_options');
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',9,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',10,' where db_options has the following syntax:');
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',11,'    [FORCE] [RESTRICT] [PFILE=filename] [QUIET] [ MOUNT [dbname] |');
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',12,'    [ OPEN [open_db_options] [dbname] ] |');
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',13,'    NOMOUNT ]');
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',14,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',15,'    where open_db_options has the following syntax:');
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',16,'       READ {ONLY | WRITE [RECOVER]} | RECOVER');
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',17,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',18,' where cdb_options has the following syntax:');
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',19,'    root_connection_options | pdb_connection_options');
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',20,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',21,' where root_connection_options has the following syntax:');
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',22,'    PLUGGABLE DATABASE pdbname');
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',23,'    [FORCE] [RESTRICT] | [OPEN [open_pdb_options]]');
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',24,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',25,' where pdb_connection_options has the following syntax:');
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',26,'    [FORCE] [RESTRICT] | [OPEN [open_pdb_options]]');
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',27,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',28,'    where open_pdb_options has the following syntax:');
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',29,'       READ WRITE | READ ONLY');
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',30,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',31,' and where upgrade_options has the following syntax:');
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',32,'    [PFILE=filename] {UPGRADE | DOWNGRADE} [QUIET]');
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',33,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('STORE',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('STORE',2,' STORE');
Insert into HELP (TOPIC,SEQ,INFO) values ('STORE',3,' -----');
Insert into HELP (TOPIC,SEQ,INFO) values ('STORE',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('STORE',5,' Saves attributes of the current SQL*Plus environment in a script.');
Insert into HELP (TOPIC,SEQ,INFO) values ('STORE',6,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('STORE',7,' STORE {SET} file_name[.ext] [CRE[ATE] | REP[LACE] | APP[END]]');
Insert into HELP (TOPIC,SEQ,INFO) values ('STORE',8,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('TIMING',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('TIMING',2,' TIMING');
Insert into HELP (TOPIC,SEQ,INFO) values ('TIMING',3,' ------');
Insert into HELP (TOPIC,SEQ,INFO) values ('TIMING',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('TIMING',5,' Records timing data for an elapsed time period, lists the current');
Insert into HELP (TOPIC,SEQ,INFO) values ('TIMING',6,' timer''s name and timing data, or lists the number of active timers.');
Insert into HELP (TOPIC,SEQ,INFO) values ('TIMING',7,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('TIMING',8,' TIMI[NG] [START text|SHOW|STOP]');
Insert into HELP (TOPIC,SEQ,INFO) values ('TIMING',9,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('TTITLE',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('TTITLE',2,' TTITLE');
Insert into HELP (TOPIC,SEQ,INFO) values ('TTITLE',3,' ------');
Insert into HELP (TOPIC,SEQ,INFO) values ('TTITLE',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('TTITLE',5,' Places and formats a title at the top of each report page.');
Insert into HELP (TOPIC,SEQ,INFO) values ('TTITLE',6,' Enter TTITLE with no clause to list its current definition.');
Insert into HELP (TOPIC,SEQ,INFO) values ('TTITLE',7,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('TTITLE',8,' The old form of TTITLE is used if only a single word or');
Insert into HELP (TOPIC,SEQ,INFO) values ('TTITLE',9,' a string in quotes follows the TTITLE command.');
Insert into HELP (TOPIC,SEQ,INFO) values ('TTITLE',10,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('TTITLE',11,' TTI[TLE] [printspec [text|variable] ...] | [OFF|ON]');
Insert into HELP (TOPIC,SEQ,INFO) values ('TTITLE',12,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('TTITLE',13,' where printspec represents one or more of the following clauses:');
Insert into HELP (TOPIC,SEQ,INFO) values ('TTITLE',14,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('TTITLE',15,'     COL n          LE[FT]        BOLD');
Insert into HELP (TOPIC,SEQ,INFO) values ('TTITLE',16,'     S[KIP] [n]     CE[NTER]      FORMAT text');
Insert into HELP (TOPIC,SEQ,INFO) values ('TTITLE',17,'     TAB n          R[IGHT]');
Insert into HELP (TOPIC,SEQ,INFO) values ('TTITLE',18,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('UNDEFINE',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('UNDEFINE',2,' UNDEFINE');
Insert into HELP (TOPIC,SEQ,INFO) values ('UNDEFINE',3,' --------');
Insert into HELP (TOPIC,SEQ,INFO) values ('UNDEFINE',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('UNDEFINE',5,' Deletes one or more substitution variables that you defined either');
Insert into HELP (TOPIC,SEQ,INFO) values ('UNDEFINE',6,' explicitly (with the DEFINE command), or implicitly (with a START');
Insert into HELP (TOPIC,SEQ,INFO) values ('UNDEFINE',7,' command argument).');
Insert into HELP (TOPIC,SEQ,INFO) values ('UNDEFINE',8,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('UNDEFINE',9,' UNDEF[INE] variable ...');
Insert into HELP (TOPIC,SEQ,INFO) values ('UNDEFINE',10,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('VARIABLE',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('VARIABLE',2,' VARIABLE');
Insert into HELP (TOPIC,SEQ,INFO) values ('VARIABLE',3,' --------');
Insert into HELP (TOPIC,SEQ,INFO) values ('VARIABLE',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('VARIABLE',5,' Declares a bind variable that can be referenced in PL/SQL, or');
Insert into HELP (TOPIC,SEQ,INFO) values ('VARIABLE',6,' lists the current display characteristics for a single variable');
Insert into HELP (TOPIC,SEQ,INFO) values ('VARIABLE',7,' or all variables.');
Insert into HELP (TOPIC,SEQ,INFO) values ('VARIABLE',8,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('VARIABLE',9,'VAR[IABLE] [variable [type]]');
Insert into HELP (TOPIC,SEQ,INFO) values ('VARIABLE',10,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('VARIABLE',11,' where type represents one of the following:');
Insert into HELP (TOPIC,SEQ,INFO) values ('VARIABLE',12,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('VARIABLE',13,'     NUMBER         CHAR          CHAR (n [CHAR|BYTE])');
Insert into HELP (TOPIC,SEQ,INFO) values ('VARIABLE',14,'     NCHAR          NCHAR (n)     VARCHAR2 (n [CHAR|BYTE])');
Insert into HELP (TOPIC,SEQ,INFO) values ('VARIABLE',15,'     NVARCHAR2 (n)  CLOB          NCLOB');
Insert into HELP (TOPIC,SEQ,INFO) values ('VARIABLE',16,'     REFCURSOR      BINARY_FLOAT  BINARY_DOUBLE');
Insert into HELP (TOPIC,SEQ,INFO) values ('VARIABLE',17,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR',2,' WHENEVER OSERROR');
Insert into HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR',3,' ----------------');
Insert into HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR',5,' Performs the specified action (exits SQL*Plus by default) if an');
Insert into HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR',6,' operating system error occurs (such as a file writing error).');
Insert into HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR',7,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR',8,' WHENEVER OSERROR {EXIT [SUCCESS|FAILURE|n|variable|:BindVariable]');
Insert into HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR',9,'                   [COMMIT|ROLLBACK] | CONTINUE [COMMIT|ROLLBACK|NONE]}');
Insert into HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR',10,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR',2,' WHENEVER SQLERROR');
Insert into HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR',3,' -----------------');
Insert into HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR',5,' Performs the specified action (exits SQL*Plus by default) if a');
Insert into HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR',6,' SQL command or PL/SQL block generates an error.');
Insert into HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR',7,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR',8,' WHENEVER SQLERROR {EXIT [SUCCESS|FAILURE|WARNING|n|variable|:BindVariable]');
Insert into HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR',9,'                    [COMMIT|ROLLBACK] | CONTINUE [COMMIT|ROLLBACK|NONE]}');
Insert into HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR',10,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('XQUERY',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('XQUERY',2,' XQUERY');
Insert into HELP (TOPIC,SEQ,INFO) values ('XQUERY',3,' ------');
Insert into HELP (TOPIC,SEQ,INFO) values ('XQUERY',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('XQUERY',5,' Performs an XQuery 1.0 query on a specified database. Attempting to use');
Insert into HELP (TOPIC,SEQ,INFO) values ('XQUERY',6,' XQUERY on a database earlier than Oracle Database 10g (Release 2) generates');
Insert into HELP (TOPIC,SEQ,INFO) values ('XQUERY',7,' an error.');
Insert into HELP (TOPIC,SEQ,INFO) values ('XQUERY',8,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('XQUERY',9,' XQUERY xquery_statement');
Insert into HELP (TOPIC,SEQ,INFO) values ('XQUERY',10,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',2,' Help is available on the following topics:');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',3,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',11,'/');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',12,'@');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',13,'@@');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',14,'ACCEPT');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',15,'APPEND');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',16,'ARCHIVE LOG');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',17,'ATTRIBUTE');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',18,'BREAK');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',19,'BTITLE');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',20,'CHANGE');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',21,'CLEAR');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',22,'COLUMN');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',23,'COMPUTE');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',24,'CONNECT');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',25,'COPY');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',26,'DEFINE');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',27,'DEL');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',28,'DESCRIBE');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',29,'DISCONNECT');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',30,'EDIT');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',31,'EXECUTE');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',32,'EXIT');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',33,'GET');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',34,'HELP');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',35,'HOST');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',36,'INDEX');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',37,'INPUT');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',38,'LIST');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',39,'MENU');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',40,'PASSWORD');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',41,'PAUSE');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',42,'PRINT');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',43,'PROMPT');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',44,'QUIT');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',45,'RECOVER');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',46,'REMARK');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',47,'REPFOOTER');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',48,'REPHEADER');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',49,'RESERVED WORDS (PL/SQL)');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',50,'RESERVED WORDS (SQL)');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',51,'RUN');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',52,'SAVE');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',53,'SET');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',54,'SHOW');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',55,'SHUTDOWN');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',56,'SPOOL');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',57,'SQLPLUS');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',58,'START');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',59,'STARTUP');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',60,'STORE');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',61,'TIMING');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',62,'TOPICS');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',63,'TTITLE');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',64,'UNDEFINE');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',65,'VARIABLE');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',66,'WHENEVER OSERROR');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',67,'WHENEVER SQLERROR');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',68,'XQUERY');
REM INSERTING into LOGMNRC_CONCOL_GG
SET DEFINE OFF;
REM INSERTING into LOGMNRC_CON_GG
SET DEFINE OFF;
REM INSERTING into LOGMNRC_DBNAME_UID_MAP
SET DEFINE OFF;
REM INSERTING into LOGMNRC_GSBA
SET DEFINE OFF;
REM INSERTING into LOGMNRC_GSII
SET DEFINE OFF;
REM INSERTING into LOGMNRC_GTCS
SET DEFINE OFF;
REM INSERTING into LOGMNRC_GTLO
SET DEFINE OFF;
REM INSERTING into LOGMNRC_INDCOL_GG
SET DEFINE OFF;
REM INSERTING into LOGMNRC_IND_GG
SET DEFINE OFF;
REM INSERTING into LOGMNRC_SEQ_GG
SET DEFINE OFF;
REM INSERTING into LOGMNRGGC_GTCS
SET DEFINE OFF;
REM INSERTING into LOGMNRGGC_GTLO
SET DEFINE OFF;
REM INSERTING into LOGMNRP_CTAS_PART_MAP
SET DEFINE OFF;
REM INSERTING into LOGMNRT_MDDL$
SET DEFINE OFF;
REM INSERTING into LOGMNR_AGE_SPILL$
SET DEFINE OFF;
REM INSERTING into LOGMNR_ATTRCOL$
SET DEFINE OFF;
REM INSERTING into LOGMNR_ATTRIBUTE$
SET DEFINE OFF;
REM INSERTING into LOGMNR_CCOL$
SET DEFINE OFF;
REM INSERTING into LOGMNR_CDEF$
SET DEFINE OFF;
REM INSERTING into LOGMNR_COL$
SET DEFINE OFF;
REM INSERTING into LOGMNR_COLTYPE$
SET DEFINE OFF;
REM INSERTING into LOGMNR_CON$
SET DEFINE OFF;
REM INSERTING into LOGMNR_CONTAINER$
SET DEFINE OFF;
REM INSERTING into LOGMNR_DICTIONARY$
SET DEFINE OFF;
REM INSERTING into LOGMNR_DICTSTATE$
SET DEFINE OFF;
REM INSERTING into LOGMNR_DID$
SET DEFINE OFF;
REM INSERTING into LOGMNR_ENC$
SET DEFINE OFF;
REM INSERTING into LOGMNR_ERROR$
SET DEFINE OFF;
REM INSERTING into LOGMNR_FILTER$
SET DEFINE OFF;
REM INSERTING into LOGMNR_GLOBAL$
SET DEFINE OFF;
REM INSERTING into LOGMNR_GT_TAB_INCLUDE$
SET DEFINE OFF;
REM INSERTING into LOGMNR_GT_USER_INCLUDE$
SET DEFINE OFF;
REM INSERTING into LOGMNR_GT_XID_INCLUDE$
SET DEFINE OFF;
REM INSERTING into LOGMNR_ICOL$
SET DEFINE OFF;
REM INSERTING into LOGMNR_IND$
SET DEFINE OFF;
REM INSERTING into LOGMNR_INDCOMPART$
SET DEFINE OFF;
REM INSERTING into LOGMNR_INDPART$
SET DEFINE OFF;
REM INSERTING into LOGMNR_INDSUBPART$
SET DEFINE OFF;
REM INSERTING into LOGMNR_INTEGRATED_SPILL$
SET DEFINE OFF;
REM INSERTING into LOGMNR_KOPM$
SET DEFINE OFF;
REM INSERTING into LOGMNR_LOB$
SET DEFINE OFF;
REM INSERTING into LOGMNR_LOBFRAG$
SET DEFINE OFF;
REM INSERTING into LOGMNR_LOG$
SET DEFINE OFF;
REM INSERTING into LOGMNR_LOGMNR_BUILDLOG
SET DEFINE OFF;
REM INSERTING into LOGMNR_NTAB$
SET DEFINE OFF;
REM INSERTING into LOGMNR_OBJ$
SET DEFINE OFF;
REM INSERTING into LOGMNR_OPQTYPE$
SET DEFINE OFF;
REM INSERTING into LOGMNR_PARAMETER$
SET DEFINE OFF;
REM INSERTING into LOGMNR_PARTOBJ$
SET DEFINE OFF;
REM INSERTING into LOGMNR_PDB_INFO$
SET DEFINE OFF;
REM INSERTING into LOGMNR_PROCESSED_LOG$
SET DEFINE OFF;
REM INSERTING into LOGMNR_PROPS$
SET DEFINE OFF;
REM INSERTING into LOGMNR_REFCON$
SET DEFINE OFF;
REM INSERTING into LOGMNR_RESTART_CKPT$
SET DEFINE OFF;
REM INSERTING into LOGMNR_RESTART_CKPT_TXINFO$
SET DEFINE OFF;
REM INSERTING into LOGMNR_SEED$
SET DEFINE OFF;
REM INSERTING into LOGMNR_SESSION$
SET DEFINE OFF;
REM INSERTING into LOGMNR_SESSION_ACTIONS$
SET DEFINE OFF;
REM INSERTING into LOGMNR_SESSION_EVOLVE$
SET DEFINE OFF;
REM INSERTING into LOGMNR_SPILL$
SET DEFINE OFF;
REM INSERTING into LOGMNR_SUBCOLTYPE$
SET DEFINE OFF;
REM INSERTING into LOGMNR_TAB$
SET DEFINE OFF;
REM INSERTING into LOGMNR_TABCOMPART$
SET DEFINE OFF;
REM INSERTING into LOGMNR_TABPART$
SET DEFINE OFF;
REM INSERTING into LOGMNR_TABSUBPART$
SET DEFINE OFF;
REM INSERTING into LOGMNR_TS$
SET DEFINE OFF;
REM INSERTING into LOGMNR_TYPE$
SET DEFINE OFF;
REM INSERTING into LOGMNR_UID$
SET DEFINE OFF;
REM INSERTING into LOGMNR_USER$
SET DEFINE OFF;
REM INSERTING into LOGSTDBY$APPLY_MILESTONE
SET DEFINE OFF;
REM INSERTING into LOGSTDBY$APPLY_PROGRESS
SET DEFINE OFF;
REM INSERTING into LOGSTDBY$EDS_TABLES
SET DEFINE OFF;
REM INSERTING into LOGSTDBY$EVENTS
SET DEFINE OFF;
REM INSERTING into LOGSTDBY$FLASHBACK_SCN
SET DEFINE OFF;
REM INSERTING into LOGSTDBY$HISTORY
SET DEFINE OFF;
REM INSERTING into LOGSTDBY$PARAMETERS
SET DEFINE OFF;
REM INSERTING into LOGSTDBY$PLSQL
SET DEFINE OFF;
REM INSERTING into LOGSTDBY$SCN
SET DEFINE OFF;
REM INSERTING into LOGSTDBY$SKIP
SET DEFINE OFF;
REM INSERTING into LOGSTDBY$SKIP_SUPPORT
SET DEFINE OFF;
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (2,'DML',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (6,'DML',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (7,'DML',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (4,'CLUSTER',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (5,'CLUSTER',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (8,'CLUSTER',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (86,'CLUSTER',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (177,'CONTEXT',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (178,'CONTEXT',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (32,'DATABASE LINK',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (33,'DATABASE LINK',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (225,'DATABASE LINK',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (174,'DIMENSION',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (175,'DIMENSION',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (176,'DIMENSION',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (157,'DIRECTORY',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (158,'DIRECTORY',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (9,'INDEX',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (11,'INDEX',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (10,'INDEX',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (24,'PROCEDURE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (25,'PROCEDURE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (68,'PROCEDURE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (91,'PROCEDURE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (92,'PROCEDURE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (93,'PROCEDURE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (94,'PROCEDURE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (95,'PROCEDURE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (96,'PROCEDURE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (97,'PROCEDURE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (98,'PROCEDURE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (99,'PROCEDURE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (159,'PROCEDURE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (196,'PROCEDURE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (84,'PROCEDURE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (65,'PROFILE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (67,'PROFILE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (66,'PROFILE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (52,'ROLE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (79,'ROLE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (54,'ROLE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (55,'ROLE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (36,'ROLLBACK STATEMENT',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (37,'ROLLBACK STATEMENT',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (38,'ROLLBACK STATEMENT',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (13,'SEQUENCE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (14,'SEQUENCE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (16,'SEQUENCE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (19,'SYNONYM',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (20,'SYNONYM',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (110,'SYNONYM',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (111,'SYNONYM',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (1,'TABLE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (15,'TABLE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (12,'TABLE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (85,'TABLE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (39,'TABLESPACE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (40,'TABLESPACE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (41,'TABLESPACE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (59,'TRIGGER',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (60,'TRIGGER',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (61,'TRIGGER',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (118,'TRIGGER',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (119,'TRIGGER',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (120,'TRIGGER',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (121,'TRIGGER',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (77,'TYPE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (78,'TYPE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (80,'TYPE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (81,'TYPE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (82,'TYPE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (83,'TYPE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (51,'USER',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (43,'USER',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (53,'USER',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (21,'VIEW',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (22,'VIEW',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (17,'GRANT',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (18,'REVOKE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (30,'AUDIT',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (31,'AUDIT',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (212,'EDITION',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (213,'EDITION',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (214,'EDITION',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (160,'JAVA',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (161,'JAVA',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (162,'JAVA',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (1000000,'PL/SQL',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (1000001,'PL/SQL_DDL',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-1,'ADAMS',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'ANONYMOUS',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'APPQOSSYS',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'AUDSYS',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'BI',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-1,'BLAKE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-1,'CLARK',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'CTXSYS',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'DIP',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'DBSNMP',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'DMSYS',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'DVSYS',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'DVF',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'EXDSYS',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'EXFSYS',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'GSMCATUSER',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'GSMUSER',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'GSMADMIN_INTERNAL',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-1,'HR',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-1,'IX',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-1,'JONES',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'LBACSYS',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-1,'MDDATA',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'MDSYS',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'MGMT_VIEW',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'MTSSYS',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'ODM',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'ODM_MTR',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-1,'OE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'OJVMSYS',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'OLAPSYS',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'ORACLE_OCM',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'ORDDATA',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'ORDPLUGINS',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'ORDSYS',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'OUTLN',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-1,'PM',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-1,'SCOTT',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'SI_INFORMTN_SCHEMA',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-1,'SH',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'SPATIAL_CSW_ADMIN',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'SPATIAL_CSW_ADMIN_USR',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'SPATIAL_WFS_ADMIN',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'SPATIAL_WFS_ADMIN_USR',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'SYS',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'SYSBACKUP',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'SYSDG',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'SYSKM',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'SYSTEM',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'SYSMAN',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'TSMSYS',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'WKPROXY',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'WKSYS',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'WK_TEST',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'WMSYS',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'XDB',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'XS$NULL',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'XTISYS',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-2,'SYS','SCHEDULER$_INSTANCE_S',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-2,'SYS','SCHEDULER$_JOBSUFFIX_S',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-2,'SYSTEM','ROLLING_EVENT_SEQ$',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'SYS','DBMS_AQ_IMP_INTERNAL',null,'DBMS_AQ_SYS_IMP_INTERNAL',null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'SYS','DBMS_AQADM',null,'DBMS_AQADM_SYS',null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'XDB','DBMS_XMLSCHEMA','REGISTERSCHEMA','DBMS_XMLSCHEMA_LSB','REGISTERSCHEMA_STR',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'XDB','DBMS_XMLSCHEMA','REGISTERSCHEMA','DBMS_XMLSCHEMA_LSB','REGISTERSCHEMA_OID',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'XDB','DBMS_XMLSCHEMA','REGISTERSCHEMA','DBMS_XMLSCHEMA_LSB','REGISTERSCHEMA_BLOB',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'XDB','DBMS_XMLSCHEMA','REGISTERSCHEMA','DBMS_XMLSCHEMA_LSB','REGISTERSCHEMA_XML',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'XDB','DBMS_XMLSCHEMA','COMPILESCHEMA','DBMS_XMLSCHEMA_LSB','COMPILESCHEMA',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'XDB','DBMS_XMLSCHEMA','COPYEVOLVE','DBMS_XMLSCHEMA_LSB','COPYEVOLVE',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'XDB','DBMS_XDB',null,'DBMS_XLSB',null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'XDB','DBMS_XDB_CONFIG',null,'DBMS_XLSB',null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'XDB','DBMS_XDB_REPOS',null,'DBMS_XLSB',null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'XDB','DBMS_XDBRESOURCE',null,'DBMS_XLSB',null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'SYS','XS_PRINCIPAL','SET_PASSWORD','XS_PRINCIPAL_INT','SET_VERIFIER_HELPER',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'SYS','XS_PRINCIPAL','SET_VERIFIER','XS_PRINCIPAL_INT','SET_VERIFIER_HELPER',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','CREATE_PREFERENCE','DRVLSB','CREATE_PREFERENCE_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','CREATE_PREFERENCE','DRVLSB','CREATE_PREFERENCE_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','DROP_PREFERENCE','DRVLSB','DROP_PREFERENCE_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','DROP_PREFERENCE','DRVLSB','DROP_PREFERENCE_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','SET_ATTRIBUTE','DRVLSB','SET_ATTRIBUTE_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','SET_ATTRIBUTE','DRVLSB','SET_ATTRIBUTE_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','UNSET_ATTRIBUTE','DRVLSB','UNSET_ATTRIBUTE_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','UNSET_ATTRIBUTE','DRVLSB','UNSET_ATTRIBUTE_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','CREATE_SECTION_GROUP','DRVLSB','CREATE_SECTION_GROUP_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','CREATE_SECTION_GROUP','DRVLSB','CREATE_SECTION_GROUP_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','DROP_SECTION_GROUP','DRVLSB','DROP_SECTION_GROUP_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','DROP_SECTION_GROUP','DRVLSB','DROP_SECTION_GROUP_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_ZONE_SECTION','DRVLSB','ADD_ZONE_SECTION_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_ZONE_SECTION','DRVLSB','ADD_ZONE_SECTION_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_FIELD_SECTION','DRVLSB','ADD_FIELD_SECTION_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_FIELD_SECTION','DRVLSB','ADD_FIELD_SECTION_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_SPECIAL_SECTION','DRVLSB','ADD_SPECIAL_SECTION_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_SPECIAL_SECTION','DRVLSB','ADD_SPECIAL_SECTION_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_STOP_SECTION','DRVLSB','ADD_STOP_SECTION_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_STOP_SECTION','DRVLSB','ADD_STOP_SECTION_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_ATTR_SECTION','DRVLSB','ADD_ATTR_SECTION_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_ATTR_SECTION','DRVLSB','ADD_ATTR_SECTION_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_XML_SECTION','DRVLSB','ADD_XML_SECTION_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_XML_SECTION','DRVLSB','ADD_XML_SECTION_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_MDATA_SECTION','DRVLSB','ADD_MDATA_SECTION_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_MDATA_SECTION','DRVLSB','ADD_MDATA_SECTION_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_NDATA_SECTION','DRVLSB','ADD_NDATA_SECTION_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_NDATA_SECTION','DRVLSB','ADD_NDATA_SECTION_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_MVDATA_SECTION','DRVLSB','ADD_MVDATA_SECTION_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_MVDATA_SECTION','DRVLSB','ADD_MVDATA_SECTION_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_SDATA_SECTION','DRVLSB','ADD_SDATA_SECTION_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_SDATA_SECTION','DRVLSB','ADD_SDATA_SECTION_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_SDATA_COLUMN','DRVLSB','ADD_SDATA_COLUMN_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_SDATA_COLUMN','DRVLSB','ADD_SDATA_COLUMN_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_MDATA_COLUMN','DRVLSB','ADD_MDATA_COLUMN_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_MDATA_COLUMN','DRVLSB','ADD_MDATA_COLUMN_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','REMOVE_SECTION','DRVLSB','REMOVE_SECTION_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','REMOVE_SECTION','DRVLSB','REMOVE_SECTION_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','CREATE_STOPLIST','DRVLSB','CREATE_STOPLIST_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','CREATE_STOPLIST','DRVLSB','CREATE_STOPLIST_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','DROP_STOPLIST','DRVLSB','DROP_STOPLIST_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','DROP_STOPLIST','DRVLSB','DROP_STOPLIST_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_STOPWORD','DRVLSB','ADD_STOPWORD_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_STOPWORD','DRVLSB','ADD_STOPWORD_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_STOPTHEME','DRVLSB','ADD_STOPTHEME_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_STOPTHEME','DRVLSB','ADD_STOPTHEME_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_STOPCLASS','DRVLSB','ADD_STOPCLASS_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_STOPCLASS','DRVLSB','ADD_STOPCLASS_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_INDEX','DRVLSB','ADD_INDEX_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_INDEX','DRVLSB','ADD_INDEX_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','CREATE_INDEX_SET','DRVLSB','CREATE_INDEX_SET_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','CREATE_INDEX_SET','DRVLSB','CREATE_INDEX_SET_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','REMOVE_INDEX','DRVLSB','REMOVE_INDEX_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','REMOVE_INDEX','DRVLSB','REMOVE_INDEX_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_SUB_LEXER','DRVLSB','ADD_SUB_LEXER_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_SUB_LEXER','DRVLSB','ADD_SUB_LEXER_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','REMOVE_SUB_LEXER','DRVLSB','REMOVE_SUB_LEXER_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','REMOVE_SUB_LEXER','DRVLSB','REMOVE_SUB_LEXER_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','UPDATE_SUB_LEXER','DRVLSB','UPDATE_SUB_LEXER_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','UPDATE_SUB_LEXER','DRVLSB','UPDATE_SUB_LEXER_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','SET_SECTION_ATTRIBUTE','DRVLSB','SET_SECTION_ATTRIBUTE_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','SET_SECTION_ATTRIBUTE','DRVLSB','SET_SECTION_ATTRIBUTE_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','UNSET_SECTION_ATTRIBUTE','DRVLSB','UNSET_SECTION_ATTRIBUTE_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','UNSET_SECTION_ATTRIBUTE','DRVLSB','UNSET_SECTION_ATTRIBUTE_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_MDATA','DRVLSB','ADD_MDATA',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','REMOVE_MDATA','DRVLSB','REMOVE_MDATA',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','INSERT_MVDATA_VALUES','DRVLSB','INSERT_MVDATA_VALUES',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','DELETE_MVDATA_VALUES','DRVLSB','DELETE_MVDATA_VALUES',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_SDATA','DRVLSB','ADD_SDATA',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','REMOVE_SDATA','DRVLSB','REMOVE_SDATA',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','UPDATA_MVDATA_SET','DRVLSB','UPDATA_MVDATA_SET',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','UPDATE_SDATA','DRVLSB','UPDATE_SDATA',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','POPULATE_PENDING','DRVLSB','POPULATE_PENDING',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','RECREATE_INDEX_ONLINE','DRVLSB','RECREATE_INDEX_ONLINE',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','CREATE_SHADOW_INDEX','DRVLSB','CREATE_SHADOW_INDEX',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','EXCHANGE_SHADOW_INDEX','DRVLSB','EXCHANGE_SHADOW_INDEX',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','DROP_SHADOW_INDEX','DRVLSB','DROP_SHADOW_INDEX',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','SYNC_INDEX','DRVLSB','SYNC_INDEX',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','OPTIMIZE_INDEX','DRVLSB','OPTIMIZE_INDEX',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DOC','FILTER','DRVLSB','FILTER',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DOC','GIST','DRVLSB','GIST',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DOC','MARKUP','DRVLSB','MARKUP',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DOC','TOKENS','DRVLSB','TOKENS',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DOC','THEMES','DRVLSB','THEMES',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DOC','HIGHLIGHT','DRVLSB','HIGHLIGHT',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DOC','MARKUP_CLOB_QUERY','DRVLSB','MARKUP_CLOB_QUERY',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DOC','HIGHLIGHT_CLOB_QUERY','DRVLSB','HIGHLIGHT_CLOB_QUERY',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_ANL','ADD_DICTIONARY','DRVLSB','ADD_DICTIONARY_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_ANL','ADD_DICTIONARY','DRVLSB','ADD_DICTIONARY_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_ANL','DROP_DICTIONARY','DRVLSB','DROP_DICTIONARY_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_ANL','DROP_DICTIONARY','DRVLSB','DROP_DICTIONARY_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','SET_SEC_GRP_ATTR','DRVLSB','SET_SEC_GRP_ATTR_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','SET_SEC_GRP_ATTR','DRVLSB','SET_SEC_GRP_ATTR_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_SEC_GRP_ATTR_VAL','DRVLSB','ADD_SEC_GRP_ATTR_VAL_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_SEC_GRP_ATTR_VAL','DRVLSB','ADD_SEC_GRP_ATTR_VAL_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','CREATE_THESAURUS','DRITHSC','CREATE_THESAURUS_LSB',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','CREATE_PHRASE','DRITHSC','CREATE_PHRASE_LSB',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','ALTER_PHRASE','DRITHS','PARSE_PHRASE',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','CREATE_PHRASE','DRITHS','PARSE_PHRASE',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','HAS_RELATION','DRITHS','PARSE_PHRASE',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','SYN','DRITHS','PARSE_PHRASE',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','SN','DRITHS','PARSE_PHRASE',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','PT','DRITHS','PARSE_PHRASE',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','TT','DRITHS','PARSE_PHRASE',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','RT','DRITHS','PARSE_PHRASE',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','BT','DRITHS','PARSE_PHRASE',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','BTP','DRITHS','PARSE_PHRASE',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','BTI','DRITHS','PARSE_PHRASE',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','BTG','DRITHS','PARSE_PHRASE',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','NT','DRITHS','PARSE_PHRASE',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','NTP','DRITHS','PARSE_PHRASE',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','NTI','DRITHS','PARSE_PHRASE',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','NTG','DRITHS','PARSE_PHRASE',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','TRSYN','DRITHS','PARSE_PHRASE',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','TR','DRITHS','PARSE_PHRASE',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-4,'XDB','DBMS_XDB',null,'DBMS_XLSB',null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-4,'XDB','DBMS_XDB_CONFIG',null,'DBMS_XLSB',null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-4,'XDB','DBMS_XDB_REPOS',null,'DBMS_XLSB',null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-4,'XDB','DBMS_XDBRESOURCE',null,'DBMS_XLSB',null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-4,'SYS','DBMS_AQ_IMP_INTERNAL',null,'DBMS_AQ_SYS_IMP_INTERNAL',null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-4,'SYS','DBMS_RULE_ADM',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-4,'SYS','DBMS_AQADM',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-4,'SYS','DBMS_AQADM',null,'DBMS_AQADM_SYS',null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-4,'SYS','DBMS_AQJMS',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-4,'SYS','DBMS_PRVTAQIS',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-4,'SYS','XS_PRINCIPAL',null,'XS_PRINCIPAL_INT',null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-5,'MDSYS','SDO_GEORASTER',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-5,'MDSYS','SDO_TOPO_GEOMETRY',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-8,'SYS','DBMS_RLS',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-8,'SYS','DBMS_FGA',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-8,'XDB','DBMS_XMLSCHEMA',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-9,'XDB','DBMS_XMLSCHEMA_LSB',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-8,'XDB','DBMS_XMLINDEX',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'XDB','DBMS_XDBZ0',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'XDB','DBMS_RESCONFIG',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'XDB','DBMS_XDBZ',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'XDB','DBMS_XDB_VERSION',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'XDB','DBMS_XDB',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'XDB','DBMS_XLSB',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'XDB','DBMS_XDB_CONFIG',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'XDB','DBMS_XDB_REPOS',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'XDB','DBMS_XDBRESOURCE',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'SYS','DBMS_XDS',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'SYS','DBMS_SCHEDULER',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'SYS','DBMS_ISCHED',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'SYS','DBMS_AQADM_SYS',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'SYS','DBMS_AQ_SYS_IMP_INTERNAL',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'SYS','DBMS_AQADM',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'SYS','DBMS_AQELM',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'SYS','DBMS_RULE_ADM',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'SYS','DBMS_PRVTAQIS',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'SYS','DBMS_AQ',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'SYS','DBMS_AQJMS',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'SYS','DBMS_DBFS_CONTENT_ADMIN',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'SYS','DBMS_DBFS_SFS',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'SYS','DBMS_DBFS_SFS_ADMIN',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'SYS','XS_PRINCIPAL',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'SYS','XS_PRINCIPAL_INT',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'SYS','XS_ACL',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'SYS','XS_ROLESET',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'SYS','XS_SECURITY_CLASS',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'SYS','XS_DATA_SECURITY',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'SYS','XS_NAMESPACE',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'CTXSYS','CTX_ANL',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'CTXSYS','CTX_DDL',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'CTXSYS','CTX_TREE',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'CTXSYS','CTX_ENTITY',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'CTXSYS','DRITHSL',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'CTXSYS','DRITHSC',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'CTXSYS','DRITHS',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'CTXSYS','DRIENTL',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'CTXSYS','CTX_ADM',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'CTXSYS','CTX_QUERY',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'CTXSYS','CTX_CLS',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'CTXSYS','CTX_THES',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'CTXSYS','CTX_OUTPUT',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'CTXSYS','CTX_DOC',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'CTXSYS','DRVXMD',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'CTXSYS','DRVLSB',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-8,'SYS','DBMS_DDL',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-8,'SYS','DBMS_REDEFINITION',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-8,'SYS','DBMS_SQL_TRANSLATOR',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-9,'SYS','LOGSTDBY_INTERNAL',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-9,'SYS','DBMS_INTERNAL_LOGSTDBY',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-9,'SYS','DBMS_INTERNAL_ROLLING',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-8,'SYS','DBMS_REDACT',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-8,'MDSYS','SDO_META',null,null,null,0,null,null,null);
REM INSERTING into LOGSTDBY$SKIP_TRANSACTION
SET DEFINE OFF;
REM INSERTING into MVIEW$_ADV_AJG
SET DEFINE OFF;
REM INSERTING into MVIEW$_ADV_BASETABLE
SET DEFINE OFF;
REM INSERTING into MVIEW$_ADV_CLIQUE
SET DEFINE OFF;
REM INSERTING into MVIEW$_ADV_ELIGIBLE
SET DEFINE OFF;
REM INSERTING into MVIEW$_ADV_EXCEPTIONS
SET DEFINE OFF;
REM INSERTING into MVIEW$_ADV_FILTER
SET DEFINE OFF;
REM INSERTING into MVIEW$_ADV_FILTERINSTANCE
SET DEFINE OFF;
REM INSERTING into MVIEW$_ADV_FJG
SET DEFINE OFF;
REM INSERTING into MVIEW$_ADV_GC
SET DEFINE OFF;
REM INSERTING into MVIEW$_ADV_INFO
SET DEFINE OFF;
REM INSERTING into MVIEW$_ADV_JOURNAL
SET DEFINE OFF;
REM INSERTING into MVIEW$_ADV_LEVEL
SET DEFINE OFF;
REM INSERTING into MVIEW$_ADV_LOG
SET DEFINE OFF;
REM INSERTING into MVIEW$_ADV_OUTPUT
SET DEFINE OFF;
REM INSERTING into MVIEW$_ADV_PARAMETERS
SET DEFINE OFF;
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_EXACT_DELETE',0,null,null,0.02);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_EXACT_BUCKETS',0,null,null,1000);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_PARTIAL_DELETE',0,null,null,0.02);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_PARTIAL_BUCKETS',0,null,null,1000);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_AJG_DELETE',0,null,null,0.02);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_AJG_BUCKETS',0,null,null,100);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_FJG_DELETE',0,null,null,0.02);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_GC_DELETE',0,null,null,0.02);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_MEA_DELETE',0,null,null,0.05);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_TRACE_LEVEL',0,null,null,0);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_REWRITE_NRF',0,null,null,10);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.console_output',1,'True',null,0);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.wip_interval',0,null,null,250);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.commit_interval',0,null,null,100);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.sql_exclusions',1,'SYSTEM.%',null,0);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.pretty',1,'True',null,0);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.lcase_names',1,'True',null,0);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.lcase_keywords',1,'False',null,0);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.add_alias',1,'False',null,0);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.ignore_ambig',1,'True',null,0);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.fixup_alias',1,'False',null,0);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.optimize',1,'True',null,0);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.ignore_columns',1,'True',null,0);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.fixup_schema',1,'False',null,0);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.remove_optional_keywords',1,'False',null,0);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.dump_tree',1,'True',null,0);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.debug_flags',1,null,null,0);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.datetime_mask',1,'dd/MM/yyyy HH:mm',null,0);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMAE_MIN_CLQ_MF_RATIO',0,null,null,0.05);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMAE_MIN_SUM_BC_RATIO',0,null,null,0.05);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMAE_MAX_GCS',0,null,null,1000);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMAE_PCT_COMPL_POLL_INTL',0,null,null,10);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMAE_TRACE_LEVEL',0,null,null,0);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMAE_AEP_MAX_LAT_SIZE',0,null,null,1024);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMAE_AEP_MAX_FACT_TABLES',0,null,null,10);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.report.color1',1,'#FFFFDE',null,0);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.report.color2',1,'#336699',null,0);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.report.color3',1,'#FFCC60',null,0);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.report.color4',1,'white',null,0);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.report.include_unused',1,'False',null,0);
REM INSERTING into MVIEW$_ADV_PLAN
SET DEFINE OFF;
REM INSERTING into MVIEW$_ADV_PRETTY
SET DEFINE OFF;
REM INSERTING into MVIEW$_ADV_ROLLUP
SET DEFINE OFF;
REM INSERTING into MVIEW$_ADV_SQLDEPEND
SET DEFINE OFF;
REM INSERTING into MVIEW$_ADV_TEMP
SET DEFINE OFF;
REM INSERTING into MVIEW$_ADV_WORKLOAD
SET DEFINE OFF;
REM INSERTING into OL$
SET DEFINE OFF;
REM INSERTING into OL$HINTS
SET DEFINE OFF;
REM INSERTING into OL$NODES
SET DEFINE OFF;
REM INSERTING into REDO_DB
SET DEFINE OFF;
Insert into REDO_DB (DBID,GLOBAL_DBNAME,DBUNAME,VERSION,THREAD#,RESETLOGS_SCN_BAS,RESETLOGS_SCN_WRP,RESETLOGS_TIME,PRESETLOGS_SCN_BAS,PRESETLOGS_SCN_WRP,PRESETLOGS_TIME,SEQNO_RCV_CUR,SEQNO_RCV_LO,SEQNO_RCV_HI,SEQNO_DONE_CUR,SEQNO_DONE_LO,SEQNO_DONE_HI,GAP_SEQNO,GAP_RET,GAP_DONE,APPLY_SEQNO,APPLY_DONE,PURGE_DONE,HAS_CHILD,ERROR1,STATUS,CREATE_DATE,TS1,TS2,GAP_NEXT_SCN,GAP_NEXT_TIME,CURSCN_TIME,RESETLOGS_SCN,PRESETLOGS_SCN,GAP_RET2,CURLOG,ENDIAN,ENQIDX,SPARE4,SPARE5,SPARE6,SPARE7,TS3,CURBLKNO,SPARE8,SPARE9,SPARE10,SPARE11,SPARE12) values (0,null,null,null,0,0,0,2,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,null,0,0,0,0,0,0,0,0,0,0,0,0,null,null,null,0,0,0,0,0,0,0);
REM INSERTING into REDO_LOG
SET DEFINE OFF;
REM INSERTING into REDO_RTA
SET DEFINE OFF;
REM INSERTING into REPCAT$_AUDIT_ATTRIBUTE
SET DEFINE OFF;
Insert into REPCAT$_AUDIT_ATTRIBUTE (ATTRIBUTE,DATA_TYPE_ID,DATA_LENGTH,SOURCE) values ('TIMESTAMP',3,null,'SYSDATE');
Insert into REPCAT$_AUDIT_ATTRIBUTE (ATTRIBUTE,DATA_TYPE_ID,DATA_LENGTH,SOURCE) values ('GLOBAL NAME',2,128,'DBMS_REPUTIL.GLOBAL_NAME');
REM INSERTING into REPCAT$_AUDIT_COLUMN
SET DEFINE OFF;
REM INSERTING into REPCAT$_COLUMN_GROUP
SET DEFINE OFF;
REM INSERTING into REPCAT$_CONFLICT
SET DEFINE OFF;
REM INSERTING into REPCAT$_DDL
SET DEFINE OFF;
REM INSERTING into REPCAT$_EXCEPTIONS
SET DEFINE OFF;
REM INSERTING into REPCAT$_EXTENSION
SET DEFINE OFF;
REM INSERTING into REPCAT$_FLAVORS
SET DEFINE OFF;
REM INSERTING into REPCAT$_FLAVOR_OBJECTS
SET DEFINE OFF;
REM INSERTING into REPCAT$_GENERATED
SET DEFINE OFF;
REM INSERTING into REPCAT$_GROUPED_COLUMN
SET DEFINE OFF;
REM INSERTING into REPCAT$_INSTANTIATION_DDL
SET DEFINE OFF;
REM INSERTING into REPCAT$_KEY_COLUMNS
SET DEFINE OFF;
REM INSERTING into REPCAT$_OBJECT_PARMS
SET DEFINE OFF;
REM INSERTING into REPCAT$_OBJECT_TYPES
SET DEFINE OFF;
Insert into REPCAT$_OBJECT_TYPES (OBJECT_TYPE_ID,OBJECT_TYPE_NAME,FLAGS,SPARE1) values (-1017,'GENERATED DDL','02',null);
Insert into REPCAT$_OBJECT_TYPES (OBJECT_TYPE_ID,OBJECT_TYPE_NAME,FLAGS,SPARE1) values (-1016,'DUMMY MATERIALIZED VIEW','02',null);
Insert into REPCAT$_OBJECT_TYPES (OBJECT_TYPE_ID,OBJECT_TYPE_NAME,FLAGS,SPARE1) values (-1015,'UPDATABLE MATERIALIZED VIEW LOG','02',null);
Insert into REPCAT$_OBJECT_TYPES (OBJECT_TYPE_ID,OBJECT_TYPE_NAME,FLAGS,SPARE1) values (-1014,'REFRESH GROUP','02',null);
Insert into REPCAT$_OBJECT_TYPES (OBJECT_TYPE_ID,OBJECT_TYPE_NAME,FLAGS,SPARE1) values (-1013,'SYNCHRONOUS MASTER REPGROUP','02',null);
Insert into REPCAT$_OBJECT_TYPES (OBJECT_TYPE_ID,OBJECT_TYPE_NAME,FLAGS,SPARE1) values (-1012,'ASYNCHRONOUS MASTER REPGROUP','02',null);
Insert into REPCAT$_OBJECT_TYPES (OBJECT_TYPE_ID,OBJECT_TYPE_NAME,FLAGS,SPARE1) values (-1011,'TEMPORARY TABLE','02',null);
Insert into REPCAT$_OBJECT_TYPES (OBJECT_TYPE_ID,OBJECT_TYPE_NAME,FLAGS,SPARE1) values (-1005,'SYNCHRONOUS UPDATABLE TABLE','02',null);
Insert into REPCAT$_OBJECT_TYPES (OBJECT_TYPE_ID,OBJECT_TYPE_NAME,FLAGS,SPARE1) values (-1004,'ASYNCHRONOUS UPDATABLE TABLE','00',null);
Insert into REPCAT$_OBJECT_TYPES (OBJECT_TYPE_ID,OBJECT_TYPE_NAME,FLAGS,SPARE1) values (-1003,'READ ONLY TABLE','02',null);
Insert into REPCAT$_OBJECT_TYPES (OBJECT_TYPE_ID,OBJECT_TYPE_NAME,FLAGS,SPARE1) values (-1002,'SITEOWNER','02',null);
Insert into REPCAT$_OBJECT_TYPES (OBJECT_TYPE_ID,OBJECT_TYPE_NAME,FLAGS,SPARE1) values (-1001,'USER','02',null);
Insert into REPCAT$_OBJECT_TYPES (OBJECT_TYPE_ID,OBJECT_TYPE_NAME,FLAGS,SPARE1) values (-5,'DATABASE LINK','01',null);
Insert into REPCAT$_OBJECT_TYPES (OBJECT_TYPE_ID,OBJECT_TYPE_NAME,FLAGS,SPARE1) values (-1,'MATERIALIZED VIEW','01',null);
Insert into REPCAT$_OBJECT_TYPES (OBJECT_TYPE_ID,OBJECT_TYPE_NAME,FLAGS,SPARE1) values (1,'INDEX','01',null);
Insert into REPCAT$_OBJECT_TYPES (OBJECT_TYPE_ID,OBJECT_TYPE_NAME,FLAGS,SPARE1) values (2,'TABLE','01',null);
Insert into REPCAT$_OBJECT_TYPES (OBJECT_TYPE_ID,OBJECT_TYPE_NAME,FLAGS,SPARE1) values (4,'VIEW','03',null);
Insert into REPCAT$_OBJECT_TYPES (OBJECT_TYPE_ID,OBJECT_TYPE_NAME,FLAGS,SPARE1) values (5,'SYNONYM','01',null);
Insert into REPCAT$_OBJECT_TYPES (OBJECT_TYPE_ID,OBJECT_TYPE_NAME,FLAGS,SPARE1) values (6,'SEQUENCE','03',null);
Insert into REPCAT$_OBJECT_TYPES (OBJECT_TYPE_ID,OBJECT_TYPE_NAME,FLAGS,SPARE1) values (7,'PROCEDURE','03',null);
Insert into REPCAT$_OBJECT_TYPES (OBJECT_TYPE_ID,OBJECT_TYPE_NAME,FLAGS,SPARE1) values (8,'FUNCTION','03',null);
Insert into REPCAT$_OBJECT_TYPES (OBJECT_TYPE_ID,OBJECT_TYPE_NAME,FLAGS,SPARE1) values (9,'PACKAGE','03',null);
Insert into REPCAT$_OBJECT_TYPES (OBJECT_TYPE_ID,OBJECT_TYPE_NAME,FLAGS,SPARE1) values (10,'PACKAGE BODY','01',null);
Insert into REPCAT$_OBJECT_TYPES (OBJECT_TYPE_ID,OBJECT_TYPE_NAME,FLAGS,SPARE1) values (12,'TRIGGER','01',null);
Insert into REPCAT$_OBJECT_TYPES (OBJECT_TYPE_ID,OBJECT_TYPE_NAME,FLAGS,SPARE1) values (13,'TYPE','03',null);
Insert into REPCAT$_OBJECT_TYPES (OBJECT_TYPE_ID,OBJECT_TYPE_NAME,FLAGS,SPARE1) values (14,'TYPE BODY','01',null);
Insert into REPCAT$_OBJECT_TYPES (OBJECT_TYPE_ID,OBJECT_TYPE_NAME,FLAGS,SPARE1) values (32,'INDEX TYPE','01',null);
Insert into REPCAT$_OBJECT_TYPES (OBJECT_TYPE_ID,OBJECT_TYPE_NAME,FLAGS,SPARE1) values (33,'OPERATOR','01',null);
REM INSERTING into REPCAT$_PARAMETER_COLUMN
SET DEFINE OFF;
REM INSERTING into REPCAT$_PRIORITY
SET DEFINE OFF;
REM INSERTING into REPCAT$_PRIORITY_GROUP
SET DEFINE OFF;
REM INSERTING into REPCAT$_REFRESH_TEMPLATES
SET DEFINE OFF;
REM INSERTING into REPCAT$_REPCAT
SET DEFINE OFF;
REM INSERTING into REPCAT$_REPCATLOG
SET DEFINE OFF;
REM INSERTING into REPCAT$_REPCOLUMN
SET DEFINE OFF;
REM INSERTING into REPCAT$_REPGROUP_PRIVS
SET DEFINE OFF;
REM INSERTING into REPCAT$_REPOBJECT
SET DEFINE OFF;
REM INSERTING into REPCAT$_REPPROP
SET DEFINE OFF;
REM INSERTING into REPCAT$_REPSCHEMA
SET DEFINE OFF;
REM INSERTING into REPCAT$_RESOLUTION
SET DEFINE OFF;
REM INSERTING into REPCAT$_RESOLUTION_METHOD
SET DEFINE OFF;
Insert into REPCAT$_RESOLUTION_METHOD (CONFLICT_TYPE_ID,METHOD_NAME) values (1,'ADDITIVE');
Insert into REPCAT$_RESOLUTION_METHOD (CONFLICT_TYPE_ID,METHOD_NAME) values (1,'AVERAGE');
Insert into REPCAT$_RESOLUTION_METHOD (CONFLICT_TYPE_ID,METHOD_NAME) values (1,'DISCARD');
Insert into REPCAT$_RESOLUTION_METHOD (CONFLICT_TYPE_ID,METHOD_NAME) values (1,'EARLIEST TIMESTAMP');
Insert into REPCAT$_RESOLUTION_METHOD (CONFLICT_TYPE_ID,METHOD_NAME) values (1,'LATEST TIMESTAMP');
Insert into REPCAT$_RESOLUTION_METHOD (CONFLICT_TYPE_ID,METHOD_NAME) values (1,'MAXIMUM');
Insert into REPCAT$_RESOLUTION_METHOD (CONFLICT_TYPE_ID,METHOD_NAME) values (1,'MINIMUM');
Insert into REPCAT$_RESOLUTION_METHOD (CONFLICT_TYPE_ID,METHOD_NAME) values (1,'OVERWRITE');
Insert into REPCAT$_RESOLUTION_METHOD (CONFLICT_TYPE_ID,METHOD_NAME) values (1,'PRIORITY GROUP');
Insert into REPCAT$_RESOLUTION_METHOD (CONFLICT_TYPE_ID,METHOD_NAME) values (1,'SITE PRIORITY');
Insert into REPCAT$_RESOLUTION_METHOD (CONFLICT_TYPE_ID,METHOD_NAME) values (1,'USER FLAVOR FUNCTION');
Insert into REPCAT$_RESOLUTION_METHOD (CONFLICT_TYPE_ID,METHOD_NAME) values (1,'USER FUNCTION');
Insert into REPCAT$_RESOLUTION_METHOD (CONFLICT_TYPE_ID,METHOD_NAME) values (2,'APPEND SEQUENCE');
Insert into REPCAT$_RESOLUTION_METHOD (CONFLICT_TYPE_ID,METHOD_NAME) values (2,'APPEND SITE NAME');
Insert into REPCAT$_RESOLUTION_METHOD (CONFLICT_TYPE_ID,METHOD_NAME) values (2,'DISCARD');
Insert into REPCAT$_RESOLUTION_METHOD (CONFLICT_TYPE_ID,METHOD_NAME) values (2,'USER FLAVOR FUNCTION');
Insert into REPCAT$_RESOLUTION_METHOD (CONFLICT_TYPE_ID,METHOD_NAME) values (2,'USER FUNCTION');
Insert into REPCAT$_RESOLUTION_METHOD (CONFLICT_TYPE_ID,METHOD_NAME) values (3,'USER FLAVOR FUNCTION');
Insert into REPCAT$_RESOLUTION_METHOD (CONFLICT_TYPE_ID,METHOD_NAME) values (3,'USER FUNCTION');
REM INSERTING into REPCAT$_RESOLUTION_STATISTICS
SET DEFINE OFF;
REM INSERTING into REPCAT$_RESOL_STATS_CONTROL
SET DEFINE OFF;
REM INSERTING into REPCAT$_RUNTIME_PARMS
SET DEFINE OFF;
REM INSERTING into REPCAT$_SITES_NEW
SET DEFINE OFF;
REM INSERTING into REPCAT$_SITE_OBJECTS
SET DEFINE OFF;
REM INSERTING into REPCAT$_SNAPGROUP
SET DEFINE OFF;
REM INSERTING into REPCAT$_TEMPLATE_OBJECTS
SET DEFINE OFF;
REM INSERTING into REPCAT$_TEMPLATE_PARMS
SET DEFINE OFF;
REM INSERTING into REPCAT$_TEMPLATE_REFGROUPS
SET DEFINE OFF;
REM INSERTING into REPCAT$_TEMPLATE_SITES
SET DEFINE OFF;
REM INSERTING into REPCAT$_TEMPLATE_STATUS
SET DEFINE OFF;
Insert into REPCAT$_TEMPLATE_STATUS (TEMPLATE_STATUS_ID,STATUS_TYPE_NAME) values (0,'Modifiable');
Insert into REPCAT$_TEMPLATE_STATUS (TEMPLATE_STATUS_ID,STATUS_TYPE_NAME) values (1,'Frozen');
Insert into REPCAT$_TEMPLATE_STATUS (TEMPLATE_STATUS_ID,STATUS_TYPE_NAME) values (2,'Deleted');
REM INSERTING into REPCAT$_TEMPLATE_TARGETS
SET DEFINE OFF;
REM INSERTING into REPCAT$_TEMPLATE_TYPES
SET DEFINE OFF;
Insert into REPCAT$_TEMPLATE_TYPES (TEMPLATE_TYPE_ID,TEMPLATE_DESCRIPTION,FLAGS,SPARE1) values (1,'Deployment template','01',null);
Insert into REPCAT$_TEMPLATE_TYPES (TEMPLATE_TYPE_ID,TEMPLATE_DESCRIPTION,FLAGS,SPARE1) values (2,'IAS template','02',null);
REM INSERTING into REPCAT$_USER_AUTHORIZATIONS
SET DEFINE OFF;
REM INSERTING into REPCAT$_USER_PARM_VALUES
SET DEFINE OFF;
REM INSERTING into ROLLING$CONNECTIONS
SET DEFINE OFF;
REM INSERTING into ROLLING$DATABASES
SET DEFINE OFF;
REM INSERTING into ROLLING$DIRECTIVES
SET DEFINE OFF;
REM INSERTING into ROLLING$EVENTS
SET DEFINE OFF;
REM INSERTING into ROLLING$PARAMETERS
SET DEFINE OFF;
REM INSERTING into ROLLING$PLAN
SET DEFINE OFF;
REM INSERTING into ROLLING$STATISTICS
SET DEFINE OFF;
REM INSERTING into ROLLING$STATUS
SET DEFINE OFF;
REM INSERTING into SCHEDULER_JOB_ARGS_TBL
SET DEFINE OFF;
REM INSERTING into SCHEDULER_PROGRAM_ARGS_TBL
SET DEFINE OFF;
REM INSERTING into SQLPLUS_PRODUCT_PROFILE
SET DEFINE OFF;
REM INSERTING into VISA_ADMIN
SET DEFINE OFF;
Insert into VISA_ADMIN (ADMIN_ID,USER_EMAIL,ADMIN_FIRST_NAME,ADMIN_MIDDLE_NAME,ADMIN_LAST_NAME,ADMIN_BIRTHDATE,ADMIN_GENDER_ID,ADMIN_CONTACT_NUM,ADMIN_EMAIL,ADMIN_COUNTRY_ID,DATE_CREATED,DATE_UPDATED,ENABLED) values (3,'admin@cloudpanda.ph','Juan',null,'Dela Cruz',to_date('02-FEB-90','DD-MON-RR'),1,'091234567896','admin@cloudpanda.ph',1,to_date('09-JAN-18','DD-MON-RR'),to_date('13-SEP-18','DD-MON-RR'),1);
Insert into VISA_ADMIN (ADMIN_ID,USER_EMAIL,ADMIN_FIRST_NAME,ADMIN_MIDDLE_NAME,ADMIN_LAST_NAME,ADMIN_BIRTHDATE,ADMIN_GENDER_ID,ADMIN_CONTACT_NUM,ADMIN_EMAIL,ADMIN_COUNTRY_ID,DATE_CREATED,DATE_UPDATED,ENABLED) values (84,'appari_admin@cloudpanda.ph','Appari',null,'Dela Cruz',null,null,'091234567899','appari_admin@cloudpanda.ph',null,to_date('17-AUG-18','DD-MON-RR'),to_date('17-AUG-18','DD-MON-RR'),1);
Insert into VISA_ADMIN (ADMIN_ID,USER_EMAIL,ADMIN_FIRST_NAME,ADMIN_MIDDLE_NAME,ADMIN_LAST_NAME,ADMIN_BIRTHDATE,ADMIN_GENDER_ID,ADMIN_CONTACT_NUM,ADMIN_EMAIL,ADMIN_COUNTRY_ID,DATE_CREATED,DATE_UPDATED,ENABLED) values (85,'angeles_admin@cloudpanda.ph','Angeles',null,'Dela Cruz',null,null,'09123456789','angeles_admin@cloudpanda.ph',null,to_date('17-AUG-18','DD-MON-RR'),to_date('17-AUG-18','DD-MON-RR'),1);
REM INSERTING into VISA_ANNOUNCEMENTS
SET DEFINE OFF;
Insert into VISA_ANNOUNCEMENTS (ANNOUNCEMENT_ID,SUBJECT,CONTENT,DISPLAY_UNTIL,POSTED_BY,DATE_CREATED,DATE_UPDATED,ENABLED) values (1,'Philippines passport power ranking improves in 2018','MANILA - Philippine passport holders can now visit 66 travel destinations visa-free, making the Philippine passport the world\''s 70th most powerful in the world out of 105 destinations, according to the 2018 Henley Passport Index.',to_date('14-SEP-18','DD-MON-RR'),3,to_date('13-SEP-18','DD-MON-RR'),to_date('13-SEP-18','DD-MON-RR'),1);
Insert into VISA_ANNOUNCEMENTS (ANNOUNCEMENT_ID,SUBJECT,CONTENT,DISPLAY_UNTIL,POSTED_BY,DATE_CREATED,DATE_UPDATED,ENABLED) values (4,'China offers 30-day visa-free access to Hainan to 59 countries; Philippines included','MANILA - Starting May 1, tourists from 59 countries, including the Philippines, will be able to enter and stay in the Chinese province of Hainan without a visa for 30 days, according to China\''s official news agency. 

Xinhua News Agency said the 30-day visa-free access to Hainan island has been granted to citizens from 59 countries. 

Group and individual tourists can stay in Hainan visa-free for up to a month on condition that they book their tour through accredited travel agencies. 

Hainan, dubbed &amp;quot;China\''s Hawaii,&amp;quot; is currently offering only a 15-day visa-free stay for group tourists from 26 countries, including the Philippines. These group tours have to be organized by international travel services approved by the National Tourism Administration of China and registered in Hainan Province. 

The new policy for Hainan is part of China\''s effort to build the province into &amp;quot;a free trade port with Chinese characteristics,&amp;quot; as stated in the guidelines on supporting Hainan to deepen reform and opening up, released by central authorities Saturday.',to_date('06-OCT-18','DD-MON-RR'),3,to_date('13-SEP-18','DD-MON-RR'),to_date('13-SEP-18','DD-MON-RR'),1);
Insert into VISA_ANNOUNCEMENTS (ANNOUNCEMENT_ID,SUBJECT,CONTENT,DISPLAY_UNTIL,POSTED_BY,DATE_CREATED,DATE_UPDATED,ENABLED) values (5,'Taiwan visa-free travel begins for Filipinos','TAIPEI—The first plane from Manila landed in Taipei on Wednesday as Taiwan commenced a trial 9-month visa-free travel regime for visitors from the Philippines.

Among its passengers was a Filipino media crew invited by the Taipei city government to taste local delicacies and visit tourist attractions in the capital city.

Sig Aldeen, a blogger and television host making his first-ever visit to Taiwan, said he never had Taiwanese cuisine before. After tasting Taiwanese hamburger and stinky tofu, he said their very distinct flavors impressed him.',to_date('12-DEC-18','DD-MON-RR'),3,to_date('13-SEP-18','DD-MON-RR'),to_date('13-SEP-18','DD-MON-RR'),1);
REM INSERTING into VISA_APL_ACCREDITATION
SET DEFINE OFF;
REM INSERTING into VISA_APL_REP
SET DEFINE OFF;
REM INSERTING into VISA_APPLICANT
SET DEFINE OFF;
Insert into VISA_APPLICANT (APPLICANT_ID,APPLICANT_NO,USER_EMAIL,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EXT_NAME,BIRTHDATE,GENDER,CIVIL_STATUS,COUNTRY_BIRTH,CITIZENSHIP,HEIGHT,WEIGHT,MOBILE_NO,PH_STREET_NO,PH_VILLAGE,PH_BARANGAY,PH_CITY,PH_PROVINCE,PH_ZIPCODE,DATE_CREATED,DATE_UPDATED,ENABLED,OCCUPATION,HAIR_COLOR,EYE_COLOR,RACE,COMPLEXION,MARKS) values (149,'OTFIOVBVZWl1TFhLbkVzemVZcGxOdz09','clalberca.cloudpanda@gmail.com','LUFFY','D.','MONKEY','MUGIWARA',to_date('05-MAY-97','DD-MON-RR'),'Male',1,'69','NIHONJIN','172','64','09068323081','26 E. NATIVIDAD ST.','FAUSTA VILLAGE',null,'MARILAO','BULACAN','3019',to_date('18-SEP-18','DD-MON-RR'),to_date('18-SEP-18','DD-MON-RR'),1,'PIRATE','BLACK','BLACK',null,'Fair','SCAR ON LEFT CHEEK');
Insert into VISA_APPLICANT (APPLICANT_ID,APPLICANT_NO,USER_EMAIL,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EXT_NAME,BIRTHDATE,GENDER,CIVIL_STATUS,COUNTRY_BIRTH,CITIZENSHIP,HEIGHT,WEIGHT,MOBILE_NO,PH_STREET_NO,PH_VILLAGE,PH_BARANGAY,PH_CITY,PH_PROVINCE,PH_ZIPCODE,DATE_CREATED,DATE_UPDATED,ENABLED,OCCUPATION,HAIR_COLOR,EYE_COLOR,RACE,COMPLEXION,MARKS) values (150,'aVVnWU1nSjVnYy9UMmx5OXpnOW1Kdz09','dummywaeil@gmail.com','Judith','Binag','Delgado',null,to_date('28-JUL-98','DD-MON-RR'),'Female',1,'149','American','160','50','09123456789','4th Floor B3','Chatteau Elysse Condominium',null,'Parañaque','Metro Manila','1635',to_date('18-SEP-18','DD-MON-RR'),to_date('19-SEP-18','DD-MON-RR'),1,'Web Developer',null,null,null,null,null);
Insert into VISA_APPLICANT (APPLICANT_ID,APPLICANT_NO,USER_EMAIL,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EXT_NAME,BIRTHDATE,GENDER,CIVIL_STATUS,COUNTRY_BIRTH,CITIZENSHIP,HEIGHT,WEIGHT,MOBILE_NO,PH_STREET_NO,PH_VILLAGE,PH_BARANGAY,PH_CITY,PH_PROVINCE,PH_ZIPCODE,DATE_CREATED,DATE_UPDATED,ENABLED,OCCUPATION,HAIR_COLOR,EYE_COLOR,RACE,COMPLEXION,MARKS) values (148,'WDgrNmxCSlpsb1VlNlRQU3BGZ284UT09','mwaeil.cloudpanda@gmail.com','Mohammad Waeil',null,'applicant',null,to_date('08-JAN-98','DD-MON-RR'),'Male',1,'124','Saudi Arabian',null,null,'09123456789','10th Floor Inoza Tower','Fort Bonifacio',null,'Taguig','Metro Manila','1633',to_date('18-SEP-18','DD-MON-RR'),to_date('20-SEP-18','DD-MON-RR'),1,'Software Developer','Grey','Black',null,'Light','Mole above right eye');
Insert into VISA_APPLICANT (APPLICANT_ID,APPLICANT_NO,USER_EMAIL,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EXT_NAME,BIRTHDATE,GENDER,CIVIL_STATUS,COUNTRY_BIRTH,CITIZENSHIP,HEIGHT,WEIGHT,MOBILE_NO,PH_STREET_NO,PH_VILLAGE,PH_BARANGAY,PH_CITY,PH_PROVINCE,PH_ZIPCODE,DATE_CREATED,DATE_UPDATED,ENABLED,OCCUPATION,HAIR_COLOR,EYE_COLOR,RACE,COMPLEXION,MARKS) values (151,'M3plcDl6ZzdweVRBbHg4OHN6UEUrZz09','zaramilleyte.cloudpanda@gmail.com','Zam',null,'N/A',null,to_date('12-NOV-96','DD-MON-RR'),'Female',1,'1','Angolian','159','47','09477453157','Blk 16 Lot 37 Marilao Bulacan','Beverly Homes Subdiv',null,'Bonifacio Global City, Metro M','Bulacan','3019',to_date('19-SEP-18','DD-MON-RR'),to_date('19-SEP-18','DD-MON-RR'),1,'QA Analyst',null,null,null,'Light',null);
REM INSERTING into VISA_APPLICANT_CHILDREN
SET DEFINE OFF;
REM INSERTING into VISA_APPLICATION_DETAILS
SET DEFINE OFF;
REM INSERTING into VISA_APPLICATION_LOG
SET DEFINE OFF;
REM INSERTING into VISA_APPLICATION_STATUS
SET DEFINE OFF;
REM INSERTING into VISA_APPOINTMENT_LOG
SET DEFINE OFF;
REM INSERTING into VISA_APPOINTMENT_STATUS
SET DEFINE OFF;
REM INSERTING into VISA_APPOINTMENT_TIMES
SET DEFINE OFF;
Insert into VISA_APPOINTMENT_TIMES (ID,TIMESCHED_DESCRIPTION,AVAILABILITY,DATE_CREATED,DATE_UPDATED,ENABLED) values (2,'8:00 AM',1,to_date('24-JUL-18','DD-MON-RR'),to_date('24-JUL-18','DD-MON-RR'),1);
Insert into VISA_APPOINTMENT_TIMES (ID,TIMESCHED_DESCRIPTION,AVAILABILITY,DATE_CREATED,DATE_UPDATED,ENABLED) values (3,'9:00 AM',1,to_date('24-JUL-18','DD-MON-RR'),to_date('24-JUL-18','DD-MON-RR'),1);
Insert into VISA_APPOINTMENT_TIMES (ID,TIMESCHED_DESCRIPTION,AVAILABILITY,DATE_CREATED,DATE_UPDATED,ENABLED) values (4,'10:00 AM',1,to_date('24-JUL-18','DD-MON-RR'),to_date('24-JUL-18','DD-MON-RR'),1);
Insert into VISA_APPOINTMENT_TIMES (ID,TIMESCHED_DESCRIPTION,AVAILABILITY,DATE_CREATED,DATE_UPDATED,ENABLED) values (5,'11:00 AM',1,to_date('24-JUL-18','DD-MON-RR'),to_date('24-JUL-18','DD-MON-RR'),1);
Insert into VISA_APPOINTMENT_TIMES (ID,TIMESCHED_DESCRIPTION,AVAILABILITY,DATE_CREATED,DATE_UPDATED,ENABLED) values (6,'12:00 PM',1,to_date('24-JUL-18','DD-MON-RR'),to_date('24-JUL-18','DD-MON-RR'),0);
Insert into VISA_APPOINTMENT_TIMES (ID,TIMESCHED_DESCRIPTION,AVAILABILITY,DATE_CREATED,DATE_UPDATED,ENABLED) values (7,'1:00 PM',1,to_date('24-JUL-18','DD-MON-RR'),to_date('24-JUL-18','DD-MON-RR'),1);
Insert into VISA_APPOINTMENT_TIMES (ID,TIMESCHED_DESCRIPTION,AVAILABILITY,DATE_CREATED,DATE_UPDATED,ENABLED) values (8,'2:00 PM',1,to_date('24-JUL-18','DD-MON-RR'),to_date('24-JUL-18','DD-MON-RR'),1);
Insert into VISA_APPOINTMENT_TIMES (ID,TIMESCHED_DESCRIPTION,AVAILABILITY,DATE_CREATED,DATE_UPDATED,ENABLED) values (9,'3:00 PM',1,to_date('24-JUL-18','DD-MON-RR'),to_date('24-JUL-18','DD-MON-RR'),1);
Insert into VISA_APPOINTMENT_TIMES (ID,TIMESCHED_DESCRIPTION,AVAILABILITY,DATE_CREATED,DATE_UPDATED,ENABLED) values (10,'4:00 PM',1,to_date('24-JUL-18','DD-MON-RR'),to_date('24-JUL-18','DD-MON-RR'),1);
Insert into VISA_APPOINTMENT_TIMES (ID,TIMESCHED_DESCRIPTION,AVAILABILITY,DATE_CREATED,DATE_UPDATED,ENABLED) values (11,'5:00 PM',1,to_date('18-SEP-18','DD-MON-RR'),to_date('18-SEP-18','DD-MON-RR'),0);
Insert into VISA_APPOINTMENT_TIMES (ID,TIMESCHED_DESCRIPTION,AVAILABILITY,DATE_CREATED,DATE_UPDATED,ENABLED) values (1,'7:00 AM',1,to_date('18-SEP-18','DD-MON-RR'),to_date('18-SEP-18','DD-MON-RR'),0);
REM INSERTING into VISA_BRANCH
SET DEFINE OFF;
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (1,'BUREAU OF IMMIGRATION MAIN OFFICE','BIDMAIN','Intramuros, Manila, Philippines',to_date('24-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (46,'APARRI IMMIGRATION FIELD OFFICE','BIAPPARI','Philippine Port Authority (PPA) Compound Loriga Gallarza Street, Barangay Punta, Aparri, Cagayan',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (47,'BACOLOD IMMIGRATION FIELD OFFICE','BIBAC','Aguinaldo Street, Bacolod City, 6100',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (48,'BAGUIO IMMIGRATION FIELD OFFICE','BIBAGUIO','#38 Wagner Road, Military Cut-Off, Baguio City, Benguet 2600',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (25,'ANGELES IMMIGRATION FIELD OFFICE','BIANGELES','Ground, Floor, Metro Supermarket, MarQuee Mall, Pulung Maragul, Angeles City 2009',to_date('25-JUL-18','DD-MON-RR'),to_date('16-AUG-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (49,'BALABAC IMMIGRATION FIELD OFFICE','BIBLBC','o Elizabeth''s Pensionne Tumandao St., Poblacion II, Brookes Point, Palawan',to_date('30-JUL-18','DD-MON-RR'),to_date('22-AUG-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (50,'BALANGA IMMIGRATION FIELD OFFICE, REGION III','BIDBLNGA','2nd Floor, Santiago Building, Garcia corner Laurel Street, Capitol Drive, Balanga City, Bataan',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (51,'BATANGAS IMMIGRATION DISTRICT OFFICE','BIDBTNGS','Division Road, Barangay Bolbok Batangas City',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (52,'BATUGANDING IMMIGRATION BORDER CROSSING STATION','BIDBTGND','Batuganding, Sarangani, Davao Del Sur',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (53,'BISLIG IMMIGRATION FIELD OFFICE','BIDBSLG','Requina Village, John Bosco, Mangagoy Bislig City, Surigao del Sur 3908',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (54,'BOAC IMMIGRATION FIELD OFFICE','BIDBOAC','Capitol Compound, Brgy. Santol, Boac, Marinduque 4900',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (55,'BONGAO IMMIGRATION FIELD OFFICE','BIDBNG','Ridjiki St., Bongao, Tawi-Tawi',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (56,'BORACAY IMMIGRATION FIELD OFFICE','BIDBRCY','Abrams Compound, Sitio Ambulong, Brgy. Manoc Manoc, Malay, Aklan',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (57,'BROOKE\''S POINT BORDER CROSSING STATION','BIDBRKS','Brooke\''s Point, Palawan',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (58,'BUTUAN IMMIGRATION DISTRICT OFFICE','BIDBTN','3rd Floor Rural Bank Bldg., A.D. Curato',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (59,'CALAPAN IMMIGRATION DISTRICT OFFICE','BIDCLPN','Provincial Capitol Complex, Brgy. Camilmil, Calapan City, Oriental Mindoro',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (60,'CALBAYOG IMMIGRATION FIELD OFFICE','BIDCLBYG','Room 201, 2nd flr., Calbayog City Convention Center, Brgy. Capoocan. Calbayog City Samar',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (61,'CAGAYAN DE ORO IMMIGRATION DISTRICT OFFICE','BIDCGYN','Door 7, Ground Floor, YMCA Building, Julio Pacana Street, Cagayan De Oro',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (62,'CAUAYAN IMMIGRATION FIELD OFFICE (ISABELA)','BIDCYN','46 Burgos St., Brgy. District II, Cauayan City, Isabela',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (63,'CEBU IMMIGRATION DISTRICT OFFICE','BIDCB','2nd Level J Centre Mall, A.S. Fortuna Street Bakilid, Mandaue City, Cebu 6014',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (64,'CLARK IMMIGRATION ONE STOP SHOP','BIDCLRK','2nd Floor, Clark Development Corp. Building 2127 Clark Special Economic Zone, Pampanga',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (65,'COTABATO IMMIGRATION DISTRICT OFFICE','BIDCTBT','9th Door, 2nd Floor, Alnor Complex, Sinsuat Avenue, Cotabato City 9600',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (66,'DAGUPAN IMMIGRATION FIELD OFFICE','BIDDGPN','Dagupan People\''s Astrodome Building, Tupac District, Dagupan City, Pangasinan',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (67,'DASMARIÑAS IMMIGRATION FIELD OFFICE','BIDDSM','Lingkod Pinoy Center Level 1, Annex, Robinson Place, Dasmarinas, Cavite',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (68,'DAVAO IMMIGRATION DISTRICT OFFICE','BIDDV','JP Laurel Avenue, Bajada, Davao City',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (69,'DUMAGUETE IMMIGRATION FIELD OFFICE','BIDDMGT','Door # 8 Lu Pega Bldg., 38 Dr. V. Locsin St. Dumaguete City, Negros Oriental, 6200',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (70,'GAISANO IMMIGRATION SATELLITE OFFICE','BIDGSN','Gaisano Mactan Island Mall, Annex Bldg. Pajo, Lapu-Lapu City, 6015',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (71,'GENERAL SANTOS IMMIGRATION FIELD OFFICE','BIDGS','Ground Floor, Robinsons Place, J. Catolico Sr. Avenue, Barangay Lagao, General Santos City',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (72,'GLAN IMMIGRATION FIELD OFFICE','BIDGLN','CIQS-OSAC Building, Port of Glan, Saranggani Province 9517',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (73,'ILIGAN IMMIGRATION FIELD OFFICE','BIDLGN','2nd Floor, Room 203, Diocesan Centrum Bldg., Salvador T., Lluch St., Iligan City 9200',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (74,'ILOILO IMMIGRATION DISTRICT OFFICE','BIDLL','Customs House Building, 2nd Floor Aduana Street, 5000 Iloilo City',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (75,'JOLO IMMIGRATION FIELD OFFICE','BIDJL','Room 211, 2nd Floor Scott Tower Road, Jolo Sulu 7400',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (76,'KALIBO IMMIGRATION FIELD OFFICE','BIDKLB','ABL Sports Complex, provincial Capitol, Kalibo, Aklan',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (77,'LAOAG IMMIGRATION DISTRICT OFFICE','BIDLG','Brgy. 9, Tupaz Ave., Alejandro Bldg., Laoag City',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (78,'LEGAZPI IMMIGRATION DISTRICT OFFICE','BIDLGZP','L3-4B, 3/F Embarcadero De Legazpi Port Area, Victory Village Legazpi City 4500',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (79,'LUCENA IMMIGRATION FIELD OFFICE','BIDLCN','2nd floor Quezon Convention Center, Quezon Capitol Compound, Lucena City',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (80,'MAKATI IMMIGRATION EXTENSION OFFICE','BIDMKT','3/F, 805 Lasala Bldg. J.P. Rizal Avenue, Makati City',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (81,'MARIVELES IMMIGRATION ONE STOP SHOP','BIDMRVLS','Administration Building, FAB, Mariveles, Bataan',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (82,'NAGA IMMIGRATION FIELD OFFICE','BIDNG','Unit 7, 2nd Floor, Phonecian Building, Panganiban Drive corner Isarog Street, Naga City 4400',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (83,'OLONGAPO IMMIGRATION FIELD OFFICE','BIDOLNGP','111 Gordon Avenue, New Kalalake, Olongapo City',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (84,'OZAMIZ IMMIGRATION FIELD OFFICE','BIDZMZ','Port Road, Brgy. Katagalugan, G/F Gaisano South Wings, Ozamis City',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (85,'PEZA IMMIGRATION EXTENSION OFFICE','BIDPZ','Bldg. 4B Department of Energy Philippine National Oil Company (DOE-PNOC) Compound Bonifacio, Global City, Taguig City',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (86,'PUERTO PRINCESA IMMIGRATION FIELD OFFICE, REGION IV','BIDPRT','2nd flr. Servando Bldg., 412 Rizal Avenue, Puerto Prinsesa City, Palawan',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (87,'SAN FERNANDO IMMIGRATION DISTRICT OFFICE','BIDSNF','Pennsylvania Avenue, Poro Point, San Fernando, La Union 2500',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (88,'SM AURA IMMIGRATION SATELLITE OFFICE','BIDSMR','8th Floor, SM Aura Tower, McKinley Parkway, Bonifacio Global City, Taguig City Metro Manila, Philippines',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (89,'SM NORTH IMMIGRATION SATELLITE OFFICE','BIDSMNRTH','Upper Ground Floor, The Annex,  SM North Edsa, Quezon City',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (90,'SANTA ROSA IMMIGRATION FIELD OFFICE','BIDSNTRS','2nd flr, Annex building, City Government of Santa Rosa, Rizal Blvd, Brgy. Tagapo, Santa Rosa City, Laguna',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (91,'STUDENT VISA OFFICE','BIDSTDNT','Second Floor, Civic Center Building C. Quezon City Hall Complex, Quezon City',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (92,'SUBIC IMMIGRATION ONE STOP SHOP, REGION III','BIDSBC','Rm. 203, 2nd floor, Regulatory Building, Labitan St., corner Rizal Highway, Subic Bay Freeport Zone',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (93,'SURIGAO IMMIGRATION FIELD OFFICE','BIDSRG','A&amp;M Bldg. Kilometer 4, Brgy. Luna, Surigao City (Temporary Office)',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (94,'TACLOBAN IMMIGRATION DISTRICT OFFICE','BIDTCLBN','Kanhuraw Hill, Magsaysay Blvd., Tacloban City 6500',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (95,'TAGANAK IMMIGRATION FIELD OFFICE','BIDTGNK','Taganak, Turtle Islands, Tawi-Tawi',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (96,'TAGBILARAN IMMIGRATION FIELD OFFICE','BIDTGBLRN','2nd Floor Sarabia Co Torralba Bldg., CPG Ave., Tagbilaran City 6300',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (97,'TAYTAY IMMIGRATION FIELD OFFICE','BIDTYTY','Old Municipal Building, JP Rizal Street, Barangay Dolores, Taytay, Rizal',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (98,'TIBANBAN IMMIGRATION BORDER CROSSING STATION','BIDTBNBN','Purok 1 Sampaguita, Barangay Tibanban, Davao Oriental',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (99,'TUGUEGARAO IMMIGRATION DISTRICT OFFICE','BIDTGGR','2nd Floor Old City Hall Bldg. Mabini St. Tuguegarao City',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (100,'VIGAN FIELD OFFICE','BIDVGN','Ilocos Sur Provincial Capitol, Quezon St. Vigan City',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (101,'ZAMBOANGA IMMIGRATION FIELD OFFICE','BIDZMBNG','1/F Radja Building, Gov. Camins Avenue, Zamboanga City 7000',to_date('30-JUL-18','DD-MON-RR'),to_date('30-JUL-18','DD-MON-RR'),1);
Insert into VISA_BRANCH (BRANCH_ID,BRANCH_NAME,BRANCH_CODE,BRANCH_ADDRESS,DATE_CREATED,DATE_UPDATED,ENABLED) values (146,'BI Marilao','3019','Municipal Office, Patubig Marilao Bulacan',to_date('17-SEP-18','DD-MON-RR'),to_date('17-SEP-18','DD-MON-RR'),0);
REM INSERTING into VISA_BRANCH_ADMIN
SET DEFINE OFF;
Insert into VISA_BRANCH_ADMIN (BRANCH_ADMIN_ID,ACCOUNT_BRANCH_ID,ACCOUNT_EMAIL,DATE_CREATED,DATE_UPDATED,ENABLED) values (84,46,'appari_admin@cloudpanda.ph',to_date('17-AUG-18','DD-MON-RR'),to_date('17-AUG-18','DD-MON-RR'),1);
Insert into VISA_BRANCH_ADMIN (BRANCH_ADMIN_ID,ACCOUNT_BRANCH_ID,ACCOUNT_EMAIL,DATE_CREATED,DATE_UPDATED,ENABLED) values (85,25,'angeles_admin@cloudpanda.ph',to_date('17-AUG-18','DD-MON-RR'),to_date('17-AUG-18','DD-MON-RR'),1);
REM INSERTING into VISA_BRANCH_SCHEDULE
SET DEFINE OFF;
Insert into VISA_BRANCH_SCHEDULE (SCHED_LIMIT_ID,SCHED_LIMIT_BRANCH_ID,START_DATE,END_DATE,DAY_LIMIT,HOUR_LIMIT,CREATED_BY,DATE_CREATED,DATE_UPDATED,ENABLED) values (153,25,to_date('26-SEP-18','DD-MON-RR'),to_date('16-OCT-18','DD-MON-RR'),5,1,1,to_date('28-AUG-18','DD-MON-RR'),to_date('18-SEP-18','DD-MON-RR'),1);
Insert into VISA_BRANCH_SCHEDULE (SCHED_LIMIT_ID,SCHED_LIMIT_BRANCH_ID,START_DATE,END_DATE,DAY_LIMIT,HOUR_LIMIT,CREATED_BY,DATE_CREATED,DATE_UPDATED,ENABLED) values (154,46,to_date('18-SEP-18','DD-MON-RR'),to_date('20-SEP-18','DD-MON-RR'),10,1,1,to_date('28-AUG-18','DD-MON-RR'),to_date('28-AUG-18','DD-MON-RR'),1);
Insert into VISA_BRANCH_SCHEDULE (SCHED_LIMIT_ID,SCHED_LIMIT_BRANCH_ID,START_DATE,END_DATE,DAY_LIMIT,HOUR_LIMIT,CREATED_BY,DATE_CREATED,DATE_UPDATED,ENABLED) values (189,146,to_date('19-OCT-18','DD-MON-RR'),to_date('19-OCT-18','DD-MON-RR'),10,1,1,to_date('17-SEP-18','DD-MON-RR'),to_date('17-SEP-18','DD-MON-RR'),0);
Insert into VISA_BRANCH_SCHEDULE (SCHED_LIMIT_ID,SCHED_LIMIT_BRANCH_ID,START_DATE,END_DATE,DAY_LIMIT,HOUR_LIMIT,CREATED_BY,DATE_CREATED,DATE_UPDATED,ENABLED) values (174,25,to_date('24-SEP-18','DD-MON-RR'),to_date('25-SEP-18','DD-MON-RR'),10,2,1,to_date('14-SEP-18','DD-MON-RR'),to_date('14-SEP-18','DD-MON-RR'),1);
Insert into VISA_BRANCH_SCHEDULE (SCHED_LIMIT_ID,SCHED_LIMIT_BRANCH_ID,START_DATE,END_DATE,DAY_LIMIT,HOUR_LIMIT,CREATED_BY,DATE_CREATED,DATE_UPDATED,ENABLED) values (176,47,to_date('17-SEP-18','DD-MON-RR'),to_date('21-SEP-18','DD-MON-RR'),10,2,3,to_date('14-SEP-18','DD-MON-RR'),to_date('14-SEP-18','DD-MON-RR'),1);
Insert into VISA_BRANCH_SCHEDULE (SCHED_LIMIT_ID,SCHED_LIMIT_BRANCH_ID,START_DATE,END_DATE,DAY_LIMIT,HOUR_LIMIT,CREATED_BY,DATE_CREATED,DATE_UPDATED,ENABLED) values (190,146,to_date('18-SEP-18','DD-MON-RR'),to_date('18-SEP-18','DD-MON-RR'),10,1,1,to_date('17-SEP-18','DD-MON-RR'),to_date('17-SEP-18','DD-MON-RR'),0);
Insert into VISA_BRANCH_SCHEDULE (SCHED_LIMIT_ID,SCHED_LIMIT_BRANCH_ID,START_DATE,END_DATE,DAY_LIMIT,HOUR_LIMIT,CREATED_BY,DATE_CREATED,DATE_UPDATED,ENABLED) values (191,146,to_date('24-SEP-18','DD-MON-RR'),to_date('28-SEP-18','DD-MON-RR'),10,1,1,to_date('17-SEP-18','DD-MON-RR'),to_date('17-SEP-18','DD-MON-RR'),0);
REM INSERTING into VISA_CIVIL_STATUS
SET DEFINE OFF;
Insert into VISA_CIVIL_STATUS (CIVIL_STATUS_ID,NAME,DATE_CREATED,DATE_UPDATED,ENABLED) values (1,'Single',to_date('12-JUL-18','DD-MON-RR'),to_date('12-JUL-18','DD-MON-RR'),1);
Insert into VISA_CIVIL_STATUS (CIVIL_STATUS_ID,NAME,DATE_CREATED,DATE_UPDATED,ENABLED) values (2,'Married',to_date('12-JUL-18','DD-MON-RR'),to_date('12-JUL-18','DD-MON-RR'),1);
Insert into VISA_CIVIL_STATUS (CIVIL_STATUS_ID,NAME,DATE_CREATED,DATE_UPDATED,ENABLED) values (3,'Annulled',to_date('12-JUL-18','DD-MON-RR'),to_date('12-JUL-18','DD-MON-RR'),1);
Insert into VISA_CIVIL_STATUS (CIVIL_STATUS_ID,NAME,DATE_CREATED,DATE_UPDATED,ENABLED) values (4,'Divorced',to_date('12-JUL-18','DD-MON-RR'),to_date('12-JUL-18','DD-MON-RR'),1);
Insert into VISA_CIVIL_STATUS (CIVIL_STATUS_ID,NAME,DATE_CREATED,DATE_UPDATED,ENABLED) values (5,'Widowed',to_date('12-JUL-18','DD-MON-RR'),to_date('12-JUL-18','DD-MON-RR'),1);
REM INSERTING into VISA_COUNTRY
SET DEFINE OFF;
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (1,'Andorra','AND',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (2,'Angola','AGO',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (3,'Antigua and Barbuda','ATG',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (4,'Argentina','ARG',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (5,'Australia','AUS',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (6,'Austria','AUT',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (7,'Bahamas','BHS',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (8,'Bahrain','BHR',59,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (9,'Barbados','BRB',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (10,'Belgium','BEL',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (11,'Belize','BLZ',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (12,'Benin','BEN',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (13,'Bhutan','BMU',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (14,'Bolivia','BOL',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (15,'Botswana','BWA',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (16,'Brazil','BRA',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (17,'Brunei Darussalam','BRN',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (18,'Bulgaria','BGR',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (19,'Burkina Faso','BFA',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (20,'Burundi','BDI',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (21,'Cambodia','KHM',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (22,'Cameroon','CMR',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (23,'Canada','CAN',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (24,'Cape Verde','CPV',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (25,'Central African Republic','CAF',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (26,'Chad','TCD',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (27,'Chile','CHL',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (28,'Colombia','COL',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (29,'Comoros','COM',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (30,'Congo','COG',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (31,'Costa Rica','CRI',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (32,'Cote d’Ivoire','CIV',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (33,'Croatia','HRV',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (34,'Cyprus','CYP',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (35,'Czech Republic','CZE',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (36,'Democratic Republic of the Congo','COD',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (37,'Denmark','DNK',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (38,'Djibouti','DJI',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (39,'Dominica','DMA',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (40,'Dominican Republic','DOM',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (41,'Ecuador','ECU',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (42,'El Salvador','SLV',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (43,'Equatorial Guinea','GNQ',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (44,'Eritrea','ERI',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (45,'Estonia','EST',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (46,'Ethiopia','ETH',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (47,'Fiji','FJI',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (48,'Finland','FIN',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (49,'France','FRA',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (50,'Gabon','GAB',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (51,'Gambia','GMB',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (52,'Germany','DEU',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (53,'Ghana','GHA',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (54,'Greece','GRC',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (55,'Grenada','GRD',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (56,'Guatemala','GTM',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (57,'Guinea','GIN',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (58,'Guinea Bissau','GNB',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (59,'Guyana','GUY',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (60,'Haiti','HTI',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (61,'Honduras','HND',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (62,'Hungary','HUN',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (63,'Iceland','ISL',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (64,'Indonesia','IDN',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (65,'Ireland','IRL',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (66,'Israel','ISR',59,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (67,'Italy','ITA',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (68,'Jamaica','JAM',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (69,'Japan','JPN',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (70,'Kazakhstan','KAZ',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (71,'Kenya','KEN',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (72,'Kiribati','KIR',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (73,'Kuwait','KWT',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (74,'Kyrgyzstan','KGZ',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (75,'Lao People’s Democratic Republic','LAO',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (76,'Latvia','LVA',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (77,'Lesotho','LSO',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (78,'Liberia','LBR',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (79,'Liechtenstein','LIE',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (80,'Lithuania','LTU',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (81,'Luxembourg','LUX',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (82,'Madagascar','MDG',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (83,'Malawi','MWI',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (84,'Malaysia','MYS',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (85,'Maldives','MDV',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (86,'Mali','MLI',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (87,'Malta','MLT',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (88,'Marshall Islands','MHL',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (89,'Mauritania','MRT',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (90,'Mauritius','MUS',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (91,'Mexico','MEX',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (92,'Micronesia','FSM',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (93,'Monaco','MCO',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (94,'Mongolia','MNG',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (95,'Morocco','MAR',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (96,'Mozambique','MOZ',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (97,'Myanmar','MMR',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (98,'Namibia','NAM',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (99,'Nepal','NPL',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (100,'Netherlands','NLD',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (101,'New Zealand','NZL',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (102,'Nicaragua','NIC',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (103,'Niger','NER',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (104,'Norway','NOR',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (105,'Oman','OMN',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (106,'Palau','PLW',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (107,'Panama','PAN',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (108,'Papua New Guinea','PNG',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (109,'Paraguay','PRY',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (110,'Peru','PER',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (111,'Poland','POL',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (112,'Portugal','PRT',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (113,'Qatar','QAT',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (114,'Republic of Korea','KOR',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (115,'Romania','ROU',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (116,'Russia','RUS',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (117,'Rwanda','RWA',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (118,'Saint Kitts and Nevis','KNA',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (119,'Saint Lucia','LCA',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (120,'Saint Vincent and the Grenadines','VCT',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (121,'Samoa','WSM',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (122,'San Marino','SMR',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (123,'Sao Tome and Principe','STP',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (124,'Saudi Arabia','SAU',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (125,'Senegal','SEN',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (126,'Seychelles','SYC',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (127,'Singapore','SGP',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (128,'Slovak Republic','SVK',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (129,'Slovenia','SVN',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (130,'Solomon Islands','SLB',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (131,'South Africa','ZAF',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (132,'Spain','ESP',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (133,'Suriname','SUR',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (134,'Swaziland','SWZ',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (135,'Sweden','SWE',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (136,'Switzerland','CHE',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (137,'Tajikistan','TJK',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (138,'Thailand','THA',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (139,'Togo','TGO',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (140,'Trinidad and Tobago','TTO',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (141,'Tunisia','TUN',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (142,'Turkey','TUR',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (143,'Turkmenistan','TKM',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (144,'Tuvalu','TUV',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (145,'Uganda','UGA',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (146,'United Arab Emirates','UKR',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (147,'United Kingdom of Great Britain and Northern Irela','GBR',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (148,'United Republic of Tanzania','TZA',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (149,'United States of America','USA',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (150,'Uruguay','URY',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (151,'Uzbekistan','UZB',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (152,'Vanuatu','VUT',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (153,'Vatican','VAT',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (154,'Venezuela','VEN',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (155,'Vietnam','VNM',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (156,'Zambia','ZMB',30,1,null);
Insert into VISA_COUNTRY (COUNTRY_ID,NAME,COUNTRY_CODE,PERIOD,ENABLED,CITIZENSHIP) values (157,'Zimbabwe','ZWE',30,1,null);
REM INSERTING into VISA_FAQ
SET DEFINE OFF;
Insert into VISA_FAQ (FAQ_ID,FAQ_QUESTION,FAQ_ANSWER,ENABLED) values (7,'How to change my profile information?','Go to profile, click account information and then save changes.',1);
Insert into VISA_FAQ (FAQ_ID,FAQ_QUESTION,FAQ_ANSWER,ENABLED) values (8,'Try','Try',0);
Insert into VISA_FAQ (FAQ_ID,FAQ_QUESTION,FAQ_ANSWER,ENABLED) values (6,'How to apply for visa waiver?','1. Click \''Visa Waiver\''
2. Click apply
3. Follow steps
4. Finish',1);
REM INSERTING into VISA_FEES
SET DEFINE OFF;
Insert into VISA_FEES (FEE_ID,FEE_NAME,FEE_COST,ENABLED) values (1,'Visa Waiver',500,1);
Insert into VISA_FEES (FEE_ID,FEE_NAME,FEE_COST,ENABLED) values (2,'Visa Waiver Application Fee',1000,1);
Insert into VISA_FEES (FEE_ID,FEE_NAME,FEE_COST,ENABLED) values (3,'Certification Fee',500,1);
Insert into VISA_FEES (FEE_ID,FEE_NAME,FEE_COST,ENABLED) values (4,'Legal Research Fee',30,1);
Insert into VISA_FEES (FEE_ID,FEE_NAME,FEE_COST,ENABLED) values (5,'Express Fee',1000,1);
Insert into VISA_FEES (FEE_ID,FEE_NAME,FEE_COST,ENABLED) values (6,'Service Fee',0,1);
Insert into VISA_FEES (FEE_ID,FEE_NAME,FEE_COST,ENABLED) values (7,'Visa Sticker Fee',100,1);
REM INSERTING into VISA_HOLIDAY
SET DEFINE OFF;
Insert into VISA_HOLIDAY (HOLIDAY_ID,HOLIDAY_DESCRIPTION,HOLIDAY_DATE,DATE_CREATED,DATE_UPDATED,ENABLED,HOLIDAY_BRANCH) values (1,'All Souls Day',to_date('01-NOV-18','DD-MON-RR'),to_date('24-JUL-18','DD-MON-RR'),to_date('26-JUL-18','DD-MON-RR'),1,'0');
Insert into VISA_HOLIDAY (HOLIDAY_ID,HOLIDAY_DESCRIPTION,HOLIDAY_DATE,DATE_CREATED,DATE_UPDATED,ENABLED,HOLIDAY_BRANCH) values (85,'Bulacan Day',to_date('19-SEP-18','DD-MON-RR'),to_date('17-SEP-18','DD-MON-RR'),to_date('17-SEP-18','DD-MON-RR'),1,'146');
Insert into VISA_HOLIDAY (HOLIDAY_ID,HOLIDAY_DESCRIPTION,HOLIDAY_DATE,DATE_CREATED,DATE_UPDATED,ENABLED,HOLIDAY_BRANCH) values (3,'Christmas Day',to_date('25-DEC-18','DD-MON-RR'),to_date('24-JUL-18','DD-MON-RR'),to_date('16-AUG-18','DD-MON-RR'),1,'0');
Insert into VISA_HOLIDAY (HOLIDAY_ID,HOLIDAY_DESCRIPTION,HOLIDAY_DATE,DATE_CREATED,DATE_UPDATED,ENABLED,HOLIDAY_BRANCH) values (45,'New Year',to_date('01-JAN-19','DD-MON-RR'),to_date('07-AUG-18','DD-MON-RR'),to_date('07-AUG-18','DD-MON-RR'),1,'0');
Insert into VISA_HOLIDAY (HOLIDAY_ID,HOLIDAY_DESCRIPTION,HOLIDAY_DATE,DATE_CREATED,DATE_UPDATED,ENABLED,HOLIDAY_BRANCH) values (73,'Eidl Adha',to_date('21-AUG-18','DD-MON-RR'),to_date('17-AUG-18','DD-MON-RR'),to_date('17-AUG-18','DD-MON-RR'),1,'0');
REM INSERTING into VISA_OR
SET DEFINE OFF;
Insert into VISA_OR (OR_ID,OR_NO,REFERENCE_NO,DATE_CREATED,ENABLED) values (228,'VISA00007',959740377,to_date('17-AUG-18','DD-MON-RR'),1);
Insert into VISA_OR (OR_ID,OR_NO,REFERENCE_NO,DATE_CREATED,ENABLED) values (229,'VISA00008',333816322,to_date('17-AUG-18','DD-MON-RR'),1);
Insert into VISA_OR (OR_ID,OR_NO,REFERENCE_NO,DATE_CREATED,ENABLED) values (230,'VISA00009',332251472,to_date('17-AUG-18','DD-MON-RR'),1);
Insert into VISA_OR (OR_ID,OR_NO,REFERENCE_NO,DATE_CREATED,ENABLED) values (231,'VISA000010',350124056,to_date('17-AUG-18','DD-MON-RR'),1);
Insert into VISA_OR (OR_ID,OR_NO,REFERENCE_NO,DATE_CREATED,ENABLED) values (232,'VISA000011',747674659,to_date('17-AUG-18','DD-MON-RR'),1);
Insert into VISA_OR (OR_ID,OR_NO,REFERENCE_NO,DATE_CREATED,ENABLED) values (233,'VISA000012',338972090,to_date('17-AUG-18','DD-MON-RR'),1);
Insert into VISA_OR (OR_ID,OR_NO,REFERENCE_NO,DATE_CREATED,ENABLED) values (234,'VISA000013',320186053,to_date('17-AUG-18','DD-MON-RR'),1);
Insert into VISA_OR (OR_ID,OR_NO,REFERENCE_NO,DATE_CREATED,ENABLED) values (235,'VISA000014',969391611,to_date('17-AUG-18','DD-MON-RR'),1);
Insert into VISA_OR (OR_ID,OR_NO,REFERENCE_NO,DATE_CREATED,ENABLED) values (236,'VISA000015',969391611,to_date('17-AUG-18','DD-MON-RR'),1);
Insert into VISA_OR (OR_ID,OR_NO,REFERENCE_NO,DATE_CREATED,ENABLED) values (237,'VISA000016',853362818,to_date('17-AUG-18','DD-MON-RR'),1);
Insert into VISA_OR (OR_ID,OR_NO,REFERENCE_NO,DATE_CREATED,ENABLED) values (238,'VISA000017',192349955,to_date('17-AUG-18','DD-MON-RR'),1);
Insert into VISA_OR (OR_ID,OR_NO,REFERENCE_NO,DATE_CREATED,ENABLED) values (239,'VISA000018',572935725,to_date('17-AUG-18','DD-MON-RR'),1);
Insert into VISA_OR (OR_ID,OR_NO,REFERENCE_NO,DATE_CREATED,ENABLED) values (240,'VISA000019',null,to_date('17-AUG-18','DD-MON-RR'),1);
Insert into VISA_OR (OR_ID,OR_NO,REFERENCE_NO,DATE_CREATED,ENABLED) values (241,'VISA000020',null,to_date('17-AUG-18','DD-MON-RR'),1);
REM INSERTING into VISA_PASSPORT_DETAILS
SET DEFINE OFF;
REM INSERTING into VISA_POSITION
SET DEFINE OFF;
Insert into VISA_POSITION (POSITION_ID,POSITION,ENABLED) values (1,'Main Office Admin',1);
Insert into VISA_POSITION (POSITION_ID,POSITION,ENABLED) values (2,'Applicant',1);
Insert into VISA_POSITION (POSITION_ID,POSITION,ENABLED) values (3,'Branch Admin',1);
Insert into VISA_POSITION (POSITION_ID,POSITION,ENABLED) values (4,'Staff(Admin)',1);
REM INSERTING into VISA_REASON
SET DEFINE OFF;
Insert into VISA_REASON (REASON_ID,REASON,WITH_VALID,ENABLED) values (1,'Business','With Valid Provisional Work Permit',1);
Insert into VISA_REASON (REASON_ID,REASON,WITH_VALID,ENABLED) values (2,'Health','With Valid Special Study Permit',1);
Insert into VISA_REASON (REASON_ID,REASON,WITH_VALID,ENABLED) values (4,'Others','With Valid  Limited  Work Permit',1);
Insert into VISA_REASON (REASON_ID,REASON,WITH_VALID,ENABLED) values (3,'Pleasure','With Valid Special Study Permit',1);
REM INSERTING into VISA_SETTINGS
SET DEFINE OFF;
Insert into VISA_SETTINGS (SETTINGS_ID,SETTINGS_NAME,SETTINGS_VALUE,SETTINGS_CODE) values (1,'Days Extension','29','ext');
REM INSERTING into VISA_USERS
SET DEFINE OFF;
Insert into VISA_USERS (USER_ID,USER_EMAIL,PASSWORD,POSITION_ID,DATE_ACTIVATED,DATE_CREATED,DATE_UPDATED,ENABLED) values (150,'clalberca.cloudpanda@gmail.com','$2y$12$.UlM9xiaJAry4jjMmOIo4egfEX5uW68Hzjza7n9XWcMd6qk.IPa22',2,to_date('18-SEP-18','DD-MON-RR'),to_date('18-SEP-18','DD-MON-RR'),to_date('18-SEP-18','DD-MON-RR'),1);
Insert into VISA_USERS (USER_ID,USER_EMAIL,PASSWORD,POSITION_ID,DATE_ACTIVATED,DATE_CREATED,DATE_UPDATED,ENABLED) values (153,'zaramilleyte.cloudpanda@gmail.com','$2y$12$VU8I.MlFYy8cbFwvToy3AuuUrDcY7wmq2Y0MbqPF9HVGoYN4JTzg2',2,to_date('19-SEP-18','DD-MON-RR'),to_date('19-SEP-18','DD-MON-RR'),to_date('19-SEP-18','DD-MON-RR'),1);
Insert into VISA_USERS (USER_ID,USER_EMAIL,PASSWORD,POSITION_ID,DATE_ACTIVATED,DATE_CREATED,DATE_UPDATED,ENABLED) values (149,'mwaeil.cloudpanda@gmail.com','$2y$12$QwaX9WOtyhUhGdfSy/A3Fe0m86C15aVOoL.keYsNx2/w1L6UXOdJO',2,to_date('18-SEP-18','DD-MON-RR'),to_date('18-SEP-18','DD-MON-RR'),to_date('18-SEP-18','DD-MON-RR'),1);
Insert into VISA_USERS (USER_ID,USER_EMAIL,PASSWORD,POSITION_ID,DATE_ACTIVATED,DATE_CREATED,DATE_UPDATED,ENABLED) values (152,'dummywaeil@gmail.com','$2y$12$G1BDrQmiN1fZUZY5DgUTgeDLG2CEAdz2Ljvy9xOVK1Scq7n8UrmSS',2,to_date('18-SEP-18','DD-MON-RR'),to_date('18-SEP-18','DD-MON-RR'),to_date('18-SEP-18','DD-MON-RR'),1);
Insert into VISA_USERS (USER_ID,USER_EMAIL,PASSWORD,POSITION_ID,DATE_ACTIVATED,DATE_CREATED,DATE_UPDATED,ENABLED) values (96,'appari_admin@cloudpanda.ph','$2y$12$qYGrYCU2owQpLxjptwsLQ.DA7uf.PoykkMw4lSf5N1cIJb.rd1rwq',3,to_date('17-AUG-18','DD-MON-RR'),to_date('17-AUG-18','DD-MON-RR'),to_date('17-AUG-18','DD-MON-RR'),1);
Insert into VISA_USERS (USER_ID,USER_EMAIL,PASSWORD,POSITION_ID,DATE_ACTIVATED,DATE_CREATED,DATE_UPDATED,ENABLED) values (97,'angeles_admin@cloudpanda.ph','$2y$12$qYGrYCU2owQpLxjptwsLQ.DA7uf.PoykkMw4lSf5N1cIJb.rd1rwq',3,to_date('17-AUG-18','DD-MON-RR'),to_date('17-AUG-18','DD-MON-RR'),to_date('17-AUG-18','DD-MON-RR'),1);
Insert into VISA_USERS (USER_ID,USER_EMAIL,PASSWORD,POSITION_ID,DATE_ACTIVATED,DATE_CREATED,DATE_UPDATED,ENABLED) values (2,'admin@cloudpanda.ph','$2y$12$qYGrYCU2owQpLxjptwsLQ.DA7uf.PoykkMw4lSf5N1cIJb.rd1rwq',1,to_date('17-JUL-18','DD-MON-RR'),to_date('17-JUL-18','DD-MON-RR'),to_date('16-AUG-18','DD-MON-RR'),1);
REM INSERTING into VISA_VIMS
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index VISA_COUNTRY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "VISA_COUNTRY_PK" ON "VISA_COUNTRY" ("COUNTRY_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_SITES_NEW_FK1_IDX
--------------------------------------------------------

  CREATE INDEX "REPCAT$_SITES_NEW_FK1_IDX" ON "REPCAT$_SITES_NEW" ("EXTENSION_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_DID$_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LOGMNR_DID$_PK" ON "LOGMNR_DID$" ("SESSION#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_PRIORITY_F1_IDX
--------------------------------------------------------

  CREATE INDEX "REPCAT$_PRIORITY_F1_IDX" ON "REPCAT$_PRIORITY" ("PRIORITY_GROUP", "SNAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_REPCATLOG_PRIMARY
--------------------------------------------------------

  CREATE UNIQUE INDEX "REPCAT$_REPCATLOG_PRIMARY" ON "REPCAT$_REPCATLOG" ("ID", "SOURCE", "ROLE", "MASTER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index TEMPLATE$_TARGETS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEMPLATE$_TARGETS_PK" ON "REPCAT$_TEMPLATE_TARGETS" ("TEMPLATE_TARGET_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNRGGC_GTLO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LOGMNRGGC_GTLO_PK" ON "LOGMNRGGC_GTLO" ("LOGMNR_UID", "KEYOBJ#", "BASEOBJV#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_AGE_SPILL$_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LOGMNR_AGE_SPILL$_PK" ON "LOGMNR_AGE_SPILL$" ("SESSION#", "XIDUSN", "XIDSLT", "XIDSQN", "CHUNK", "SEQUENCE#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_RESOLUTION_STATS_N1
--------------------------------------------------------

  CREATE INDEX "REPCAT$_RESOLUTION_STATS_N1" ON "REPCAT$_RESOLUTION_STATISTICS" ("SNAME", "ONAME", "RESOLVED_DATE", "CONFLICT_TYPE_ID", "REFERENCE_NAME", "METHOD_NAME", "FUNCTION_NAME", "PRIORITY_GROUP") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_AJG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MVIEW$_ADV_AJG_PK" ON "MVIEW$_ADV_AJG" ("AJGID#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_I1USER$
--------------------------------------------------------

  CREATE INDEX "LOGMNR_I1USER$" ON "LOGMNR_USER$" ("LOGMNR_UID", "USER#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index VISA_ANNOUNCEMENTS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "VISA_ANNOUNCEMENTS_PK" ON "VISA_ANNOUNCEMENTS" ("ANNOUNCEMENT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_EXCEPTIONS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "REPCAT$_EXCEPTIONS_PK" ON "REPCAT$_EXCEPTIONS" ("EXCEPTION_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_I1PROPS$
--------------------------------------------------------

  CREATE INDEX "LOGMNR_I1PROPS$" ON "LOGMNR_PROPS$" ("LOGMNR_UID", "NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_CLIQUE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MVIEW$_ADV_CLIQUE_PK" ON "MVIEW$_ADV_CLIQUE" ("CLIQUEID#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_FLAVORS_UNQ1
--------------------------------------------------------

  CREATE UNIQUE INDEX "REPCAT$_FLAVORS_UNQ1" ON "REPCAT$_FLAVORS" ("GNAME", "FLAVOR_ID", "GOWNER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_I2INDPART$
--------------------------------------------------------

  CREATE INDEX "LOGMNR_I2INDPART$" ON "LOGMNR_INDPART$" ("LOGMNR_UID", "BO#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index UNQ_PAIRS
--------------------------------------------------------

  CREATE UNIQUE INDEX "UNQ_PAIRS" ON "AQ$_INTERNET_AGENT_PRIVS" ("AGENT_NAME", "DB_USERNAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_AUDIT_COLUMN_F2_IDX
--------------------------------------------------------

  CREATE INDEX "REPCAT$_AUDIT_COLUMN_F2_IDX" ON "REPCAT$_AUDIT_COLUMN" ("BASE_SNAME", "BASE_ONAME", "BASE_CONFLICT_TYPE_ID", "BASE_REFERENCE_NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index HELP_TOPIC_SEQ
--------------------------------------------------------

  CREATE UNIQUE INDEX "HELP_TOPIC_SEQ" ON "HELP" ("TOPIC", "SEQ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 16384 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_TEMPLATE_PARMS_U1
--------------------------------------------------------

  CREATE UNIQUE INDEX "REPCAT$_TEMPLATE_PARMS_U1" ON "REPCAT$_TEMPLATE_PARMS" ("REFRESH_TEMPLATE_ID", "PARAMETER_NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_REPGROUP_PRIVS_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "REPCAT$_REPGROUP_PRIVS_UK" ON "REPCAT$_REPGROUP_PRIVS" ("USERNAME", "GNAME", "GOWNER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_WORKLOAD_IDX_01
--------------------------------------------------------

  CREATE INDEX "MVIEW$_ADV_WORKLOAD_IDX_01" ON "MVIEW$_ADV_WORKLOAD" ("COLLECTIONID#", "QUERYID#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_I1TABCOMPART$
--------------------------------------------------------

  CREATE INDEX "LOGMNR_I1TABCOMPART$" ON "LOGMNR_TABCOMPART$" ("LOGMNR_UID", "OBJ#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_REFRESH_TEMPLATES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "REPCAT$_REFRESH_TEMPLATES_PK" ON "REPCAT$_REFRESH_TEMPLATES" ("REFRESH_TEMPLATE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_OUTPUT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MVIEW$_ADV_OUTPUT_PK" ON "MVIEW$_ADV_OUTPUT" ("RUNID#", "RANK#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_FLAVORS_GNAME
--------------------------------------------------------

  CREATE UNIQUE INDEX "REPCAT$_FLAVORS_GNAME" ON "REPCAT$_FLAVORS" ("GNAME", "FNAME", "GOWNER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index VISA_FAQ_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "VISA_FAQ_PK" ON "VISA_FAQ" ("FAQ_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNRC_I2GTLO
--------------------------------------------------------

  CREATE INDEX "LOGMNRC_I2GTLO" ON "LOGMNRC_GTLO" ("LOGMNR_UID", "BASEOBJ#", "BASEOBJV#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index VISA_REASON_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "VISA_REASON_PK" ON "VISA_REASON" ("REASON_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_LOG$_FLAGS
--------------------------------------------------------

  CREATE INDEX "LOGMNR_LOG$_FLAGS" ON "LOGMNR_LOG$" ("FLAGS") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
/
--------------------------------------------------------
--  DDL for Index VISA_APL_ACCREDITATION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "VISA_APL_ACCREDITATION_PK" ON "VISA_APL_ACCREDITATION" ("ACC_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_I1NTAB$
--------------------------------------------------------

  CREATE INDEX "LOGMNR_I1NTAB$" ON "LOGMNR_NTAB$" ("LOGMNR_UID", "OBJ#", "INTCOL#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index LOGMNRC_I2CONGG
--------------------------------------------------------

  CREATE INDEX "LOGMNRC_I2CONGG" ON "LOGMNRC_CON_GG" ("LOGMNR_UID", "DROP_SCN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index VISA_USERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "VISA_USERS_PK" ON "VISA_USERS" ("USER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_SESSION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LOGMNR_SESSION_PK" ON "LOGMNR_SESSION$" ("SESSION#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_USER_PARM_VALUES_U1
--------------------------------------------------------

  CREATE UNIQUE INDEX "REPCAT$_USER_PARM_VALUES_U1" ON "REPCAT$_USER_PARM_VALUES" ("TEMPLATE_PARAMETER_ID", "USER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_FLAVOR_OBJECTS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "REPCAT$_FLAVOR_OBJECTS_PK" ON "REPCAT$_FLAVOR_OBJECTS" ("SNAME", "ONAME", "TYPE", "GNAME", "FLAVOR_ID", "GOWNER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_TEMPLATE_REFGROUPS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "REPCAT$_TEMPLATE_REFGROUPS_PK" ON "REPCAT$_TEMPLATE_REFGROUPS" ("REFRESH_GROUP_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGSTDBY$EVENTS_IND
--------------------------------------------------------

  CREATE INDEX "LOGSTDBY$EVENTS_IND" ON "LOGSTDBY$EVENTS" ("EVENT_TIME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_REPSCHEMA_DEST_IDX
--------------------------------------------------------

  CREATE INDEX "REPCAT$_REPSCHEMA_DEST_IDX" ON "REPCAT$_REPSCHEMA" ("DBLINK", "EXTENSION_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_I2USER$
--------------------------------------------------------

  CREATE INDEX "LOGMNR_I2USER$" ON "LOGMNR_USER$" ("LOGMNR_UID", "NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index LOGMNRC_I1CONGG
--------------------------------------------------------

  CREATE INDEX "LOGMNRC_I1CONGG" ON "LOGMNRC_CON_GG" ("LOGMNR_UID", "BASEOBJ#", "BASEOBJV#", "COMMIT_SCN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_REPPROP_KEY_INDEX
--------------------------------------------------------

  CREATE INDEX "REPCAT$_REPPROP_KEY_INDEX" ON "REPCAT$_REPPROP" ("RECIPIENT_KEY") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_USER_AUTHORIZATIONS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "REPCAT$_USER_AUTHORIZATIONS_PK" ON "REPCAT$_USER_AUTHORIZATIONS" ("USER_AUTHORIZATION_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_SITE_OBJECTS_U1
--------------------------------------------------------

  CREATE UNIQUE INDEX "REPCAT$_SITE_OBJECTS_U1" ON "REPCAT$_SITE_OBJECTS" ("TEMPLATE_SITE_ID", "ONAME", "OBJECT_TYPE_ID", "SNAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_REPPROP_DBLINK_HOW
--------------------------------------------------------

  CREATE INDEX "REPCAT$_REPPROP_DBLINK_HOW" ON "REPCAT$_REPPROP" ("DBLINK", "HOW", "EXTENSION_ID", "RECIPIENT_KEY") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNRC_GSII_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LOGMNRC_GSII_PK" ON "LOGMNRC_GSII" ("LOGMNR_UID", "OBJ#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index DEF$_CALLDEST_N2
--------------------------------------------------------

  CREATE INDEX "DEF$_CALLDEST_N2" ON "DEF$_CALLDEST" ("DBLINK", "CATCHUP") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_I1COLTYPE$
--------------------------------------------------------

  CREATE INDEX "LOGMNR_I1COLTYPE$" ON "LOGMNR_COLTYPE$" ("LOGMNR_UID", "OBJ#", "INTCOL#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index VISA_BRANCH_ADMIN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "VISA_BRANCH_ADMIN_PK" ON "VISA_BRANCH_ADMIN" ("BRANCH_ADMIN_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_I1OBJ$
--------------------------------------------------------

  CREATE INDEX "LOGMNR_I1OBJ$" ON "LOGMNR_OBJ$" ("LOGMNR_UID", "OBJ#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index DEF$_ERROR_PRIMARY
--------------------------------------------------------

  CREATE UNIQUE INDEX "DEF$_ERROR_PRIMARY" ON "DEF$_ERROR" ("ENQ_TID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_PRIORITY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "REPCAT$_PRIORITY_PK" ON "REPCAT$_PRIORITY" ("SNAME", "PRIORITY_GROUP", "PRIORITY") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_REPGROUP_PRIVS_FK_IDX
--------------------------------------------------------

  CREATE INDEX "REPCAT$_REPGROUP_PRIVS_FK_IDX" ON "REPCAT$_REPGROUP_PRIVS" ("GNAME", "GOWNER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_TEMPLATE_PARMS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "REPCAT$_TEMPLATE_PARMS_PK" ON "REPCAT$_TEMPLATE_PARMS" ("TEMPLATE_PARAMETER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_BASETABLE_IDX_01
--------------------------------------------------------

  CREATE INDEX "MVIEW$_ADV_BASETABLE_IDX_01" ON "MVIEW$_ADV_BASETABLE" ("QUERYID#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index OL$HNT_NUM
--------------------------------------------------------

  CREATE UNIQUE INDEX "OL$HNT_NUM" ON "OL$HINTS" ("OL_NAME", "HINT#") ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_FLAVORS_FK1_IDX
--------------------------------------------------------

  CREATE INDEX "REPCAT$_FLAVORS_FK1_IDX" ON "REPCAT$_FLAVORS" ("GNAME", "GOWNER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_RESOLUTION_IDX2
--------------------------------------------------------

  CREATE INDEX "REPCAT$_RESOLUTION_IDX2" ON "REPCAT$_RESOLUTION" ("SNAME", "ONAME", "CONFLICT_TYPE_ID", "REFERENCE_NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index VISA_APL_REP_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "VISA_APL_REP_PK" ON "VISA_APL_REP" ("REP_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_I1CONTAINER$
--------------------------------------------------------

  CREATE INDEX "LOGMNR_I1CONTAINER$" ON "LOGMNR_CONTAINER$" ("LOGMNR_UID", "CON_ID#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_RESOL_STATS_CTRL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "REPCAT$_RESOL_STATS_CTRL_PK" ON "REPCAT$_RESOL_STATS_CONTROL" ("SNAME", "ONAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_I1INDPART$
--------------------------------------------------------

  CREATE INDEX "LOGMNR_I1INDPART$" ON "LOGMNR_INDPART$" ("LOGMNR_UID", "OBJ#", "BO#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_REPPROP_PRNT_IDX
--------------------------------------------------------

  CREATE INDEX "REPCAT$_REPPROP_PRNT_IDX" ON "REPCAT$_REPPROP" ("SNAME", "ONAME", "TYPE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_PARAMETER_INDX
--------------------------------------------------------

  CREATE INDEX "LOGMNR_PARAMETER_INDX" ON "LOGMNR_PARAMETER$" ("SESSION#", "NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_LOG$_FIRST_CHANGE#
--------------------------------------------------------

  CREATE INDEX "LOGMNR_LOG$_FIRST_CHANGE#" ON "LOGMNR_LOG$" ("FIRST_CHANGE#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNRGGC_I2GTCS
--------------------------------------------------------

  CREATE INDEX "LOGMNRGGC_I2GTCS" ON "LOGMNRGGC_GTCS" ("LOGMNR_UID", "OBJ#", "OBJV#", "SEGCOL#", "INTCOL#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index VISA_ADMIN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "VISA_ADMIN_PK" ON "VISA_ADMIN" ("ADMIN_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_USER_PARM_VALUES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "REPCAT$_USER_PARM_VALUES_PK" ON "REPCAT$_USER_PARM_VALUES" ("USER_PARAMETER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index VISA_CIVIL_STATUS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "VISA_CIVIL_STATUS_PK" ON "VISA_CIVIL_STATUS" ("CIVIL_STATUS_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_I1COL$
--------------------------------------------------------

  CREATE INDEX "LOGMNR_I1COL$" ON "LOGMNR_COL$" ("LOGMNR_UID", "OBJ#", "INTCOL#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_I1TS$
--------------------------------------------------------

  CREATE INDEX "LOGMNR_I1TS$" ON "LOGMNR_TS$" ("LOGMNR_UID", "TS#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_REPGROUP_PRIVS_N1
--------------------------------------------------------

  CREATE INDEX "REPCAT$_REPGROUP_PRIVS_N1" ON "REPCAT$_REPGROUP_PRIVS" ("GLOBAL_FLAG", "USERNAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_RESTART_CKPT_TXINFO$_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LOGMNR_RESTART_CKPT_TXINFO$_PK" ON "LOGMNR_RESTART_CKPT_TXINFO$" ("SESSION#", "XIDUSN", "XIDSLT", "XIDSQN", "SESSION_NUM", "SERIAL_NUM", "EFFECTIVE_SCN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_FLAVOR_OBJECTS_FG
--------------------------------------------------------

  CREATE INDEX "REPCAT$_FLAVOR_OBJECTS_FG" ON "REPCAT$_FLAVOR_OBJECTS" ("FLAVOR_ID", "GNAME", "GOWNER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNRC_I2GTCS
--------------------------------------------------------

  CREATE INDEX "LOGMNRC_I2GTCS" ON "LOGMNRC_GTCS" ("LOGMNR_UID", "OBJ#", "OBJV#", "SEGCOL#", "INTCOL#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index LOGSTDBY$EVENTS_IND_SCN
--------------------------------------------------------

  CREATE INDEX "LOGSTDBY$EVENTS_IND_SCN" ON "LOGSTDBY$EVENTS" ("COMMIT_SCN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_LOG$_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LOGMNR_LOG$_PK" ON "LOGMNR_LOG$" ("SESSION#", "THREAD#", "SEQUENCE#", "FIRST_CHANGE#", "DB_ID", "RESETLOGS_CHANGE#", "RESET_TIMESTAMP") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_I2TAB$
--------------------------------------------------------

  CREATE INDEX "LOGMNR_I2TAB$" ON "LOGMNR_TAB$" ("LOGMNR_UID", "BOBJ#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index LOGMNRC_IND_GG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LOGMNRC_IND_GG_PK" ON "LOGMNRC_IND_GG" ("LOGMNR_UID", "OBJ#", "COMMIT_SCN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_I1INDCOMPART$
--------------------------------------------------------

  CREATE INDEX "LOGMNR_I1INDCOMPART$" ON "LOGMNR_INDCOMPART$" ("LOGMNR_UID", "OBJ#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index LOGSTDBY$EDS_TABLES_PKEY
--------------------------------------------------------

  CREATE UNIQUE INDEX "LOGSTDBY$EDS_TABLES_PKEY" ON "LOGSTDBY$EDS_TABLES" ("OWNER", "TABLE_NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_TEMPLATE_REFGROUPS_N2
--------------------------------------------------------

  CREATE INDEX "REPCAT$_TEMPLATE_REFGROUPS_N2" ON "REPCAT$_TEMPLATE_REFGROUPS" ("REFRESH_TEMPLATE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_PARAMETERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MVIEW$_ADV_PARAMETERS_PK" ON "MVIEW$_ADV_PARAMETERS" ("PARAMETER_NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_TEMPLATE_OBJECTS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "REPCAT$_TEMPLATE_OBJECTS_PK" ON "REPCAT$_TEMPLATE_OBJECTS" ("TEMPLATE_OBJECT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_PRIORITY_GROUP_U1
--------------------------------------------------------

  CREATE UNIQUE INDEX "REPCAT$_PRIORITY_GROUP_U1" ON "REPCAT$_PRIORITY_GROUP" ("SNAME", "PRIORITY_GROUP", "DATA_TYPE_ID", "FIXED_DATA_LENGTH") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_I1ATTRIBUTE$
--------------------------------------------------------

  CREATE INDEX "LOGMNR_I1ATTRIBUTE$" ON "LOGMNR_ATTRIBUTE$" ("LOGMNR_UID", "TOID", "VERSION#", "ATTRIBUTE#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_REPCAT_PRIMARY
--------------------------------------------------------

  CREATE UNIQUE INDEX "REPCAT$_REPCAT_PRIMARY" ON "REPCAT$_REPCAT" ("SNAME", "GOWNER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_I1PARTOBJ$
--------------------------------------------------------

  CREATE INDEX "LOGMNR_I1PARTOBJ$" ON "LOGMNR_PARTOBJ$" ("LOGMNR_UID", "OBJ#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index REDO_DB_IDX
--------------------------------------------------------

  CREATE INDEX "REDO_DB_IDX" ON "REDO_DB" ("DBID", "THREAD#", "RESETLOGS_SCN", "RESETLOGS_TIME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_RESTART_CKPT$_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LOGMNR_RESTART_CKPT$_PK" ON "LOGMNR_RESTART_CKPT$" ("SESSION#", "CKPT_SCN", "XIDUSN", "XIDSLT", "XIDSQN", "SESSION_NUM", "SERIAL_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_I3COL$
--------------------------------------------------------

  CREATE INDEX "LOGMNR_I3COL$" ON "LOGMNR_COL$" ("LOGMNR_UID", "OBJ#", "COL#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index LOGMNRC_CONCOL_GG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LOGMNRC_CONCOL_GG_PK" ON "LOGMNRC_CONCOL_GG" ("LOGMNR_UID", "CON#", "COMMIT_SCN", "INTCOL#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_PRIORITY_GROUP_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "REPCAT$_PRIORITY_GROUP_PK" ON "REPCAT$_PRIORITY_GROUP" ("PRIORITY_GROUP", "SNAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index DEF$_TRANORDER
--------------------------------------------------------

  CREATE INDEX "DEF$_TRANORDER" ON "DEF$_AQCALL" ("CSCN", "ENQ_TID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_GENERATED_N1
--------------------------------------------------------

  CREATE INDEX "REPCAT$_GENERATED_N1" ON "REPCAT$_GENERATED" ("BASE_SNAME", "BASE_ONAME", "BASE_TYPE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_I1CDEF$
--------------------------------------------------------

  CREATE INDEX "LOGMNR_I1CDEF$" ON "LOGMNR_CDEF$" ("LOGMNR_UID", "CON#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_USER_AUTHORIZATIONS_N1
--------------------------------------------------------

  CREATE INDEX "REPCAT$_USER_AUTHORIZATIONS_N1" ON "REPCAT$_USER_AUTHORIZATIONS" ("REFRESH_TEMPLATE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index I_REPCAT$_SNAPGROUP1
--------------------------------------------------------

  CREATE UNIQUE INDEX "I_REPCAT$_SNAPGROUP1" ON "REPCAT$_SNAPGROUP" ("GNAME", "DBLINK", "GOWNER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNRP_CTAS_PART_MAP_I
--------------------------------------------------------

  CREATE INDEX "LOGMNRP_CTAS_PART_MAP_I" ON "LOGMNRP_CTAS_PART_MAP" ("LOGMNR_UID", "BASEOBJ#", "BASEOBJV#", "PART#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index VISA_APPLICATION_DETAILS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "VISA_APPLICATION_DETAILS_PK" ON "VISA_APPLICATION_DETAILS" ("APP_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_USER_AUTHORIZATIONS_U1
--------------------------------------------------------

  CREATE UNIQUE INDEX "REPCAT$_USER_AUTHORIZATIONS_U1" ON "REPCAT$_USER_AUTHORIZATIONS" ("USER_ID", "REFRESH_TEMPLATE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index DEF$_LOB_N1
--------------------------------------------------------

  CREATE INDEX "DEF$_LOB_N1" ON "DEF$_LOB" ("ENQ_TID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_I1INDSUBPART$
--------------------------------------------------------

  CREATE INDEX "LOGMNR_I1INDSUBPART$" ON "LOGMNR_INDSUBPART$" ("LOGMNR_UID", "OBJ#", "POBJ#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_SESSION_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "LOGMNR_SESSION_UK1" ON "LOGMNR_SESSION$" ("SESSION_NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_RESOLUTION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "REPCAT$_RESOLUTION_PK" ON "REPCAT$_RESOLUTION" ("SNAME", "ONAME", "CONFLICT_TYPE_ID", "REFERENCE_NAME", "SEQUENCE_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index VISA_VIMS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "VISA_VIMS_PK" ON "VISA_VIMS" ("APPLIC_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_LEVEL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MVIEW$_ADV_LEVEL_PK" ON "MVIEW$_ADV_LEVEL" ("RUNID#", "LEVELID#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index VISA_APPLICANT_CHILDREN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "VISA_APPLICANT_CHILDREN_PK" ON "VISA_APPLICANT_CHILDREN" ("CHILD_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_I1CON$
--------------------------------------------------------

  CREATE INDEX "LOGMNR_I1CON$" ON "LOGMNR_CON$" ("LOGMNR_UID", "CON#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index LOGMNRC_GTCS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LOGMNRC_GTCS_PK" ON "LOGMNRC_GTCS" ("LOGMNR_UID", "OBJ#", "OBJV#", "INTCOL#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_SPILL$_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LOGMNR_SPILL$_PK" ON "LOGMNR_SPILL$" ("SESSION#", "XIDUSN", "XIDSLT", "XIDSQN", "CHUNK", "STARTIDX", "ENDIDX", "FLAG", "SEQUENCE#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_FLAVOR_OBJECTS_FK2_IDX
--------------------------------------------------------

  CREATE INDEX "REPCAT$_FLAVOR_OBJECTS_FK2_IDX" ON "REPCAT$_FLAVOR_OBJECTS" ("GNAME", "FLAVOR_ID", "GOWNER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index VISA_SETTINGS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "VISA_SETTINGS_PK" ON "VISA_SETTINGS" ("SETTINGS_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_TEMPLATE_REFGROUPS_N1
--------------------------------------------------------

  CREATE INDEX "REPCAT$_TEMPLATE_REFGROUPS_N1" ON "REPCAT$_TEMPLATE_REFGROUPS" ("REFRESH_GROUP_NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index DEF$_CALLDEST_PRIMARY
--------------------------------------------------------

  CREATE UNIQUE INDEX "DEF$_CALLDEST_PRIMARY" ON "DEF$_CALLDEST" ("ENQ_TID", "DBLINK", "STEP_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_REPSCHEMA_PRIMARY
--------------------------------------------------------

  CREATE UNIQUE INDEX "REPCAT$_REPSCHEMA_PRIMARY" ON "REPCAT$_REPSCHEMA" ("SNAME", "DBLINK", "GOWNER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_INTEG_SPILL$_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LOGMNR_INTEG_SPILL$_PK" ON "LOGMNR_INTEGRATED_SPILL$" ("SESSION#", "XIDUSN", "XIDSLT", "XIDSQN", "CHUNK", "FLAG") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNRC_GTLO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LOGMNRC_GTLO_PK" ON "LOGMNRC_GTLO" ("LOGMNR_UID", "KEYOBJ#", "BASEOBJV#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_REPOBJECT_PRNT_IDX
--------------------------------------------------------

  CREATE INDEX "REPCAT$_REPOBJECT_PRNT_IDX" ON "REPCAT$_REPOBJECT" ("GNAME", "GOWNER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNRC_I2INDGG
--------------------------------------------------------

  CREATE INDEX "LOGMNRC_I2INDGG" ON "LOGMNRC_IND_GG" ("LOGMNR_UID", "DROP_SCN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_LOG$_RECID
--------------------------------------------------------

  CREATE INDEX "LOGMNR_LOG$_RECID" ON "LOGMNR_LOG$" ("RECID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
/
--------------------------------------------------------
--  DDL for Index DEF$_PROPAGATOR_PRIMARY
--------------------------------------------------------

  CREATE UNIQUE INDEX "DEF$_PROPAGATOR_PRIMARY" ON "DEF$_PROPAGATOR" ("USERID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_PRETTY_IDX_01
--------------------------------------------------------

  CREATE INDEX "MVIEW$_ADV_PRETTY_IDX_01" ON "MVIEW$_ADV_PRETTY" ("QUERYID#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_SQLDEPEND_IDX_01
--------------------------------------------------------

  CREATE INDEX "MVIEW$_ADV_SQLDEPEND_IDX_01" ON "MVIEW$_ADV_SQLDEPEND" ("COLLECTIONID#", "FROM_ADDRESS", "FROM_HASH", "INST_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REDO_LOG_IDX
--------------------------------------------------------

  CREATE INDEX "REDO_LOG_IDX" ON "REDO_LOG" ("DBID", "THREAD#", "RESETLOGS_SCN", "RESETLOGS_TIME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_I1ATTRCOL$
--------------------------------------------------------

  CREATE INDEX "LOGMNR_I1ATTRCOL$" ON "LOGMNR_ATTRCOL$" ("LOGMNR_UID", "OBJ#", "INTCOL#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index LOGMNRC_DBNAME_UID_MAP_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LOGMNRC_DBNAME_UID_MAP_PK" ON "LOGMNRC_DBNAME_UID_MAP" ("GLOBAL_NAME", "LOGMNR_MDH") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
/
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_INFO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MVIEW$_ADV_INFO_PK" ON "MVIEW$_ADV_INFO" ("RUNID#", "SEQ#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNRGGC_GTCS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LOGMNRGGC_GTCS_PK" ON "LOGMNRGGC_GTCS" ("LOGMNR_UID", "OBJ#", "OBJV#", "INTCOL#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNRC_GSBA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LOGMNRC_GSBA_PK" ON "LOGMNRC_GSBA" ("LOGMNR_UID", "AS_OF_SCN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_I1IND$
--------------------------------------------------------

  CREATE INDEX "LOGMNR_I1IND$" ON "LOGMNR_IND$" ("LOGMNR_UID", "OBJ#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_I2IND$
--------------------------------------------------------

  CREATE INDEX "LOGMNR_I2IND$" ON "LOGMNR_IND$" ("LOGMNR_UID", "BO#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index LOGMNRP_CTAS_PART_MAP_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LOGMNRP_CTAS_PART_MAP_PK" ON "LOGMNRP_CTAS_PART_MAP" ("LOGMNR_UID", "BASEOBJV#", "KEYOBJ#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index LOGMNRGGC_I2GTLO
--------------------------------------------------------

  CREATE INDEX "LOGMNRGGC_I2GTLO" ON "LOGMNRGGC_GTLO" ("LOGMNR_UID", "BASEOBJ#", "BASEOBJV#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_I1SEED$
--------------------------------------------------------

  CREATE INDEX "LOGMNR_I1SEED$" ON "LOGMNR_SEED$" ("LOGMNR_UID", "OBJ#", "INTCOL#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_I1ENC$
--------------------------------------------------------

  CREATE INDEX "LOGMNR_I1ENC$" ON "LOGMNR_ENC$" ("LOGMNR_UID", "OBJ#", "OWNER#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index LOGSTDBY$SKIP_IDX1
--------------------------------------------------------

  CREATE INDEX "LOGSTDBY$SKIP_IDX1" ON "LOGSTDBY$SKIP" ("USE_LIKE", "SCHEMA", "NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_KEY_COLUMNS_PRIMARY
--------------------------------------------------------

  CREATE UNIQUE INDEX "REPCAT$_KEY_COLUMNS_PRIMARY" ON "REPCAT$_KEY_COLUMNS" ("SNAME", "ONAME", "COL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_SESSION_ACTION$_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LOGMNR_SESSION_ACTION$_PK" ON "LOGMNR_SESSION_ACTIONS$" ("LOGMNRSESSION#", "ACTIONNAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_I1TAB$
--------------------------------------------------------

  CREATE INDEX "LOGMNR_I1TAB$" ON "LOGMNR_TAB$" ("LOGMNR_UID", "OBJ#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_I2OBJ$
--------------------------------------------------------

  CREATE INDEX "LOGMNR_I2OBJ$" ON "LOGMNR_OBJ$" ("LOGMNR_UID", "OID$") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index LOGMNRC_CON_GG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LOGMNRC_CON_GG_PK" ON "LOGMNRC_CON_GG" ("LOGMNR_UID", "CON#", "COMMIT_SCN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_I2CDEF$
--------------------------------------------------------

  CREATE INDEX "LOGMNR_I2CDEF$" ON "LOGMNR_CDEF$" ("LOGMNR_UID", "ROBJ#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_TEMPLATE_SITES_U1
--------------------------------------------------------

  CREATE UNIQUE INDEX "REPCAT$_TEMPLATE_SITES_U1" ON "REPCAT$_TEMPLATE_SITES" ("REFRESH_TEMPLATE_NAME", "USER_NAME", "SITE_NAME", "REPAPI_SITE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index I1_QUEUE_TABLES
--------------------------------------------------------

  CREATE INDEX "I1_QUEUE_TABLES" ON "AQ$_QUEUE_TABLES" ("OBJNO", "SCHEMA", "FLAGS") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_AUDIT_ATTRIBUTE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "REPCAT$_AUDIT_ATTRIBUTE_PK" ON "REPCAT$_AUDIT_ATTRIBUTE" ("ATTRIBUTE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGSTDBY$EVENTS_IND_XID
--------------------------------------------------------

  CREATE INDEX "LOGSTDBY$EVENTS_IND_XID" ON "LOGSTDBY$EVENTS" ("XIDUSN", "XIDSLT", "XIDSQN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNRC_I3GTLO
--------------------------------------------------------

  CREATE INDEX "LOGMNRC_I3GTLO" ON "LOGMNRC_GTLO" ("LOGMNR_UID", "DROP_SCN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_SESSION_EVOLVE$_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LOGMNR_SESSION_EVOLVE$_PK" ON "LOGMNR_SESSION_EVOLVE$" ("SESSION#", "DB_ID", "RESET_SCN", "RESET_TIMESTAMP") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNRC_SEQ_GG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LOGMNRC_SEQ_GG_PK" ON "LOGMNRC_SEQ_GG" ("LOGMNR_UID", "OBJ#", "COMMIT_SCN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_UID$_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LOGMNR_UID$_PK" ON "LOGMNR_UID$" ("LOGMNR_UID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_INSTANTIATION_DDL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "REPCAT$_INSTANTIATION_DDL_PK" ON "REPCAT$_INSTANTIATION_DDL" ("REFRESH_TEMPLATE_ID", "PHASE", "DDL_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_GROUPED_COLUMN_F1_IDX
--------------------------------------------------------

  CREATE INDEX "REPCAT$_GROUPED_COLUMN_F1_IDX" ON "REPCAT$_GROUPED_COLUMN" ("SNAME", "ONAME", "GROUP_NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_I2COL$
--------------------------------------------------------

  CREATE INDEX "LOGMNR_I2COL$" ON "LOGMNR_COL$" ("LOGMNR_UID", "OBJ#", "NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_OBJECT_PARMS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "REPCAT$_OBJECT_PARMS_PK" ON "REPCAT$_OBJECT_PARMS" ("TEMPLATE_PARAMETER_ID", "TEMPLATE_OBJECT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_I2TABPART$
--------------------------------------------------------

  CREATE INDEX "LOGMNR_I2TABPART$" ON "LOGMNR_TABPART$" ("LOGMNR_UID", "BO#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_REPCOLUMN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "REPCAT$_REPCOLUMN_PK" ON "REPCAT$_REPCOLUMN" ("SNAME", "ONAME", "TYPE", "CNAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_DDL_INDEX
--------------------------------------------------------

  CREATE INDEX "REPCAT$_DDL_INDEX" ON "REPCAT$_DDL" ("LOG_ID", "SOURCE", "ROLE", "MASTER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_I1LOGMNR_BUILDLOG
--------------------------------------------------------

  CREATE INDEX "LOGMNR_I1LOGMNR_BUILDLOG" ON "LOGMNR_LOGMNR_BUILDLOG" ("LOGMNR_UID", "INITIAL_XID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index DEF$_DEFAULTDEST_PRIMARY
--------------------------------------------------------

  CREATE UNIQUE INDEX "DEF$_DEFAULTDEST_PRIMARY" ON "DEF$_DEFAULTDEST" ("DBLINK") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_I1REFCON$
--------------------------------------------------------

  CREATE INDEX "LOGMNR_I1REFCON$" ON "LOGMNR_REFCON$" ("LOGMNR_UID", "OBJ#", "INTCOL#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index VISA_POSITION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "VISA_POSITION_PK" ON "VISA_POSITION" ("POSITION_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_TEMPLATE_OBJECTS_N1
--------------------------------------------------------

  CREATE INDEX "REPCAT$_TEMPLATE_OBJECTS_N1" ON "REPCAT$_TEMPLATE_OBJECTS" ("REFRESH_TEMPLATE_ID", "OBJECT_TYPE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_AUDIT_COLUMN_F1_IDX
--------------------------------------------------------

  CREATE INDEX "REPCAT$_AUDIT_COLUMN_F1_IDX" ON "REPCAT$_AUDIT_COLUMN" ("ATTRIBUTE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_TEMP_IDX_01
--------------------------------------------------------

  CREATE INDEX "MVIEW$_ADV_TEMP_IDX_01" ON "MVIEW$_ADV_TEMP" ("ID#", "SEQ#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_I2TABCOMPART$
--------------------------------------------------------

  CREATE INDEX "LOGMNR_I2TABCOMPART$" ON "LOGMNR_TABCOMPART$" ("LOGMNR_UID", "BO#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index LOGMNRC_INDCOL_GG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LOGMNRC_INDCOL_GG_PK" ON "LOGMNRC_INDCOL_GG" ("LOGMNR_UID", "OBJ#", "COMMIT_SCN", "INTCOL#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index OL$NAME
--------------------------------------------------------

  CREATE UNIQUE INDEX "OL$NAME" ON "OL$" ("OL_NAME") ;
/
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_JOURNAL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MVIEW$_ADV_JOURNAL_PK" ON "MVIEW$_ADV_JOURNAL" ("RUNID#", "SEQ#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_OBJECT_TYPE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "REPCAT$_OBJECT_TYPE_PK" ON "REPCAT$_OBJECT_TYPES" ("OBJECT_TYPE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_TEMPLATE_OBJECTS_N2
--------------------------------------------------------

  CREATE INDEX "REPCAT$_TEMPLATE_OBJECTS_N2" ON "REPCAT$_TEMPLATE_OBJECTS" ("REFRESH_TEMPLATE_ID", "OBJECT_NAME", "SCHEMA_NAME", "OBJECT_TYPE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_I1OPQTYPE$
--------------------------------------------------------

  CREATE INDEX "LOGMNR_I1OPQTYPE$" ON "LOGMNR_OPQTYPE$" ("LOGMNR_UID", "OBJ#", "INTCOL#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index DEF$_DESTINATION_PRIMARY
--------------------------------------------------------

  CREATE UNIQUE INDEX "DEF$_DESTINATION_PRIMARY" ON "DEF$_DESTINATION" ("DBLINK", "CATCHUP") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index VISA_PASSPORT_DETAILS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "VISA_PASSPORT_DETAILS_PK" ON "VISA_PASSPORT_DETAILS" ("PASSPORT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_I2NTAB$
--------------------------------------------------------

  CREATE INDEX "LOGMNR_I2NTAB$" ON "LOGMNR_NTAB$" ("LOGMNR_UID", "NTAB#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_FILTER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MVIEW$_ADV_FILTER_PK" ON "MVIEW$_ADV_FILTER" ("FILTERID#", "SUBFILTERNUM#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_I1TABSUBPART$
--------------------------------------------------------

  CREATE INDEX "LOGMNR_I1TABSUBPART$" ON "LOGMNR_TABSUBPART$" ("LOGMNR_UID", "OBJ#", "POBJ#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_I1LOB$
--------------------------------------------------------

  CREATE INDEX "LOGMNR_I1LOB$" ON "LOGMNR_LOB$" ("LOGMNR_UID", "OBJ#", "INTCOL#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index VISA_FEES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "VISA_FEES_PK" ON "VISA_FEES" ("FEE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_FLAVOR_OBJECTS_FK1_IDX
--------------------------------------------------------

  CREATE INDEX "REPCAT$_FLAVOR_OBJECTS_FK1_IDX" ON "REPCAT$_FLAVOR_OBJECTS" ("GNAME", "GOWNER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REDO_RTA_IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "REDO_RTA_IDX" ON "REDO_RTA" ("DBID", "THREAD") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
/
--------------------------------------------------------
--  DDL for Index LOGSTDBY$SKIP_IND
--------------------------------------------------------

  CREATE INDEX "LOGSTDBY$SKIP_IND" ON "LOGSTDBY$SKIP_SUPPORT" ("NAME", "ACTION") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
/
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_FJG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MVIEW$_ADV_FJG_PK" ON "MVIEW$_ADV_FJG" ("FJGID#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_REPGEN_PRNT_IDX
--------------------------------------------------------

  CREATE INDEX "REPCAT$_REPGEN_PRNT_IDX" ON "REPCAT$_GENERATED" ("SNAME", "ONAME", "TYPE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_PROCESSED_LOG$_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LOGMNR_PROCESSED_LOG$_PK" ON "LOGMNR_PROCESSED_LOG$" ("SESSION#", "THREAD#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_I1TYPE$
--------------------------------------------------------

  CREATE INDEX "LOGMNR_I1TYPE$" ON "LOGMNR_TYPE$" ("LOGMNR_UID", "TOID", "VERSION#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_I2TABSUBPART$
--------------------------------------------------------

  CREATE INDEX "LOGMNR_I2TABSUBPART$" ON "LOGMNR_TABSUBPART$" ("LOGMNR_UID", "POBJ#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_FLAVORS_FNAME
--------------------------------------------------------

  CREATE INDEX "REPCAT$_FLAVORS_FNAME" ON "REPCAT$_FLAVORS" ("FNAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index DEF$_PUSHED_TRAN_PRIMARY
--------------------------------------------------------

  CREATE UNIQUE INDEX "DEF$_PUSHED_TRAN_PRIMARY" ON "DEF$_PUSHED_TRANSACTIONS" ("SOURCE_SITE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_REPGEN_PRIMARY
--------------------------------------------------------

  CREATE UNIQUE INDEX "REPCAT$_REPGEN_PRIMARY" ON "REPCAT$_GENERATED" ("SNAME", "ONAME", "TYPE", "BASE_SNAME", "BASE_ONAME", "BASE_TYPE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index I1_QUEUES
--------------------------------------------------------

  CREATE INDEX "I1_QUEUES" ON "AQ$_QUEUES" ("NAME", "EVENTID", "TABLE_OBJNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNRGGC_I3GTLO
--------------------------------------------------------

  CREATE INDEX "LOGMNRGGC_I3GTLO" ON "LOGMNRGGC_GTLO" ("LOGMNR_UID", "DROP_SCN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_I1TABPART$
--------------------------------------------------------

  CREATE INDEX "LOGMNR_I1TABPART$" ON "LOGMNR_TABPART$" ("LOGMNR_UID", "OBJ#", "BO#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_I1KOPM$
--------------------------------------------------------

  CREATE INDEX "LOGMNR_I1KOPM$" ON "LOGMNR_KOPM$" ("LOGMNR_UID", "NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_GROUPED_COLUMN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "REPCAT$_GROUPED_COLUMN_PK" ON "REPCAT$_GROUPED_COLUMN" ("SNAME", "ONAME", "GROUP_NAME", "COLUMN_NAME", "POS") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_AUDIT_COLUMN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "REPCAT$_AUDIT_COLUMN_PK" ON "REPCAT$_AUDIT_COLUMN" ("COLUMN_NAME", "ONAME", "SNAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_I1ICOL$
--------------------------------------------------------

  CREATE INDEX "LOGMNR_I1ICOL$" ON "LOGMNR_ICOL$" ("LOGMNR_UID", "OBJ#", "INTCOL#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_REPSCHEMA_PRNT_IDX
--------------------------------------------------------

  CREATE INDEX "REPCAT$_REPSCHEMA_PRNT_IDX" ON "REPCAT$_REPSCHEMA" ("SNAME", "GOWNER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_SITE_OBJECTS_N1
--------------------------------------------------------

  CREATE INDEX "REPCAT$_SITE_OBJECTS_N1" ON "REPCAT$_SITE_OBJECTS" ("TEMPLATE_SITE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index IMM_APPOINTMENT_TIMES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "IMM_APPOINTMENT_TIMES_PK" ON "VISA_APPOINTMENT_TIMES" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_I2SEED$
--------------------------------------------------------

  CREATE INDEX "LOGMNR_I2SEED$" ON "LOGMNR_SEED$" ("LOGMNR_UID", "SCHEMANAME", "TABLE_NAME", "COL_NAME", "OBJ#", "INTCOL#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_REPCOLUMN_FK_IDX
--------------------------------------------------------

  CREATE INDEX "REPCAT$_REPCOLUMN_FK_IDX" ON "REPCAT$_REPCOLUMN" ("SNAME", "ONAME", "TYPE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_RESOLUTION_F3_IDX
--------------------------------------------------------

  CREATE INDEX "REPCAT$_RESOLUTION_F3_IDX" ON "REPCAT$_RESOLUTION" ("CONFLICT_TYPE_ID", "METHOD_NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_REPOBJECT_PRIMARY
--------------------------------------------------------

  CREATE UNIQUE INDEX "REPCAT$_REPOBJECT_PRIMARY" ON "REPCAT$_REPOBJECT" ("SNAME", "ONAME", "TYPE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_WORKLOAD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MVIEW$_ADV_WORKLOAD_PK" ON "MVIEW$_ADV_WORKLOAD" ("QUERYID#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNRT_MDDL$_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LOGMNRT_MDDL$_PK" ON "LOGMNRT_MDDL$" ("SOURCE_OBJ#", "SOURCE_ROWID") ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_PARAMETER_COLUMN_F1_I
--------------------------------------------------------

  CREATE INDEX "REPCAT$_PARAMETER_COLUMN_F1_I" ON "REPCAT$_PARAMETER_COLUMN" ("SNAME", "ONAME", "CONFLICT_TYPE_ID", "REFERENCE_NAME", "SEQUENCE_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index DEF$_LOB_PRIMARY
--------------------------------------------------------

  CREATE UNIQUE INDEX "DEF$_LOB_PRIMARY" ON "DEF$_LOB" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGSTDBY$SKIP_IDX2
--------------------------------------------------------

  CREATE INDEX "LOGSTDBY$SKIP_IDX2" ON "LOGSTDBY$SKIP" ("STATEMENT_OPT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_I1DICTIONARY$
--------------------------------------------------------

  CREATE INDEX "LOGMNR_I1DICTIONARY$" ON "LOGMNR_DICTIONARY$" ("LOGMNR_UID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_LOG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MVIEW$_ADV_LOG_PK" ON "MVIEW$_ADV_LOG" ("RUNID#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_REFRESH_TEMPLATES_U1
--------------------------------------------------------

  CREATE UNIQUE INDEX "REPCAT$_REFRESH_TEMPLATES_U1" ON "REPCAT$_REFRESH_TEMPLATES" ("REFRESH_TEMPLATE_NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_I1CCOL$
--------------------------------------------------------

  CREATE INDEX "LOGMNR_I1CCOL$" ON "LOGMNR_CCOL$" ("LOGMNR_UID", "CON#", "INTCOL#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_ELIGIBLE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MVIEW$_ADV_ELIGIBLE_PK" ON "MVIEW$_ADV_ELIGIBLE" ("SUMOBJN#", "RUNID#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_I1LOBFRAG$
--------------------------------------------------------

  CREATE INDEX "LOGMNR_I1LOBFRAG$" ON "LOGMNR_LOBFRAG$" ("LOGMNR_UID", "FRAGOBJ#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_RUNTIME_PARMS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "REPCAT$_RUNTIME_PARMS_PK" ON "REPCAT$_RUNTIME_PARMS" ("RUNTIME_PARM_ID", "PARAMETER_NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_TEMPLATE_OBJECTS_U1
--------------------------------------------------------

  CREATE UNIQUE INDEX "REPCAT$_TEMPLATE_OBJECTS_U1" ON "REPCAT$_TEMPLATE_OBJECTS" ("OBJECT_NAME", "OBJECT_TYPE", "REFRESH_TEMPLATE_ID", "SCHEMA_NAME", "DDL_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_CONFLICT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "REPCAT$_CONFLICT_PK" ON "REPCAT$_CONFLICT" ("SNAME", "ONAME", "CONFLICT_TYPE_ID", "REFERENCE_NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_ROLLUP_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MVIEW$_ADV_ROLLUP_PK" ON "MVIEW$_ADV_ROLLUP" ("RUNID#", "CLEVELID#", "PLEVELID#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNRC_I1INDGG
--------------------------------------------------------

  CREATE INDEX "LOGMNRC_I1INDGG" ON "LOGMNRC_IND_GG" ("LOGMNR_UID", "BASEOBJ#", "BASEOBJV#", "COMMIT_SCN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_TEMPLATE_TYPES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "REPCAT$_TEMPLATE_TYPES_PK" ON "REPCAT$_TEMPLATE_TYPES" ("TEMPLATE_TYPE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNRC_I2SEQGG
--------------------------------------------------------

  CREATE INDEX "LOGMNRC_I2SEQGG" ON "LOGMNRC_SEQ_GG" ("LOGMNR_UID", "DROP_SCN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_COLUMN_GROUP_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "REPCAT$_COLUMN_GROUP_PK" ON "REPCAT$_COLUMN_GROUP" ("SNAME", "ONAME", "GROUP_NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_PDB_INFO$_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LOGMNR_PDB_INFO$_PK" ON "LOGMNR_PDB_INFO$" ("LOGMNR_DID", "LOGMNR_MDH", "PLUGIN_SCN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_REPPROP_PRIMARY
--------------------------------------------------------

  CREATE UNIQUE INDEX "REPCAT$_REPPROP_PRIMARY" ON "REPCAT$_REPPROP" ("SNAME", "ONAME", "TYPE", "DBLINK") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_RESOL_METHOD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "REPCAT$_RESOL_METHOD_PK" ON "REPCAT$_RESOLUTION_METHOD" ("CONFLICT_TYPE_ID", "METHOD_NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_SITES_NEW_FK2_IDX
--------------------------------------------------------

  CREATE INDEX "REPCAT$_SITES_NEW_FK2_IDX" ON "REPCAT$_SITES_NEW" ("GNAME", "GOWNER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_PARAMETER_COLUMN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "REPCAT$_PARAMETER_COLUMN_PK" ON "REPCAT$_PARAMETER_COLUMN" ("SNAME", "ONAME", "CONFLICT_TYPE_ID", "REFERENCE_NAME", "SEQUENCE_NO", "PARAMETER_TABLE_NAME", "PARAMETER_SEQUENCE_NO", "COLUMN_POS") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_REPPROP_PRNT2_IDX
--------------------------------------------------------

  CREATE INDEX "REPCAT$_REPPROP_PRNT2_IDX" ON "REPCAT$_REPPROP" ("SNAME", "DBLINK") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_SITES_NEW_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "REPCAT$_SITES_NEW_PK" ON "REPCAT$_SITES_NEW" ("EXTENSION_ID", "GOWNER", "GNAME", "DBLINK") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_TEMPLATE_SITES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "REPCAT$_TEMPLATE_SITES_PK" ON "REPCAT$_TEMPLATE_SITES" ("TEMPLATE_SITE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index VISA_APPLICANT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "VISA_APPLICANT_PK" ON "VISA_APPLICANT" ("APPLICANT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_GC_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MVIEW$_ADV_GC_PK" ON "MVIEW$_ADV_GC" ("GCID#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_TEMPLATE_STATUS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "REPCAT$_TEMPLATE_STATUS_PK" ON "REPCAT$_TEMPLATE_STATUS" ("TEMPLATE_STATUS_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index OL$SIGNATURE
--------------------------------------------------------

  CREATE UNIQUE INDEX "OL$SIGNATURE" ON "OL$" ("SIGNATURE", "CATEGORY") ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_TEMPLATE_TARGETS_U1
--------------------------------------------------------

  CREATE UNIQUE INDEX "REPCAT$_TEMPLATE_TARGETS_U1" ON "REPCAT$_TEMPLATE_TARGETS" ("TARGET_DATABASE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_I3OBJ$
--------------------------------------------------------

  CREATE INDEX "LOGMNR_I3OBJ$" ON "LOGMNR_OBJ$" ("LOGMNR_UID", "NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  DDL for Index VISA_APPLICATION_LOG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "VISA_APPLICATION_LOG_PK" ON "VISA_APPLICATION_LOG" ("LOG_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_KEY_COLUMNS_PRNT_IDX
--------------------------------------------------------

  CREATE INDEX "REPCAT$_KEY_COLUMNS_PRNT_IDX" ON "REPCAT$_KEY_COLUMNS" ("SNAME", "ONAME", "TYPE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_REPOBJECT_GNAME
--------------------------------------------------------

  CREATE INDEX "REPCAT$_REPOBJECT_GNAME" ON "REPCAT$_REPOBJECT" ("GNAME", "ONAME", "TYPE", "GOWNER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_REPCATLOG_GNAME
--------------------------------------------------------

  CREATE INDEX "REPCAT$_REPCATLOG_GNAME" ON "REPCAT$_REPCATLOG" ("GNAME", "SNAME", "ONAME", "TYPE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_DDL
--------------------------------------------------------

  CREATE UNIQUE INDEX "REPCAT$_DDL" ON "REPCAT$_DDL" ("LOG_ID", "SOURCE", "ROLE", "MASTER", "LINE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index VISA_APPLICATION_STATUS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "VISA_APPLICATION_STATUS_PK" ON "VISA_APPLICATION_STATUS" ("STATUS_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index REPCAT$_OBJECT_PARMS_N2
--------------------------------------------------------

  CREATE INDEX "REPCAT$_OBJECT_PARMS_N2" ON "REPCAT$_OBJECT_PARMS" ("TEMPLATE_OBJECT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
/
--------------------------------------------------------
--  DDL for Index LOGMNR_I1SUBCOLTYPE$
--------------------------------------------------------

  CREATE INDEX "LOGMNR_I1SUBCOLTYPE$" ON "LOGMNR_SUBCOLTYPE$" ("LOGMNR_UID", "OBJ#", "INTCOL#", "TOID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
/
--------------------------------------------------------
--  Constraints for Table LOGMNRC_DBNAME_UID_MAP
--------------------------------------------------------

  ALTER TABLE "LOGMNRC_DBNAME_UID_MAP" ADD CONSTRAINT "LOGMNRC_DBNAME_UID_MAP_PK" PRIMARY KEY ("GLOBAL_NAME", "LOGMNR_MDH")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  ENABLE;
  ALTER TABLE "LOGMNRC_DBNAME_UID_MAP" MODIFY ("LOGMNR_MDH" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRC_DBNAME_UID_MAP" MODIFY ("GLOBAL_NAME" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table REPCAT$_GROUPED_COLUMN
--------------------------------------------------------

  ALTER TABLE "REPCAT$_GROUPED_COLUMN" ADD CONSTRAINT "REPCAT$_GROUPED_COLUMN_PK" PRIMARY KEY ("SNAME", "ONAME", "GROUP_NAME", "COLUMN_NAME", "POS")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
/
--------------------------------------------------------
--  Constraints for Table VISA_ANNOUNCEMENTS
--------------------------------------------------------

  ALTER TABLE "VISA_ANNOUNCEMENTS" ADD CONSTRAINT "VISA_ANNOUNCEMENTS_PK" PRIMARY KEY ("ANNOUNCEMENT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "VISA_ANNOUNCEMENTS" MODIFY ("ANNOUNCEMENT_ID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table VISA_HOLIDAY
--------------------------------------------------------

  ALTER TABLE "VISA_HOLIDAY" ADD PRIMARY KEY ("HOLIDAY_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "VISA_HOLIDAY" MODIFY ("ENABLED" NOT NULL ENABLE);
  ALTER TABLE "VISA_HOLIDAY" MODIFY ("DATE_UPDATED" NOT NULL ENABLE);
  ALTER TABLE "VISA_HOLIDAY" MODIFY ("DATE_CREATED" NOT NULL ENABLE);
  ALTER TABLE "VISA_HOLIDAY" MODIFY ("HOLIDAY_DATE" NOT NULL ENABLE);
  ALTER TABLE "VISA_HOLIDAY" MODIFY ("HOLIDAY_DESCRIPTION" NOT NULL ENABLE);
  ALTER TABLE "VISA_HOLIDAY" MODIFY ("HOLIDAY_ID" NOT NULL ENABLE);
  ALTER TABLE "VISA_HOLIDAY" MODIFY ("HOLIDAY_BRANCH" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table LOGMNRC_CON_GG
--------------------------------------------------------

  ALTER TABLE "LOGMNRC_CON_GG" ADD CONSTRAINT "LOGMNRC_CON_GG_PK" PRIMARY KEY ("LOGMNR_UID", "CON#", "COMMIT_SCN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" )  ENABLE;
  ALTER TABLE "LOGMNRC_CON_GG" MODIFY ("FLAGS" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRC_CON_GG" MODIFY ("BASEOBJV#" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRC_CON_GG" MODIFY ("BASEOBJ#" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRC_CON_GG" MODIFY ("COMMIT_SCN" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRC_CON_GG" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRC_CON_GG" MODIFY ("CON#" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRC_CON_GG" MODIFY ("LOGMNR_UID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table VISA_ADMIN
--------------------------------------------------------

  ALTER TABLE "VISA_ADMIN" ADD CONSTRAINT "VISA_ADMIN_PK" PRIMARY KEY ("ADMIN_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "VISA_ADMIN" MODIFY ("ENABLED" NOT NULL ENABLE);
  ALTER TABLE "VISA_ADMIN" MODIFY ("DATE_UPDATED" NOT NULL ENABLE);
  ALTER TABLE "VISA_ADMIN" MODIFY ("DATE_CREATED" NOT NULL ENABLE);
  ALTER TABLE "VISA_ADMIN" MODIFY ("ADMIN_EMAIL" NOT NULL ENABLE);
  ALTER TABLE "VISA_ADMIN" MODIFY ("ADMIN_CONTACT_NUM" NOT NULL ENABLE);
  ALTER TABLE "VISA_ADMIN" MODIFY ("ADMIN_LAST_NAME" NOT NULL ENABLE);
  ALTER TABLE "VISA_ADMIN" MODIFY ("ADMIN_FIRST_NAME" NOT NULL ENABLE);
  ALTER TABLE "VISA_ADMIN" MODIFY ("USER_EMAIL" NOT NULL ENABLE);
  ALTER TABLE "VISA_ADMIN" MODIFY ("ADMIN_ID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table REPCAT$_REPSCHEMA
--------------------------------------------------------

  ALTER TABLE "REPCAT$_REPSCHEMA" ADD CONSTRAINT "REPCAT$_REPSCHEMA_PRIMARY" PRIMARY KEY ("SNAME", "DBLINK", "GOWNER")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
/
--------------------------------------------------------
--  Constraints for Table REPCAT$_TEMPLATE_SITES
--------------------------------------------------------

  ALTER TABLE "REPCAT$_TEMPLATE_SITES" ADD CONSTRAINT "REPCAT$_TEMPLATE_SITES_U1" UNIQUE ("REFRESH_TEMPLATE_NAME", "USER_NAME", "SITE_NAME", "REPAPI_SITE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "REPCAT$_TEMPLATE_SITES" ADD CONSTRAINT "REPCAT$_TEMPLATE_SITES_PK" PRIMARY KEY ("TEMPLATE_SITE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "REPCAT$_TEMPLATE_SITES" ADD CONSTRAINT "REPCAT$_TEMPLATE_SITES_C2" CHECK ((site_name is not null and repapi_site_id is null) or
   (site_name is null and repapi_site_id is not null)) ENABLE;
  ALTER TABLE "REPCAT$_TEMPLATE_SITES" ADD CONSTRAINT "REPCAT$_TEMPLATE_SITES_C1" CHECK (status in (-100,-1,0,1)) ENABLE;
  ALTER TABLE "REPCAT$_TEMPLATE_SITES" MODIFY ("STATUS" NOT NULL ENABLE);
  ALTER TABLE "REPCAT$_TEMPLATE_SITES" MODIFY ("USER_NAME" NOT NULL ENABLE);
  ALTER TABLE "REPCAT$_TEMPLATE_SITES" MODIFY ("REFRESH_TEMPLATE_NAME" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table LOGMNR_DICTSTATE$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_DICTSTATE$" ADD CONSTRAINT "LOGMNR_DICTSTATE$_PK" PRIMARY KEY ("LOGMNR_UID") DISABLE;
/
--------------------------------------------------------
--  Constraints for Table VISA_APPLICATION_DETAILS
--------------------------------------------------------

  ALTER TABLE "VISA_APPLICATION_DETAILS" ADD CONSTRAINT "VISA_APPLICATION_DETAILS_PK" PRIMARY KEY ("APP_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "VISA_APPLICATION_DETAILS" MODIFY ("ENABLED" NOT NULL ENABLE);
  ALTER TABLE "VISA_APPLICATION_DETAILS" MODIFY ("REFERENCE_NO" NOT NULL ENABLE);
  ALTER TABLE "VISA_APPLICATION_DETAILS" MODIFY ("DATE_CREATED" NOT NULL ENABLE);
  ALTER TABLE "VISA_APPLICATION_DETAILS" MODIFY ("APPLICATION_COUNTRY_ID" NOT NULL ENABLE);
  ALTER TABLE "VISA_APPLICATION_DETAILS" MODIFY ("HAS_REPRESENTATIVE" NOT NULL ENABLE);
  ALTER TABLE "VISA_APPLICATION_DETAILS" MODIFY ("REASON_WITH_YESNO" NOT NULL ENABLE);
  ALTER TABLE "VISA_APPLICATION_DETAILS" MODIFY ("WITH_VALID" NOT NULL ENABLE);
  ALTER TABLE "VISA_APPLICATION_DETAILS" MODIFY ("REASON" NOT NULL ENABLE);
  ALTER TABLE "VISA_APPLICATION_DETAILS" MODIFY ("APP_METHOD" NOT NULL ENABLE);
  ALTER TABLE "VISA_APPLICATION_DETAILS" MODIFY ("USER_EMAIL" NOT NULL ENABLE);
  ALTER TABLE "VISA_APPLICATION_DETAILS" MODIFY ("APP_ID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table LOGMNR_KOPM$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_KOPM$" ADD CONSTRAINT "LOGMNR_KOPM$_PK" PRIMARY KEY ("LOGMNR_UID", "NAME") DISABLE;
  ALTER TABLE "LOGMNR_KOPM$" MODIFY ("NAME" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table REPCAT$_REPOBJECT
--------------------------------------------------------

  ALTER TABLE "REPCAT$_REPOBJECT" ADD CONSTRAINT "REPCAT$_REPOBJECT_PRIMARY" PRIMARY KEY ("SNAME", "ONAME", "TYPE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "REPCAT$_REPOBJECT" ADD CONSTRAINT "REPCAT$_REPOBJECT_GENTRIGGER" CHECK (gentrigger IN (0, 1, 2)) ENABLE;
  ALTER TABLE "REPCAT$_REPOBJECT" ADD CONSTRAINT "REPCAT$_REPOBJECT_GENPACKAGE" CHECK (genpackage IN (0, 1, 2)) ENABLE;
  ALTER TABLE "REPCAT$_REPOBJECT" ADD CONSTRAINT "REPCAT$_REPOBJECT_STATUS" CHECK (status IN (0, 1, 2, 3, 4, 5, 6)) ENABLE;
  ALTER TABLE "REPCAT$_REPOBJECT" ADD CONSTRAINT "REPCAT$_REPOBJECT_VERSION" CHECK (version# >= 0 AND version# < 65536) ENABLE;
  ALTER TABLE "REPCAT$_REPOBJECT" ADD CONSTRAINT "REPCAT$_REPOBJECT_TYPE" CHECK (type IN (-1, 1, 2, 4, 5, 7, 8, 9, 11, 12, -3,
                                      -4, 13, 14, 32, 33)) ENABLE;
/
--------------------------------------------------------
--  Constraints for Table VISA_APPLICATION_STATUS
--------------------------------------------------------

  ALTER TABLE "VISA_APPLICATION_STATUS" ADD CONSTRAINT "VISA_APPLICATION_STATUS_PK" PRIMARY KEY ("STATUS_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "VISA_APPLICATION_STATUS" MODIFY ("STATUS_ID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table LOGMNR_TS$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_TS$" ADD CONSTRAINT "LOGMNR_TS$_PK" PRIMARY KEY ("LOGMNR_UID", "TS#") DISABLE;
  ALTER TABLE "LOGMNR_TS$" MODIFY ("BLOCKSIZE" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table VISA_APPLICANT
--------------------------------------------------------

  ALTER TABLE "VISA_APPLICANT" ADD CONSTRAINT "VISA_APPLICANT_PK" PRIMARY KEY ("APPLICANT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "VISA_APPLICANT" MODIFY ("APPLICANT_ID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table VISA_APPOINTMENT_LOG
--------------------------------------------------------

  ALTER TABLE "VISA_APPOINTMENT_LOG" ADD PRIMARY KEY ("APPOINTMENT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "VISA_APPOINTMENT_LOG" MODIFY ("ENABLED" NOT NULL ENABLE);
  ALTER TABLE "VISA_APPOINTMENT_LOG" MODIFY ("DATE_UPDATED" NOT NULL ENABLE);
  ALTER TABLE "VISA_APPOINTMENT_LOG" MODIFY ("DATE_CREATED" NOT NULL ENABLE);
  ALTER TABLE "VISA_APPOINTMENT_LOG" MODIFY ("APPOINTMENT_DATESCHED" NOT NULL ENABLE);
  ALTER TABLE "VISA_APPOINTMENT_LOG" MODIFY ("BRANCH_ID" NOT NULL ENABLE);
  ALTER TABLE "VISA_APPOINTMENT_LOG" MODIFY ("APP_REFERENCE_NO" NOT NULL ENABLE);
  ALTER TABLE "VISA_APPOINTMENT_LOG" MODIFY ("APPOINTMENT_ID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table REPCAT$_RESOLUTION_STATISTICS
--------------------------------------------------------

  ALTER TABLE "REPCAT$_RESOLUTION_STATISTICS" MODIFY ("PRIMARY_KEY_VALUE" CONSTRAINT "REPCAT$_RESOLUTION_STATS_NN8" NOT NULL ENABLE);
  ALTER TABLE "REPCAT$_RESOLUTION_STATISTICS" MODIFY ("RESOLVED_DATE" CONSTRAINT "REPCAT$_RESOLUTION_STATS_NN7" NOT NULL ENABLE);
  ALTER TABLE "REPCAT$_RESOLUTION_STATISTICS" MODIFY ("FUNCTION_NAME" CONSTRAINT "REPCAT$_RESOLUTION_STATS_NN6" NOT NULL ENABLE);
  ALTER TABLE "REPCAT$_RESOLUTION_STATISTICS" MODIFY ("METHOD_NAME" CONSTRAINT "REPCAT$_RESOLUTION_STATS_NN5" NOT NULL ENABLE);
  ALTER TABLE "REPCAT$_RESOLUTION_STATISTICS" MODIFY ("REFERENCE_NAME" CONSTRAINT "REPCAT$_RESOLUTION_STATS_NN4" NOT NULL ENABLE);
  ALTER TABLE "REPCAT$_RESOLUTION_STATISTICS" MODIFY ("CONFLICT_TYPE_ID" CONSTRAINT "REPCAT$_RESOLUTION_STATS_NN3" NOT NULL ENABLE);
  ALTER TABLE "REPCAT$_RESOLUTION_STATISTICS" MODIFY ("ONAME" CONSTRAINT "REPCAT$_RESOLUTION_STATS_NN2" NOT NULL ENABLE);
  ALTER TABLE "REPCAT$_RESOLUTION_STATISTICS" MODIFY ("SNAME" CONSTRAINT "REPCAT$_RESOLUTION_STATS_NN1" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_JOURNAL
--------------------------------------------------------

  ALTER TABLE "MVIEW$_ADV_JOURNAL" ADD CONSTRAINT "MVIEW$_ADV_JOURNAL_PK" PRIMARY KEY ("RUNID#", "SEQ#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "MVIEW$_ADV_JOURNAL" MODIFY ("FLAGS" NOT NULL ENABLE);
  ALTER TABLE "MVIEW$_ADV_JOURNAL" MODIFY ("TIMESTAMP" NOT NULL ENABLE);
  ALTER TABLE "MVIEW$_ADV_JOURNAL" MODIFY ("SEQ#" NOT NULL ENABLE);
  ALTER TABLE "MVIEW$_ADV_JOURNAL" MODIFY ("RUNID#" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table LOGMNR_SEED$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_SEED$" ADD CONSTRAINT "LOGMNR_SEED$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "INTCOL#") DISABLE;
  ALTER TABLE "LOGMNR_SEED$" MODIFY ("NULL$" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table LOGMNR_TYPE$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_TYPE$" ADD CONSTRAINT "LOGMNR_TYPE$_PK" PRIMARY KEY ("LOGMNR_UID", "TOID", "VERSION#") DISABLE;
  ALTER TABLE "LOGMNR_TYPE$" MODIFY ("TOID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table VISA_OR
--------------------------------------------------------

  ALTER TABLE "VISA_OR" ADD CONSTRAINT "VISA_OR_PK" PRIMARY KEY ("OR_ID") DISABLE;
  ALTER TABLE "VISA_OR" MODIFY ("ENABLED" NOT NULL ENABLE);
  ALTER TABLE "VISA_OR" MODIFY ("DATE_CREATED" NOT NULL ENABLE);
  ALTER TABLE "VISA_OR" MODIFY ("OR_NO" NOT NULL ENABLE);
  ALTER TABLE "VISA_OR" MODIFY ("OR_ID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table REPCAT$_COLUMN_GROUP
--------------------------------------------------------

  ALTER TABLE "REPCAT$_COLUMN_GROUP" ADD CONSTRAINT "REPCAT$_COLUMN_GROUP_PK" PRIMARY KEY ("SNAME", "ONAME", "GROUP_NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "REPCAT$_COLUMN_GROUP" MODIFY ("GROUP_NAME" CONSTRAINT "REPCAT$_COLUMN_GROUP_NN3" NOT NULL ENABLE);
  ALTER TABLE "REPCAT$_COLUMN_GROUP" MODIFY ("ONAME" CONSTRAINT "REPCAT$_COLUMN_GROUP_NN2" NOT NULL ENABLE);
  ALTER TABLE "REPCAT$_COLUMN_GROUP" MODIFY ("SNAME" CONSTRAINT "REPCAT$_COLUMN_GROUP_NN1" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_OUTPUT
--------------------------------------------------------

  ALTER TABLE "MVIEW$_ADV_OUTPUT" ADD CONSTRAINT "MVIEW$_ADV_OUTPUT_PK" PRIMARY KEY ("RUNID#", "RANK#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "MVIEW$_ADV_OUTPUT" MODIFY ("BENEFIT_TO_COST_RATIO" NOT NULL ENABLE);
  ALTER TABLE "MVIEW$_ADV_OUTPUT" MODIFY ("OUTPUT_TYPE" NOT NULL ENABLE);
  ALTER TABLE "MVIEW$_ADV_OUTPUT" MODIFY ("RUNID#" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_AJG
--------------------------------------------------------

  ALTER TABLE "MVIEW$_ADV_AJG" ADD CONSTRAINT "MVIEW$_ADV_AJG_PK" PRIMARY KEY ("AJGID#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "MVIEW$_ADV_AJG" MODIFY ("HASHVALUE" NOT NULL ENABLE);
  ALTER TABLE "MVIEW$_ADV_AJG" MODIFY ("AJGDES" NOT NULL ENABLE);
  ALTER TABLE "MVIEW$_ADV_AJG" MODIFY ("AJGDESLEN" NOT NULL ENABLE);
  ALTER TABLE "MVIEW$_ADV_AJG" MODIFY ("RUNID#" NOT NULL ENABLE);
  ALTER TABLE "MVIEW$_ADV_AJG" MODIFY ("AJGID#" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table VISA_APPOINTMENT_STATUS
--------------------------------------------------------

  ALTER TABLE "VISA_APPOINTMENT_STATUS" ADD PRIMARY KEY ("STATUS_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "VISA_APPOINTMENT_STATUS" MODIFY ("ENABLED" NOT NULL ENABLE);
  ALTER TABLE "VISA_APPOINTMENT_STATUS" MODIFY ("DATE_UPDATED" NOT NULL ENABLE);
  ALTER TABLE "VISA_APPOINTMENT_STATUS" MODIFY ("DATE_CREATED" NOT NULL ENABLE);
  ALTER TABLE "VISA_APPOINTMENT_STATUS" MODIFY ("STATUS_DESCRIPTION" NOT NULL ENABLE);
  ALTER TABLE "VISA_APPOINTMENT_STATUS" MODIFY ("STATUS_ID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table LOGMNRC_SEQ_GG
--------------------------------------------------------

  ALTER TABLE "LOGMNRC_SEQ_GG" ADD CONSTRAINT "LOGMNRC_SEQ_GG_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "COMMIT_SCN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" )  ENABLE;
  ALTER TABLE "LOGMNRC_SEQ_GG" MODIFY ("OBJNAME" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRC_SEQ_GG" MODIFY ("OWNERNAME" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRC_SEQ_GG" MODIFY ("OWNER#" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRC_SEQ_GG" MODIFY ("SEQ_FLAGS" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRC_SEQ_GG" MODIFY ("COMMIT_SCN" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRC_SEQ_GG" MODIFY ("OBJ#" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRC_SEQ_GG" MODIFY ("LOGMNR_UID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table REPCAT$_TEMPLATE_STATUS
--------------------------------------------------------

  ALTER TABLE "REPCAT$_TEMPLATE_STATUS" ADD CONSTRAINT "REPCAT$_TEMPLATE_STATUS_PK" PRIMARY KEY ("TEMPLATE_STATUS_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "REPCAT$_TEMPLATE_STATUS" MODIFY ("STATUS_TYPE_NAME" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table LOGMNR_LOGMNR_BUILDLOG
--------------------------------------------------------

  ALTER TABLE "LOGMNR_LOGMNR_BUILDLOG" ADD CONSTRAINT "LOGMNR_LOGMNR_BUILDLOG_PK" PRIMARY KEY ("LOGMNR_UID", "INITIAL_XID") DISABLE;
  ALTER TABLE "LOGMNR_LOGMNR_BUILDLOG" MODIFY ("INITIAL_XID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table VISA_POSITION
--------------------------------------------------------

  ALTER TABLE "VISA_POSITION" ADD CONSTRAINT "VISA_POSITION_PK" PRIMARY KEY ("POSITION_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "VISA_POSITION" MODIFY ("ENABLED" NOT NULL ENABLE);
  ALTER TABLE "VISA_POSITION" MODIFY ("POSITION" NOT NULL ENABLE);
  ALTER TABLE "VISA_POSITION" MODIFY ("POSITION_ID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table VISA_SETTINGS
--------------------------------------------------------

  ALTER TABLE "VISA_SETTINGS" ADD CONSTRAINT "VISA_SETTINGS_PK" PRIMARY KEY ("SETTINGS_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "VISA_SETTINGS" MODIFY ("SETTINGS_ID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table REDO_RTA
--------------------------------------------------------

  ALTER TABLE "REDO_RTA" MODIFY ("THREAD" NOT NULL ENABLE);
  ALTER TABLE "REDO_RTA" MODIFY ("DBID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table REPCAT$_TEMPLATE_REFGROUPS
--------------------------------------------------------

  ALTER TABLE "REPCAT$_TEMPLATE_REFGROUPS" ADD CONSTRAINT "REPCAT$_TEMPLATE_REFGROUPS_PK" PRIMARY KEY ("REFRESH_GROUP_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "REPCAT$_TEMPLATE_REFGROUPS" MODIFY ("REFRESH_TEMPLATE_ID" NOT NULL ENABLE);
  ALTER TABLE "REPCAT$_TEMPLATE_REFGROUPS" MODIFY ("REFRESH_GROUP_NAME" NOT NULL ENABLE);
  ALTER TABLE "REPCAT$_TEMPLATE_REFGROUPS" MODIFY ("REFRESH_GROUP_ID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table LOGMNR_UID$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_UID$" ADD CONSTRAINT "LOGMNR_UID$_PK" PRIMARY KEY ("LOGMNR_UID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  ENABLE;
/
--------------------------------------------------------
--  Constraints for Table REPCAT$_TEMPLATE_TARGETS
--------------------------------------------------------

  ALTER TABLE "REPCAT$_TEMPLATE_TARGETS" ADD CONSTRAINT "TEMPLATE$_TARGETS_PK" PRIMARY KEY ("TEMPLATE_TARGET_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "REPCAT$_TEMPLATE_TARGETS" MODIFY ("TARGET_DATABASE" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table LOGMNR_NTAB$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_NTAB$" ADD CONSTRAINT "LOGMNR_NTAB$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "INTCOL#") DISABLE;
  ALTER TABLE "LOGMNR_NTAB$" MODIFY ("OBJ#" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_LEVEL
--------------------------------------------------------

  ALTER TABLE "MVIEW$_ADV_LEVEL" ADD CONSTRAINT "MVIEW$_ADV_LEVEL_PK" PRIMARY KEY ("RUNID#", "LEVELID#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "MVIEW$_ADV_LEVEL" MODIFY ("COLUMNLIST" NOT NULL ENABLE);
  ALTER TABLE "MVIEW$_ADV_LEVEL" MODIFY ("TBLOBJ#" NOT NULL ENABLE);
  ALTER TABLE "MVIEW$_ADV_LEVEL" MODIFY ("FLAGS" NOT NULL ENABLE);
  ALTER TABLE "MVIEW$_ADV_LEVEL" MODIFY ("LEVELID#" NOT NULL ENABLE);
  ALTER TABLE "MVIEW$_ADV_LEVEL" MODIFY ("RUNID#" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table REPCAT$_GENERATED
--------------------------------------------------------

  ALTER TABLE "REPCAT$_GENERATED" ADD CONSTRAINT "REPCAT$_REPGEN_PRIMARY" PRIMARY KEY ("SNAME", "ONAME", "TYPE", "BASE_SNAME", "BASE_ONAME", "BASE_TYPE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "REPCAT$_GENERATED" ADD CONSTRAINT "REPCAT$_GENERATED_OBJ" CHECK (reason IN (0, 1, 2, 3, 4, 5, 6, 7, 9, 10)) ENABLE;
/
--------------------------------------------------------
--  Constraints for Table REPCAT$_REPCAT
--------------------------------------------------------

  ALTER TABLE "REPCAT$_REPCAT" ADD CONSTRAINT "REPCAT$_REPCAT_PRIMARY" PRIMARY KEY ("SNAME", "GOWNER")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "REPCAT$_REPCAT" ADD CONSTRAINT "REPCAT$_REPCAT_STATUS" CHECK (status IN (0, 1, 2)) ENABLE;
/
--------------------------------------------------------
--  Constraints for Table LOGMNRC_GTLO
--------------------------------------------------------

  ALTER TABLE "LOGMNRC_GTLO" ADD CONSTRAINT "LOGMNRC_GTLO_PK" PRIMARY KEY ("LOGMNR_UID", "KEYOBJ#", "BASEOBJV#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" )  ENABLE;
  ALTER TABLE "LOGMNRC_GTLO" MODIFY ("START_SCN" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRC_GTLO" MODIFY ("INTCOLS" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRC_GTLO" MODIFY ("LVL0NAME" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRC_GTLO" MODIFY ("OWNERNAME" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRC_GTLO" MODIFY ("LVL0TYPE#" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRC_GTLO" MODIFY ("BASEOBJV#" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRC_GTLO" MODIFY ("BASEOBJ#" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRC_GTLO" MODIFY ("LVLCNT" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRC_GTLO" MODIFY ("KEYOBJ#" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRC_GTLO" MODIFY ("LOGMNR_UID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table REPCAT$_SITES_NEW
--------------------------------------------------------

  ALTER TABLE "REPCAT$_SITES_NEW" ADD CONSTRAINT "REPCAT$_SITES_NEW_PK" PRIMARY KEY ("EXTENSION_ID", "GOWNER", "GNAME", "DBLINK")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "REPCAT$_SITES_NEW" ADD CONSTRAINT "REPCAT$_SITES_NEW_FULL_INST" CHECK (full_instantiation IN ('Y', 'N')) ENABLE;
/
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_BASETABLE
--------------------------------------------------------

  ALTER TABLE "MVIEW$_ADV_BASETABLE" MODIFY ("QUERYID#" NOT NULL ENABLE);
  ALTER TABLE "MVIEW$_ADV_BASETABLE" MODIFY ("COLLECTIONID#" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_ROLLUP
--------------------------------------------------------

  ALTER TABLE "MVIEW$_ADV_ROLLUP" ADD CONSTRAINT "MVIEW$_ADV_ROLLUP_PK" PRIMARY KEY ("RUNID#", "CLEVELID#", "PLEVELID#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "MVIEW$_ADV_ROLLUP" MODIFY ("FLAGS" NOT NULL ENABLE);
  ALTER TABLE "MVIEW$_ADV_ROLLUP" MODIFY ("PLEVELID#" NOT NULL ENABLE);
  ALTER TABLE "MVIEW$_ADV_ROLLUP" MODIFY ("CLEVELID#" NOT NULL ENABLE);
  ALTER TABLE "MVIEW$_ADV_ROLLUP" MODIFY ("RUNID#" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table LOGMNRT_MDDL$
--------------------------------------------------------

  ALTER TABLE "LOGMNRT_MDDL$" ADD CONSTRAINT "LOGMNRT_MDDL$_PK" PRIMARY KEY ("SOURCE_OBJ#", "SOURCE_ROWID") ENABLE;
  ALTER TABLE "LOGMNRT_MDDL$" MODIFY ("DEST_ROWID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table LOGMNRC_GSII
--------------------------------------------------------

  ALTER TABLE "LOGMNRC_GSII" ADD CONSTRAINT "LOGMNRC_GSII_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" )  ENABLE;
  ALTER TABLE "LOGMNRC_GSII" MODIFY ("INDTYPE#" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRC_GSII" MODIFY ("BO#" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRC_GSII" MODIFY ("OBJ#" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRC_GSII" MODIFY ("LOGMNR_UID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table REPCAT$_EXCEPTIONS
--------------------------------------------------------

  ALTER TABLE "REPCAT$_EXCEPTIONS" ADD CONSTRAINT "REPCAT$_EXCEPTIONS_PK" PRIMARY KEY ("EXCEPTION_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
/
--------------------------------------------------------
--  Constraints for Table LOGMNRGGC_GTLO
--------------------------------------------------------

  ALTER TABLE "LOGMNRGGC_GTLO" ADD CONSTRAINT "LOGMNRGGC_GTLO_PK" PRIMARY KEY ("LOGMNR_UID", "KEYOBJ#", "BASEOBJV#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "LOGMNRGGC_GTLO" MODIFY ("START_SCN" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRGGC_GTLO" MODIFY ("INTCOLS" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRGGC_GTLO" MODIFY ("LVL0NAME" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRGGC_GTLO" MODIFY ("OWNERNAME" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRGGC_GTLO" MODIFY ("LVL0TYPE#" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRGGC_GTLO" MODIFY ("BASEOBJV#" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRGGC_GTLO" MODIFY ("BASEOBJ#" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRGGC_GTLO" MODIFY ("LVLCNT" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRGGC_GTLO" MODIFY ("KEYOBJ#" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRGGC_GTLO" MODIFY ("LOGMNR_UID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table DEF$_ERROR
--------------------------------------------------------

  ALTER TABLE "DEF$_ERROR" ADD CONSTRAINT "DEF$_ERROR_PRIMARY" PRIMARY KEY ("ENQ_TID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
/
--------------------------------------------------------
--  Constraints for Table VISA_FAQ
--------------------------------------------------------

  ALTER TABLE "VISA_FAQ" ADD CONSTRAINT "VISA_FAQ_PK" PRIMARY KEY ("FAQ_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "VISA_FAQ" MODIFY ("FAQ_ID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table REPCAT$_REPCOLUMN
--------------------------------------------------------

  ALTER TABLE "REPCAT$_REPCOLUMN" ADD CONSTRAINT "REPCAT$_REPCOLUMN_PK" PRIMARY KEY ("SNAME", "ONAME", "TYPE", "CNAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "REPCAT$_REPCOLUMN" ADD CONSTRAINT "REPCAT$_REPCOLUMN_VERSION" CHECK (version# >= 0 AND version# < 65536) ENABLE;
/
--------------------------------------------------------
--  Constraints for Table LOGMNR_CON$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_CON$" ADD CONSTRAINT "LOGMNR_CON$_PK" PRIMARY KEY ("LOGMNR_UID", "CON#") DISABLE;
  ALTER TABLE "LOGMNR_CON$" MODIFY ("CON#" NOT NULL ENABLE);
  ALTER TABLE "LOGMNR_CON$" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "LOGMNR_CON$" MODIFY ("OWNER#" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table REPCAT$_INSTANTIATION_DDL
--------------------------------------------------------

  ALTER TABLE "REPCAT$_INSTANTIATION_DDL" ADD CONSTRAINT "REPCAT$_INSTANTIATION_DDL_PK" PRIMARY KEY ("REFRESH_TEMPLATE_ID", "PHASE", "DDL_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
/
--------------------------------------------------------
--  Constraints for Table LOGMNR_CCOL$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_CCOL$" ADD CONSTRAINT "LOGMNR_CCOL$_PK" PRIMARY KEY ("LOGMNR_UID", "CON#", "INTCOL#") DISABLE;
  ALTER TABLE "LOGMNR_CCOL$" MODIFY ("INTCOL#" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table LOGMNR_SESSION_EVOLVE$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_SESSION_EVOLVE$" ADD CONSTRAINT "LOGMNR_SESSION_EVOLVE$_PK" PRIMARY KEY ("SESSION#", "DB_ID", "RESET_SCN", "RESET_TIMESTAMP")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  ENABLE;
/
--------------------------------------------------------
--  Constraints for Table LOGMNR_LOB$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_LOB$" ADD CONSTRAINT "LOGMNR_LOB$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "INTCOL#") DISABLE;
  ALTER TABLE "LOGMNR_LOB$" MODIFY ("CHUNK" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table SQLPLUS_PRODUCT_PROFILE
--------------------------------------------------------

  ALTER TABLE "SQLPLUS_PRODUCT_PROFILE" MODIFY ("PRODUCT" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table LOGMNR_SUBCOLTYPE$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_SUBCOLTYPE$" ADD CONSTRAINT "LOGMNR_SUBCOLTYPE$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "INTCOL#", "TOID") DISABLE;
  ALTER TABLE "LOGMNR_SUBCOLTYPE$" MODIFY ("OBJ#" NOT NULL ENABLE);
  ALTER TABLE "LOGMNR_SUBCOLTYPE$" MODIFY ("VERSION#" NOT NULL ENABLE);
  ALTER TABLE "LOGMNR_SUBCOLTYPE$" MODIFY ("TOID" NOT NULL ENABLE);
  ALTER TABLE "LOGMNR_SUBCOLTYPE$" MODIFY ("INTCOL#" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table LOGMNR_PARTOBJ$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_PARTOBJ$" ADD CONSTRAINT "LOGMNR_PARTOBJ$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#") DISABLE;
  ALTER TABLE "LOGMNR_PARTOBJ$" MODIFY ("OBJ#" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table REPCAT$_RESOLUTION_METHOD
--------------------------------------------------------

  ALTER TABLE "REPCAT$_RESOLUTION_METHOD" ADD CONSTRAINT "REPCAT$_RESOL_METHOD_PK" PRIMARY KEY ("CONFLICT_TYPE_ID", "METHOD_NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
/
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_FILTERINSTANCE
--------------------------------------------------------

  ALTER TABLE "MVIEW$_ADV_FILTERINSTANCE" MODIFY ("RUNID#" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table REPCAT$_REFRESH_TEMPLATES
--------------------------------------------------------

  ALTER TABLE "REPCAT$_REFRESH_TEMPLATES" ADD CONSTRAINT "REPCAT$_REFRESH_TEMPLATES_U1" UNIQUE ("REFRESH_TEMPLATE_NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "REPCAT$_REFRESH_TEMPLATES" ADD CONSTRAINT "REPCAT$_REFRESH_TEMPLATES_PK" PRIMARY KEY ("REFRESH_TEMPLATE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "REPCAT$_REFRESH_TEMPLATES" ADD CONSTRAINT "REFRESH_TEMPLATES_C1" CHECK ((public_template in ('Y','N'))
   or public_template is NULL) ENABLE;
  ALTER TABLE "REPCAT$_REFRESH_TEMPLATES" MODIFY ("TEMPLATE_STATUS_ID" NOT NULL ENABLE);
  ALTER TABLE "REPCAT$_REFRESH_TEMPLATES" MODIFY ("TEMPLATE_TYPE_ID" NOT NULL ENABLE);
  ALTER TABLE "REPCAT$_REFRESH_TEMPLATES" MODIFY ("REFRESH_GROUP_ID" NOT NULL ENABLE);
  ALTER TABLE "REPCAT$_REFRESH_TEMPLATES" MODIFY ("REFRESH_TEMPLATE_NAME" NOT NULL ENABLE);
  ALTER TABLE "REPCAT$_REFRESH_TEMPLATES" MODIFY ("REFRESH_GROUP_NAME" NOT NULL ENABLE);
  ALTER TABLE "REPCAT$_REFRESH_TEMPLATES" MODIFY ("OWNER" NOT NULL ENABLE);
  ALTER TABLE "REPCAT$_REFRESH_TEMPLATES" MODIFY ("REFRESH_TEMPLATE_ID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_FJG
--------------------------------------------------------

  ALTER TABLE "MVIEW$_ADV_FJG" ADD CONSTRAINT "MVIEW$_ADV_FJG_PK" PRIMARY KEY ("FJGID#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "MVIEW$_ADV_FJG" MODIFY ("HASHVALUE" NOT NULL ENABLE);
  ALTER TABLE "MVIEW$_ADV_FJG" MODIFY ("FJGDES" NOT NULL ENABLE);
  ALTER TABLE "MVIEW$_ADV_FJG" MODIFY ("FJGDESLEN" NOT NULL ENABLE);
  ALTER TABLE "MVIEW$_ADV_FJG" MODIFY ("AJGID#" NOT NULL ENABLE);
  ALTER TABLE "MVIEW$_ADV_FJG" MODIFY ("FJGID#" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table LOGMNR_INDSUBPART$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_INDSUBPART$" ADD CONSTRAINT "LOGMNR_INDSUBPART$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "POBJ#") DISABLE;
  ALTER TABLE "LOGMNR_INDSUBPART$" MODIFY ("TS#" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table LOGMNR_INTEGRATED_SPILL$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_INTEGRATED_SPILL$" ADD CONSTRAINT "LOGMNR_INTEG_SPILL$_PK" PRIMARY KEY ("SESSION#", "XIDUSN", "XIDSLT", "XIDSQN", "CHUNK", "FLAG")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  ENABLE;
/
--------------------------------------------------------
--  Constraints for Table LOGMNR_ATTRCOL$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_ATTRCOL$" ADD CONSTRAINT "LOGMNR_ATTRCOL$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "INTCOL#") DISABLE;
  ALTER TABLE "LOGMNR_ATTRCOL$" MODIFY ("OBJ#" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table REPCAT$_FLAVOR_OBJECTS
--------------------------------------------------------

  ALTER TABLE "REPCAT$_FLAVOR_OBJECTS" ADD CONSTRAINT "REPCAT$_FLAVOR_OBJECTS_PK" PRIMARY KEY ("SNAME", "ONAME", "TYPE", "GNAME", "FLAVOR_ID", "GOWNER")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "REPCAT$_FLAVOR_OBJECTS" ADD CONSTRAINT "REPCAT$_FLAVOR_OBJECTS_VERSION" CHECK (version# >= 0 AND version# < 65536) ENABLE;
/
--------------------------------------------------------
--  Constraints for Table VISA_CIVIL_STATUS
--------------------------------------------------------

  ALTER TABLE "VISA_CIVIL_STATUS" ADD CONSTRAINT "VISA_CIVIL_STATUS_PK" PRIMARY KEY ("CIVIL_STATUS_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "VISA_CIVIL_STATUS" MODIFY ("ENABLED" NOT NULL ENABLE);
  ALTER TABLE "VISA_CIVIL_STATUS" MODIFY ("DATE_UPDATED" NOT NULL ENABLE);
  ALTER TABLE "VISA_CIVIL_STATUS" MODIFY ("DATE_CREATED" NOT NULL ENABLE);
  ALTER TABLE "VISA_CIVIL_STATUS" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "VISA_CIVIL_STATUS" MODIFY ("CIVIL_STATUS_ID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table VISA_REASON
--------------------------------------------------------

  ALTER TABLE "VISA_REASON" ADD CONSTRAINT "VISA_REASON_PK" PRIMARY KEY ("REASON_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "VISA_REASON" MODIFY ("ENABLED" NOT NULL ENABLE);
  ALTER TABLE "VISA_REASON" MODIFY ("WITH_VALID" NOT NULL ENABLE);
  ALTER TABLE "VISA_REASON" MODIFY ("REASON" NOT NULL ENABLE);
  ALTER TABLE "VISA_REASON" MODIFY ("REASON_ID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table DEF$_CALLDEST
--------------------------------------------------------

  ALTER TABLE "DEF$_CALLDEST" ADD CONSTRAINT "DEF$_CALLDEST_PRIMARY" PRIMARY KEY ("ENQ_TID", "DBLINK", "STEP_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
/
--------------------------------------------------------
--  Constraints for Table LOGMNR_DID$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_DID$" ADD CONSTRAINT "LOGMNR_DID$_PK" PRIMARY KEY ("SESSION#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  ENABLE;
/
--------------------------------------------------------
--  Constraints for Table REPCAT$_USER_AUTHORIZATIONS
--------------------------------------------------------

  ALTER TABLE "REPCAT$_USER_AUTHORIZATIONS" ADD CONSTRAINT "REPCAT$_USER_AUTHORIZATIONS_U1" UNIQUE ("USER_ID", "REFRESH_TEMPLATE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "REPCAT$_USER_AUTHORIZATIONS" ADD CONSTRAINT "REPCAT$_USER_AUTHORIZATIONS_PK" PRIMARY KEY ("USER_AUTHORIZATION_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "REPCAT$_USER_AUTHORIZATIONS" MODIFY ("REFRESH_TEMPLATE_ID" NOT NULL ENABLE);
  ALTER TABLE "REPCAT$_USER_AUTHORIZATIONS" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "REPCAT$_USER_AUTHORIZATIONS" MODIFY ("USER_AUTHORIZATION_ID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table LOGMNR_TABPART$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_TABPART$" ADD CONSTRAINT "LOGMNR_TABPART$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "BO#") DISABLE;
  ALTER TABLE "LOGMNR_TABPART$" MODIFY ("BO#" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table REPCAT$_TEMPLATE_TYPES
--------------------------------------------------------

  ALTER TABLE "REPCAT$_TEMPLATE_TYPES" ADD CONSTRAINT "REPCAT$_TEMPLATE_TYPES_PK" PRIMARY KEY ("TEMPLATE_TYPE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
/
--------------------------------------------------------
--  Constraints for Table REPCAT$_FLAVORS
--------------------------------------------------------

  ALTER TABLE "REPCAT$_FLAVORS" ADD CONSTRAINT "REPCAT$_FLAVORS_UNQ1" UNIQUE ("GNAME", "FLAVOR_ID", "GOWNER")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "REPCAT$_FLAVORS" ADD CONSTRAINT "REPCAT$_FLAVORS_C2" CHECK (published is NULL or (published in ('Y','N','O'))) ENABLE;
  ALTER TABLE "REPCAT$_FLAVORS" MODIFY ("GNAME" NOT NULL ENABLE);
  ALTER TABLE "REPCAT$_FLAVORS" MODIFY ("FLAVOR_ID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table LOGSTDBY$EVENTS
--------------------------------------------------------

  ALTER TABLE "LOGSTDBY$EVENTS" MODIFY ("EVENT_TIME" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table LOGMNR_ENC$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_ENC$" ADD CONSTRAINT "LOGMNR_ENC$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "OWNER#") DISABLE;
  ALTER TABLE "LOGMNR_ENC$" MODIFY ("MKEYID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table REPCAT$_PRIORITY
--------------------------------------------------------

  ALTER TABLE "REPCAT$_PRIORITY" ADD CONSTRAINT "REPCAT$_PRIORITY_PK" PRIMARY KEY ("SNAME", "PRIORITY_GROUP", "PRIORITY")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "REPCAT$_PRIORITY" MODIFY ("PRIORITY" CONSTRAINT "REPCAT$_PRIORITY_NN3" NOT NULL ENABLE);
  ALTER TABLE "REPCAT$_PRIORITY" MODIFY ("PRIORITY_GROUP" CONSTRAINT "REPCAT$_PRIORITY_NN2" NOT NULL ENABLE);
  ALTER TABLE "REPCAT$_PRIORITY" MODIFY ("SNAME" CONSTRAINT "REPCAT$_PRIORITY_NN1" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table HELP
--------------------------------------------------------

  ALTER TABLE "HELP" ADD CONSTRAINT "HELP_TOPIC_SEQ" PRIMARY KEY ("TOPIC", "SEQ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 16384 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "HELP" MODIFY ("SEQ" NOT NULL ENABLE);
  ALTER TABLE "HELP" MODIFY ("TOPIC" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table REPCAT$_REPGROUP_PRIVS
--------------------------------------------------------

  ALTER TABLE "REPCAT$_REPGROUP_PRIVS" ADD CONSTRAINT "REPCAT$_REPGROUP_PRIVS_UK" UNIQUE ("USERNAME", "GNAME", "GOWNER")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "REPCAT$_REPGROUP_PRIVS" MODIFY ("CREATED" NOT NULL ENABLE);
  ALTER TABLE "REPCAT$_REPGROUP_PRIVS" MODIFY ("GLOBAL_FLAG" NOT NULL ENABLE);
  ALTER TABLE "REPCAT$_REPGROUP_PRIVS" MODIFY ("USERNAME" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table REPCAT$_SITE_OBJECTS
--------------------------------------------------------

  ALTER TABLE "REPCAT$_SITE_OBJECTS" ADD CONSTRAINT "REPCAT$_SITE_OBJECTS_U1" UNIQUE ("TEMPLATE_SITE_ID", "ONAME", "OBJECT_TYPE_ID", "SNAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "REPCAT$_SITE_OBJECTS" MODIFY ("OBJECT_TYPE_ID" NOT NULL ENABLE);
  ALTER TABLE "REPCAT$_SITE_OBJECTS" MODIFY ("ONAME" NOT NULL ENABLE);
  ALTER TABLE "REPCAT$_SITE_OBJECTS" MODIFY ("TEMPLATE_SITE_ID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_FILTER
--------------------------------------------------------

  ALTER TABLE "MVIEW$_ADV_FILTER" ADD CONSTRAINT "MVIEW$_ADV_FILTER_PK" PRIMARY KEY ("FILTERID#", "SUBFILTERNUM#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "MVIEW$_ADV_FILTER" MODIFY ("SUBFILTERTYPE" NOT NULL ENABLE);
  ALTER TABLE "MVIEW$_ADV_FILTER" MODIFY ("SUBFILTERNUM#" NOT NULL ENABLE);
  ALTER TABLE "MVIEW$_ADV_FILTER" MODIFY ("FILTERID#" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table LOGMNR_IND$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_IND$" ADD CONSTRAINT "LOGMNR_IND$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#") DISABLE;
  ALTER TABLE "LOGMNR_IND$" MODIFY ("OBJ#" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table VISA_APPLICATION_LOG
--------------------------------------------------------

  ALTER TABLE "VISA_APPLICATION_LOG" ADD CONSTRAINT "VISA_APPLICATION_LOG_PK" PRIMARY KEY ("LOG_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "VISA_APPLICATION_LOG" MODIFY ("ENABLED" NOT NULL ENABLE);
  ALTER TABLE "VISA_APPLICATION_LOG" MODIFY ("DATE_CREATED" NOT NULL ENABLE);
  ALTER TABLE "VISA_APPLICATION_LOG" MODIFY ("APP_STATUS" NOT NULL ENABLE);
  ALTER TABLE "VISA_APPLICATION_LOG" MODIFY ("OR_NO" NOT NULL ENABLE);
  ALTER TABLE "VISA_APPLICATION_LOG" MODIFY ("TOTAL_AMOUNT" NOT NULL ENABLE);
  ALTER TABLE "VISA_APPLICATION_LOG" MODIFY ("FEE_SERVICE" NOT NULL ENABLE);
  ALTER TABLE "VISA_APPLICATION_LOG" MODIFY ("FEE_EXPRESS" NOT NULL ENABLE);
  ALTER TABLE "VISA_APPLICATION_LOG" MODIFY ("FEE_STICKER" NOT NULL ENABLE);
  ALTER TABLE "VISA_APPLICATION_LOG" MODIFY ("FEE_LRF" NOT NULL ENABLE);
  ALTER TABLE "VISA_APPLICATION_LOG" MODIFY ("FEE_CERTIFICATION" NOT NULL ENABLE);
  ALTER TABLE "VISA_APPLICATION_LOG" MODIFY ("FEE_APPLICATION" NOT NULL ENABLE);
  ALTER TABLE "VISA_APPLICATION_LOG" MODIFY ("FEE_WAIVER" NOT NULL ENABLE);
  ALTER TABLE "VISA_APPLICATION_LOG" MODIFY ("PAYMENT_MODE" NOT NULL ENABLE);
  ALTER TABLE "VISA_APPLICATION_LOG" MODIFY ("REFERENCE_NO" NOT NULL ENABLE);
  ALTER TABLE "VISA_APPLICATION_LOG" MODIFY ("APP_ID" NOT NULL ENABLE);
  ALTER TABLE "VISA_APPLICATION_LOG" MODIFY ("LOG_ID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table VISA_APL_REP
--------------------------------------------------------

  ALTER TABLE "VISA_APL_REP" ADD CONSTRAINT "VISA_APL_REP_PK" PRIMARY KEY ("REP_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "VISA_APL_REP" MODIFY ("ENABLED" NOT NULL ENABLE);
  ALTER TABLE "VISA_APL_REP" MODIFY ("LAST_NAME" NOT NULL ENABLE);
  ALTER TABLE "VISA_APL_REP" MODIFY ("FIRST_NAME" NOT NULL ENABLE);
  ALTER TABLE "VISA_APL_REP" MODIFY ("APP_ID" NOT NULL ENABLE);
  ALTER TABLE "VISA_APL_REP" MODIFY ("REP_ID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table REPCAT$_REPCATLOG
--------------------------------------------------------

  ALTER TABLE "REPCAT$_REPCATLOG" ADD CONSTRAINT "REPCAT$_REPCATLOG_PRIMARY" PRIMARY KEY ("ID", "SOURCE", "ROLE", "MASTER")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "REPCAT$_REPCATLOG" ADD CONSTRAINT "REPCAT$_REPCATLOG_STATUS" CHECK (status IN (0, 1, 2, 3, 4)) ENABLE;
  ALTER TABLE "REPCAT$_REPCATLOG" ADD CONSTRAINT "REPCAT$_REPCATLOG_TYPE" CHECK (type IN (-1, 0, 1, 2, 4, 5, 7, 8, 9, 11, 12, -3,
                                    13, 14, 32, 33)) ENABLE;
  ALTER TABLE "REPCAT$_REPCATLOG" ADD CONSTRAINT "REPCAT$_REPCATLOG_REQUEST" CHECK (request IN (-1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
                                       11, 12, 13, 14, 15, 16, 17,
                                       18, 19, 20, 21, 22, 23, 24, 25)) ENABLE;
/
--------------------------------------------------------
--  Constraints for Table LOGSTDBY$EDS_TABLES
--------------------------------------------------------

  ALTER TABLE "LOGSTDBY$EDS_TABLES" ADD CONSTRAINT "LOGSTDBY$EDS_TABLES_PKEY" PRIMARY KEY ("OWNER", "TABLE_NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  ENABLE;
/
--------------------------------------------------------
--  Constraints for Table LOGMNR_TAB$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_TAB$" ADD CONSTRAINT "LOGMNR_TAB$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#") DISABLE;
  ALTER TABLE "LOGMNR_TAB$" MODIFY ("OBJ#" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table LOGMNR_OPQTYPE$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_OPQTYPE$" ADD CONSTRAINT "LOGMNR_OPQTYPE$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "INTCOL#") DISABLE;
  ALTER TABLE "LOGMNR_OPQTYPE$" MODIFY ("OBJ#" NOT NULL ENABLE);
  ALTER TABLE "LOGMNR_OPQTYPE$" MODIFY ("INTCOL#" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table VISA_USERS
--------------------------------------------------------

  ALTER TABLE "VISA_USERS" ADD CONSTRAINT "VISA_USERS_PK" PRIMARY KEY ("USER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "VISA_USERS" MODIFY ("ENABLED" NOT NULL ENABLE);
  ALTER TABLE "VISA_USERS" MODIFY ("DATE_UPDATED" NOT NULL ENABLE);
  ALTER TABLE "VISA_USERS" MODIFY ("DATE_CREATED" NOT NULL ENABLE);
  ALTER TABLE "VISA_USERS" MODIFY ("DATE_ACTIVATED" NOT NULL ENABLE);
  ALTER TABLE "VISA_USERS" MODIFY ("POSITION_ID" NOT NULL ENABLE);
  ALTER TABLE "VISA_USERS" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "VISA_USERS" MODIFY ("USER_EMAIL" NOT NULL ENABLE);
  ALTER TABLE "VISA_USERS" MODIFY ("USER_ID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table LOGMNR_LOG$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_LOG$" ADD CONSTRAINT "LOGMNR_LOG$_PK" PRIMARY KEY ("SESSION#", "THREAD#", "SEQUENCE#", "FIRST_CHANGE#", "DB_ID", "RESETLOGS_CHANGE#", "RESET_TIMESTAMP")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  ENABLE;
/
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_ELIGIBLE
--------------------------------------------------------

  ALTER TABLE "MVIEW$_ADV_ELIGIBLE" ADD CONSTRAINT "MVIEW$_ADV_ELIGIBLE_PK" PRIMARY KEY ("SUMOBJN#", "RUNID#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "MVIEW$_ADV_ELIGIBLE" MODIFY ("FREQUENCY" NOT NULL ENABLE);
  ALTER TABLE "MVIEW$_ADV_ELIGIBLE" MODIFY ("FLAGS" NOT NULL ENABLE);
  ALTER TABLE "MVIEW$_ADV_ELIGIBLE" MODIFY ("BYTECOST" NOT NULL ENABLE);
  ALTER TABLE "MVIEW$_ADV_ELIGIBLE" MODIFY ("RUNID#" NOT NULL ENABLE);
  ALTER TABLE "MVIEW$_ADV_ELIGIBLE" MODIFY ("SUMOBJN#" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table REPCAT$_AUDIT_ATTRIBUTE
--------------------------------------------------------

  ALTER TABLE "REPCAT$_AUDIT_ATTRIBUTE" ADD CONSTRAINT "REPCAT$_AUDIT_ATTRIBUTE_PK" PRIMARY KEY ("ATTRIBUTE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "REPCAT$_AUDIT_ATTRIBUTE" ADD CONSTRAINT "REPCAT$_AUDIT_ATTRIBUTE_C1" CHECK ((data_type_id in (2, 4, 5, 6, 7) and
                  data_length is not null)
              or (data_type_id not in (2, 4, 5, 6, 7) and
                  data_length is null)
                 ) ENABLE;
  ALTER TABLE "REPCAT$_AUDIT_ATTRIBUTE" MODIFY ("SOURCE" CONSTRAINT "REPCAT$_AUDIT_ATTRIBUTE_NN2" NOT NULL ENABLE);
  ALTER TABLE "REPCAT$_AUDIT_ATTRIBUTE" MODIFY ("DATA_TYPE_ID" CONSTRAINT "REPCAT$_AUDIT_ATTRIBUTE_NN1" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table REPCAT$_USER_PARM_VALUES
--------------------------------------------------------

  ALTER TABLE "REPCAT$_USER_PARM_VALUES" ADD CONSTRAINT "REPCAT$_USER_PARM_VALUES_U1" UNIQUE ("TEMPLATE_PARAMETER_ID", "USER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "REPCAT$_USER_PARM_VALUES" ADD CONSTRAINT "REPCAT$_USER_PARM_VALUES_PK" PRIMARY KEY ("USER_PARAMETER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "REPCAT$_USER_PARM_VALUES" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "REPCAT$_USER_PARM_VALUES" MODIFY ("TEMPLATE_PARAMETER_ID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table LOGMNR_INDCOMPART$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_INDCOMPART$" ADD CONSTRAINT "LOGMNR_INDCOMPART$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#") DISABLE;
  ALTER TABLE "LOGMNR_INDCOMPART$" MODIFY ("PART#" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table VISA_PASSPORT_DETAILS
--------------------------------------------------------

  ALTER TABLE "VISA_PASSPORT_DETAILS" ADD CONSTRAINT "VISA_PASSPORT_DETAILS_PK" PRIMARY KEY ("PASSPORT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "VISA_PASSPORT_DETAILS" MODIFY ("ENABLED" NOT NULL ENABLE);
  ALTER TABLE "VISA_PASSPORT_DETAILS" MODIFY ("PASS_VALID_UNTIL" NOT NULL ENABLE);
  ALTER TABLE "VISA_PASSPORT_DETAILS" MODIFY ("PASS_ISSUING_AUTHORITY" NOT NULL ENABLE);
  ALTER TABLE "VISA_PASSPORT_DETAILS" MODIFY ("PASS_DATE_ISSUE" NOT NULL ENABLE);
  ALTER TABLE "VISA_PASSPORT_DETAILS" MODIFY ("PASS_NO" NOT NULL ENABLE);
  ALTER TABLE "VISA_PASSPORT_DETAILS" MODIFY ("ARRIVAL_DATE" NOT NULL ENABLE);
  ALTER TABLE "VISA_PASSPORT_DETAILS" MODIFY ("USER_EMAIL" NOT NULL ENABLE);
  ALTER TABLE "VISA_PASSPORT_DETAILS" MODIFY ("PASSPORT_ID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table VISA_VIMS
--------------------------------------------------------

  ALTER TABLE "VISA_VIMS" ADD CONSTRAINT "VISA_VIMS_PK" PRIMARY KEY ("APPLIC_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "VISA_VIMS" MODIFY ("APPLIC_ID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table LOGMNR_TABCOMPART$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_TABCOMPART$" ADD CONSTRAINT "LOGMNR_TABCOMPART$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#") DISABLE;
  ALTER TABLE "LOGMNR_TABCOMPART$" MODIFY ("PART#" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table SCHEDULER_PROGRAM_ARGS_TBL
--------------------------------------------------------

  ALTER TABLE "SCHEDULER_PROGRAM_ARGS_TBL" MODIFY ("ARGUMENT_POSITION" NOT NULL ENABLE);
  ALTER TABLE "SCHEDULER_PROGRAM_ARGS_TBL" MODIFY ("PROGRAM_NAME" NOT NULL ENABLE);
  ALTER TABLE "SCHEDULER_PROGRAM_ARGS_TBL" MODIFY ("OWNER" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table DEF$_LOB
--------------------------------------------------------

  ALTER TABLE "DEF$_LOB" ADD CONSTRAINT "DEF$_LOB_PRIMARY" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
/
--------------------------------------------------------
--  Constraints for Table REPCAT$_KEY_COLUMNS
--------------------------------------------------------

  ALTER TABLE "REPCAT$_KEY_COLUMNS" ADD CONSTRAINT "REPCAT$_KEY_COLUMNS_PRIMARY" PRIMARY KEY ("SNAME", "ONAME", "COL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
/
--------------------------------------------------------
--  Constraints for Table REPCAT$_CONFLICT
--------------------------------------------------------

  ALTER TABLE "REPCAT$_CONFLICT" ADD CONSTRAINT "REPCAT$_CONFLICT_PK" PRIMARY KEY ("SNAME", "ONAME", "CONFLICT_TYPE_ID", "REFERENCE_NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "REPCAT$_CONFLICT" ADD CONSTRAINT "REPCAT$_CONFLICT_C1" CHECK (conflict_type_id in (1, 2, 3)) ENABLE;
/
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_WORKLOAD
--------------------------------------------------------

  ALTER TABLE "MVIEW$_ADV_WORKLOAD" ADD CONSTRAINT "MVIEW$_ADV_WORKLOAD_PK" PRIMARY KEY ("QUERYID#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "MVIEW$_ADV_WORKLOAD" MODIFY ("SQL_TEXTLEN" NOT NULL ENABLE);
  ALTER TABLE "MVIEW$_ADV_WORKLOAD" MODIFY ("SQL_TEXT" NOT NULL ENABLE);
  ALTER TABLE "MVIEW$_ADV_WORKLOAD" MODIFY ("UNAME" NOT NULL ENABLE);
  ALTER TABLE "MVIEW$_ADV_WORKLOAD" MODIFY ("COLLECTTIME" NOT NULL ENABLE);
  ALTER TABLE "MVIEW$_ADV_WORKLOAD" MODIFY ("COLLECTIONID#" NOT NULL ENABLE);
  ALTER TABLE "MVIEW$_ADV_WORKLOAD" MODIFY ("QUERYID#" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table REPCAT$_AUDIT_COLUMN
--------------------------------------------------------

  ALTER TABLE "REPCAT$_AUDIT_COLUMN" ADD CONSTRAINT "REPCAT$_AUDIT_COLUMN_PK" PRIMARY KEY ("COLUMN_NAME", "ONAME", "SNAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "REPCAT$_AUDIT_COLUMN" MODIFY ("ATTRIBUTE" CONSTRAINT "REPCAT$_AUDIT_COLUMN_NN5" NOT NULL ENABLE);
  ALTER TABLE "REPCAT$_AUDIT_COLUMN" MODIFY ("BASE_REFERENCE_NAME" CONSTRAINT "REPCAT$_AUDIT_COLUMN_NN4" NOT NULL ENABLE);
  ALTER TABLE "REPCAT$_AUDIT_COLUMN" MODIFY ("BASE_CONFLICT_TYPE_ID" CONSTRAINT "REPCAT$_AUDIT_COLUMN_NN3" NOT NULL ENABLE);
  ALTER TABLE "REPCAT$_AUDIT_COLUMN" MODIFY ("BASE_ONAME" CONSTRAINT "REPCAT$_AUDIT_COLUMN_NN2" NOT NULL ENABLE);
  ALTER TABLE "REPCAT$_AUDIT_COLUMN" MODIFY ("BASE_SNAME" CONSTRAINT "REPCAT$_AUDIT_COLUMN_NN1" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table LOGMNRC_GTCS
--------------------------------------------------------

  ALTER TABLE "LOGMNRC_GTCS" ADD CONSTRAINT "LOGMNRC_GTCS_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "OBJV#", "INTCOL#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" )  ENABLE;
  ALTER TABLE "LOGMNRC_GTCS" MODIFY ("TYPE#" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRC_GTCS" MODIFY ("COLNAME" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRC_GTCS" MODIFY ("INTCOL#" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRC_GTCS" MODIFY ("SEGCOL#" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRC_GTCS" MODIFY ("OBJV#" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRC_GTCS" MODIFY ("OBJ#" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRC_GTCS" MODIFY ("LOGMNR_UID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table VISA_BRANCH
--------------------------------------------------------

  ALTER TABLE "VISA_BRANCH" MODIFY ("BRANCH_CODE" NOT NULL ENABLE);
  ALTER TABLE "VISA_BRANCH" MODIFY ("BRANCH_NAME" NOT NULL ENABLE);
  ALTER TABLE "VISA_BRANCH" MODIFY ("BRANCH_ID" NOT NULL ENABLE);
  ALTER TABLE "VISA_BRANCH" ADD PRIMARY KEY ("BRANCH_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "VISA_BRANCH" MODIFY ("ENABLED" NOT NULL ENABLE);
  ALTER TABLE "VISA_BRANCH" MODIFY ("DATE_UPDATED" NOT NULL ENABLE);
  ALTER TABLE "VISA_BRANCH" MODIFY ("DATE_CREATED" NOT NULL ENABLE);
  ALTER TABLE "VISA_BRANCH" MODIFY ("BRANCH_ADDRESS" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table LOGSTDBY$FLASHBACK_SCN
--------------------------------------------------------

  ALTER TABLE "LOGSTDBY$FLASHBACK_SCN" ADD PRIMARY KEY ("PRIMARY_SCN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  ENABLE;
  ALTER TABLE "LOGSTDBY$FLASHBACK_SCN" MODIFY ("PRIMARY_SCN" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table LOGMNRC_IND_GG
--------------------------------------------------------

  ALTER TABLE "LOGMNRC_IND_GG" ADD CONSTRAINT "LOGMNRC_IND_GG_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "COMMIT_SCN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" )  ENABLE;
  ALTER TABLE "LOGMNRC_IND_GG" MODIFY ("OWNERNAME" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRC_IND_GG" MODIFY ("OWNER#" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRC_IND_GG" MODIFY ("FLAGS" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRC_IND_GG" MODIFY ("BASEOBJV#" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRC_IND_GG" MODIFY ("BASEOBJ#" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRC_IND_GG" MODIFY ("COMMIT_SCN" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRC_IND_GG" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRC_IND_GG" MODIFY ("OBJ#" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRC_IND_GG" MODIFY ("LOGMNR_UID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table LOGMNR_INDPART$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_INDPART$" ADD CONSTRAINT "LOGMNR_INDPART$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "BO#") DISABLE;
  ALTER TABLE "LOGMNR_INDPART$" MODIFY ("TS#" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table LOGMNR_SPILL$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_SPILL$" ADD CONSTRAINT "LOGMNR_SPILL$_PK" PRIMARY KEY ("SESSION#", "XIDUSN", "XIDSLT", "XIDSQN", "CHUNK", "STARTIDX", "ENDIDX", "FLAG", "SEQUENCE#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  ENABLE;
/
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_LOG
--------------------------------------------------------

  ALTER TABLE "MVIEW$_ADV_LOG" ADD CONSTRAINT "MVIEW$_ADV_LOG_PK" PRIMARY KEY ("RUNID#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "MVIEW$_ADV_LOG" MODIFY ("STATUS" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table DEF$_DEFAULTDEST
--------------------------------------------------------

  ALTER TABLE "DEF$_DEFAULTDEST" ADD CONSTRAINT "DEF$_DEFAULTDEST_PRIMARY" PRIMARY KEY ("DBLINK")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
/
--------------------------------------------------------
--  Constraints for Table LOGMNR_ICOL$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_ICOL$" ADD CONSTRAINT "LOGMNR_ICOL$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "INTCOL#") DISABLE;
  ALTER TABLE "LOGMNR_ICOL$" MODIFY ("INTCOL#" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table REPCAT$_REPPROP
--------------------------------------------------------

  ALTER TABLE "REPCAT$_REPPROP" ADD CONSTRAINT "REPCAT$_REPPROP_PRIMARY" PRIMARY KEY ("SNAME", "ONAME", "TYPE", "DBLINK")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "REPCAT$_REPPROP" ADD CONSTRAINT "REPCAT$_REPPROP_HOW" CHECK (how IN (0, 1, 2, 3)) ENABLE;
/
--------------------------------------------------------
--  Constraints for Table LOGMNRP_CTAS_PART_MAP
--------------------------------------------------------

  ALTER TABLE "LOGMNRP_CTAS_PART_MAP" ADD CONSTRAINT "LOGMNRP_CTAS_PART_MAP_PK" PRIMARY KEY ("LOGMNR_UID", "BASEOBJV#", "KEYOBJ#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" )  ENABLE;
  ALTER TABLE "LOGMNRP_CTAS_PART_MAP" MODIFY ("PART#" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRP_CTAS_PART_MAP" MODIFY ("KEYOBJ#" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRP_CTAS_PART_MAP" MODIFY ("BASEOBJV#" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRP_CTAS_PART_MAP" MODIFY ("BASEOBJ#" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRP_CTAS_PART_MAP" MODIFY ("LOGMNR_UID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table LOGMNR_REFCON$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_REFCON$" ADD CONSTRAINT "LOGMNR_REFCON$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "INTCOL#") DISABLE;
  ALTER TABLE "LOGMNR_REFCON$" MODIFY ("OBJ#" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table VISA_BRANCH_ADMIN
--------------------------------------------------------

  ALTER TABLE "VISA_BRANCH_ADMIN" ADD CONSTRAINT "VISA_BRANCH_ADMIN_PK" PRIMARY KEY ("BRANCH_ADMIN_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "VISA_BRANCH_ADMIN" MODIFY ("BRANCH_ADMIN_ID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table DEF$_PROPAGATOR
--------------------------------------------------------

  ALTER TABLE "DEF$_PROPAGATOR" ADD CONSTRAINT "DEF$_PROPAGATOR_PRIMARY" PRIMARY KEY ("USERID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "DEF$_PROPAGATOR" MODIFY ("CREATED" NOT NULL ENABLE);
  ALTER TABLE "DEF$_PROPAGATOR" MODIFY ("USERNAME" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table REPCAT$_TEMPLATE_OBJECTS
--------------------------------------------------------

  ALTER TABLE "REPCAT$_TEMPLATE_OBJECTS" ADD CONSTRAINT "REPCAT$_TEMPLATE_OBJECTS_U1" UNIQUE ("OBJECT_NAME", "OBJECT_TYPE", "REFRESH_TEMPLATE_ID", "SCHEMA_NAME", "DDL_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "REPCAT$_TEMPLATE_OBJECTS" ADD CONSTRAINT "REPCAT$_TEMPLATE_OBJECTS_PK" PRIMARY KEY ("TEMPLATE_OBJECT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "REPCAT$_TEMPLATE_OBJECTS" ADD CONSTRAINT "REPCAT$_TEMPLATE_OBJECTS_VER" CHECK (object_version# >= 0 AND object_version# < 65536) ENABLE;
  ALTER TABLE "REPCAT$_TEMPLATE_OBJECTS" MODIFY ("TEMPLATE_REFGROUP_ID" NOT NULL ENABLE);
  ALTER TABLE "REPCAT$_TEMPLATE_OBJECTS" MODIFY ("DDL_NUM" NOT NULL ENABLE);
  ALTER TABLE "REPCAT$_TEMPLATE_OBJECTS" MODIFY ("OBJECT_TYPE" NOT NULL ENABLE);
  ALTER TABLE "REPCAT$_TEMPLATE_OBJECTS" MODIFY ("OBJECT_NAME" NOT NULL ENABLE);
  ALTER TABLE "REPCAT$_TEMPLATE_OBJECTS" MODIFY ("REFRESH_TEMPLATE_ID" NOT NULL ENABLE);
  ALTER TABLE "REPCAT$_TEMPLATE_OBJECTS" MODIFY ("TEMPLATE_OBJECT_ID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table LOGMNRC_CONCOL_GG
--------------------------------------------------------

  ALTER TABLE "LOGMNRC_CONCOL_GG" ADD CONSTRAINT "LOGMNRC_CONCOL_GG_PK" PRIMARY KEY ("LOGMNR_UID", "CON#", "COMMIT_SCN", "INTCOL#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" )  ENABLE;
  ALTER TABLE "LOGMNRC_CONCOL_GG" MODIFY ("INTCOL#" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRC_CONCOL_GG" MODIFY ("COMMIT_SCN" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRC_CONCOL_GG" MODIFY ("CON#" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRC_CONCOL_GG" MODIFY ("LOGMNR_UID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table LOGMNR_SESSION$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_SESSION$" ADD CONSTRAINT "LOGMNR_SESSION_UK1" UNIQUE ("SESSION_NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "LOGMNR_SESSION$" ADD CONSTRAINT "LOGMNR_SESSION_PK" PRIMARY KEY ("SESSION#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "LOGMNR_SESSION$" MODIFY ("SESSION_NAME" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table VISA_APL_ACCREDITATION
--------------------------------------------------------

  ALTER TABLE "VISA_APL_ACCREDITATION" ADD CONSTRAINT "VISA_APL_ACCREDITATION_PK" PRIMARY KEY ("ACC_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "VISA_APL_ACCREDITATION" MODIFY ("ENABLED" NOT NULL ENABLE);
  ALTER TABLE "VISA_APL_ACCREDITATION" MODIFY ("ACC_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "VISA_APL_ACCREDITATION" MODIFY ("APP_ID" NOT NULL ENABLE);
  ALTER TABLE "VISA_APL_ACCREDITATION" MODIFY ("ACC_ID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table LOGMNR_COLTYPE$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_COLTYPE$" ADD CONSTRAINT "LOGMNR_COLTYPE$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "INTCOL#") DISABLE;
  ALTER TABLE "LOGMNR_COLTYPE$" MODIFY ("OBJ#" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table DEF$_PUSHED_TRANSACTIONS
--------------------------------------------------------

  ALTER TABLE "DEF$_PUSHED_TRANSACTIONS" ADD CONSTRAINT "DEF$_PUSHED_TRAN_PRIMARY" PRIMARY KEY ("SOURCE_SITE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "DEF$_PUSHED_TRANSACTIONS" ADD CHECK (disabled IN ('T', 'F')) ENABLE;
/
--------------------------------------------------------
--  Constraints for Table LOGMNR_SESSION_ACTIONS$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_SESSION_ACTIONS$" ADD CONSTRAINT "LOGMNR_SESSION_ACTION$_PK" PRIMARY KEY ("LOGMNRSESSION#", "ACTIONNAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  ENABLE;
  ALTER TABLE "LOGMNR_SESSION_ACTIONS$" MODIFY ("ACTIONTYPE#" NOT NULL ENABLE);
  ALTER TABLE "LOGMNR_SESSION_ACTIONS$" MODIFY ("PROCESSROLE#" NOT NULL ENABLE);
  ALTER TABLE "LOGMNR_SESSION_ACTIONS$" MODIFY ("LOGMNRSESSION#" NOT NULL ENABLE);
  ALTER TABLE "LOGMNR_SESSION_ACTIONS$" MODIFY ("ACTIONNAME" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table LOGMNR_OBJ$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_OBJ$" ADD CONSTRAINT "LOGMNR_OBJ$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#") DISABLE;
  ALTER TABLE "LOGMNR_OBJ$" MODIFY ("OBJ#" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table LOGMNR_PROCESSED_LOG$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_PROCESSED_LOG$" ADD CONSTRAINT "LOGMNR_PROCESSED_LOG$_PK" PRIMARY KEY ("SESSION#", "THREAD#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  ENABLE;
/
--------------------------------------------------------
--  Constraints for Table LOGMNR_DICTIONARY$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_DICTIONARY$" ADD CONSTRAINT "LOGMNR_DICTIONARY$_PK" PRIMARY KEY ("LOGMNR_UID") DISABLE;
  ALTER TABLE "LOGMNR_DICTIONARY$" MODIFY ("DB_DICT_OBJECTCOUNT" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_PARAMETERS
--------------------------------------------------------

  ALTER TABLE "MVIEW$_ADV_PARAMETERS" ADD CONSTRAINT "MVIEW$_ADV_PARAMETERS_PK" PRIMARY KEY ("PARAMETER_NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "MVIEW$_ADV_PARAMETERS" MODIFY ("PARAMETER_TYPE" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table VISA_COUNTRY
--------------------------------------------------------

  ALTER TABLE "VISA_COUNTRY" ADD CONSTRAINT "VISA_COUNTRY_PK" PRIMARY KEY ("COUNTRY_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "VISA_COUNTRY" MODIFY ("ENABLED" NOT NULL ENABLE);
  ALTER TABLE "VISA_COUNTRY" MODIFY ("COUNTRY_CODE" NOT NULL ENABLE);
  ALTER TABLE "VISA_COUNTRY" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "VISA_COUNTRY" MODIFY ("COUNTRY_ID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table REPCAT$_PARAMETER_COLUMN
--------------------------------------------------------

  ALTER TABLE "REPCAT$_PARAMETER_COLUMN" ADD CONSTRAINT "REPCAT$_PARAMETER_COLUMN_PK" PRIMARY KEY ("SNAME", "ONAME", "CONFLICT_TYPE_ID", "REFERENCE_NAME", "SEQUENCE_NO", "PARAMETER_TABLE_NAME", "PARAMETER_SEQUENCE_NO", "COLUMN_POS")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
/
--------------------------------------------------------
--  Constraints for Table LOGMNR_CONTAINER$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_CONTAINER$" ADD CONSTRAINT "LOGMNR_CONTAINER$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#") DISABLE;
  ALTER TABLE "LOGMNR_CONTAINER$" MODIFY ("STATUS" NOT NULL ENABLE);
  ALTER TABLE "LOGMNR_CONTAINER$" MODIFY ("CREATE_SCNBAS" NOT NULL ENABLE);
  ALTER TABLE "LOGMNR_CONTAINER$" MODIFY ("CREATE_SCNWRP" NOT NULL ENABLE);
  ALTER TABLE "LOGMNR_CONTAINER$" MODIFY ("CON_UID" NOT NULL ENABLE);
  ALTER TABLE "LOGMNR_CONTAINER$" MODIFY ("DBID" NOT NULL ENABLE);
  ALTER TABLE "LOGMNR_CONTAINER$" MODIFY ("CON_ID#" NOT NULL ENABLE);
  ALTER TABLE "LOGMNR_CONTAINER$" MODIFY ("OBJ#" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table REDO_LOG
--------------------------------------------------------

  ALTER TABLE "REDO_LOG" MODIFY ("PRESETLOGS_SCN" NOT NULL ENABLE);
  ALTER TABLE "REDO_LOG" MODIFY ("RESETLOGS_SCN" NOT NULL ENABLE);
  ALTER TABLE "REDO_LOG" MODIFY ("SEQUENCE#" NOT NULL ENABLE);
  ALTER TABLE "REDO_LOG" MODIFY ("PRESETLOGS_TIME" NOT NULL ENABLE);
  ALTER TABLE "REDO_LOG" MODIFY ("RESETLOGS_TIME" NOT NULL ENABLE);
  ALTER TABLE "REDO_LOG" MODIFY ("THREAD#" NOT NULL ENABLE);
  ALTER TABLE "REDO_LOG" MODIFY ("DBID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table VISA_FEES
--------------------------------------------------------

  ALTER TABLE "VISA_FEES" ADD CONSTRAINT "VISA_FEES_PK" PRIMARY KEY ("FEE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "VISA_FEES" MODIFY ("ENABLED" NOT NULL ENABLE);
  ALTER TABLE "VISA_FEES" MODIFY ("FEE_COST" NOT NULL ENABLE);
  ALTER TABLE "VISA_FEES" MODIFY ("FEE_NAME" NOT NULL ENABLE);
  ALTER TABLE "VISA_FEES" MODIFY ("FEE_ID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table REPCAT$_EXTENSION
--------------------------------------------------------

  ALTER TABLE "REPCAT$_EXTENSION" ADD PRIMARY KEY ("EXTENSION_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "REPCAT$_EXTENSION" ADD CONSTRAINT "REPCAT$_EXTENSION_PUSH_TO_NEW" CHECK (push_to_new IN ('Y', 'N')) ENABLE;
  ALTER TABLE "REPCAT$_EXTENSION" ADD CONSTRAINT "REPCAT$_EXTENSION_PUSH_TO_MDEF" CHECK (push_to_mdef IN ('Y', 'N')) ENABLE;
  ALTER TABLE "REPCAT$_EXTENSION" ADD CONSTRAINT "REPCAT$_EXTENSION_STATUS" CHECK (extension_status IN (0, 1, 2, 3, 4)) ENABLE;
  ALTER TABLE "REPCAT$_EXTENSION" ADD CONSTRAINT "REPCAT$_EXTENSION_EXPORTREQ" CHECK (export_required IN ('Y', 'N')) ENABLE;
  ALTER TABLE "REPCAT$_EXTENSION" ADD CONSTRAINT "REPCAT$_EXTENSION_CODE" CHECK (extension_code IN (0)) ENABLE;
/
--------------------------------------------------------
--  Constraints for Table LOGMNR_PDB_INFO$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_PDB_INFO$" ADD CONSTRAINT "LOGMNR_PDB_INFO$_PK" PRIMARY KEY ("LOGMNR_DID", "LOGMNR_MDH", "PLUGIN_SCN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  ENABLE;
  ALTER TABLE "LOGMNR_PDB_INFO$" MODIFY ("PLUGIN_SCN" NOT NULL ENABLE);
  ALTER TABLE "LOGMNR_PDB_INFO$" MODIFY ("LOGMNR_MDH" NOT NULL ENABLE);
  ALTER TABLE "LOGMNR_PDB_INFO$" MODIFY ("LOGMNR_DID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table DEF$_DESTINATION
--------------------------------------------------------

  ALTER TABLE "DEF$_DESTINATION" ADD CONSTRAINT "DEF$_DESTINATION_PRIMARY" PRIMARY KEY ("DBLINK", "CATCHUP")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "DEF$_DESTINATION" MODIFY ("LAST_DELIVERED" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table LOGMNR_RESTART_CKPT_TXINFO$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_RESTART_CKPT_TXINFO$" ADD CONSTRAINT "LOGMNR_RESTART_CKPT_TXINFO$_PK" PRIMARY KEY ("SESSION#", "XIDUSN", "XIDSLT", "XIDSQN", "SESSION_NUM", "SERIAL_NUM", "EFFECTIVE_SCN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  ENABLE;
/
--------------------------------------------------------
--  Constraints for Table LOGMNRC_GSBA
--------------------------------------------------------

  ALTER TABLE "LOGMNRC_GSBA" ADD CONSTRAINT "LOGMNRC_GSBA_PK" PRIMARY KEY ("LOGMNR_UID", "AS_OF_SCN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" )  ENABLE;
  ALTER TABLE "LOGMNRC_GSBA" MODIFY ("AS_OF_SCN" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRC_GSBA" MODIFY ("LOGMNR_UID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table LOGMNR_COL$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_COL$" ADD CONSTRAINT "LOGMNR_COL$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "INTCOL#") DISABLE;
  ALTER TABLE "LOGMNR_COL$" MODIFY ("OBJ#" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table VISA_BRANCH_SCHEDULE
--------------------------------------------------------

  ALTER TABLE "VISA_BRANCH_SCHEDULE" ADD PRIMARY KEY ("SCHED_LIMIT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "VISA_BRANCH_SCHEDULE" MODIFY ("ENABLED" NOT NULL ENABLE);
  ALTER TABLE "VISA_BRANCH_SCHEDULE" MODIFY ("DATE_UPDATED" NOT NULL ENABLE);
  ALTER TABLE "VISA_BRANCH_SCHEDULE" MODIFY ("DATE_CREATED" NOT NULL ENABLE);
  ALTER TABLE "VISA_BRANCH_SCHEDULE" MODIFY ("SCHED_LIMIT_BRANCH_ID" NOT NULL ENABLE);
  ALTER TABLE "VISA_BRANCH_SCHEDULE" MODIFY ("SCHED_LIMIT_ID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table LOGMNRGGC_GTCS
--------------------------------------------------------

  ALTER TABLE "LOGMNRGGC_GTCS" ADD CONSTRAINT "LOGMNRGGC_GTCS_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "OBJV#", "INTCOL#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "LOGMNRGGC_GTCS" MODIFY ("TYPE#" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRGGC_GTCS" MODIFY ("COLNAME" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRGGC_GTCS" MODIFY ("INTCOL#" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRGGC_GTCS" MODIFY ("SEGCOL#" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRGGC_GTCS" MODIFY ("OBJV#" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRGGC_GTCS" MODIFY ("OBJ#" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRGGC_GTCS" MODIFY ("LOGMNR_UID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table LOGSTDBY$SKIP_SUPPORT
--------------------------------------------------------

  ALTER TABLE "LOGSTDBY$SKIP_SUPPORT" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "LOGSTDBY$SKIP_SUPPORT" MODIFY ("ACTION" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table VISA_APPLICANT_CHILDREN
--------------------------------------------------------

  ALTER TABLE "VISA_APPLICANT_CHILDREN" ADD CONSTRAINT "VISA_APPLICANT_CHILDREN_PK" PRIMARY KEY ("CHILD_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "VISA_APPLICANT_CHILDREN" MODIFY ("ENABLED" NOT NULL ENABLE);
  ALTER TABLE "VISA_APPLICANT_CHILDREN" MODIFY ("CHILD_BDAY" NOT NULL ENABLE);
  ALTER TABLE "VISA_APPLICANT_CHILDREN" MODIFY ("CHILD_LASTNAME" NOT NULL ENABLE);
  ALTER TABLE "VISA_APPLICANT_CHILDREN" MODIFY ("CHILD_FIRSTNAME" NOT NULL ENABLE);
  ALTER TABLE "VISA_APPLICANT_CHILDREN" MODIFY ("APP_ID" NOT NULL ENABLE);
  ALTER TABLE "VISA_APPLICANT_CHILDREN" MODIFY ("CHILD_ID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table LOGMNR_CDEF$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_CDEF$" ADD CONSTRAINT "LOGMNR_CDEF$_PK" PRIMARY KEY ("LOGMNR_UID", "CON#") DISABLE;
  ALTER TABLE "LOGMNR_CDEF$" MODIFY ("OBJ#" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table LOGMNR_TABSUBPART$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_TABSUBPART$" ADD CONSTRAINT "LOGMNR_TABSUBPART$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "POBJ#") DISABLE;
  ALTER TABLE "LOGMNR_TABSUBPART$" MODIFY ("TS#" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table LOGMNR_USER$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_USER$" ADD CONSTRAINT "LOGMNR_USER$_PK" PRIMARY KEY ("LOGMNR_UID", "USER#") DISABLE;
  ALTER TABLE "LOGMNR_USER$" MODIFY ("NAME" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table LOGMNR_PROPS$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_PROPS$" ADD CONSTRAINT "LOGMNR_PROPS$_PK" PRIMARY KEY ("LOGMNR_UID", "NAME") DISABLE;
  ALTER TABLE "LOGMNR_PROPS$" MODIFY ("NAME" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table LOGMNR_LOBFRAG$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_LOBFRAG$" ADD CONSTRAINT "LOGMNR_LOBFRAG$_PK" PRIMARY KEY ("LOGMNR_UID", "FRAGOBJ#") DISABLE;
  ALTER TABLE "LOGMNR_LOBFRAG$" MODIFY ("FRAG#" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table REDO_DB
--------------------------------------------------------

  ALTER TABLE "REDO_DB" MODIFY ("PRESETLOGS_SCN" NOT NULL ENABLE);
  ALTER TABLE "REDO_DB" MODIFY ("RESETLOGS_SCN" NOT NULL ENABLE);
  ALTER TABLE "REDO_DB" MODIFY ("PRESETLOGS_TIME" NOT NULL ENABLE);
  ALTER TABLE "REDO_DB" MODIFY ("RESETLOGS_TIME" NOT NULL ENABLE);
  ALTER TABLE "REDO_DB" MODIFY ("THREAD#" NOT NULL ENABLE);
  ALTER TABLE "REDO_DB" MODIFY ("DBID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table REPCAT$_OBJECT_TYPES
--------------------------------------------------------

  ALTER TABLE "REPCAT$_OBJECT_TYPES" ADD CONSTRAINT "REPCAT$_OBJECT_TYPE_PK" PRIMARY KEY ("OBJECT_TYPE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
/
--------------------------------------------------------
--  Constraints for Table VISA_APPOINTMENT_TIMES
--------------------------------------------------------

  ALTER TABLE "VISA_APPOINTMENT_TIMES" ADD CONSTRAINT "IMM_APPOINTMENT_TIMES_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "VISA_APPOINTMENT_TIMES" MODIFY ("TIMESCHED_DESCRIPTION" NOT NULL ENABLE);
  ALTER TABLE "VISA_APPOINTMENT_TIMES" MODIFY ("ID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table LOGMNR_AGE_SPILL$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_AGE_SPILL$" ADD CONSTRAINT "LOGMNR_AGE_SPILL$_PK" PRIMARY KEY ("SESSION#", "XIDUSN", "XIDSLT", "XIDSQN", "CHUNK", "SEQUENCE#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  ENABLE;
/
--------------------------------------------------------
--  Constraints for Table LOGMNR_PARAMETER$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_PARAMETER$" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "LOGMNR_PARAMETER$" MODIFY ("SESSION#" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_INFO
--------------------------------------------------------

  ALTER TABLE "MVIEW$_ADV_INFO" ADD CONSTRAINT "MVIEW$_ADV_INFO_PK" PRIMARY KEY ("RUNID#", "SEQ#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "MVIEW$_ADV_INFO" MODIFY ("INFOLEN" NOT NULL ENABLE);
  ALTER TABLE "MVIEW$_ADV_INFO" MODIFY ("TYPE" NOT NULL ENABLE);
  ALTER TABLE "MVIEW$_ADV_INFO" MODIFY ("SEQ#" NOT NULL ENABLE);
  ALTER TABLE "MVIEW$_ADV_INFO" MODIFY ("RUNID#" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_CLIQUE
--------------------------------------------------------

  ALTER TABLE "MVIEW$_ADV_CLIQUE" ADD CONSTRAINT "MVIEW$_ADV_CLIQUE_PK" PRIMARY KEY ("CLIQUEID#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "MVIEW$_ADV_CLIQUE" MODIFY ("NUMROWS" NOT NULL ENABLE);
  ALTER TABLE "MVIEW$_ADV_CLIQUE" MODIFY ("ROWSIZE" NOT NULL ENABLE);
  ALTER TABLE "MVIEW$_ADV_CLIQUE" MODIFY ("BYTECOST" NOT NULL ENABLE);
  ALTER TABLE "MVIEW$_ADV_CLIQUE" MODIFY ("FREQUENCY" NOT NULL ENABLE);
  ALTER TABLE "MVIEW$_ADV_CLIQUE" MODIFY ("HASHVALUE" NOT NULL ENABLE);
  ALTER TABLE "MVIEW$_ADV_CLIQUE" MODIFY ("CLIQUEDES" NOT NULL ENABLE);
  ALTER TABLE "MVIEW$_ADV_CLIQUE" MODIFY ("CLIQUEDESLEN" NOT NULL ENABLE);
  ALTER TABLE "MVIEW$_ADV_CLIQUE" MODIFY ("RUNID#" NOT NULL ENABLE);
  ALTER TABLE "MVIEW$_ADV_CLIQUE" MODIFY ("CLIQUEID#" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table REPCAT$_RESOLUTION
--------------------------------------------------------

  ALTER TABLE "REPCAT$_RESOLUTION" ADD CONSTRAINT "REPCAT$_RESOLUTION_PK" PRIMARY KEY ("SNAME", "ONAME", "CONFLICT_TYPE_ID", "REFERENCE_NAME", "SEQUENCE_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "REPCAT$_RESOLUTION" MODIFY ("FUNCTION_NAME" CONSTRAINT "REPCAT$_RESOLUTION_NN2" NOT NULL ENABLE);
  ALTER TABLE "REPCAT$_RESOLUTION" MODIFY ("METHOD_NAME" CONSTRAINT "REPCAT$_RESOLUTION_NN1" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_GC
--------------------------------------------------------

  ALTER TABLE "MVIEW$_ADV_GC" ADD CONSTRAINT "MVIEW$_ADV_GC_PK" PRIMARY KEY ("GCID#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "MVIEW$_ADV_GC" MODIFY ("HASHVALUE" NOT NULL ENABLE);
  ALTER TABLE "MVIEW$_ADV_GC" MODIFY ("GCDES" NOT NULL ENABLE);
  ALTER TABLE "MVIEW$_ADV_GC" MODIFY ("GCDESLEN" NOT NULL ENABLE);
  ALTER TABLE "MVIEW$_ADV_GC" MODIFY ("FJGID#" NOT NULL ENABLE);
  ALTER TABLE "MVIEW$_ADV_GC" MODIFY ("GCID#" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table REPCAT$_OBJECT_PARMS
--------------------------------------------------------

  ALTER TABLE "REPCAT$_OBJECT_PARMS" ADD CONSTRAINT "REPCAT$_OBJECT_PARMS_PK" PRIMARY KEY ("TEMPLATE_PARAMETER_ID", "TEMPLATE_OBJECT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "REPCAT$_OBJECT_PARMS" MODIFY ("TEMPLATE_OBJECT_ID" NOT NULL ENABLE);
  ALTER TABLE "REPCAT$_OBJECT_PARMS" MODIFY ("TEMPLATE_PARAMETER_ID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table LOGMNR_ATTRIBUTE$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_ATTRIBUTE$" ADD CONSTRAINT "LOGMNR_ATTRIBUTE$_PK" PRIMARY KEY ("LOGMNR_UID", "TOID", "VERSION#", "ATTRIBUTE#") DISABLE;
  ALTER TABLE "LOGMNR_ATTRIBUTE$" MODIFY ("TOID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table REPCAT$_TEMPLATE_PARMS
--------------------------------------------------------

  ALTER TABLE "REPCAT$_TEMPLATE_PARMS" ADD CONSTRAINT "REPCAT$_TEMPLATE_PARMS_U1" UNIQUE ("REFRESH_TEMPLATE_ID", "PARAMETER_NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "REPCAT$_TEMPLATE_PARMS" ADD CONSTRAINT "REPCAT$_TEMPLATE_PARMS_PK" PRIMARY KEY ("TEMPLATE_PARAMETER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "REPCAT$_TEMPLATE_PARMS" ADD CONSTRAINT "REPCAT$_TEMPLATE_PARMS_C1" CHECK (user_override in ('Y','N')) ENABLE;
  ALTER TABLE "REPCAT$_TEMPLATE_PARMS" MODIFY ("PARAMETER_NAME" NOT NULL ENABLE);
  ALTER TABLE "REPCAT$_TEMPLATE_PARMS" MODIFY ("REFRESH_TEMPLATE_ID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table LOGSTDBY$APPLY_MILESTONE
--------------------------------------------------------

  ALTER TABLE "LOGSTDBY$APPLY_MILESTONE" MODIFY ("FETCHLWM_SCN" NOT NULL ENABLE);
  ALTER TABLE "LOGSTDBY$APPLY_MILESTONE" MODIFY ("PROCESSED_SCN" NOT NULL ENABLE);
  ALTER TABLE "LOGSTDBY$APPLY_MILESTONE" MODIFY ("EPOCH" NOT NULL ENABLE);
  ALTER TABLE "LOGSTDBY$APPLY_MILESTONE" MODIFY ("SYNCH_SCN" NOT NULL ENABLE);
  ALTER TABLE "LOGSTDBY$APPLY_MILESTONE" MODIFY ("COMMIT_SCN" NOT NULL ENABLE);
  ALTER TABLE "LOGSTDBY$APPLY_MILESTONE" MODIFY ("SESSION_ID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table REPCAT$_RESOL_STATS_CONTROL
--------------------------------------------------------

  ALTER TABLE "REPCAT$_RESOL_STATS_CONTROL" ADD CONSTRAINT "REPCAT$_RESOL_STATS_CTRL_PK" PRIMARY KEY ("SNAME", "ONAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "REPCAT$_RESOL_STATS_CONTROL" MODIFY ("STATUS_UPDATE_DATE" CONSTRAINT "REPCAT$_RESOL_STATS_CTRL_NN3" NOT NULL ENABLE);
  ALTER TABLE "REPCAT$_RESOL_STATS_CONTROL" MODIFY ("STATUS" CONSTRAINT "REPCAT$_RESOL_STATS_CTRL_NN2" NOT NULL ENABLE);
  ALTER TABLE "REPCAT$_RESOL_STATS_CONTROL" MODIFY ("CREATED" CONSTRAINT "REPCAT$_RESOL_STATS_CTRL_NN1" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table LOGMNR_RESTART_CKPT$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_RESTART_CKPT$" ADD CONSTRAINT "LOGMNR_RESTART_CKPT$_PK" PRIMARY KEY ("SESSION#", "CKPT_SCN", "XIDUSN", "XIDSLT", "XIDSQN", "SESSION_NUM", "SERIAL_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  ENABLE;
/
--------------------------------------------------------
--  Constraints for Table LOGMNRC_INDCOL_GG
--------------------------------------------------------

  ALTER TABLE "LOGMNRC_INDCOL_GG" ADD CONSTRAINT "LOGMNRC_INDCOL_GG_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "COMMIT_SCN", "INTCOL#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" )  ENABLE;
  ALTER TABLE "LOGMNRC_INDCOL_GG" MODIFY ("POS#" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRC_INDCOL_GG" MODIFY ("INTCOL#" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRC_INDCOL_GG" MODIFY ("COMMIT_SCN" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRC_INDCOL_GG" MODIFY ("OBJ#" NOT NULL ENABLE);
  ALTER TABLE "LOGMNRC_INDCOL_GG" MODIFY ("LOGMNR_UID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table REPCAT$_PRIORITY_GROUP
--------------------------------------------------------

  ALTER TABLE "REPCAT$_PRIORITY_GROUP" ADD CONSTRAINT "REPCAT$_PRIORITY_GROUP_U1" UNIQUE ("SNAME", "PRIORITY_GROUP", "DATA_TYPE_ID", "FIXED_DATA_LENGTH")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "REPCAT$_PRIORITY_GROUP" ADD CONSTRAINT "REPCAT$_PRIORITY_GROUP_PK" PRIMARY KEY ("PRIORITY_GROUP", "SNAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "REPCAT$_PRIORITY_GROUP" ADD CONSTRAINT "REPCAT$_PRIORITY_GROUP_C2" CHECK ((data_type_id in (4, 7) and
                  fixed_data_length is not null)
              or (data_type_id in (1, 2, 3, 5, 6) and
                  fixed_data_length is null)) ENABLE;
  ALTER TABLE "REPCAT$_PRIORITY_GROUP" ADD CONSTRAINT "REPCAT$_PRIORITY_GROUP_C1" CHECK (data_type_id in (1, 2, 3, 4, 5, 6, 7)) ENABLE;
  ALTER TABLE "REPCAT$_PRIORITY_GROUP" MODIFY ("DATA_TYPE_ID" CONSTRAINT "REPCAT$_PRIORITY_GROUP_NN1" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Ref Constraints for Table DEF$_CALLDEST
--------------------------------------------------------

  ALTER TABLE "DEF$_CALLDEST" ADD CONSTRAINT "DEF$_CALL_DESTINATION" FOREIGN KEY ("DBLINK", "CATCHUP")
	  REFERENCES "DEF$_DESTINATION" ("DBLINK", "CATCHUP") ENABLE;
/
--------------------------------------------------------
--  Ref Constraints for Table MVIEW$_ADV_AJG
--------------------------------------------------------

  ALTER TABLE "MVIEW$_ADV_AJG" ADD CONSTRAINT "MVIEW$_ADV_AJG_FK" FOREIGN KEY ("RUNID#")
	  REFERENCES "MVIEW$_ADV_LOG" ("RUNID#") ENABLE;
/
--------------------------------------------------------
--  Ref Constraints for Table MVIEW$_ADV_BASETABLE
--------------------------------------------------------

  ALTER TABLE "MVIEW$_ADV_BASETABLE" ADD CONSTRAINT "MVIEW$_ADV_BASETABLE_FK" FOREIGN KEY ("QUERYID#")
	  REFERENCES "MVIEW$_ADV_WORKLOAD" ("QUERYID#") ENABLE;
/
--------------------------------------------------------
--  Ref Constraints for Table MVIEW$_ADV_CLIQUE
--------------------------------------------------------

  ALTER TABLE "MVIEW$_ADV_CLIQUE" ADD CONSTRAINT "MVIEW$_ADV_CLIQUE_FK" FOREIGN KEY ("RUNID#")
	  REFERENCES "MVIEW$_ADV_LOG" ("RUNID#") ENABLE;
/
--------------------------------------------------------
--  Ref Constraints for Table MVIEW$_ADV_ELIGIBLE
--------------------------------------------------------

  ALTER TABLE "MVIEW$_ADV_ELIGIBLE" ADD CONSTRAINT "MVIEW$_ADV_ELIGIBLE_FK" FOREIGN KEY ("RUNID#")
	  REFERENCES "MVIEW$_ADV_LOG" ("RUNID#") ENABLE;
/
--------------------------------------------------------
--  Ref Constraints for Table MVIEW$_ADV_EXCEPTIONS
--------------------------------------------------------

  ALTER TABLE "MVIEW$_ADV_EXCEPTIONS" ADD CONSTRAINT "MVIEW$_ADV_EXCEPTION_FK" FOREIGN KEY ("RUNID#")
	  REFERENCES "MVIEW$_ADV_LOG" ("RUNID#") ENABLE;
/
--------------------------------------------------------
--  Ref Constraints for Table MVIEW$_ADV_FILTERINSTANCE
--------------------------------------------------------

  ALTER TABLE "MVIEW$_ADV_FILTERINSTANCE" ADD CONSTRAINT "MVIEW$_ADV_FILTERINSTANCE_FK" FOREIGN KEY ("RUNID#")
	  REFERENCES "MVIEW$_ADV_LOG" ("RUNID#") ENABLE;
/
--------------------------------------------------------
--  Ref Constraints for Table MVIEW$_ADV_FJG
--------------------------------------------------------

  ALTER TABLE "MVIEW$_ADV_FJG" ADD CONSTRAINT "MVIEW$_ADV_FJG_FK" FOREIGN KEY ("AJGID#")
	  REFERENCES "MVIEW$_ADV_AJG" ("AJGID#") ENABLE;
/
--------------------------------------------------------
--  Ref Constraints for Table MVIEW$_ADV_GC
--------------------------------------------------------

  ALTER TABLE "MVIEW$_ADV_GC" ADD CONSTRAINT "MVIEW$_ADV_GC_FK" FOREIGN KEY ("FJGID#")
	  REFERENCES "MVIEW$_ADV_FJG" ("FJGID#") ENABLE;
/
--------------------------------------------------------
--  Ref Constraints for Table MVIEW$_ADV_INFO
--------------------------------------------------------

  ALTER TABLE "MVIEW$_ADV_INFO" ADD CONSTRAINT "MVIEW$_ADV_INFO_FK" FOREIGN KEY ("RUNID#")
	  REFERENCES "MVIEW$_ADV_LOG" ("RUNID#") ENABLE;
/
--------------------------------------------------------
--  Ref Constraints for Table MVIEW$_ADV_JOURNAL
--------------------------------------------------------

  ALTER TABLE "MVIEW$_ADV_JOURNAL" ADD CONSTRAINT "MVIEW$_ADV_JOURNAL_FK" FOREIGN KEY ("RUNID#")
	  REFERENCES "MVIEW$_ADV_LOG" ("RUNID#") ENABLE;
/
--------------------------------------------------------
--  Ref Constraints for Table MVIEW$_ADV_LEVEL
--------------------------------------------------------

  ALTER TABLE "MVIEW$_ADV_LEVEL" ADD CONSTRAINT "MVIEW$_ADV_LEVEL_FK" FOREIGN KEY ("RUNID#")
	  REFERENCES "MVIEW$_ADV_LOG" ("RUNID#") ENABLE;
/
--------------------------------------------------------
--  Ref Constraints for Table MVIEW$_ADV_OUTPUT
--------------------------------------------------------

  ALTER TABLE "MVIEW$_ADV_OUTPUT" ADD CONSTRAINT "MVIEW$_ADV_OUTPUT_FK" FOREIGN KEY ("RUNID#")
	  REFERENCES "MVIEW$_ADV_LOG" ("RUNID#") ENABLE;
/
--------------------------------------------------------
--  Ref Constraints for Table MVIEW$_ADV_ROLLUP
--------------------------------------------------------

  ALTER TABLE "MVIEW$_ADV_ROLLUP" ADD CONSTRAINT "MVIEW$_ADV_ROLLUP_CFK" FOREIGN KEY ("RUNID#", "CLEVELID#")
	  REFERENCES "MVIEW$_ADV_LEVEL" ("RUNID#", "LEVELID#") ENABLE;
  ALTER TABLE "MVIEW$_ADV_ROLLUP" ADD CONSTRAINT "MVIEW$_ADV_ROLLUP_FK" FOREIGN KEY ("RUNID#")
	  REFERENCES "MVIEW$_ADV_LOG" ("RUNID#") ENABLE;
  ALTER TABLE "MVIEW$_ADV_ROLLUP" ADD CONSTRAINT "MVIEW$_ADV_ROLLUP_PFK" FOREIGN KEY ("RUNID#", "PLEVELID#")
	  REFERENCES "MVIEW$_ADV_LEVEL" ("RUNID#", "LEVELID#") ENABLE;
/
--------------------------------------------------------
--  Ref Constraints for Table REPCAT$_AUDIT_COLUMN
--------------------------------------------------------

  ALTER TABLE "REPCAT$_AUDIT_COLUMN" ADD CONSTRAINT "REPCAT$_AUDIT_COLUMN_F1" FOREIGN KEY ("ATTRIBUTE")
	  REFERENCES "REPCAT$_AUDIT_ATTRIBUTE" ("ATTRIBUTE") ENABLE;
  ALTER TABLE "REPCAT$_AUDIT_COLUMN" ADD CONSTRAINT "REPCAT$_AUDIT_COLUMN_F2" FOREIGN KEY ("BASE_SNAME", "BASE_ONAME", "BASE_CONFLICT_TYPE_ID", "BASE_REFERENCE_NAME")
	  REFERENCES "REPCAT$_CONFLICT" ("SNAME", "ONAME", "CONFLICT_TYPE_ID", "REFERENCE_NAME") ENABLE;
/
--------------------------------------------------------
--  Ref Constraints for Table REPCAT$_DDL
--------------------------------------------------------

  ALTER TABLE "REPCAT$_DDL" ADD CONSTRAINT "REPCAT$_DDL_PRNT" FOREIGN KEY ("LOG_ID", "SOURCE", "ROLE", "MASTER")
	  REFERENCES "REPCAT$_REPCATLOG" ("ID", "SOURCE", "ROLE", "MASTER") ON DELETE CASCADE ENABLE;
/
--------------------------------------------------------
--  Ref Constraints for Table REPCAT$_FLAVORS
--------------------------------------------------------

  ALTER TABLE "REPCAT$_FLAVORS" ADD CONSTRAINT "REPCAT$_FLAVORS_FK1" FOREIGN KEY ("GNAME", "GOWNER")
	  REFERENCES "REPCAT$_REPCAT" ("SNAME", "GOWNER") ON DELETE CASCADE ENABLE;
/
--------------------------------------------------------
--  Ref Constraints for Table REPCAT$_FLAVOR_OBJECTS
--------------------------------------------------------

  ALTER TABLE "REPCAT$_FLAVOR_OBJECTS" ADD CONSTRAINT "REPCAT$_FLAVOR_OBJECTS_FK1" FOREIGN KEY ("GNAME", "GOWNER")
	  REFERENCES "REPCAT$_REPCAT" ("SNAME", "GOWNER") ON DELETE CASCADE ENABLE;
  ALTER TABLE "REPCAT$_FLAVOR_OBJECTS" ADD CONSTRAINT "REPCAT$_FLAVOR_OBJECTS_FK2" FOREIGN KEY ("GNAME", "FLAVOR_ID", "GOWNER")
	  REFERENCES "REPCAT$_FLAVORS" ("GNAME", "FLAVOR_ID", "GOWNER") ON DELETE CASCADE ENABLE;
/
--------------------------------------------------------
--  Ref Constraints for Table REPCAT$_GENERATED
--------------------------------------------------------

  ALTER TABLE "REPCAT$_GENERATED" ADD CONSTRAINT "REPCAT$_REPGEN_PRNT" FOREIGN KEY ("SNAME", "ONAME", "TYPE")
	  REFERENCES "REPCAT$_REPOBJECT" ("SNAME", "ONAME", "TYPE") ON DELETE CASCADE ENABLE;
  ALTER TABLE "REPCAT$_GENERATED" ADD CONSTRAINT "REPCAT$_REPGEN_PRNT2" FOREIGN KEY ("BASE_SNAME", "BASE_ONAME", "BASE_TYPE")
	  REFERENCES "REPCAT$_REPOBJECT" ("SNAME", "ONAME", "TYPE") ON DELETE CASCADE ENABLE;
/
--------------------------------------------------------
--  Ref Constraints for Table REPCAT$_GROUPED_COLUMN
--------------------------------------------------------

  ALTER TABLE "REPCAT$_GROUPED_COLUMN" ADD CONSTRAINT "REPCAT$_GROUPED_COLUMN_F1" FOREIGN KEY ("SNAME", "ONAME", "GROUP_NAME")
	  REFERENCES "REPCAT$_COLUMN_GROUP" ("SNAME", "ONAME", "GROUP_NAME") ENABLE;
/
--------------------------------------------------------
--  Ref Constraints for Table REPCAT$_INSTANTIATION_DDL
--------------------------------------------------------

  ALTER TABLE "REPCAT$_INSTANTIATION_DDL" ADD CONSTRAINT "REPCAT$_INSTANTIATION_DDL_FK1" FOREIGN KEY ("REFRESH_TEMPLATE_ID")
	  REFERENCES "REPCAT$_REFRESH_TEMPLATES" ("REFRESH_TEMPLATE_ID") ON DELETE CASCADE ENABLE;
/
--------------------------------------------------------
--  Ref Constraints for Table REPCAT$_KEY_COLUMNS
--------------------------------------------------------

  ALTER TABLE "REPCAT$_KEY_COLUMNS" ADD CONSTRAINT "REPCAT$_KEY_COLUMNS_PRNT" FOREIGN KEY ("SNAME", "ONAME", "TYPE")
	  REFERENCES "REPCAT$_REPOBJECT" ("SNAME", "ONAME", "TYPE") ON DELETE CASCADE ENABLE;
/
--------------------------------------------------------
--  Ref Constraints for Table REPCAT$_OBJECT_PARMS
--------------------------------------------------------

  ALTER TABLE "REPCAT$_OBJECT_PARMS" ADD CONSTRAINT "REPCAT$_OBJECT_PARMS_FK1" FOREIGN KEY ("TEMPLATE_PARAMETER_ID")
	  REFERENCES "REPCAT$_TEMPLATE_PARMS" ("TEMPLATE_PARAMETER_ID") ENABLE;
  ALTER TABLE "REPCAT$_OBJECT_PARMS" ADD CONSTRAINT "REPCAT$_OBJECT_PARMS_FK2" FOREIGN KEY ("TEMPLATE_OBJECT_ID")
	  REFERENCES "REPCAT$_TEMPLATE_OBJECTS" ("TEMPLATE_OBJECT_ID") ON DELETE CASCADE ENABLE;
/
--------------------------------------------------------
--  Ref Constraints for Table REPCAT$_PARAMETER_COLUMN
--------------------------------------------------------

  ALTER TABLE "REPCAT$_PARAMETER_COLUMN" ADD CONSTRAINT "REPCAT$_PARAMETER_COLUMN_F1" FOREIGN KEY ("SNAME", "ONAME", "CONFLICT_TYPE_ID", "REFERENCE_NAME", "SEQUENCE_NO")
	  REFERENCES "REPCAT$_RESOLUTION" ("SNAME", "ONAME", "CONFLICT_TYPE_ID", "REFERENCE_NAME", "SEQUENCE_NO") ENABLE;
/
--------------------------------------------------------
--  Ref Constraints for Table REPCAT$_PRIORITY
--------------------------------------------------------

  ALTER TABLE "REPCAT$_PRIORITY" ADD CONSTRAINT "REPCAT$_PRIORITY_F1" FOREIGN KEY ("PRIORITY_GROUP", "SNAME")
	  REFERENCES "REPCAT$_PRIORITY_GROUP" ("PRIORITY_GROUP", "SNAME") ENABLE;
/
--------------------------------------------------------
--  Ref Constraints for Table REPCAT$_REFRESH_TEMPLATES
--------------------------------------------------------

  ALTER TABLE "REPCAT$_REFRESH_TEMPLATES" ADD CONSTRAINT "REPCAT$_REFRESH_TEMPLATES_FK1" FOREIGN KEY ("TEMPLATE_TYPE_ID")
	  REFERENCES "REPCAT$_TEMPLATE_TYPES" ("TEMPLATE_TYPE_ID") ENABLE;
  ALTER TABLE "REPCAT$_REFRESH_TEMPLATES" ADD CONSTRAINT "REPCAT$_REFRESH_TEMPLATES_FK2" FOREIGN KEY ("TEMPLATE_STATUS_ID")
	  REFERENCES "REPCAT$_TEMPLATE_STATUS" ("TEMPLATE_STATUS_ID") ENABLE;
/
--------------------------------------------------------
--  Ref Constraints for Table REPCAT$_REPCOLUMN
--------------------------------------------------------

  ALTER TABLE "REPCAT$_REPCOLUMN" ADD CONSTRAINT "REPCAT$_REPCOLUMN_FK" FOREIGN KEY ("SNAME", "ONAME", "TYPE")
	  REFERENCES "REPCAT$_REPOBJECT" ("SNAME", "ONAME", "TYPE") ON DELETE CASCADE ENABLE;
/
--------------------------------------------------------
--  Ref Constraints for Table REPCAT$_REPGROUP_PRIVS
--------------------------------------------------------

  ALTER TABLE "REPCAT$_REPGROUP_PRIVS" ADD CONSTRAINT "REPCAT$_REPGROUP_PRIVS_FK" FOREIGN KEY ("GNAME", "GOWNER")
	  REFERENCES "REPCAT$_REPCAT" ("SNAME", "GOWNER") ON DELETE CASCADE ENABLE;
/
--------------------------------------------------------
--  Ref Constraints for Table REPCAT$_REPOBJECT
--------------------------------------------------------

  ALTER TABLE "REPCAT$_REPOBJECT" ADD CONSTRAINT "REPCAT$_REPOBJECT_PRNT" FOREIGN KEY ("GNAME", "GOWNER")
	  REFERENCES "REPCAT$_REPCAT" ("SNAME", "GOWNER") ON DELETE CASCADE ENABLE;
/
--------------------------------------------------------
--  Ref Constraints for Table REPCAT$_REPPROP
--------------------------------------------------------

  ALTER TABLE "REPCAT$_REPPROP" ADD CONSTRAINT "REPCAT$_REPPROP_PRNT" FOREIGN KEY ("SNAME", "ONAME", "TYPE")
	  REFERENCES "REPCAT$_REPOBJECT" ("SNAME", "ONAME", "TYPE") ON DELETE CASCADE ENABLE;
/
--------------------------------------------------------
--  Ref Constraints for Table REPCAT$_REPSCHEMA
--------------------------------------------------------

  ALTER TABLE "REPCAT$_REPSCHEMA" ADD CONSTRAINT "REPCAT$_REPSCHEMA_DEST" FOREIGN KEY ("DBLINK", "EXTENSION_ID")
	  REFERENCES "DEF$_DESTINATION" ("DBLINK", "CATCHUP") ENABLE;
  ALTER TABLE "REPCAT$_REPSCHEMA" ADD CONSTRAINT "REPCAT$_REPSCHEMA_PRNT" FOREIGN KEY ("SNAME", "GOWNER")
	  REFERENCES "REPCAT$_REPCAT" ("SNAME", "GOWNER") ON DELETE CASCADE ENABLE;
/
--------------------------------------------------------
--  Ref Constraints for Table REPCAT$_RESOLUTION
--------------------------------------------------------

  ALTER TABLE "REPCAT$_RESOLUTION" ADD CONSTRAINT "REPCAT$_RESOLUTION_F1" FOREIGN KEY ("CONFLICT_TYPE_ID", "METHOD_NAME")
	  REFERENCES "REPCAT$_RESOLUTION_METHOD" ("CONFLICT_TYPE_ID", "METHOD_NAME") ENABLE;
  ALTER TABLE "REPCAT$_RESOLUTION" ADD CONSTRAINT "REPCAT$_RESOLUTION_F3" FOREIGN KEY ("SNAME", "ONAME", "CONFLICT_TYPE_ID", "REFERENCE_NAME")
	  REFERENCES "REPCAT$_CONFLICT" ("SNAME", "ONAME", "CONFLICT_TYPE_ID", "REFERENCE_NAME") ENABLE;
/
--------------------------------------------------------
--  Ref Constraints for Table REPCAT$_SITES_NEW
--------------------------------------------------------

  ALTER TABLE "REPCAT$_SITES_NEW" ADD CONSTRAINT "REPCAT$_SITES_NEW_FK1" FOREIGN KEY ("EXTENSION_ID")
	  REFERENCES "REPCAT$_EXTENSION" ("EXTENSION_ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "REPCAT$_SITES_NEW" ADD CONSTRAINT "REPCAT$_SITES_NEW_FK2" FOREIGN KEY ("GNAME", "GOWNER")
	  REFERENCES "REPCAT$_REPCAT" ("SNAME", "GOWNER") ON DELETE CASCADE ENABLE;
/
--------------------------------------------------------
--  Ref Constraints for Table REPCAT$_SITE_OBJECTS
--------------------------------------------------------

  ALTER TABLE "REPCAT$_SITE_OBJECTS" ADD CONSTRAINT "REPCAT$_SITE_OBJECTS_FK1" FOREIGN KEY ("OBJECT_TYPE_ID")
	  REFERENCES "REPCAT$_OBJECT_TYPES" ("OBJECT_TYPE_ID") ENABLE;
  ALTER TABLE "REPCAT$_SITE_OBJECTS" ADD CONSTRAINT "REPCAT$_SITE_OBJECT_FK2" FOREIGN KEY ("TEMPLATE_SITE_ID")
	  REFERENCES "REPCAT$_TEMPLATE_SITES" ("TEMPLATE_SITE_ID") ON DELETE CASCADE ENABLE;
/
--------------------------------------------------------
--  Ref Constraints for Table REPCAT$_TEMPLATE_OBJECTS
--------------------------------------------------------

  ALTER TABLE "REPCAT$_TEMPLATE_OBJECTS" ADD CONSTRAINT "REPCAT$_TEMPLATE_OBJECTS_FK1" FOREIGN KEY ("REFRESH_TEMPLATE_ID")
	  REFERENCES "REPCAT$_REFRESH_TEMPLATES" ("REFRESH_TEMPLATE_ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "REPCAT$_TEMPLATE_OBJECTS" ADD CONSTRAINT "REPCAT$_TEMPLATE_OBJECTS_FK3" FOREIGN KEY ("OBJECT_TYPE")
	  REFERENCES "REPCAT$_OBJECT_TYPES" ("OBJECT_TYPE_ID") ENABLE;
/
--------------------------------------------------------
--  Ref Constraints for Table REPCAT$_TEMPLATE_PARMS
--------------------------------------------------------

  ALTER TABLE "REPCAT$_TEMPLATE_PARMS" ADD CONSTRAINT "REPCAT$_TEMPLATE_PARMS_FK1" FOREIGN KEY ("REFRESH_TEMPLATE_ID")
	  REFERENCES "REPCAT$_REFRESH_TEMPLATES" ("REFRESH_TEMPLATE_ID") ON DELETE CASCADE ENABLE;
/
--------------------------------------------------------
--  Ref Constraints for Table REPCAT$_TEMPLATE_REFGROUPS
--------------------------------------------------------

  ALTER TABLE "REPCAT$_TEMPLATE_REFGROUPS" ADD CONSTRAINT "REPCAT$_TEMPLATE_REFGROUPS_FK1" FOREIGN KEY ("REFRESH_TEMPLATE_ID")
	  REFERENCES "REPCAT$_REFRESH_TEMPLATES" ("REFRESH_TEMPLATE_ID") ON DELETE CASCADE ENABLE;
/
--------------------------------------------------------
--  Ref Constraints for Table REPCAT$_USER_AUTHORIZATIONS
--------------------------------------------------------

  ALTER TABLE "REPCAT$_USER_AUTHORIZATIONS" ADD CONSTRAINT "REPCAT$_USER_AUTHORIZATION_FK2" FOREIGN KEY ("REFRESH_TEMPLATE_ID")
	  REFERENCES "REPCAT$_REFRESH_TEMPLATES" ("REFRESH_TEMPLATE_ID") ON DELETE CASCADE ENABLE;
/
--------------------------------------------------------
--  Ref Constraints for Table REPCAT$_USER_PARM_VALUES
--------------------------------------------------------

  ALTER TABLE "REPCAT$_USER_PARM_VALUES" ADD CONSTRAINT "REPCAT$_USER_PARM_VALUES_FK1" FOREIGN KEY ("TEMPLATE_PARAMETER_ID")
	  REFERENCES "REPCAT$_TEMPLATE_PARMS" ("TEMPLATE_PARAMETER_ID") ON DELETE CASCADE ENABLE;
/
--------------------------------------------------------
--  DDL for Trigger DEF$_PROPAGATOR_TRIG
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "DEF$_PROPAGATOR_TRIG" 
  BEFORE INSERT ON system.def$_propagator
DECLARE
  prop_count  NUMBER;
BEGIN
  SELECT count(*) into prop_count
    FROM system.def$_propagator;

  IF (prop_count > 0) THEN
    -- Raise duplicate propagator error
    sys.dbms_sys_error.raise_system_error(-23394);
  END IF;
END;
/
ALTER TRIGGER "DEF$_PROPAGATOR_TRIG" ENABLE;
/
--------------------------------------------------------
--  DDL for Trigger IMM_APPOINTMENT_LOG_APPOI_TR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "IMM_APPOINTMENT_LOG_APPOI_TR" BEFORE INSERT ON "VISA_APPOINTMENT_LOG" 
  FOR EACH ROW 
   WHEN (NEW."APPOINTMENT_ID" IS NULL) BEGIN 
   SELECT "IMM_APPOINTMENT_LOG_APPOI".NEXTVAL INTO:NEW."APPOINTMENT_ID" FROM dual; 
  END;
/
ALTER TRIGGER "IMM_APPOINTMENT_LOG_APPOI_TR" ENABLE;
/
--------------------------------------------------------
--  DDL for Trigger IMM_APPOINTMENT_STATUS_ST_TR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "IMM_APPOINTMENT_STATUS_ST_TR" BEFORE INSERT ON "VISA_APPOINTMENT_STATUS" 
  FOR EACH ROW 
   WHEN (NEW."STATUS_ID" IS NULL) BEGIN 
   SELECT "IMM_APPOINTMENT_STATUS_ST".NEXTVAL INTO:NEW."STATUS_ID" FROM dual; 
  END;
/
ALTER TRIGGER "IMM_APPOINTMENT_STATUS_ST_TR" ENABLE;
/
--------------------------------------------------------
--  DDL for Trigger IMM_BRANCH_BRANCH_ID_RC18_TR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "IMM_BRANCH_BRANCH_ID_RC18_TR" BEFORE INSERT ON "VISA_BRANCH" 
  FOR EACH ROW 
   WHEN (NEW."BRANCH_ID" IS NULL) BEGIN 
   SELECT "IMM_BRANCH_BRANCH_ID_RC18".NEXTVAL INTO:NEW."BRANCH_ID" FROM dual; 
  END;
/
ALTER TRIGGER "IMM_BRANCH_BRANCH_ID_RC18_TR" ENABLE;
/
--------------------------------------------------------
--  DDL for Trigger IMM_HOLIDAY_HOLIDAY_ID_RC_TR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "IMM_HOLIDAY_HOLIDAY_ID_RC_TR" BEFORE INSERT ON "VISA_HOLIDAY" 
  FOR EACH ROW 
   WHEN (NEW."HOLIDAY_ID" IS NULL) BEGIN 
   SELECT "IMM_HOLIDAY_HOLIDAY_ID_RC".NEXTVAL INTO:NEW."HOLIDAY_ID" FROM dual; 
  END;
/
ALTER TRIGGER "IMM_HOLIDAY_HOLIDAY_ID_RC_TR" ENABLE;
/
--------------------------------------------------------
--  DDL for Trigger IMM_SCHEDULE_LIMIT_SCHED__TR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "IMM_SCHEDULE_LIMIT_SCHED__TR" BEFORE INSERT ON "VISA_BRANCH_SCHEDULE" 
  FOR EACH ROW 
   WHEN (NEW."SCHED_LIMIT_ID" IS NULL) BEGIN 
   SELECT "IMM_SCHEDULE_LIMIT_SCHED_".NEXTVAL INTO:NEW."SCHED_LIMIT_ID" FROM dual; 
  END;
/
ALTER TRIGGER "IMM_SCHEDULE_LIMIT_SCHED__TR" ENABLE;
/
--------------------------------------------------------
--  DDL for Trigger REPCATLOGTRIG
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "REPCATLOGTRIG" 
AFTER UPDATE OR DELETE ON system.repcat$_repcatlog
BEGIN
  sys.dbms_alert.signal('repcatlog_alert', '');
END;
/
ALTER TRIGGER "REPCATLOGTRIG" ENABLE;
/
--------------------------------------------------------
--  DDL for Trigger VISA_ADMIN_TRG
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "VISA_ADMIN_TRG" 
BEFORE INSERT ON VISA_ADMIN 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.ADMIN_ID IS NULL THEN
      SELECT VISA_ADMIN_SEQ.NEXTVAL INTO :NEW.ADMIN_ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "VISA_ADMIN_TRG" ENABLE;
/
--------------------------------------------------------
--  DDL for Trigger VISA_ANNOUNCEMENTS_TRG
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "VISA_ANNOUNCEMENTS_TRG" BEFORE INSERT ON VISA_ANNOUNCEMENTS 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF :NEW.ANNOUNCEMENT_ID IS NULL THEN
      SELECT VISA_ANNOUNCEMENTS_SEQ.NEXTVAL INTO :NEW.ANNOUNCEMENT_ID FROM DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "VISA_ANNOUNCEMENTS_TRG" ENABLE;
/
--------------------------------------------------------
--  DDL for Trigger VISA_APL_ACCREDITATION_TRG
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "VISA_APL_ACCREDITATION_TRG" 
BEFORE INSERT ON VISA_APL_ACCREDITATION 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.ACC_ID IS NULL THEN
      SELECT VISA_APL_ACCREDITATION_SEQ.NEXTVAL INTO :NEW.ACC_ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "VISA_APL_ACCREDITATION_TRG" ENABLE;
/
--------------------------------------------------------
--  DDL for Trigger VISA_APL_REP_TRG
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "VISA_APL_REP_TRG" 
BEFORE INSERT ON VISA_APL_REP 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.REP_ID IS NULL THEN
      SELECT VISA_APL_REP_SEQ.NEXTVAL INTO :NEW.REP_ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "VISA_APL_REP_TRG" ENABLE;
/
--------------------------------------------------------
--  DDL for Trigger VISA_APPLICANT_CHILDREN_TRG
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "VISA_APPLICANT_CHILDREN_TRG" 
BEFORE INSERT ON VISA_APPLICANT_CHILDREN 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.CHILD_ID IS NULL THEN
      SELECT VISA_APPLICANT_CHILDREN_SEQ.NEXTVAL INTO :NEW.CHILD_ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "VISA_APPLICANT_CHILDREN_TRG" ENABLE;
/
--------------------------------------------------------
--  DDL for Trigger VISA_APPLICANT_TRG
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "VISA_APPLICANT_TRG" 
BEFORE INSERT ON VISA_APPLICANT 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.APPLICANT_ID IS NULL THEN
      SELECT VISA_APPLICANT_SEQ.NEXTVAL INTO :NEW.APPLICANT_ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "VISA_APPLICANT_TRG" ENABLE;
/
--------------------------------------------------------
--  DDL for Trigger VISA_APPLICATION_DETAILS_TRG
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "VISA_APPLICATION_DETAILS_TRG" 
BEFORE INSERT ON VISA_APPLICATION_DETAILS 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.APP_ID IS NULL THEN
      SELECT VISA_APPLICATION_DETAILS_SEQ.NEXTVAL INTO :NEW.APP_ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "VISA_APPLICATION_DETAILS_TRG" ENABLE;
/
--------------------------------------------------------
--  DDL for Trigger VISA_APPLICATION_LOG_TRG
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "VISA_APPLICATION_LOG_TRG" 
BEFORE INSERT ON VISA_APPLICATION_LOG 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.LOG_ID IS NULL THEN
      SELECT VISA_APPLICATION_LOG_SEQ.NEXTVAL INTO :NEW.LOG_ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "VISA_APPLICATION_LOG_TRG" ENABLE;
/
--------------------------------------------------------
--  DDL for Trigger VISA_APPLICATION_STATUS_TRG
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "VISA_APPLICATION_STATUS_TRG" BEFORE INSERT ON VISA_APPLICATION_STATUS 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF :NEW.STATUS_ID IS NULL THEN
      SELECT VISA_APPLICATION_STATUS_SEQ.NEXTVAL INTO :NEW.STATUS_ID FROM DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "VISA_APPLICATION_STATUS_TRG" ENABLE;
/
--------------------------------------------------------
--  DDL for Trigger VISA_APPOINTMENT_LOG_TRG
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "VISA_APPOINTMENT_LOG_TRG" 
BEFORE INSERT ON VISA_APPOINTMENT_LOG 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "VISA_APPOINTMENT_LOG_TRG" ENABLE;
/
--------------------------------------------------------
--  DDL for Trigger VISA_APPOINTMENT_TIMES_TRG
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "VISA_APPOINTMENT_TIMES_TRG" 
BEFORE INSERT ON VISA_APPOINTMENT_TIMES 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.ID IS NULL THEN
      SELECT VISA_APPOINTMENT_TIMES_SEQ.NEXTVAL INTO :NEW.ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "VISA_APPOINTMENT_TIMES_TRG" ENABLE;
/
--------------------------------------------------------
--  DDL for Trigger VISA_BRANCH_ADMIN_TRG
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "VISA_BRANCH_ADMIN_TRG" 
BEFORE INSERT ON VISA_BRANCH_ADMIN 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.BRANCH_ADMIN_ID IS NULL THEN
      SELECT VISA_BRANCH_ADMIN_SEQ.NEXTVAL INTO :NEW.BRANCH_ADMIN_ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "VISA_BRANCH_ADMIN_TRG" ENABLE;
/
--------------------------------------------------------
--  DDL for Trigger VISA_CIVIL_STATUS_TRG
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "VISA_CIVIL_STATUS_TRG" 
BEFORE INSERT ON VISA_CIVIL_STATUS 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.CIVIL_STATUS_ID IS NULL THEN
      SELECT VISA_CIVIL_STATUS_SEQ.NEXTVAL INTO :NEW.CIVIL_STATUS_ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "VISA_CIVIL_STATUS_TRG" ENABLE;
/
--------------------------------------------------------
--  DDL for Trigger VISA_COUNTRY_TRG
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "VISA_COUNTRY_TRG" 
BEFORE INSERT ON VISA_COUNTRY 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.COUNTRY_ID IS NULL THEN
      SELECT VISA_COUNTRY_SEQ.NEXTVAL INTO :NEW.COUNTRY_ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "VISA_COUNTRY_TRG" ENABLE;
/
--------------------------------------------------------
--  DDL for Trigger VISA_FAQ_TRG
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "VISA_FAQ_TRG" BEFORE INSERT ON VISA_FAQ 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF :NEW.FAQ_ID IS NULL THEN
      SELECT VISA_FAQ_SEQ.NEXTVAL INTO :NEW.FAQ_ID FROM DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "VISA_FAQ_TRG" ENABLE;
/
--------------------------------------------------------
--  DDL for Trigger VISA_FEES_TRG
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "VISA_FEES_TRG" 
BEFORE INSERT ON VISA_FEES 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.FEE_ID IS NULL THEN
      SELECT VISA_FEES_SEQ.NEXTVAL INTO :NEW.FEE_ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "VISA_FEES_TRG" ENABLE;
/
--------------------------------------------------------
--  DDL for Trigger VISA_OR_TRG
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "VISA_OR_TRG" 
BEFORE INSERT ON VISA_OR 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.OR_ID IS NULL THEN
      SELECT VISA_OR_SEQ.NEXTVAL INTO :NEW.OR_ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "VISA_OR_TRG" ENABLE;
/
--------------------------------------------------------
--  DDL for Trigger VISA_PASSPORT_DETAILS_TRG
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "VISA_PASSPORT_DETAILS_TRG" 
BEFORE INSERT ON VISA_PASSPORT_DETAILS 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.PASSPORT_ID IS NULL THEN
      SELECT VISA_PASSPORT_DETAILS_SEQ.NEXTVAL INTO :NEW.PASSPORT_ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "VISA_PASSPORT_DETAILS_TRG" ENABLE;
/
--------------------------------------------------------
--  DDL for Trigger VISA_POSITION_TRG
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "VISA_POSITION_TRG" 
BEFORE INSERT ON VISA_POSITION 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.POSITION_ID IS NULL THEN
      SELECT VISA_POSITION_SEQ.NEXTVAL INTO :NEW.POSITION_ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "VISA_POSITION_TRG" ENABLE;
/
--------------------------------------------------------
--  DDL for Trigger VISA_REASON_TRG
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "VISA_REASON_TRG" 
BEFORE INSERT ON VISA_REASON 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.REASON_ID IS NULL THEN
      SELECT VISA_REASON_SEQ.NEXTVAL INTO :NEW.REASON_ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "VISA_REASON_TRG" ENABLE;
/
--------------------------------------------------------
--  DDL for Trigger VISA_SETTINGS_TRG
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "VISA_SETTINGS_TRG" BEFORE INSERT ON VISA_SETTINGS 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF :NEW.SETTINGS_ID IS NULL THEN
      SELECT VISA_SETTINGS_SEQ.NEXTVAL INTO :NEW.SETTINGS_ID FROM DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "VISA_SETTINGS_TRG" ENABLE;
/
--------------------------------------------------------
--  DDL for Trigger VISA_USERS_TRG
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "VISA_USERS_TRG" 
BEFORE INSERT ON VISA_USERS 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.USER_ID IS NULL THEN
      SELECT VISA_USERS_SEQ.NEXTVAL INTO :NEW.USER_ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "VISA_USERS_TRG" ENABLE;
/
--------------------------------------------------------
--  DDL for Function LOGMNR$COL_GG_TABF_PUBLIC
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "LOGMNR$COL_GG_TABF_PUBLIC" wrapped
a000000
1
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
8
3c36 9ca
FBUOB0XD9oOnBCwu8fzvRjihnrAwg826DCCG3y+5MZ2sZ5605gLK/2pS4F3KDKCMK1E000MU
SftVYlBiyLmoea74htrPGImhulLhVm/VW1oU/88sB7tYawPloVnrrA7YVMEa5K3RwsntSBGg
cSoTI1hjCOcIchTZE57qlH1BygnBDHFAaYlJ/vyyr/Yt5IEaTrx5mRSUttvpQbCgJuBmYzen
p3U8bDU9XulSPycFXAZT5hP11gOJjzZjPedp0t7Ws0qHto0BaukObCZrk4hglZcM4o5e8Y+A
oM/m2YmiQ1630xixU3FL/N0jN/b8Ifc8lmBHueX/DqF1uX9APtQy9HvbfTPLkFLxBvuS6Bt3
O8pQXMxmj+LsBC7g63WJfbxKlVT1DGFgzA661XtNFYhKJqsHKvAK66fajkRfISEq3cvTQwTt
M7dJsh4cQM2bkA4LIhhL/2K8nmTQDomR4X4ILTV6rRl6OcTOZVk80vkw5t26z/11eT66Y8az
f1NVqlKJ7ow7hhESz7uM06fnWTyxwN4abSBciTp/fnSwzoXfE7j/gN/yi0ddCoahlgcU8N62
gAgAyeuNPk5Cet5JWrQN15EJT/8wAnmq2ZXozefhAZ822kf/dnvJR7Iix0dDTzbG6eAq5y6E
XEVZ3qLx9NhFtI/xIgJObTrPn98oFQO4NHYHhjB2RmKaucHJMyMilogmA1Z9BXHfxS5M7l3w
HlAOjnC/LOw7ElbfLFS/m/NuOe6OP//hKCkLSCAfB97qk6DiFYj1g37idbLmUlH13v6y4exM
rnJwdtE3zCIChklxrzDI4HZfUBMiJSFZBhs7j7+WbeLRyU4eAxMpQi/8xv4D+nz0jpT1o5YT
6MFQQ6XVokCoSt/JlWWK2hhKMX8jDLe0Nqlq/cvOsVmmfY8p10OBipLgb3WWaz1QsxN7+CLl
WjUx09ylxeUFIiD+3Z5hg3r87hf1n/roMMqPklq8n90cQ2FiRasxANC4GpfqLBoSjBZTW5Ss
melYXq8suL7wtH92bD6TeCPV35GgXyVHb/J7o3zG8k/fR5a2d5SqShZi7j7yEcwbaIxvwa4N
9PJ6XBTJ7r47xzidh4Nk6tFAWDvHeZ3/zbH9lVBBdaVUfqLvj77bCpTcUwWyTICf8mHs3WiI
Ov1Wby4dZA7YDzg5ChcKRFCAKW9Jz9JTcFxvvsMtevlTOMdtrnzREFPGbBy+aIf1B1Yo/afj
a8ZMitpD9ruFYaPnrpj/EqJbuxClGVu7EKUZW7sQpRlbuxClGVu7cxKbGZ2ZsOqQI35X7OUZ
fhjxPx3GnETaAY4Lffxi//U8z/SxPjjAyd7CR6+i7rCcfGayGdxowWFW+8XmhLdXuJF9ILt6
sLWrXszno7aaxXziAF0QgBFMDzaZYWGAIiiGa1k+SEYCHoHbfD1SHErtnHzEhmQPpJLElqo0
NG5oN1B86zs65CmuY+d5uB7k+Dq3Jd74cjuSQ/6dicUT4YdjtXQ7O4DNhpzBwXK1IZYstadF
ybtKzjmN4nvWIwf/L+3GkXcZBH9cWcpfo6HIQXGL5PF2z0K3FtoBC0Tt1OKjdXz5eeBcFBuO
zqlWvOB4rVamtu4TO01knYMSlp/sAekt93nJsSJ8HzFPD1D1fwnETPw8EeHxZ/8rwUN3Rs3C
ax7qZGJobRwwP7hBZ3mzVTEwgzFgldN88gADdU8oOantksPww6yTB8zP55PB0XCQLN300qkd
xTZbUOTJQh8KuTD+yqhouKZr0qZKOizLytUidwlBRLghiY0s3WHztdGH2ZJSpRaa2RUaWzCJ
C33KzFEcdEE/w1EcdHs5gVARQijRiL5F9EZLW20Ynnp68mjW+suCiJr2Bh2AVd/u+5n1ISkR
46eBjy/uTwei5xKT4flTsdPIgX2u2icSB/mgvShUS7aQ7bOppLxB1StGwBI8O2mlLSa0chRp
ASJflGzsZwyP6RM1YwLfRCKgXzUublabPLDWXAplTPwAa+lfAU8Nurs41YQPXg9vzTUw4F0/
XvpN1GrHS4tV5+SF5b/0zzIDba0Dt7SY6urJ+1YQk4tqoB8QG+ViVdaGnKykjpZOOHeBa/TM
AW1zP09TEfVTP+ZQWxC5hE/+NQ/OUB8QUJwi0gEs0o0oED1bAE5rFxBQsSLSMizSaAdB/jWa
zlB4GdfZDTYcKDs3arpBZN+N9gMKXmOHcUmWF2vawkF2BQB2BYSADLEPgtn+ODJKS5k8rBAR
kAmKUQ3dbTyIWpnlDP5yYoIuvtqvWT6lhVnLDEGgvcrU1JsiN/LkVwNl86SbZR1yyJyIm2WE
h8mF2XRCWKhiTvneWCCQjYjxZYQJi1tZl3Q4iy/JvBd1MfRlBbvLj8YEIM6qlSJnGvSe43jZ
5XNFNU+703fbOkzhSDA2xmPYuH8jtpCBKIxmQEyF3XUCAy+OrrMpJmsLgLyKLN5YLy57kIhW
2LyIDQ8tBH+MqpIsGqIsNg==

/

/
--------------------------------------------------------
--  DDL for Function LOGMNR$KEY_GG_TABF_PUBLIC
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "LOGMNR$KEY_GG_TABF_PUBLIC" wrapped
a000000
1
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
8
2e13 be5
O/KmLl1NP2JZ5iwpk0PI9iaI0cMwgw2jkyCG3y+5A6pENzZUJtUEYfGfLRNFqVmzSqOTwDJX
E0n7AKlh3WEoBTPeqs8HnKIJFOl4uvvMfpsT7rhXbtaLa2S46neUxR6GJidInUlyaghX9TH5
fG74EJNwoOaK9JfrUPFhRKWy5ZLrQSG9rGFe+U0/VRdiJv6aLi814tJMISNxT9zpeKBT8Tue
lWtHSjsRgK2tkRAxay5WWN8aHhOeDXJ5gNz2EJ6yr2J7HxcJb5T6zLPiqU0SIrYharKT63TY
mWnguFBnoWkQuGWc3VGX+hKgqmD4UZfswWtNe8AU12oYSurDU4rHZcMyMvqXZnJ7L0SxXAUB
XBdpDr/aoBBp46sJIu86MOMlW3uOEW3ZV9Lp0cNgvioaRGOvJTJB9F7Kuf2R7rw4WfxJVE0Z
e3pEppEBqi8G2AVFNXy42nCOOFwl4HG/RkkezKPqhc9L4KGrvuAMCxJWb435DRoUU4zAaBHP
JmDliqLJ8Ef5oCthaIRzw/c5MFcjyTS4TP+DZwJQz7d9hOa3BFzeqiNWpe9zPxH8thgwKKpt
PjdC2H9VWO/v8H8DTyqUr24IdNvEbmv7slyBAfR2q702/wcin1NMmSqtjtRd1koNUG4u1u+L
ccRZiKWdDsv/nidyk4RhSO3voJD1lqBkOh0nwJR+G5d8LfXM4jQfIiZusn0t1faiD/o0W2gE
EDtGbMhA2NKUXt/ry94SDPvJXNEXpF+w4UzWQJQ0YKeBUwW//Dy/HZarm+ACxdGPE5C501Z9
NCZy2Lu6lok+4V+RzFQ5dJyn4jkFDZjeHQXMJV2/cdebCm1DV/eQJo4FUfTeJhWWclkJh0h0
XbypV42A2LV0kmwu/m5oY39QfnQXSGlgrMM5+aKZAok3klVfmS9wNgCQZZqDwGjOJEoK1Hky
zw0AWkoS8hAsulnIQukcTsrrJtruKqRmShx7+ySov7qHj0jdiD8Ud1oHvMU/faFfvDpveeQV
YlJ7eJW9UQAXbEZbuTIB0Ge6SK88jwNDs4DUpBodaGZLNLD63Y+zHpMbLzXc4x5uolcP6yGL
G6GcF7dHthgxx8TYGYicsQkEJo/PsojVFBv+UoXI/kGogLoM305SCyBuh+P/GXVfOuz6VH7S
OoylBNbN+1TiBezyUhN+02S9iR0CbF4GICK5pkH/4VMcOAe8bNdi/IFZhAdwVMa6RseW6OJI
WJAeoWs3rBA/bSckT9POFBymgN26+uchQO3angp8i6mb1Uv1tluMHtUED/uBi5bHiIv7BdPh
G4pWkQUtJQVQZu/yt5i0HKNWiZZtuOX+p/8Bf91zKPP/G8Z63Qg3+2fFowzBJ89teebyp/nY
NVZvxxFQMWQpObxYZLNTM634IbtPCcXYyVQrt7c0PMknITWRHJwDrm+3WNPtzVbrtwR/3AC2
WJwlQCc+sGHZq6cxACoX0mxFrpoZnXOSLpIzHgTh8UqmA0ButO41PdKxdvTiq0IPoExtZvPN
xJmVafxtMGgBzMNU7Y8wRl7yc+xMDnNZ4UaOpAxxdpVaNJtJhy8VvlVHTtGDY2NMTkiHudpl
59TsuyGuZn9RMM0ch4sFbc8OD1abRGCOOjOOhHCi8Lv/L7mn8s9wojur+Wyn0cwGTq61gPRy
0ph+6Hdf24lq3Tc9c5Rj7S84a+J4af9lkwbh35xG0Y1OOA3PuKhkTXG4/f5RRFFcQ9TbVrgS
lZ1F5Z8oVmiQXNplHUvDIQW8IVZQdFrOqDyL0J6HF1dgAh86XdUorKdTNnYvYi11nuT6Im8n
KXsyQvV9s6RF0aFd4lHOu47VD5WjWdWd8LfN4LJ61YXJbLjluDQFSBkaLc67TeNV74salRqX
bfwRPN1Ok7hJT0gZvDE/RO9I4hyKCaBEGtiLWi2GePthVmbcRWqRlqf/D8CwvOzaTOMYVxpd
3CQM181KsP4MlHgWj2+UGDnwSCuPb/KyfgrIXurEFi3t7dzgUgTIg2ZS82kwZbXjHTdXsjY8
a1NpQBDOhWGeg12V1UtVoJlZJhr+utBsUxCJ4O1kIFkBJ9vo4VzmXX3YwYkCK/ljyfVc71GL
jvvtkPQgUp9lSNzdCMFpLn9hV3tzCcGyZU5a2kE1bPvu+j8VAoera4SG4PmtVAQHfNlGN9gf
rt7hzl++mMFXxgg2T5vkxD7ih00dhtsRMjvFNEkMr6stbng68JXAnjJMeyYcuw6lUipJRuDX
HaKP4TRbVyed/s7UQkbHPTrXwyno+7ZduamsD6ct9mMCiFbisLVuwjTY43x1rXK/MEhYjUNn
IIWpDcEaa3gY6BQPyfV9NwfI4vp8iPLAqEMwPRcNScZRUXMhO9n+sJ8v2QXIViyFlcx242+P
XDL0l61haNUjxMcU8IAlCGBn6dFVFuqF0z8yVrNIqZUoVglFCU6w6H2F3Wx6HO/pwwxAtfJo
n/zC7VKMzVUKrk9Wzr8sqjrOCMlbkBh1n10HT6qNZ3XWpE7+ICQMRxok2tJyLKqcaVgBrTe1
BIVtHZLrTywi5DOxpQiwJDaHPWWdjVx2X5VjiAz+WlNOj78eFolpHSJ8C48b32D3s1DUR7yM
6S6+6G05/Ix4lRFJ+SIlYBgCiCzdLdaEUeqzEQTB/mr1TZ8mfLNI89HorZLYrUXYHgPKjB8Z
3UEpnbHki6RPxDSWHzWuVlYZI0R84JTxzZRByuMs4LbSwIeeLMban1kJgVj1FUWTU+N9KTZe
KA81M1XWlJytMuEZzql6kXof34VUjPZ8DTnqvT2fwchgQkp2dDThX/60jqMxi2/sse+DuNj6
jOstNnjSgmGYEZP04tMtQFuBVhiSW/cy129Wva1NOD4KjypFlLHFTg5b4e2Xo+TyGC6Xpzbx
s1JJe+7CzklFwSxUcai7f60DZ576DAInLwreSe7m5JMPk3OItnzVo2Y5lCIzRHYN9sRorszo
dxcJnET5wG089kQDJTT97ZJZ2syRfWI8dxVA8+I/6UP5Bg/qXx8p

/

/
--------------------------------------------------------
--  DDL for Function LOGMNR$SEQ_GG_TABF_PUBLIC
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "LOGMNR$SEQ_GG_TABF_PUBLIC" wrapped
a000000
1
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
8
11c6 58f
gySaLpM2/dy/FuJ95b/w61eAZaYwg81Ur0gFVy9VA52sZ+HDJ0RrvayO9BPh0yorU9XMh/Hl
HrepeR8RmZEShbk7LJqICcKhk8A0Z0rzLzEULCz6WEJu9Oo7XWAh8Vwukwwy4u5y4lbat0MK
SFWLjY9+r4q2XDKwNfY2T38xPK1NRjgPTGj41xu1AASLLkyZ697R+BkwysNwo2xYGScdMqvi
ZKn2YW/2TUZGrL3t3aHJmDmfqR5lY3vaRhbGR7j4lEvJKgwipgJWj7bZxFYfZV4F3FodbE1s
YgcTv05FK45zi5yZg8RI1Xrzde8TqMoglP3zAwXaMzzxIf0hLtXXdN0usfDgWuLaHFKqguB8
yRWQr3PLcgZmfCMgLLKUpTi7opx0HC0oCAIA9TRcjY3sMf7nvPcO/7SisEcncFtoYZyH+hG9
QQgScDI1LbGyzX9aWkoPM8p+1U017M/299U9d2vrQsE0hANikcconk2NIzntCzcQgpNWrDJe
9gHmMZYHhkGzmrZH9u918FACJzyfioTnDVIfzgCCSRIZeFy1bnZ0Lnv9y7l9hk0WqXhEor58
MDRNoUyRcdS9mFmF+x0PqFMp2NVemx2SAVUWX/5deeSLPmHVkZh71EDvbFoa4K7ATHHGzpx2
7hXewrjaE0td7oYwgOjA4Lgsa6QFd2D53IgL1a4e5mFclDbka8XLyq72rGbBbir6TcQ9Dv+T
2XpYIUltGrL3r9svMXaUXhMl3/9W6SD/L6nRPRte3+h4J9eHAwrZEwoTHr+ceLEE50f9/4IA
K4bCF8IsYAF2RZ4i5g2YmscWAhSICU2OQjuYGVqewlHW0LP154EAWmwuBrbGtr42u87ep9Nf
HqLDIR8ChxzccfkurHr9llU66Jy0FjgOx/1W2YUFKdtEmydhxVMQgU7BNvkzCLvGxgPadtKf
rfDPzpsypgbz6H+1EPhlcDOLE0D5zh74pmNN7DkQ+Qilpc2auQhOJAB3xIMVoy7YYP8Vz0dH
AIWVvMmoFo870Ss8vpjIKWonH60AmWOfd8+N8f1Qyom53si180QMvmk1r4MFnVEjrNHNvKbn
DpgJ9sMLlXU8EzKq9eUkfHd9hrKYVLmX4mvP9LgUudZSwvLg80zRvU4ZSUzwjMbcz8tKF1gZ
nU/WbEEt3nslRU5jsdp4chkHGXQncjh5FaVLd0FDMh8mcn4SSgbGmYp7wcm+q7MTONqLUIxu
i3L9sgDXj2M03hwoj7RavBSNh8BNIwYULcbczdz/gDb0jTFtFA8UOmb6wZxdUPxO1c8GS2Ek
CXDMxZPWksMjT7euocQ7blnEM+dYUFAX0gFpznOqvI8sErDH4Oj41hTQv8ZEDF4ohGPu+Z8O
LHoRyOnvmNSElS2YwkDmkTWY+c0fvRhsDg==

/

/
--------------------------------------------------------
--  DDL for Function LOGMNR$TAB_GG_TABF_PUBLIC
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "LOGMNR$TAB_GG_TABF_PUBLIC" wrapped
a000000
1
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
8
3aea c6f
/cCEdSj6hIAboJakHcX9IAmxhHMwg8269iAF345VF7We4Ygv/basVCkFhaaT6KQ7wl3x8bfP
00vi3XvS+6BMN/tzCIZDhGY+CQkUILRLiDt5VRJy7oRdbDJ9ftlW0fF6hN68BRdd+Gaj6phM
lSJhPWtxsKFfyeOdiym8UXUJb89AwsCd1BRnR2GaaH2cOpKwgh6StAQUH1cGz52uGBjUWNLR
J5av6aFlorveN/4fydfnSj57FFtuG4gZDkb/BOVTJHB3GApm5sW54Mzx7EJeX5s7nHFEGzE5
mmuBAKNJk6K5ChTVpcu3lJZKon/iCc/bJtj4J9QFFLTlZTERn6zeWMJABlGMGC8EnDaTlWsf
sX3xt13E2MaX2KVEGsYhyYdcVgqLdBkESde9IRMrCHo89nWRgXn0lXkDYoDXoHCQhSAvlT5K
XF5XzKXTmsd6NEQRpMxW3Tf8WTOXIIJZ/1AdD/iydJXlGnUUE8nOS+pusI7wGgtUGZwjc4fg
8e71fAqRxZtm8jdk4O2Rd5bV69JrgeAQo81ahxzFz5xQrPyBBY9Xmo86ez5RfoIkyOSpoVIs
ekKgcLXWThJZctZOViQPzoW3NATd/jCI0Y87lbRLwzrzt3nsmqvNjc+gcSxmCd3Iy6eE5Wz7
vRSogHM58YiJTM/C7eDSb968LoykslDxMu9FdC9LA78W3n+Ehg/CG7/4jsVyt0qHiK3p/9S4
ZXYTqn7ftLfVbTMwcSqtccEL+l3ANkwu51SQ0Gy6WN4KLtMfXHaVeM6sDTYjB4Bya1pTe7pX
q0eAqf/qS7pHnEr3lJFpkChZwBSOFDGvsabCWGU86x09hvMp71WKe6cHHc5xGM+FvAKBxGwg
jHzfD5w0asihtp7vDNLIjeGOzOzGVvnRMYkhhk8hYtvB1YytwjzCxj4KG4fsnGtCQgGHImWr
Gq0cE1KuR9mwi0OCLNlOpo2IYigHbo4w76vGnx0Hjpo1nOeEK2cRK0tB9mM81JVl835a7Liz
unY4cggreTMI83668bvXzWdxzQR0r/02aBlwrDo9AmH8TO8LKgGT6dU3WwoBCKM7ZEp1yS00
4rFolKwuQPnQ8J0EIPLhE251YlemlLdNRfCFHLdCnjJp2h8NGCiXcFCvjPfGfo4JWfHFlpk2
tROk1H4bvwcGYQwofsDdSyU0xqf4FnMecc146lHEPcN+k4SwXBpr3wIFdntHwGTrYQhuI19a
z7b3uD8NcRFjn86npLxQwbYpFdg2mhkEb1hMWYxhH2WKMuygR2UBo7IrKeue6Bdhr7HhvH6X
dxNwbcaXyhKSCf2y6qXxjOkuMjtGuC3xVTgUpHlyStjkC6dV3GdIqpBf2G/ZiZGJsDzTak07
f0VMdMc0DGUyOOItyBziiy7A4CiZfZKANq0VJCQ40ePdI5IyOSyoq8mWfLFeJSizi3rK/NUk
rC6RlP+8n2VOOjtSbWPEmfOj40sfqJusOfNAuSMxdQEkG6B/OChgGv1EL+rUwMHnB60Xyopi
upg6e6JMv3gZ5lYS82sC55jzZpUmML4km2Bqjuotz9Du8ImhzEQKpHV4vPqcniVU5E17E8Vp
A5mBC5HlO6iBSA325eyVIfijqn+guVwzDdXcnTgGlyw7n7OjEoHkuVujvofuBQxnxo8J2WcA
RYlr9t0E2YSCn0c75R8g0aieSHl+Bw5DZoZwafiah6cjPsKh7LIDtdHZgeW8ICcMzZ3rwLMJ
57HW8TolK3tEm3pwWGTqbBv+IZahVhwriLnT9LI2yZh5cp9CKhMIQ7ZhE0tISDwSo/qApqyM
LgLQx/6CCqCP70AHei7ncbgBUHemMdzb18JqAnzCTb5keewZq+eQKnyRXjzyRsOZgwFo8Rrd
jU3uSHix5fx918dk5PgG5AV4gORtciAiqiKYydw77LmF/p3k5eGT/Wh/nZ1z6ZUhc8HLc85O
IMWOp34gUOpi/H29EnMIc/jED+VyZCSFVO2/lYzqwg1I/Cr9cJWy/8nwCe3xjGIxmzVpKGIQ
9aE5yHkxoxOH3ZDgEDkJ0VeGnMeMBH9uYa377ZSJ4PlfbAFx78IrVf2+pBoKIXIowvoO1QNr
5ywkDkMn6KKfbAxyWBeoWwpetk/WdYi4oYJLGTkAud64u/gkSn2qQaqU0HV8SjcQOGyRf5D1
1ZtZ9JnRKBEEqDGSUf0+gNYhYJb/V4ZQLeiMKGTLKnZ0DQrQalf/uC9Y+SLf+FfW8994BeBI
lTP3Sb4KY3CkqdjQfGiO8JjQCiInuC8qvCJvc3TbNZFT+FPS71tbnO65hgmAsstBgz3Z+yic
0eFIu4TH3k2ybxe2cw3BFfQDm2jrEg/gwc3j2rnm7/fe3dR9xj6yLgc+uuqsJ5w8BO1XgRTo
aicTLGMaFqRjfoeJ4jjeZ1WKlZeEeQB5mQxbcN4XzYM8+56kDksoFJQ4ChY4isXZRJkSOAwS
0Xdh4sJ2Dku2GjY4soxZIuPD7CpGoM6mBjYMW1oMW6noAkSmDB+PjUzhVM+pPFbTQFz+QeZ2
O61hlCV/NhySj+7Kzo0oPyrn+YVbqiHn+bRbqnrn+dtbqmXn+Xdbqnvn+Udbqt/n+WhbqrkC
uhiN3HCYz44zWAJgOJjPjjyzQNRwQjkvTU4oePSbM/MqW2zLQdQxEOr8C408eSYAVTa4WncV
rPcko+etPiSlbYiqUjKP0/SAHqO2fXtRQwfVgwP42LuRK5DUboFAHAOLyuhJRa3PONLkmCMj
kgxjFNIp15yuquTqRGx4j1Wxv2Qkz+6v1PCPILZdLISmm6Fnqgrn9eaBi7vokk8pD9kakWgm
JVCElWsIm1D1N30h07Mm6VFSZbMdRlE+CbPelVFe+umwlF/c1YiQYCHsxf0utkrcqKQu89DU
2YALRBoI0yVU897YXyEuWquobPCOt2CXoYxEY7PxJVrM3hrYIfJUq6hi8C+cYIUM7zboWwxZ
t+no+mXrkWvewnchk37sVngub24bDNy36bC3hdxJ80HcygCQac97WOT14fsnRjZsLAuriJfO
1728bQg3u/5IILhAmwZADbyzGkDkdGNHbiSE7o3w0xgB9AoxftNPCMZf5rdU+k9FqXr3kRH0
0dGgBE7GVqWwT4+ixwpbH9W6Gl4k/1g1O534tvu3+kM=

/

/
--------------------------------------------------------
--  DDL for Package DBMS_REPCAT_AUTH
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE PACKAGE "DBMS_REPCAT_AUTH" wrapped
a000000
1
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
9
bf d6
0cfc6e4Sm6mfaMYwsbW2JygBepcwg/BKmJ4VZy/pO06UXsVUMejsissTcGWYR4qeK4TPqfDK
q7UPH+SmKP6nW9zmxMZnuK1VDzM0Iv9O4E4SvvsnHWn+EPF9hR+oBFe3fEro6RQ5R5Ejd1nr
e+fAK010dExf76gg/c6ZB3YxGPHDOqkGI4lV6HNsd57gKLwTd0bxan5UwJriIpt7Vjc=

/

/
--------------------------------------------------------
--  DDL for Package Body DBMS_REPCAT_AUTH
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE PACKAGE BODY "DBMS_REPCAT_AUTH" wrapped
a000000
1
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
b
bcd 3bd
UD4sZ8/8PJg/Os0vxpYCUrIxzj0wg5UrzCCDfC8Zx6oCSS7hFCveVRpIhBB8+pRR09oNpCtB
UYkwYv0vjhUdCarkfkmy0S6I6ZQNabj/M/5Vv78tpHDBnv6mMiba5vrNfogBwH9KThaHQ/7n
Tre2RooP3U0dSIWmviEGsdYbH1SpKKLK0A6oydwsAwNh7DrYf4+H0I/7JYKYicumt2+bMAI7
j2ZJkW5louadmdiMX0h9+Izhj7NN2Ex9QtvIVG0/h8rEHsfNPD6yqYkzSljq8DZ1UhFIpw1t
qEetfFLyFrLf7KPN10XuQgqiZRwxkbgd3BZ+UDxvJoIOdpctzd64hmfKevJQZCIvouksBID8
k+fS0Q1gB0WpIocOchckvJCqMV/sCBjUhvdvSIK0Xv71WnjK4ubRGYq84AqbTffzahwHzUJF
6neAF5h+emapJj3zKIiMAJR949BTnr8DxnzzNFDDlFp5bD0hW7byUWlDUOJqp+JwRub/aQH2
P3NIw8s3MnhgkGhJMmNGp8uT+yH2w4v9yecqHIxjvaCIveUcKCiu8p6FMlqNWawQEUjkfowM
eo9pYHbDvxNGr8iHNbLZbIz5a3or0dmWtKU+2DkH+1dRO+FNCIMWdHGNHBqex76Hi8Cfo36y
T5diFVcOzyPxUWbJO3PncYHR3Rsldd9xhq1OwM+WF1LpvCyG0T4pzSytIlQusosPvkrUKfUq
E5YPQ8myd5Bu2Vb/AZvhUP0CQhfdPbUh7RIB3Zm5q+mhZRBsw+4/ELlvk0VXhYL9n7URVsKh
7C6bgdppYL+TRXvoK2pJt8Lx0FpxLxxMIBucGFdPGk6/qPDJZZ2ut+/AxgqRUblCQkEuSOq+
eidAwZ2wtvZyEB4LhqpRmg7oKIwP25PY02IDTNF1gpJj9vG+aZB1maci+Ig2y2/zy+mdTu4s
TUOORg==

/

/
--------------------------------------------------------
--  DDL for Procedure ORA$_SYS_REP_AUTH
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "ORA$_SYS_REP_AUTH" as
begin
  EXECUTE IMMEDIATE 'GRANT SELECT ON SYSTEM.repcat$_repschema TO SYS ' ||
                 'WITH GRANT OPTION';
  EXECUTE IMMEDIATE 'GRANT SELECT ON SYSTEM.repcat$_repprop TO SYS ' ||
                 'WITH GRANT OPTION';
  EXECUTE IMMEDIATE 'GRANT SELECT ON SYSTEM.def$_aqcall TO SYS ' ||
                 'WITH GRANT OPTION';
  EXECUTE IMMEDIATE 'GRANT SELECT ON SYSTEM.def$_calldest TO SYS ' ||
                 'WITH GRANT OPTION';
  EXECUTE IMMEDIATE 'GRANT SELECT ON SYSTEM.def$_error TO SYS ' ||
                 'WITH GRANT OPTION';
  EXECUTE IMMEDIATE 'GRANT SELECT ON SYSTEM.def$_destination TO SYS ' ||
                 'WITH GRANT OPTION';
end;

/

/
--------------------------------------------------------
--  DDL for Synonymn CATALOG
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE SYNONYM "CATALOG" FOR "CATALOG";
/
--------------------------------------------------------
--  DDL for Synonymn COL
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE SYNONYM "COL" FOR "COL";
/
--------------------------------------------------------
--  DDL for Synonymn PRODUCT_USER_PROFILE
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE SYNONYM "PRODUCT_USER_PROFILE" FOR "SQLPLUS_PRODUCT_PROFILE";
/
--------------------------------------------------------
--  DDL for Synonymn PUBLICSYN
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE SYNONYM "PUBLICSYN" FOR "PUBLICSYN";
/
--------------------------------------------------------
--  DDL for Synonymn SYSCATALOG
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE SYNONYM "SYSCATALOG" FOR "SYSCATALOG";
/
--------------------------------------------------------
--  DDL for Synonymn SYSFILES
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE SYNONYM "SYSFILES" FOR "SYSFILES";
/
--------------------------------------------------------
--  DDL for Synonymn TAB
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE SYNONYM "TAB" FOR "TAB";
/
--------------------------------------------------------
--  DDL for Synonymn TABQUOTAS
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE SYNONYM "TABQUOTAS" FOR "TABQUOTAS";
/
--------------------------------------------------------
--  DDL for Queue DEF$_AQERROR
--------------------------------------------------------

   BEGIN DBMS_AQADM.CREATE_QUEUE(
     Queue_name          => 'DEF$_AQERROR',
     Queue_table         => 'DEF$_AQERROR',
     Queue_type          =>  0,
     Max_retries         =>  5,
     Retry_delay         =>  0,
     dependency_tracking =>  TRUE,
     comment             => 'Error Queue for Deferred RPCs');
  END;
--------------------------------------------------------
--  DDL for Queue DEF$_AQCALL
--------------------------------------------------------

   BEGIN DBMS_AQADM.CREATE_QUEUE(
     Queue_name          => 'DEF$_AQCALL',
     Queue_table         => 'DEF$_AQCALL',
     Queue_type          =>  0,
     Max_retries         =>  5,
     Retry_delay         =>  0,
     dependency_tracking =>  TRUE,
     comment             => 'Deferred RPC Queue');
  END;
--------------------------------------------------------
--  DDL for Queue Table DEF$_AQCALL
--------------------------------------------------------

   BEGIN DBMS_AQADM.CREATE_QUEUE_TABLE(
     Queue_table        => '"DEF$_AQCALL"',
     Queue_payload_type => 'VARIANT',
     storage_clause     => 'PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 TABLESPACE SYSTEM',
     Sort_list          => 'ENQ_TIME',
     Compatible         => '8.0.3');
  END;
--------------------------------------------------------
--  DDL for Queue Table DEF$_AQERROR
--------------------------------------------------------

   BEGIN DBMS_AQADM.CREATE_QUEUE_TABLE(
     Queue_table        => '"DEF$_AQERROR"',
     Queue_payload_type => 'VARIANT',
     storage_clause     => 'PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 TABLESPACE SYSTEM',
     Sort_list          => 'ENQ_TIME',
     Compatible         => '8.0.3');
  END;
