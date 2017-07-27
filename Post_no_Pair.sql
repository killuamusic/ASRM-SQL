SELECT /*+ parallel(r,16) */ '896600151780318000 - 896600151780417999' LENGTH,tp.rpta_attr_name,att.package_attribute_value,COUNT(*)
FROM rm1_package_attributes att , rm_package_tp_attr tp
WHERE att.package_value_id IN(SELECT package_id 
	  					   	 FROM rm1_package 
							 WHERE package_type_id = 1 
							 AND  package_value BETWEEN '896600151780318000' AND '896600151780417999')
AND att.package_attribute_id IN (11)
AND tp.rpta_attr_name IN ('ITEM_ID')
 AND rpta_id = package_attribute_id
GROUP BY att.package_attribute_value,tp.rpta_attr_name;

-- chack status 
SELECT PACKAGE_STATUS ,COUNT(1) amount
FROM RM1_PACKAGE
WHERE PACKAGE_VALUE BETWEEN '896600191790030000' AND '896600191790069999'
AND package_pool_id IN (63,64)
GROUP BY PACKAGE_STATUS;

SELECT package_value FROM rm1_package 
WHERE package_value BETWEEN '896600021790953000' AND '896600021790957999'
AND package_pool_id IN (63,64)
AND package_status = 'ASSIGNED';

