SELECT * FROM rm_resource_pool WHERE rrp_pool_desc LIKE 'RMVNAS60%';

-- to 56 
SELECT /*+ full(a) */ resource_value
FROM rm1_resource a 
WHERE resource_status = 'AVAILABLE'
AND category_index IN ('6') -- level ORANUM_1 PLATINUM_2 GOLD_3 SILVER_4 BRONZE_5 REGULAR_6
AND resource_pool_id IN ('108') -- Pool 131_RMVSRMP60 11_RFTSRM60 45_RMVLKRS1 46_RMVLKRS2 28_RFTLKR1 29_RFTLKR2 59_RMVSRM60(post) 147_RMVSRMP50
AND SUBSTR(resource_value,0,6) IN(
SELECT /*+ full(b) */ndc FROM urm9_national_ndc b 
--	WHERE company_cd = 02 -- 02 RMV, 06 RFT
	WHERE zone_cd = '5') -- zone 1BK 2UE 3LE 4UN 5LN 6US 7LS
AND ROWNUM < 501;

SELECT n.SYS_UPDATE_DATE,RESOURCE_VALUE,RESOURCE_STATUS,LAST_ACTIVITY_NAME,LAST_ACTIVITY_DATE,RRP_ID,RRP_POOL_DESC,rma.RCAS_CATEGORY_VALUE ,n.RESOURCE_PARENT_VALUE
FROM rm1_resource n,PRDREFSSC.rm_resource_pool p ,RM1_CATEGORY_ASSIGNMENTS rma
WHERE n.resource_value IN (
'0998759580'
) AND RESOURCE_POOL_ID = rrp_id(+)
AND n.CATEGORY_INDEX = rma.RCAS_INDEX;

SELECT /*+ full(a) */ resource_value 
FROM rm1_resource a
WHERE resource_status = 'AVAILABLE'
--AND operator_id NOT IN ('97451','18476') -- id OMX RM
AND resource_pool_id IN ('108')-- 82_RFTORIGIN  108_RMVORIGIN 59_RMVSRM60(post) '45','46','48','52'
AND category_index IN ('4') -- level ORANUM_1 PLATINUM_2 GOLD_3 SILVER_4 BRONZE_5 REGULAR_6
AND SUBSTR(resource_value,0,6) IN(
		SELECT /*+ full(b) */ndc FROM urm9_national_ndc b 
--		WHERE company_cd = '06' -- 02 RMV, 06 RFT
		WHERE zone_cd = '4' -- zone 1BK 2UE 3LE 4UN 5LN 6US 7LS
)
AND ROWNUM < 2001;


SELECT COUNT(1)
FROM rm1_resource 
WHERE resource_status = 'AVAILABLE'
AND resource_pool_id = '108'
AND category_index IN ('6'); -- level


SELECT /*+ FULL(rm1_resource) PARALLEL(rm1_resource,10) */ a.resource_value,RRP_POOL_DESC Pool,
DECODE(category_index,'1','ORANUM','2','PLATINUM','3','GOLD','4','SILVER','5','BRONZE','6','REGULAR') Level_,
DECODE(zone_cd,'1','BK','2','UE','3','LE','4','UN','5','LN','6','US','7','LS') Zone_NGP--,
--COUNT(*)
FROM rm1_resource a,PRDREFSSC.urm9_national_ndc b,PRDREFSSC.rm_resource_pool p
WHERE resource_status = 'AVAILABLE'
AND resource_pool_id IN ('108','131')
AND category_index IN ('6') -- level GOLD_3 SILVER_4 REGULAR_6 BRONZE_5
AND RESOURCE_POOL_ID = rrp_id(+)
AND SUBSTR(resource_value,0,6) = ndc
AND resource_value LIKE '%289%';
--GROUP BY RRP_POOL_DESC ,category_index,zone_cd
--ORDER BY zone_cd DESC

SELECT resource_value
FROM rm1_resource a 
WHERE resource_status = 'AVAILABLE'
AND category_index IN ('3') -- level ORANUM_1 PLATINUM_2 GOLD_3 SILVER_4 BRONZE_5 REGULAR_6
AND resource_pool_id IN ('108') -- Pool 131_RMVSRMP60 11_RFTSRM60 45_RMVLKRS1 46_RMVLKRS2 28_RFTLKR1 29_RFTLKR2 59_RMVSRM60(post) 147_RMVSRMP50
AND SUBSTR(resource_value,0,6) IN(
SELECT /*+ full(b) */ndc FROM urm9_national_ndc b 
--	WHERE company_cd = 02 -- 02 RMV, 06 RFT
	WHERE zone_cd = '1') -- zone 1BK 2UE 3LE 4UN 5LN 6US 7LS
AND SUBSTR(resource_value,6,1) = SUBSTR(resource_value,7,1)
AND SUBSTR(resource_value,7,1) = SUBSTR(resource_value,8,1)
AND SUBSTR(resource_value,8,1) <> SUBSTR(resource_value,9,1)
AND SUBSTR(resource_value,10,1) = SUBSTR(resource_value,9,1)
AND ROWNUM < 5001;
