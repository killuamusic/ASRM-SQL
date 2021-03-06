
SELECT RESOURCE_VALUE, RESOURCE_POOL_ID, RESOURCE_STATUS, LAST_ACTIVITY_NAME, LAST_ACTIVITY_DATE, RESOURCE_PARENT_VALUE 
FROM rm1_resource 
WHERE RESOURCE_POOL_ID = '28' AND RESOURCE_STATUS = 'AVAILABLE' AND ROWNUM < 50001

SELECT * FROM URM9_NATIONAL_NDC

SELECT REQUEST_ID, REQUEST_DATE, REQUEST_PRIORITY, REQUEST_STATUS FROM rm1_request WHERE request_id = '191342445'

SELECT * FROM urm1_orders ORDER BY sys_creation_date DESC

SELECT * FROM rm1_resource 
WHERE resource_value IN (
'0820177271'
)

SELECT * FROM service_agreement
WHERE agreement_no = '17367719'

SELECT resource_type_id,resource_value,resource_pool_id,resource_status,last_activity_name,last_activity_date,category_index,RESOURCE_PARENT_VALUE 
FROM rm1_resource 
WHERE resource_value IN ('0962104547','')

SELECT RESOURCE_VALUE, RESOURCE_POOL_ID, RESOURCE_STATUS, LAST_ACTIVITY_NAME, LAST_ACTIVITY_DATE, RESOURCE_PARENT_VALUE 
FROM rm1_resource 
WHERE resource_value = '0962104547'

SELECT RESOURCE_VALUE, RESOURCE_POOL_ID, RESOURCE_STATUS, LAST_ACTIVITY_NAME, LAST_ACTIVITY_DATE, RESOURCE_PARENT_VALUE FROM rm1_resource 
WHERE resource_value LIKE '096279%'
ORDER BY LAST_ACTIVITY_DATE

SELECT RESOURCE_VALUE, RESOURCE_POOL_ID, RESOURCE_STATUS, LAST_ACTIVITY_NAME, LAST_ACTIVITY_DATE, RESOURCE_PARENT_VALUE 
FROM rm1_resource_history
WHERE resource_value = '0820177271' 
ORDER BY LAST_ACTIVITY_DATE DESC

SELECT * FROM rm_resource_pool WHERE rrp_pool_desc LIKE 'SIM%'

SELECT * FROM rm_resource_pool WHERE rrp_id = '3'

SELECT * FROM rm_category_values --WHERE rcv_id = 2

SELECT rs.LAST_ACTIVITY_DATE,rs.LAST_ACTIVITY_NAME,rs.RESOURCE_TYPE_ID,rs.RESOURCE_VALUE,rs.RESOURCE_STATUS,rs.RESOURCE_POOL_ID,rmp.RRP_POOL_DESC,rs.CATEGORY_INDEX,rma.RCAS_CATEGORY_VALUE 
FROM RM1_RESOURCE rs, rm_resource_pool rmp, RM1_CATEGORY_ASSIGNMENTS rma
WHERE rs.RESOURCE_POOL_ID = rmp.rrp_id(+)
AND rs.category_index = rma.RCAS_INDEX
AND rs.resource_value = '0820177271'

SELECT * FROM service_agreement
