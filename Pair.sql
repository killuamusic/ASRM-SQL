-- Pool 131_RMVSRMP60 11_RFTSRM60 45_RMVLKRS1 46_RMVLKRS2 28_RFTLKR1 29_RFTLKR2 /*+ FULL(rm1_resource) PARALLEL(rm1_resource,10) */
SELECT * FROM rm_resource_pool WHERE rrp_pool_desc LIKE 'RMVTMVNEW%';

SELECT * FROM urm9_cst_gen_params WHERE param_cd IN ('ZONE','SIM_TYPE','COMPANY');

SELECT resource_value --/*+ full(a) */ 
FROM rm1_resource a 
WHERE resource_status = 'AVAILABLE'
AND LAST_ACTIVITY_NAME <> 'ASSIGN OWN'
AND category_index IN ('6') -- level ORANUM_1 PLATINUM_2 GOLD_3 SILVER_4 BRONZE_5 REGULAR_6
AND resource_pool_id = '137' -- Pool 131_RMVSRMP60 11_RFTSRM60 45_RMVLKRS1 46_RMVLKRS2 28_RFTLKR1 29_RFTLKR2 59_RMVSRM60(post) 147_RMVSRMP50 137_RFTEJESP
--AND SUBSTR(resource_value,0,6) IN(
--SELECT /*+ full(b) */ndc FROM urm9_national_ndc b 
--	WHERE company_cd = 02) -- 02 RMV, 06 RFT
--	WHERE zone_cd = '7') -- zone 1BK 2UE 3LE 4UN 5LN 6US 7LS
AND ROWNUM < 11;

SELECT package_value FROM rm1_package 
WHERE package_value BETWEEN '896600191790130000' AND '896600191790154999'
AND package_pool_id IN (63,64)
AND package_status = 'ASSIGNED'
--AND package_status = 'AVAILABLE SP'
--AND package_status = 'PAIRED'
--AND package_status = 'SP ITEM ID'
--AND package_status = 'PREACTIVATED'
--AND package_status = 'ACTIVE'
--AND package_status = 'EXPIRED'
--AND package_status = 'AGING'
--AND package_status = 'RESERVED'
--AND package_status = 'SIM ITEM ID'
;

-- chack status
SELECT PACKAGE_STATUS ,COUNT(1) amount
FROM RM1_PACKAGE 
WHERE PACKAGE_VALUE BETWEEN '896600141760411000' AND '896600141760480999'
AND package_pool_id IN (63,64)
GROUP BY PACKAGE_STATUS;

--check PP
SELECT * FROM csm_offer 
WHERE soc_type = 'P' 
AND soc_name = 'R16NVDMO1' 
AND (sale_exp_date > TRUNC(SYSDATE) OR sale_exp_date IS NULL) 
AND sale_eff_date <= TRUNC(SYSDATE) ;

SELECT /*+parallel(rm1_resource,16) */ category_index,COUNT(1) amount
FROM rm1_resource u
WHERE resource_status = 'AVAILABLE'
--AND operator_id NOT IN ('97451','18476') -- id OMX 
--AND LAST_ACTIVITY_NAME <> 'ASSIGN OWN'
AND category_index IN ('6','5') -- level
AND resource_pool_id = '131'
GROUP BY category_index;

--================================================
--check amount
SELECT /*+ full(rm1_resource) */
resource_pool_id,category_index,COUNT(1) amount
FROM rm1_resource 
WHERE resource_type_key = '0'
AND resource_pool_id in ('131','154','147')
AND category_index in ('5','6')
AND resource_status = 'AVAILABLE'
AND last_activity_name <> 'ASSIGN OWN'
AND SUBSTR(resource_value,2,3) NOT IN ('289','782','789')
AND SUBSTR(resource_value,3,3) NOT IN ('289','782','789')
AND SUBSTR(resource_value,4,3) NOT IN ('289','782','789')
AND SUBSTR(resource_value,5,3) NOT IN ('289','782','789')
AND SUBSTR(resource_value,6,3) NOT IN ('289','782','789')
AND SUBSTR(resource_value,7,3) NOT IN ('289','782','789')
AND SUBSTR(resource_value,8,3) NOT IN ('289','782','789')
GROUP BY resource_pool_id,category_index;

SELECT /*+parallel(rm1_package,8) */ PACKAGE_STATUS FROM rm1_package 
WHERE package_value BETWEEN '896600341691949988' AND '896600341691949988' 
AND package_pool_id IN (63,64)
GROUP BY PACKAGE_STATUS

SELECT * FROM rm1_resource rs,RM1_RESOURCE_ATTRIBUTES rra, RM_RESOURCE_TP_ATTR rrta --resource_value,RESOURCE_POOL_ID, RESOURCE_STATUS
WHERE RESOURCE_STATUS = 'AVAILABLE'
AND RESOURCE_POOL_ID = '59'
AND category_index = '6'
AND rra.resource_attribute_id = rrta.rtat_id(+)
AND rs.resource_id = rra.resource_value_id

SELECT rs.LAST_ACTIVITY_DATE,rs.LAST_ACTIVITY_NAME,rs.RESOURCE_TYPE_ID,rs.RESOURCE_VALUE,rs.RESOURCE_STATUS,rs.RESOURCE_POOL_ID,rmp.RRP_POOL_DESC,rs.CATEGORY_INDEX,rma.RCAS_CATEGORY_VALUE 
FROM RM1_RESOURCE rs, rm_resource_pool rmp, RM1_CATEGORY_ASSIGNMENTS rma
WHERE rs.RESOURCE_POOL_ID = rmp.rrp_id(+)
AND rs.category_index = rma.RCAS_INDEX
AND rs.resource_value = '0820433333'

