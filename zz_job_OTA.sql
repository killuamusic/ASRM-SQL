-- 
SELECT resource_value,resource_pool_id,resource_status, p.RRP_POOL_DESC
FROM rm1_resource r , rm_resource_pool p
WHERE r.RESOURCE_POOL_ID = p.RRP_ID 
AND resource_value = '0942188058'


-- dealer 3=sim type 12=dealer 11=item id 22=PRICE_PLAN 23=EXPIRE_SELF 27=SIM_NOTE
SELECT package_value,PACKAGE_STATUS, RPTA_ATTR_NAME ,package_attribute_value , package_attribute_id,package_id ,package_value_id
FROM rm1_package ,rm1_package_attributes ,rm_package_tp_attr
WHERE package_value = '896604341390171625'--'896604341390171625'--'896604121530000000' old
AND package_value_id = package_id 
AND package_attribute_id IN ('3','12','22','23','11','27')
AND RPTA_ID = package_attribute_id

-- dealer 3=sim type 12=dealer 11=item id 22=PRICE_PLAN 23=EXPIRE_SELF 27=SIM_NOTE
SELECT package_value,PACKAGE_STATUS, RPTA_ATTR_NAME ,package_attribute_value , package_attribute_id,package_id ,package_value_id
FROM rm1_package ,rm1_package_attributes ,rm_package_tp_attr
WHERE package_value = '896600361690494000'-- new
AND package_value_id = package_id 
AND package_attribute_id IN ('3','12','22','23','11','27')
AND RPTA_ID = package_attribute_id

SELECT * FROM rm_package_tp_attr WHERE rpta_pckg_tp_id = '1' 

SELECT * FROM prdrefssc.rm_package_tp_attr WHERE rpta_pckg_tp_id = '1' 

edit rm_package_tp_attr WHERE rpta_id =27

-- delete
DELETE FROM rm1_package_attributes
WHERE package_attribute_id IN ('22','23')
AND PACKAGE_VALUE_ID = '129021675'
