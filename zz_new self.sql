SELECT p.package_value,atp.rpta_attr_name,att.PACKAGE_ATTRIBUTE_VALUE
FROM rm1_package p, rm_package_tp_attr atp, rm1_package_attributes att
WHERE p.package_type_id = 1
AND p.package_value BETWEEN '896600341691040000' AND '896600341691049999'
AND rpta_id =10
AND p.package_id = att.package_value_id
AND att.package_attribute_id = atp.rpta_id 

-- pp
SELECT soc_name,soc_description, sale_exp_date,soc_type
FROM csm_offer  
WHERE soc_type = 'P'
AND soc_name = 'R15NSBALL'
AND sale_exp_date > SYSDATE
AND (sale_exp_date > TRUNC(SYSDATE) OR sale_exp_date IS NULL)
AND sale_eff_date <= TRUNC(SYSDATE)

-- ITEM ID
SELECT item_id,item_desc FROM URM9_ITEM_DEFINITION WHERE item_id = 'SELFTRUESTSI' 

-- ExpireSelf
SELECT /*+parallel(32) */ PACKAGE_VALUE,PACKAGE_ATTRIBUTE_VALUE,PACKAGE_STATUS,PACKAGE_ID ,TO_CHAR(SYSDATE,'dd/MM/yyyy') 
FROM rm1_package p,rm1_package_attributes att 
WHERE PACKAGE_STATUS IN ('AVAILABLE','RESERVED') 
AND package_attribute_id = '23' 
AND package_value_id = PACKAGE_ID 
AND SUBSTR(PACKAGE_ATTRIBUTE_VALUE,1,2) <= TO_CHAR(SYSDATE,'dd') 
AND SUBSTR(PACKAGE_ATTRIBUTE_VALUE,4,2) <= TO_CHAR(SYSDATE,'MM')
AND SUBSTR(PACKAGE_ATTRIBUTE_VALUE,7,4) <= TO_CHAR(SYSDATE,'yyyy')

AND SUBSTR(PACKAGE_ATTRIBUTE_VALUE,1,2) <= TO_CHAR(SYSDATE,'dd') -- '31' -- TO_CHAR(SYSDATE,'dd') -- SUBSTR(TO_CHAR(SYSDATE,'dd/MM/yyyy'),1,2)
AND SUBSTR(PACKAGE_ATTRIBUTE_VALUE,4,2) <= TO_CHAR(SYSDATE,'MM') -- '07' -- TO_CHAR(SYSDATE,'MM') SUBSTR(TO_CHAR(SYSDATE,'dd/MM/yyyy'),4,2)
AND SUBSTR(PACKAGE_ATTRIBUTE_VALUE,7,4) <= TO_CHAR(SYSDATE,'yyyy') -- '2016' -- TO_CHAR(SYSDATE,'yyyy') SUBSTR(TO_CHAR(SYSDATE,'dd/MM/yyyy'),7,4)
--AND PACKAGE_ATTRIBUTE_VALUE <= '30/07/2016'
--AND TO_DATE(TO_DATE(att.PACKAGE_ATTRIBUTE_VALUE,'dd/MM/yyyy'),'dd/MM/yyyy') >= TO_DATE(SYSDATE,'dd/MM/yyyy')
--AND PACKAGE_ATTRIBUTE_VALUE <= TO_CHAR('30/07/2016') --30/04/2017 31/03/2017
--AND TO_DATE(TO_DATE(att.PACKAGE_ATTRIBUTE_VALUE,'DD/MM/YYYY'),'DD/MM/YYYY') >= TO_DATE(SYSDATE,'DD/MM/YYYY') 


SELECT /*+parallel(32) */ PACKAGE_VALUE,PACKAGE_STATUS,PACKAGE_ID 
FROM rm1_package 
WHERE package_type_key = 1
AND package_id IN(SELECT package_value_id FROM rm1_package_attributes WHERE package_attribute_id = 12 AND package_attribute_value = '40000001')
AND package_status IN('AVAILABLE','RESERVED') 

SELECT package_value,PACKAGE_STATUS, RPTA_ATTR_NAME ,package_attribute_value , package_attribute_id,package_id ,package_value_id
FROM rm1_package ,rm1_package_attributes ,rm_package_tp_attr
WHERE package_value = '896600461691045999'
AND package_value_id = package_id 
AND package_attribute_id IN ('3','12','22','23')
AND RPTA_ID = package_attribute_id

-- delete
DELETE FROM rm1_package_attributes
WHERE package_attribute_id IN ('22','23')
AND PACKAGE_VALUE_ID = '230631438'

-- sim profile
SELECT 'PRE' ACT_CAT,c.prim_resource_val ctn,c.expiration_date ctn_exp_date,s.prim_resource_val sim,s.expiration_date sim_exp_date	
FROM true9_prepaid_resource s,true9_prepaid_resource c	
WHERE s.hbp_subscriber_no = c.hbp_subscriber_no	
AND s.prim_resource_val = '896600511590072678'	
AND s.prim_resource_tp = 'S'	
AND s.expiration_date IS NULL	
AND c.prim_resource_tp = 'C'	
AND c.expiration_date IS NULL	
UNION ALL   	
SELECT 'POS' ACT_CAT, ar2.resource_value ctn ,ar2.expiration_date ctn_exp_date, ar1.resource_value,ar1.expiration_date sim_exp_date 	
FROM agreement_resource ar1,agreement_resource ar2 WHERE ar1.agreement_no  = ar2.agreement_no 	
AND ar1.resource_type = 'S'	
AND ar1.resource_value = '896600511590072678'	
AND ar1.expiration_date IS NULL	
AND ar2.resource_type = 'C'	
AND ar2.expiration_date IS NULL 	



-----------------------

SELECT ENTITY_VALUE FROM rm1_package_content
WHERE package_value_id IN (SELECT package_id FROM rm1_package 
WHERE package_value = '896600461690961000') 
AND entity_type = 'RESOURCE' 
AND entity_type_id = 1
