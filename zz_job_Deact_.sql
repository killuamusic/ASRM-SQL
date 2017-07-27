-- deact pair
SELECT PACKAGE_VALUE ,PACKAGE_ID,PACKAGE_STATUS
FROM RM1_PACKAGE 
WHERE PACKAGE_VALUE = '896604061680400000'  

SELECT s.SYS_UPDATE_DATE,PACKAGE_VALUE,PACKAGE_STATUS,LAST_ACTIVITY_NAME,RRP_ID,RRP_POOL_DESC,LAST_ACTIVITY_DATE,LAST_ACTIVITY_ISSUE_DATE ,package_id
FROM rm1_package s,rm_resource_pool p
WHERE PACKAGE_VALUE IN (
'896604241420999537'
) AND PACKAGE_POOL_ID = rrp_id

SELECT package_value,PACKAGE_STATUS, RPTA_ATTR_NAME ,package_attribute_value , package_attribute_id,package_id ,package_value_id
FROM rm1_package ,rm1_package_attributes ,rm_package_tp_attr
WHERE package_value = '896604241420999537'
AND package_value_id = package_id 
AND package_attribute_id IN ('3','12','22','23')
AND RPTA_ID = package_attribute_id

-- delete
DELETE FROM rm1_package_attributes
WHERE package_attribute_id IN ('22','23')
AND PACKAGE_VALUE_ID = '428831'