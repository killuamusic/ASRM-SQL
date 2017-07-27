
PACKAGE_STATUS 895606000000000499 

SELECT package_value,PACKAGE_STATUS,LAST_ACTIVITY_NAME ,PACKAGE_POOL_ID ,LAST_ACTIVITY_DATE FROM rm1_package 
WHERE PACKAGE_STATUS = 'ASSIGNED' AND PACKAGE_POOL_ID = '63' AND ROWNUM < 50001

SELECT package_value,PACKAGE_STATUS,LAST_ACTIVITY_NAME ,PACKAGE_POOL_ID ,LAST_ACTIVITY_DATE FROM rm1_package 
WHERE package_value IN ('896600311590000000','896600311590000001','')

SELECT PACKAGE_STATUS,LAST_ACTIVITY_NAME ,PACKAGE_POOL_ID
FROM rm1_package 
WHERE package_value BETWEEN '896600351590000000' AND '896600351590000000'
--GROUP BY PACKAGE_STATUS,LAST_ACTIVITY_NAME,PACKAGE_POOL_ID

SELECT * FROM urm1_orders ORDER BY sys_creation_date DESC

SELECT * FROM rm1_package WHERE PACKAGE_STATUS = 'LOADED'

SELECT * FROM rm1_package WHERE LAST_ACTIVITY_NAME = 'UPDATE SIM OWNER'

SELECT package_value,PACKAGE_STATUS,LAST_ACTIVITY_NAME ,PACKAGE_POOL_ID ,LAST_ACTIVITY_DATE
FROM rm1_package_history 
WHERE package_value = '895606000000000495' 
ORDER BY LAST_ACTIVITY_DATE DESC

UPDATE rm1_package_history
SET LAST_ACTIVITY_DATE = SYSDATE
WHERE ACKAGE_STATUS = '' AND LAST_ACTIVITY_NAME = '' AND package_value = '895606000000000200' 

SELECT * FROM rm1_package WHERE package_value = '896604615500000003'

SELECT * FROM rm_resource_pool WHERE rrp_pool_desc LIKE 'SIM%'


SELECT* FROM rm1_resource WHERE resource_type_id = 4 AND resource_value = 10000403

SELECT* FROM RM1_REQUEST WHERE request_id IN ('187400245')

SELECT (SELECT resource_value
FROM rm1_resource
WHERE resource_id = resource_value_id) msisdn, resource_attribute_id,rtat_attr_name, resource_attr_value
FROM rm1_resource_attributes, rm_resource_tp_attr
WHERE resource_value_id IN (SELECT resource_id
FROM rm1_resource
WHERE resource_value = '187300425')
AND rtat_id = resource_attribute_id

   
   SELECT (SELECT resource_value
          FROM rm1_resource WHERE resource_id = resource_value_id) msisdn, resource_attribute_id, rtat_attr_name, resource_attr_value
  FROM rm1_resource_attributes, rm_resource_tp_attr
 WHERE resource_value_id IN (SELECT resource_id
                               FROM rm1_resource
                              WHERE resource_value = '10000403')
   AND rtat_id = resource_attribute_id


SELECT MIN(resource_value)||' - '||MAX(resource_value) LENGTH,COUNT(1) amount, resource_status
FROM rm1_resource
WHERE resource_value BETWEEN '896604311490800000' AND '896604311490800001' 
GROUP BY resource_status

SELECT PACKAGE_VALUE ,PACKAGE_POOL_ID ,PACKAGE_STATUS, LAST_ACTIVITY_NAME  FROM rm1_package 
WHERE package_value = 895606000000000499

SELECT request_status FROM rm1_request WHERE request_id = 64108 

SELECT package_value,PACKAGE_STATUS,LAST_ACTIVITY_NAME ,PACKAGE_POOL_ID ,LAST_ACTIVITY_DATE FROM rm1_package_history 
WHERE package_value IN ('895606000000000497','895606000000000498')

SELECT * FROM rm1_package_content WHERE package_value_id = '29703'

SELECT * FROM rm1_package_content WHERE package_value_id IN (
SELECT package_id FROM rm1_package WHERE package_value = '896604615500000003')

SELECT (SELECT package_value FROM rm1_package WHERE package_id = package_value_id) sim, 
package_attribute_id,rpta_attr_name, package_attribute_value
FROM rm1_package_attributes, rm_package_tp_attr WHERE package_value_id IN (SELECT package_id FROM rm1_package
WHERE package_value = '895606000000000495')
AND rpta_id = package_attribute_id

SELECT * FROM URM9_CST_GEN_PARAMS WHERE param_cd = 'SIM_TYPE'

SELECT ITEM_ID,ITEM_DESC FROM URM9_ITEM_DEFINITION

SELECT * FROM csm_dealer

SELECT * FROM tab
WHERE tname LIKE 'IT%'
