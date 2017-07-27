-- dealer 3=sim type 12=dealer 11=item id 22=PRICE_PLAN 23=EXPIRE_SELF
SELECT PACKAGE_STATUS, RPTA_ATTR_NAME ,package_attribute_value , package_attribute_id,COUNT(*)
FROM rm1_package ,rm1_package_attributes ,rm_package_tp_attr
WHERE package_value BETWEEN '896600211790485000' AND '896600211790584999'
AND package_value_id = package_id 
AND package_attribute_id IN ('23','22')
AND RPTA_ID = package_attribute_id
--AND package_attribute_value <> '31/05/2017'
GROUP BY PACKAGE_STATUS, RPTA_ATTR_NAME ,package_attribute_value , package_attribute_id;

-- sim not pp
SELECT package_value FROM rm1_package 
WHERE package_value BETWEEN '896600151790073000' AND '896600151790082999'
AND package_id NOT IN(SELECT package_value_id FROM rm1_package_attributes WHERE package_attribute_id = '22');

-- ExpireSelf /*+parallel(32) */
SELECT PACKAGE_VALUE,PACKAGE_ATTRIBUTE_VALUE,PACKAGE_STATUS,PACKAGE_ID ,TO_CHAR(SYSDATE,'dd/MM/yyyy') 
FROM rm1_package pp,rm1_package_attributes att 
WHERE pp.PACKAGE_ID = att.package_value_id
AND att.PACKAGE_TYPE_KEY = 1 
AND pp.PACKAGE_STATUS IN ('AVAILABLE','RESERVED','AVAILABLE SP','PREACTIVATED')
AND att.package_attribute_id = '23' 
AND SUBSTR(PACKAGE_ATTRIBUTE_VALUE,7,4) <= TO_CHAR(SYSDATE,'yyyy')
AND SUBSTR(PACKAGE_ATTRIBUTE_VALUE,4,2) <= TO_CHAR(SYSDATE+5,'MM')
AND SUBSTR(PACKAGE_ATTRIBUTE_VALUE,1,2) <= TO_CHAR(SYSDATE+7,'dd');

-- Query msisdn
SELECT ENTITY_VALUE FROM rm1_package_content 
WHERE package_value_id IN(SELECT package_id 
FROM rm1_package WHERE PACKAGE_VALUE = '896600161790022005')
AND ENTITY_TYPE = 'RESOURCE'
AND ENTITY_TYPE_ID = '1';

-- chack status
SELECT PACKAGE_STATUS ,COUNT(1) amount
FROM RM1_PACKAGE 
WHERE PACKAGE_VALUE BETWEEN '896600041790314001' AND '896600041790324000'
AND package_pool_id IN (63,64)
GROUP BY PACKAGE_STATUS;

SELECT package_value FROM rm1_package 
WHERE package_value BETWEEN '896600041790314001' AND '896600041790324000'
AND package_pool_id IN (63,64)
AND package_status = 'ASSIGNED'
--AND package_status = 'AVAILABLE SP'
--AND package_status = 'PAIRED'
--AND package_status = 'SP ITEM ID'
--AND package_status = 'PREACTIVATED'
--AND package_status = 'EXPIRED'
--AND package_status = 'SIM ITEM ID'
;

-- PP
SELECT MIN(PACKAGE_VALUE)||' - '||MAX(PACKAGE_VALUE) LENGTH,
RPTA_ATTR_NAME ,package_attribute_value , COUNT(*)
FROM rm1_package ,rm1_package_attributes ,rm_package_tp_attr
WHERE package_value BETWEEN '896600151790073000' AND '896600151790082999'
AND package_value_id = package_id 
AND package_attribute_id IN ('22')
AND RPTA_ID = package_attribute_id
GROUP BY RPTA_ATTR_NAME ,package_attribute_value , package_attribute_id;
