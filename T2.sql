SELECT resource_value MSISDN,rma.RCAS_CATEGORY_VALUE nice_level,RRP_POOL_DESC Pool
FROM rm1_resource a,RM1_CATEGORY_ASSIGNMENTS rma,PRDREFSSC.rm_resource_pool
WHERE resource_status = 'AVAILABLE'
--AND operator_id NOT IN ('97451','18476') -- id OMX RM
AND resource_pool_id IN ('108','82')-- 82_RFTORIGIN  108_RMVORIGIN 59_RMVSRM60(post) '45','46','47','48','52'
AND category_index IN ('3','4','5','6') -- level ORANUM_1 PLATINUM_2 GOLD_3 SILVER_4 BRONZE_5 REGULAR_6 '3','4','5','6'
AND CATEGORY_INDEX = rma.RCAS_INDEX
AND RESOURCE_POOL_ID = rrp_id(+)
--AND SUBSTR(resource_value,0,6) IN(
--		SELECT /*+ full(b) */ndc FROM urm9_national_ndc b 
--		WHERE company_cd = '06' -- 02 RMV, 06 RFT
--		WHERE resource_attribute_id = 17 -- zone
--		WHERE zone_cd = '3' -- zone 1BK 2UE 3LE 4UN 5LN 6US 7LS
--)
--AND resource_value LIKE '%2929' -- 
AND (resource_value LIKE '%2643545'
OR resource_value LIKE '%2463545'
OR resource_value LIKE '%6243545'
OR resource_value LIKE '%6423545'
OR resource_value LIKE '%4623545')
--AND SUBSTR(resource_value,4,4) = '3265'
--AND SUBSTR(resource_value,4,3) IN ('789','289','456','639','782')
--AND SUBSTR(resource_value,2,1) NOT IN ('0','2','3','7')
--AND SUBSTR(resource_value,3,1) NOT IN ('0','2','3','7')
--AND SUBSTR(resource_value,4,1) NOT IN ('0','2','3','7')
--AND SUBSTR(resource_value,5,1) NOT IN ('0','2','3','7')
--AND SUBSTR(resource_value,6,1) NOT IN ('0','2','3','7')
--AND SUBSTR(resource_value,7,1) NOT IN ('0','2','3','7')
--AND SUBSTR(resource_value,8,1) NOT IN ('0','2','3','7')
--AND SUBSTR(resource_value,9,1) NOT IN ('0','3','7')
--AND SUBSTR(resource_value,10,1) NOT IN ('0','3','7')
--AND SUBSTR(resource_value,5,2) NOT IN ('68','18','48','16','12','06','70','43','08','86')
--AND SUBSTR(resource_value,6,2) NOT IN ('68','18','48','16','12','06','70','43','08','86')
--AND SUBSTR(resource_value,8,2) NOT IN ('11','22','33','44','55','66','66','77','88','99')
--AND SUBSTR(resource_value,9,2) NOT IN ('11','22','33','44','55','66','66','77','88','99')
--AND SUBSTR(resource_value,3,2) NOT IN ('68','18','48','16','12','06','70','43','08','86')
--AND SUBSTR(resource_value,4,2) NOT IN ('68','18','48','16','12','06','70','43','08','86')
--AND SUBSTR(resource_value,7,1) = SUBSTR(resource_value,9,1)
--AND SUBSTR(resource_value,8,1) <> SUBSTR(resource_value,10,1)
--AND SUBSTR(resource_value,3,1) IN ('3','6','8','9')
--AND SUBSTR(resource_value,4,1) IN ('1','4','5')
--AND SUBSTR(resource_value,5,1) IN ('1','4','5')
--AND SUBSTR(resource_value,6,1) IN ('1','4','5')
--AND SUBSTR(resource_value,7,1) IN ('6','5','9')
--AND SUBSTR(resource_value,8,1) IN ('6','5','9')
--AND SUBSTR(resource_value,9,1) IN ('6','5','9')
--AND SUBSTR(resource_value,10,1) IN ('6','5','9')
--AND (SUBSTR(resource_value,6,1) IN ('8','9')
--OR SUBSTR(resource_value,7,1) IN ('4','5')
--OR SUBSTR(resource_value,8,1) IN ('4','5')
--OR SUBSTR(resource_value,9,1) IN ('4','5')
--OR SUBSTR(resource_value,10,1) IN ('4','5')
--OR SUBSTR(resource_value,5,1) IN ('4','5')
--OR SUBSTR(resource_value,4,1) IN ('4','5')
--AND (SUBSTR(resource_value,4,2) IN ('54','59','56')
--OR SUBSTR(resource_value,5,2) IN ('54','59','56')
--OR SUBSTR(resource_value,6,2) IN ('54','59','56')
--OR SUBSTR(resource_value,7,2) IN ('54','59','56')
--OR SUBSTR(resource_value,8,2) IN ('54','59','56')
--OR SUBSTR(resource_value,9,2) IN ('54','59','56')
--OR SUBSTR(resource_value,4,3) IN ('362','263','623','632')
--OR SUBSTR(resource_value,5,3) IN ('362','263','623','632')
--OR SUBSTR(resource_value,6,3) IN ('362','263','623','632')
--OR SUBSTR(resource_value,7,3) IN ('362','263','623','632')
--OR SUBSTR(resource_value,8,3) IN ('888','999')
--)
--AND SUBSTR(resource_value,1,3) IN ('081','086','089')
--AND SUBSTR(resource_value,7,4) IN ('0000','1111','2222','3333','4444','5555','6666','7777','8888','9999')
--AND (SUBSTR(resource_value,4,3) IN ('232','249','324','423','323','239','365','356','359','536','635','656','639','636')
--OR SUBSTR(resource_value,5,3) IN ('232','249','324','423','323','239','365','356','359','536','635','656','639','636')
--OR SUBSTR(resource_value,6,3) IN ('232','249','324','423','323','239','365','356','359','536','635','656','639','636')
--OR SUBSTR(resource_value,7,3) IN ('232','249','324','423','323','239','365','356','359','536','635','656','639','636')
--OR SUBSTR(resource_value,8,3) IN ('232','249','324','423','323','239','365','356','359','536','635','656','639','636')
--)
--AND SUBSTR(resource_value,2,1) = SUBSTR(resource_value,3,1)
--AND SUBSTR(resource_value,3,1) = SUBSTR(resource_value,6,1)
--AND SUBSTR(resource_value,6,1) = SUBSTR(resource_value,7,1)
--AND SUBSTR(resource_value,4,1) = SUBSTR(resource_value,5,1)
--AND SUBSTR(resource_value,5,1) = SUBSTR(resource_value,8,1)
--AND SUBSTR(resource_value,8,1) = SUBSTR(resource_value,9,1)
--AND SUBSTR(resource_value,9,1) = SUBSTR(resource_value,10,1)
--AND SUBSTR(resource_value,3,1) = SUBSTR(resource_value,6,1)
--AND SUBSTR(resource_value,3,1) = SUBSTR(resource_value,8,1)
--AND SUBSTR(resource_value,3,1) = SUBSTR(resource_value,10,1)
--AND SUBSTR(resource_value,3,1) <> 7 789
--AND SUBSTR(resource_value,4,1) = '7'
--AND SUBSTR(resource_value,5,1) = '8'
--AND SUBSTR(resource_value,6,1) = '9'
--AND SUBSTR(resource_value,5,1) <> 7
--AND SUBSTR(resource_value,6,1) <> 7
--AND SUBSTR(resource_value,2,1) <> SUBSTR(resource_value,4,1)
--AND SUBSTR(resource_value,8,1) <> 7
--AND SUBSTR(resource_value,9,1) <> 0
--AND SUBSTR(resource_value,10,1) <> 0
--AND SUBSTR(resource_value,10,1) <> 8
AND ROWNUM < 11;

-- msisdn,nice,pool,ngp,sum
SELECT resource_value MSISDN,rma.RCAS_CATEGORY_VALUE nice_level,RRP_POOL_DESC Pool,
DECODE(zone_cd,'1','BK','2','UE','3','LE','4','UN','5','LN','6','US','7','LS') Zone_NGP,
SUBSTR(resource_value,2,1) + SUBSTR(resource_value,3,1) + SUBSTR(resource_value,4,1) +
SUBSTR(resource_value,5,1) + SUBSTR(resource_value,6,1) + SUBSTR(resource_value,7,1) +
SUBSTR(resource_value,8,1) + SUBSTR(resource_value,9,1) + SUBSTR(resource_value,10,1) AS SUM
FROM rm1_resource a,RM1_CATEGORY_ASSIGNMENTS rma,PRDREFSSC.rm_resource_pool,PRDREFSSC.urm9_national_ndc
WHERE resource_status = 'AVAILABLE'
AND resource_pool_id IN ('108')-- 82_RFTORIGIN  108_RMVORIGIN 59_RMVSRM60(post) '45','46','47','48','52'
--AND category_index IN ('6') -- level ORANUM_1 PLATINUM_2 GOLD_3 SILVER_4 BRONZE_5 REGULAR_6
AND CATEGORY_INDEX = rma.RCAS_INDEX
AND RESOURCE_POOL_ID = rrp_id(+)
AND SUBSTR(resource_value,0,6) = ndc
--AND resource_value LIKE '%6353956'
AND (resource_value LIKE '%6353956'
OR resource_value LIKE '%6353965'
OR resource_value LIKE '%6324935'
OR resource_value LIKE '%6359356'
OR resource_value LIKE '%6359365')
--AND SUBSTR(resource_value,2,1) + SUBSTR(resource_value,3,1) + SUBSTR(resource_value,4,1) +
--SUBSTR(resource_value,5,1) + SUBSTR(resource_value,6,1) + SUBSTR(resource_value,7,1) +
--SUBSTR(resource_value,8,1) + SUBSTR(resource_value,9,1) + SUBSTR(resource_value,10,1) in (56)
AND ROWNUM < 11;

---------------------------------------------------------------------
SELECT * FROM TRUE9_UCR_NO WHERE UCR_NO = 'UR160501224';

--- exp msisdn
SELECT SYS_CREATION_DATE,ENTITY_VALUE,TRUNC(REQUEST_DATE ) EXP_DATE
FROM PRDAPPO.RM1_REQUEST
WHERE ENTITY_VALUE = '0995463663';
