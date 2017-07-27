-- q override
SELECT n.SYS_UPDATE_DATE,RESOURCE_VALUE,RESOURCE_STATUS,LAST_ACTIVITY_NAME,LAST_ACTIVITY_DATE,RRP_ID,RRP_POOL_DESC,rma.RCAS_CATEGORY_VALUE ,n.RESOURCE_PARENT_VALUE
FROM rm1_resource n,rm_resource_pool p ,RM1_CATEGORY_ASSIGNMENTS rma
WHERE n.resource_value IN (

) AND RESOURCE_POOL_ID = rrp_id(+)
AND n.CATEGORY_INDEX = rma.RCAS_INDEX
AND RESOURCE_STATUS <> 'ACTIVE'
AND RESOURCE_STATUS <> 'AVAILABLE'

-- q ctn|pool
-- override reassign
SELECT RESOURCE_VALUE,RRP_ID --,RESOURCE_STATUS,LAST_ACTIVITY_NAME
FROM rm1_resource n,PRDREFSSC.rm_resource_pool p ,RM1_CATEGORY_ASSIGNMENTS rma
WHERE n.resource_value IN (
'0910471318'
) AND RESOURCE_POOL_ID = rrp_id(+)
AND n.CATEGORY_INDEX = rma.RCAS_INDEX
AND RESOURCE_STATUS <> 'ACTIVE'
AND RESOURCE_STATUS <> 'AVAILABLE'


-- P'gif reassign to pool temp 62 (if pool type s too re to temp.)
SELECT a.resource_id--,a.application_id,a.resource_type_id,b.rrt_type
,a.resource_value,a.category_index,d.rcv_value
,a.resource_pool_id,c.rrp_pool_desc, c.rrp_pool_type
,a.resource_status,a.last_activity_name,a.last_activity_date,a.last_activity_issue_date
,resource_parent_type_id,resource_parent_value,resource_parent_value_id
FROM RM1_RESOURCE a, RM_RESOURCE_TYPE b, RM_RESOURCE_POOL c, RM_CATEGORY_VALUES d--, RM1_RESOURCE_ATTRIBUTES e, RM_RESOURCE_TP_ATTR f   
WHERE a.resource_type_id = b.rrt_id
AND a.resource_pool_id = c.rrp_id
AND a.category_index = d.rcv_id
--and a.resource_id = e.resource_value_id   
--and resource_value in '0961290158' --('0957732622', '0961290044')
AND resource_value IN (
'0830944561',
)
--and c.rrp_pool_type = 'S'
