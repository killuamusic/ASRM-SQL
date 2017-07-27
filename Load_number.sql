SELECT resource_value,  resource_status, RRP_POOL_DESC Pool,
DECODE(category_index,'1','ORANUM','2','PLATINUM','3','GOLD','4','SILVER','5','BRONZE','6','REGULAR') levell ,--,last_activity_name
DECODE(zone_cd,'1','BK','2','UE','3','LE','4','UN','5','LN','6','US','7','LS') Zone_NGP
FROM rm1_resource ,PRDREFSSC.rm_resource_pool p,PRDREFSSC.urm9_national_ndc
WHERE resource_value 
BETWEEN '0645890000' AND '0645899999'
--AND category_index = '6'
--AND resource_status = 'AVAILABLE'
AND RESOURCE_POOL_ID = rrp_id(+)
AND SUBSTR(resource_value,0,6) = ndc;

-- check sum
SELECT last_activity_name,resource_status, COUNT(*) FROM rm1_resource 
WHERE resource_value 
BETWEEN '0645865000' AND '0645869999'
--AND resource_status = 'LOADED'
GROUP BY last_activity_name,resource_status;

-- list miunber
SELECT resource_value
FROM rm1_resource 
WHERE resource_value 
BETWEEN '0645865000' AND '0645869999'
AND category_index = '6'
AND resource_status = 'LOADED'
--AND resource_status = 'AVAILABLE'
;

-- request
SELECT * FROM RM1_REQUEST WHERE parent_request_id = '259258110'

UPDATE RM1_REQUEST 
SET REQUEST_STATUS = 'CANCEL'
WHERE request_id IN (
'259343591',
'259343590'
)

-- check prefix
SELECT * FROM URM9_NATIONAL_NDC WHERE ndc LIKE '064701%' 

-- pool  RMVORIGIN_108
SELECT * FROM rm_resource_pool WHERE rrp_pool_desc LIKE 'RMVBIZ%'

-- Load MSISDN
SELECT a.resource_value,a.category_index,d.rcv_value,a.resource_pool_id,c.rrp_pool_desc, c.rrp_pool_type,
DECODE(resource_attr_value,'1','BK', '2', 'UE' , '3', 'LE', '4','UN' , '5', 'LN' , '6' ,'US','7','LS') AS zone_ngp,
a.resource_status,a.last_activity_name
FROM RM1_RESOURCE a, RM_RESOURCE_TYPE b, RM_RESOURCE_POOL c, RM_CATEGORY_VALUES d, RM1_RESOURCE_ATTRIBUTES e--, RM_RESOURCE_TP_ATTR f   
WHERE a.resource_type_id = b.rrt_id
AND a.resource_pool_id = c.rrp_id
AND a.category_index = d.rcv_id
AND a.resource_id = e.resource_value_id 
AND e.resource_attribute_id = 17  
AND  ( resource_value BETWEEN '0647013000' AND '0647017999')

-- 782, 789, 289
SELECT resource_value --,rma.RCAS_CATEGORY_VALUE nice_level
FROM rm1_resource a,RM1_CATEGORY_ASSIGNMENTS rma
WHERE resource_status = 'LOADED'
AND CATEGORY_INDEX = rma.RCAS_INDEX
AND resource_value 
BETWEEN '0645800000' AND '0645849999'
AND (SUBSTR(resource_value,2,3) IN ('782','789','289')
OR SUBSTR(resource_value,3,3) IN ('782','789','289')
OR SUBSTR(resource_value,4,3) IN ('782','789','289')
OR SUBSTR(resource_value,5,3) IN ('782','789','289')
OR SUBSTR(resource_value,6,3) IN ('782','789','289')
OR SUBSTR(resource_value,7,3) IN ('782','789','289')
OR SUBSTR(resource_value,8,3) IN ('782','789','289'))

-- bat
SELECT ORDER_ID ,FILE_NAME ,ORDER_STATUS ,UNIFIED_RES_TYPE ,LAST_ORDER_STATUS ,SUCCESS_COUNT ,ERROR_COUNT ,SYS_CREATION_DATE ,SYS_UPDATE_DATE ,PROCESS_MODE 
FROM urm1_orders
WHERE FILE_NAME LIKE '%UR%.txt'
AND TO_CHAR(SYS_CREATION_DATE,'YYYYMMDD') = '20170303'
ORDER BY ORDER_ID DESC
-- output bat /AP_CM01/trbdata01/pcmwrk01/var/tru/projs/rm/output

0645870000	0645879999	10,000
0645890000	0645899999	10,000