/*+ FULL(rm1_resource) PARALLEL(rm1_resource,10) */
/*+ parallel(rm1_resource,16) */
-- Pool 59_RMVSRM60 11_RFTSRM60 45_RMVLKRS1 46_RMVLKRS2 28_RFTLKR1 29_RFTLKR2

SELECT * FROM urm9_cst_gen_params WHERE param_cd IN ('ZONE')

SELECT * FROM PRDREFSSC.rm_resource_pool WHERE rrp_pool_desc LIKE 'RMVSRMP50%'

SELECT RRP_ID,RRP_POOL_DESC FROM PRDREFSSC.rm_resource_pool WHERE rrp_id = '147'

SELECT /*+ FULL(rm1_resource) PARALLEL(rm1_resource,10) */ a.resource_value,RRP_POOL_DESC Pool,
DECODE(category_index,'1','ORANUM','2','PLATINUM','3','GOLD','4','SILVER','5','BRONZE','6','REGULAR') Level_,
DECODE(zone_cd,'1','BK','2','UE','3','LE','4','UN','5','LN','6','US','7','LS') Zone_NGP--,
--COUNT(*)
FROM rm1_resource a,PRDREFSSC.urm9_national_ndc b,PRDREFSSC.rm_resource_pool p
WHERE resource_status = 'AVAILABLE'
--AND a.operator_id NOT IN ('97451','18476') -- id OMX RM
AND resource_pool_id IN ('108')
AND category_index IN ('3','4') -- level GOLD_3 SILVER_4 REGULAR_6 BRONZE_5
AND RESOURCE_POOL_ID = rrp_id(+)
AND SUBSTR(resource_value,0,6) = ndc
--GROUP BY RRP_POOL_DESC ,category_index,zone_cd
ORDER BY zone_cd DESC

SELECT /*+ FULL(rm1_resource) PARALLEL(rm1_resource,10) */ COUNT(*)
FROM rm1_resource 
WHERE resource_status = 'AVAILABLE'
AND operator_id NOT IN ('97451','18476') -- id OMX RM
AND resource_pool_id = '59'--(SELECT rrp_id FROM rm_resource_pool WHERE rrp_pool_desc = 'RMVSRM60') 59_RMVSRM60
AND category_index = '6' -- level GOLD_3 SILVER_4 REGULAR_6 BRONZE_5
AND resource_id IN (SELECT resource_value_id 
				FROM RM1_RESOURCE_ATTRIBUTES 
				WHERE resource_attribute_id = 17 -- zone
				AND resource_attr_value = 1  -- zone 1BK 2UE 3LE 4UN 5LN 6US 7LS
)


1|385616
2|38784
3|30329
4|23750
5|22275
6|21393
7|8564

DECODE(zone_cd,'1','BK','2','UE','3','LE','4','UN','5','LN','6','US','7','LS') Zone_NGP
DECODE(category_index,'1','ORANUM','2','PLATINUM','3','GOLD','4','SILVER','5','BRONZE','6','REGULAR') Level_

PRDREFSSC.urm9_national_ndc b
