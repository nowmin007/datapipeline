! record task1.txt

CREATE TABLE PARTSUPP(
PS_PARTKEY 	DECIMAL(12)	,
PS_SUPPKEY	DECIMAL(12)	,
PS_AVAILQTY	DECIMAL(12)	,
PS_SUPPLYCOST	DECIMAL(12,2)	,
PS_COMMENT	VARCHAR(199)	 )
 ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' 
 STORED AS TEXTFILE;

LOAD DATA LOCAL INPATH 'partsupp.tbl' INTO TABLE PARTSUPP;

CREATE TABLE ORDERS(
O_ORDERKEY	DECIMAL(12)	,
O_CUSTKEY	DECIMAL(12)	,
O_ORDERSTATUS	CHAR(1)		,
O_TOTALPRICE	DECIMAL(12,2)	,
O_ORDERDATE	DATE		,
O_ORDERPRIORITY CHAR(15)	,
O_CLERK		CHAR(15)	,
O_SHIPPRIORITY	DECIMAL(12)	,
O_COMMENT	VARCHAR(79)	 )
 ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' 
 STORED AS TEXTFILE;

LOAD DATA LOCAL INPATH 'orders.tbl' INTO TABLE ORDERS;

CREATE TABLE LINEITEM(
L_ORDERKEY 	DECIMAL(12)	,
L_PARTKEY	DECIMAL(12)	,
L_SUPPKEY	DECIMAL(12)	,
L_LINENUMBER	DECIMAL(12)	,
L_QUANTITY	DECIMAL(12,2)	,
L_EXTENDEDPRICE DECIMAL(12,2)	,
L_DISCOUNT	DECIMAL(12,2)	,
L_TAX		DECIMAL(12,2)	,
L_RETURNFLAG	CHAR(1)		,
L_LINESTATUS	CHAR(1)		,
L_SHIPDATE	DATE		,
L_COMMITDATE	DATE		,
L_RECEIPTDATE	DATE		,
L_SHIPINSTRUCT	CHAR(25)	,
L_SHIPMODE	CHAR(10)	,
L_COMMENT	VARCHAR(44)	 )
 ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' 
 STORED AS TEXTFILE;

LOAD DATA LOCAL INPATH 'lineitem.tbl' INTO TABLE LINEITEM;

!record