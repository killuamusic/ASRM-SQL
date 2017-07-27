SELECT a.resource_id,a.resource_value,a.category_index,d.rcv_value,a.resource_pool_id,c.rrp_pool_desc, c.rrp_pool_type,
DECODE(resource_attr_value,'1','BK', '2', 'UE' , '3', 'LE', '4','UN' , '5', 'LN' , '6' ,'US','7','LS') AS zone_ngp,
a.resource_status,a.last_activity_name,a.last_activity_date
FROM RM1_RESOURCE a, RM_RESOURCE_TYPE b, RM_RESOURCE_POOL c, RM_CATEGORY_VALUES d, RM1_RESOURCE_ATTRIBUTES e--, RM_RESOURCE_TP_ATTR f   
WHERE a.resource_type_id = b.rrt_id
AND a.resource_pool_id = c.rrp_id
AND a.category_index = d.rcv_id
AND a.resource_id = e.resource_value_id 
AND e.resource_attribute_id = 17  
AND  ( resource_value BETWEEN '0640930000' AND '0640939999')


SELECT SUBSTR(a.resource_value,1,6) Prefix,a.resource_value,
a.resource_status,c.rrp_pool_desc
FROM RM1_RESOURCE a, RM_RESOURCE_TYPE b, RM_RESOURCE_POOL c, RM_CATEGORY_VALUES d, RM1_RESOURCE_ATTRIBUTES e--, RM_RESOURCE_TP_ATTR f   
WHERE a.resource_type_id = b.rrt_id
AND a.resource_pool_id = c.rrp_id
AND a.category_index = d.rcv_id
AND a.resource_id = e.resource_value_id 
--AND e.resource_attribute_id = 17  
AND  ( resource_value BETWEEN '0999920000' AND '0999929999')


SELECT COUNT(1) amount
FROM rm1_resource 
WHERE resource_value BETWEEN '0999920000' AND '0999929999'


SELECT SUBSTR(a.resource_value,1,6) Prefix,
a.resource_status,c.rrp_pool_desc,COUNT(1) amount
FROM RM1_RESOURCE a, RM_RESOURCE_TYPE b, RM_RESOURCE_POOL c, RM_CATEGORY_VALUES d--, RM1_RESOURCE_ATTRIBUTES e--, RM_RESOURCE_TP_ATTR f   
WHERE a.resource_type_id = b.rrt_id
AND a.resource_pool_id = c.rrp_id
AND a.category_index = d.rcv_id
AND resource_value LIKE '086502%'
GROUP BY SUBSTR(a.resource_value,1,6),a.resource_status,c.rrp_pool_desc