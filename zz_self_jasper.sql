-- Criteria Self for generate file ICCID
SELECT 
a.package_attribute_value || '|BK|' ||c.entity_value|| '|NULL|40000001' FORMAT 
FROM rm1_package_attributes a , rm1_package p, rm1_package_content c 
WHERE a.package_value_id = p.package_id
AND p.package_id = c.package_value_id
AND  (p.package_value BETWEEN  '896604401390197984' AND  '896604401390197985' )
AND c.entity_type = 'RESOURCE'
AND entity_type_id = 3
AND a.package_attribute_id IN ('10')

SELECT package_value FROM rm1_package 
WHERE package_status = 'ASSIGNED'

-- msisdn
SELECT COUNT(1) amount
FROM rm1_resource
WHERE resource_status = 'AVAILABLE'
AND resource_pool_id = '137'
--AND SUBSTR(resource_value,0,6) IN(
--	SELECT ndc FROM PRDREFSSC.urm9_national_ndc 
--	WHERE zone_cd = 7) -- zone 1BK 2UE 3LE 4UN 5LN 6US 7LS
--GROUP BY resource_status

SELECT resource_value
FROM rm1_resource
WHERE resource_status = 'AVAILABLE'
AND resource_pool_id = '137'
--AND SUBSTR(resource_value,0,6) IN(
--	SELECT ndc FROM PRDREFSSC.urm9_national_ndc 
--	WHERE zone_cd = 7) -- zone 1BK 2UE 3LE 4UN 5LN 6US 7LS
AND ROWNUM < 21