SELECT rs.resource_value, rs.resource_status, rrta.rtat_id, rrta.rtat_attr_name, rra.resource_attr_value
FROM RM1_RESOURCE rs, RM1_RESOURCE_ATTRIBUTES rra, RM_RESOURCE_TP_ATTR rrta
WHERE rs.resource_id = rra.resource_value_id
AND rra.resource_attribute_id = rrta.rtat_id(+)
AND rs.resource_value = '0968025888'

SELECT * FROM rm1_resource

SELECT * FROM RM1_RESOURCE_ATTRIBUTES WHERE resource_attribute_id = '17' AND resource_attr_value = '1'

SELECT * FROM RM_RESOURCE_TP_ATTR WHERE rtat_id = '17'

SELECT COUNT(*), RESOURCE_POOL_ID, RESOURCE_STATUS
FROM rm1_resource 
WHERE RESOURCE_POOL_ID IN (
SELECT RRP_ID FROM rm_resource_pool WHERE rrp_pool_desc LIKE 'RMVSRM60'
) AND RESOURCE_STATUS = 'AVAILABLE'
AND RESOURCE_TYPE_ID = '1'
GROUP BY RESOURCE_POOL_ID, RESOURCE_STATUS

SELECT COUNT(*), b.RESOURCE_POOL_ID, b.RESOURCE_STATUS,p.rrp_pool_desc
FROM rm1_resource b,rm_resource_pool p
WHERE b.RESOURCE_STATUS = 'AVAILABLE'
AND b.RESOURCE_TYPE_ID = '1'
AND p.rrp_pool_desc LIKE 'RFT%60'
GROUP BY b.RESOURCE_POOL_ID, b.RESOURCE_STATUS,p.rrp_pool_desc

SELECT * FROM rm1_resource WHERE resource_value = '896600341691949988'

SELECT MIN(resource_value)||' - '||MAX(resource_value) LENGTH,COUNT(1) amount, resource_status
FROM rm1_resource
WHERE resource_value BETWEEN '896600341691949988' AND '896600341691949988' 
GROUP BY resource_status

SELECT MIN(package_value)||' - '||MAX(package_value) LENGTH,COUNT(1) amount, PACKAGE_STATUS
FROM rm1_package
WHERE package_value BETWEEN '896600341691949988' AND '896600341691949988' 
GROUP BY PACKAGE_STATUS

SELECT REQUEST_STATUS FROM RM1_REQUEST WHERE request_id IN ('197803553','','')

SELECT /*+parallel(16) */ request_status,COUNT(*) 
FROM prdappo.RM1_REQUEST 
WHERE TO_CHAR(request_date,'yyyymmdd') >  '20150917' 
AND TO_CHAR(request_date,'yyyymmdd') <  '20150919' 
AND ctcv_conv_id IS NULL 
GROUP BY request_status; 

SELECT * FROM rm1_request WHERE parent_request_id = '197803553'

SELECT REQUEST_ID, REQUEST_DATE, REQUEST_PRIORITY, REQUEST_STATUS FROM rm1_request WHERE request_id = '191952048'--'191342614'

SELECT * FROM rm1_resource 
WHERE resource_value = '0812395087' 
AND resource_parent_value = '896600341590022546'

SELECT * FROM urm9_national_ndc WHERE company_cd = 02 AND zone_cd = 1

SELECT /*+parallel(rm1_resource,8) */ resource_value 
FROM rm1_resource 
WHERE resource_status = 'AVAILABLE'
AND operator_id NOT IN ('97451','22533') -- id OMX RM
AND resource_pool_id = '59'--(SELECT rrp_id FROM rm_resource_pool WHERE rrp_pool_desc = 'RMVSRM60')
AND resource_id IN (SELECT resource_value_id 
				FROM RM1_RESOURCE_ATTRIBUTES 
				WHERE resource_attribute_id = 17 -- zone
				AND resource_attr_value = 1) -- zone 1BK 2UE 3LE 4UN 5LN 6US 7LS
AND ROWNUM < 1300


SELECT *--PACKAGE_ID
FROM RM1_PACKAGE
WHERE RM1_PACKAGE.PACKAGE_TYPE_ID = 1  
AND PACKAGE_VALUE = '896600341691949988'

SELECT * FROM rm1_package_attributes 
WHERE package_value_id = '163663663' 
AND package_attribute_id = 11 

--=============================
-- chack status lb
SELECT PACKAGE_STATUS ,COUNT(1) amount
FROM RM1_PACKAGE 
WHERE PACKAGE_VALUE BETWEEN '896600081680150000' AND '896600081680249999'
AND package_pool_id IN (63,64)
GROUP BY PACKAGE_STATUS

-- chack status
SELECT PACKAGE_STATUS ,COUNT(1) amount
FROM RM1_PACKAGE 
WHERE PACKAGE_VALUE BETWEEN '896600081680250000' AND '896600081680349999'
AND package_pool_id IN (63,64)
GROUP BY PACKAGE_STATUS


SELECT package_value FROM rm1_package 
--WHERE package_value BETWEEN '896604091680500000' AND '896604091680599999'
WHERE package_pool_id IN (64)
AND PACKAGE_STATUS = 'ASSIGNED' 
AND ROWNUM < 101
;
---------------------------------------
