--CHECK demon process 
SELECT /*+ parralel(16) */ SYSDATE ,COUNT(*) FROM rm1_request a WHERE a.request_status IN  ('PROCESSED' , 'ERROR')

-- 7254 217638
SELECT /*+parallel(16) */ REQUEST_STATUS,entity_type,COUNT(*)
FROM prdappo.RM1_REQUEST 
--WHERE TO_CHAR(request_date,'YYYYMMDD') > '20161103'
--AND TO_CHAR(request_date,'YYYYMMDD') < '20161104'
WHERE TO_CHAR(request_date,'YYYYMMDD') = '20161227'
--AND entity_type = 'BULK' 
GROUP BY entity_type,REQUEST_STATUS

-- bat
SELECT ORDER_ID ,FILE_NAME ,ORDER_STATUS ,UNIFIED_RES_TYPE ,LAST_ORDER_STATUS ,SUCCESS_COUNT ,ERROR_COUNT ,SYS_CREATION_DATE ,SYS_UPDATE_DATE ,PROCESS_MODE 
FROM urm1_orders
WHERE FILE_NAME LIKE '%UR%.txt'
AND TO_CHAR(SYS_CREATION_DATE,'YYYYMMDD') = '20161228'
ORDER BY ORDER_ID DESC

SELECT * FROM rm1_request WHERE parent_request_id IN('258059698','258059699') 

SELECT * FROM prdappo.RM1_REQUEST WHERE parent_request_id = '258059698'

SELECT /*+parallel(16) */ REQUEST_STATUS,entity_type,parent_request_id
FROM prdappo.RM1_REQUEST 
WHERE TO_CHAR(request_date,'YYYYMMDD') > '20151015'
AND TO_CHAR(request_date,'YYYYMMDD') < '20151030'
AND entity_type = 'BULK' 
AND REQUEST_STATUS = 'ERROR'
--GROUP BY entity_type,REQUEST_STATUS

SELECT * FROM prdappo.rm1_request WHERE parent_request_id = '199823287'--198355609 198350215 198355601

SELECT /*+parallel(16) */ *
FROM prdappo.RM1_REQUEST 
WHERE TO_CHAR(request_date,'YYYYMMDD') > '20150927'
AND TO_CHAR(request_date,'YYYYMMDD') < '20150929'
AND request_status = 'PROCESSED'
--GROUP BY request_status,TO_CHAR(request_date,'YYYYMMDD')
--ORDER BY TO_CHAR(request_date,'YYYYMMDD') 

21/9/2015 19:44:36  2439348

SELECT /*+ parralel(16) */ SYSDATE ,COUNT(*),request_date FROM rm1_request a WHERE a.request_status IN  ('PROCESSED' , 'ERROR')
GROUP BY request_Date  ORDER BY request_date

SELECT /*+ parralel(16) */ SYSDATE ,COUNT(*) FROM rm1_request a WHERE a.entity_type = 'DAEMON'

SELECT /*+ parralel(16) */ SYSDATE ,COUNT(*), request_status , request_date  FROM rm1_request WHERE request_date = SYSDATE - 3
GROUP BY request_status , request_date

21/9/2015 19:18:59 2418921

21/9/2015 19:19:46  2420361

1440 /13 Mins  ==>   1 MIN /100 RECORD



SELECT /*+parallel(16) */request_status,TO_CHAR(request_date,'YYYYMMDD'),ctcv_conv_id,COUNT(*) ,entity_type
FROM prdappo.RM1_REQUEST 
WHERE TO_CHAR(request_date,'YYYYMMDD') > '20150915'
AND TO_CHAR(request_date,'YYYYMMDD') < '20150923'
GROUP BY request_status,TO_CHAR(request_date,'YYYYMMDD'),ctcv_conv_id ,entity_type
ORDER BY TO_CHAR(request_date,'YYYYMMDD'); 


SELECT * FROM prdappo.rm1_request WHERE entity_value = '896600211590470023'

SELECT /*+parallel(16) */request_status,TO_CHAR(request_date,'YYYYMMDD'),COUNT(*) ,entity_type
FROM prdappo.RM1_REQUEST 
WHERE TO_CHAR(request_date,'YYYYMMDD') > '20150920'
AND TO_CHAR(request_date,'YYYYMMDD') < '20150923'
GROUP BY request_status,TO_CHAR(request_date,'YYYYMMDD'),entity_type
ORDER BY TO_CHAR(request_date,'YYYYMMDD');

SELECT /*+parallel(16) */request_status,TO_CHAR(request_date,'YYYYMMDD'),COUNT(*)
FROM prdappo.RM1_REQUEST 
WHERE TO_CHAR(request_date,'YYYYMMDD') > '20150921'
AND TO_CHAR(request_date,'YYYYMMDD') < '20150922'
GROUP BY request_status,TO_CHAR(request_date,'YYYYMMDD')
ORDER BY TO_CHAR(request_date,'YYYYMMDD');

SELECT * FROM prdappo.rm1_request WHERE parent_request_id = '198350211'

SELECT /*+parallel(16) */ request_status,TO_CHAR(request_date,'YYYYMMDD'),COUNT(*)
FROM prdappo.RM1_REQUEST 
WHERE TO_CHAR(request_date,'YYYYMMDD') > '20150921'
AND TO_CHAR(request_date,'YYYYMMDD') < '20150923'
GROUP BY request_status,TO_CHAR(request_date,'YYYYMMDD')
ORDER BY TO_CHAR(request_date,'YYYYMMDD') 

SELECT /*+parallel(16) */ SYSDATE, COUNT(*)
FROM RM1_REQUEST a
WHERE a.REQUEST_STATUS IN ('PROCESSED','ERROR')

SELECT /*+parallel(16) */ SYSDATE, COUNT(*)
FROM RM1_REQUEST a
WHERE a.ENTITY_TYPE = 'DAEMON'

-- chk gam
SELECT /*+parallel(16) */ REQUEST_STATUS,entity_type,COUNT(*)
FROM prdappo.RM1_REQUEST 
WHERE TO_CHAR(request_date,'YYYYMMDD') > '20160101'
AND TO_CHAR(request_date,'YYYYMMDD') < '20160130'
--AND entity_type = 'BULK' 
GROUP BY entity_type,REQUEST_STATUS

-- error day 27092015
UPDATE RM1_REQUEST 
SET REQUEST_STATUS = 'ERROR_X_O'
WHERE parent_request_id IN (
'194204577'
)


UPDATE rm1_request
SET request_status = 'TO_BE_PROCESSED'
WHERE request_status LIKE 'HOLD%'
AND ctcv_conv_id IS NULL
AND TO_CHAR(request_date,'YYYYMMDD') > '20150923'
AND TO_CHAR(request_date,'YYYYMMDD') < '20151002'

