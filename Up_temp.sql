UPDATE rm1_resource SET 
resource_status = 'AVAILABLE'
WHERE resource_value = '0628249145'

UPDATE rm1_resource_history SET 
resource_status = 'AVAILABLE'
WHERE resource_value = '0628249145' 
AND resource_status = 'PORT RETURN'

UPDATE rm1_resource SET 
resource_status = 'AVAILABLE', last_activity_name = 'AGE OUT',  
resource_pool_id = '62', end_status_req_id = NULL 
WHERE resource_value = '0628249145'

UPDATE rm1_resource SET
resource_status = 'AVAILABLE', last_activity_name = 'AGE OUT', 
resource_pool_id = '12', end_status_req_id = NULL 
WHERE resource_value = '0837964697';

UPDATE rm1_resource SET 
resource_status = 'AGING', 
last_activity_name = 'RELEASE', 
resource_pool_id = '3', 
end_status_req_id = NULL 
WHERE resource_value IN (
'0838800363'
);

SELECT n.SYS_UPDATE_DATE,RESOURCE_VALUE,RESOURCE_STATUS,LAST_ACTIVITY_NAME,LAST_ACTIVITY_DATE,RRP_ID,RRP_POOL_DESC,rma.RCAS_CATEGORY_VALUE ,n.RESOURCE_PARENT_VALUE
FROM rm1_resource n,PRDREFSSC.rm_resource_pool p ,RM1_CATEGORY_ASSIGNMENTS rma
WHERE n.resource_value IN (
'0838800363'
) AND RESOURCE_POOL_ID = rrp_id(+)
AND n.CATEGORY_INDEX = rma.RCAS_INDEX
