SELECT * FROM rm1_package WHERE PACKAGE_VALUE = '896604211590742363' --680544 PACKAGE_ID

SELECT * FROM rm1_package_history WHERE PACKAGE_VALUE = '896600221390154966'

SELECT * FROM RM1_RESOURCE WHERE resource_parent_value = '896600221390154966' --680544 resource_parent_value_ID

SELECT /*+ INDEX ( RM1_PACKAGE_HISTORY , RM1_PACKAGE_HISTORY_2IX ) */* FROM rm1_resource_history WHERE resource_parent_value_ID = '680544'
AND resource_type_id IN ('2','3')

UPDATE rm1_package 
SET OPERATOR_ID = '455071'
WHERE package_value = '896600221390154966'

UPDATE rm1_package_history sh1 
SET sh1.OPERATOR_ID = '455071'
WHERE package_value = '896600221390154966'
AND sh1.last_activity_date = (SELECT  /*+ INDEX ( RM1_PACKAGE_HISTORY , RM1_PACKAGE_HISTORY_2IX ) */ MAX(last_activity_date) 
FROM rm1_package_history sh2 
WHERE sh2.package_value = sh1.package_value) 

UPDATE RM1_RESOURCE 
SET OPERATOR_ID = '455071' 
WHERE resource_parent_value = '896600221390154966'

UPDATE rm1_resource_history sh1 
SET sh1.operator_id = '455071' 
WHERE resource_parent_value_ID = '680544'
AND sh1.last_activity_date = (SELECT  /*+ INDEX ( RM1_PACKAGE_HISTORY , RM1_PACKAGE_HISTORY_2IX ) */ MAX(last_activity_date) 
FROM rm1_resource_history sh2 
WHERE sh2.resource_parent_value = sh1.resource_parent_value)


--======== sim type , dealer
SELECT param_cd,param_val  
FROM urm9_cst_gen_params 
WHERE param_cd = 'SIM_TYPE'
AND param_val = '3'

SELECT DEALER 
FROM CSM_DEALER 
WHERE EXPIRATION_DATE IS NULL 
AND DEALER = '40000001'

SELECT PACKAGE_ID
FROM RM1_PACKAGE
WHERE RM1_PACKAGE.PACKAGE_TYPE_ID = '1'
AND PACKAGE_VALUE = '896600221390154966'

UPDATE rm1_package_attributes 
SET OPERATOR_ID = 'user'
WHERE package_value_id = '<PACKAGE_ID>'  
AND package_attribute_id IN (3,12)

SELECT * FROM rm1_package_attributes
WHERE package_value_id = '122410205'
AND package_attribute_id IN (3,12)

