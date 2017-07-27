-- update port out
SELECT rr.resource_value,rr.resource_pool_id,
(SELECT rrp_pool_desc FROM rm_resource_pool WHERE rrp_id = rr.resource_pool_id) pool_desc,rrta.rtat_id,rrta.rtat_attr_name,
rra.resource_attr_value,rra.sys_creation_date,rra.sys_update_date,rra.ctcv_conv_id 
FROM rm1_resource_attributes rra,rm1_resource rr,rm_resource_tp_attr rrta
WHERE rra.resource_value_id = rr.resource_id
AND rra.resource_attribute_id = rrta.rtat_id
AND rr.resource_value = '0863474439'
ORDER BY sys_creation_date

SELECT n.SYS_UPDATE_DATE,RESOURCE_VALUE,RESOURCE_STATUS,LAST_ACTIVITY_NAME,LAST_ACTIVITY_DATE,RRP_ID,RRP_POOL_DESC,rma.RCAS_CATEGORY_VALUE ,n.RESOURCE_PARENT_VALUE
FROM rm1_resource n,PRDREFSSC.rm_resource_pool p ,RM1_CATEGORY_ASSIGNMENTS rma
WHERE n.resource_value IN (
'0863474439'
) AND RESOURCE_POOL_ID = rrp_id(+)
AND n.CATEGORY_INDEX = rma.RCAS_INDEX