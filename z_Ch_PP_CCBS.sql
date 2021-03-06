SELECT HBP_SUBSCRIBER_NO,prim_resource_val,SUB_STATUS ,EFFECTIVE_DATE
FROM true9_prepaid_subscriber 
WHERE prim_resource_tp = 'C' 
AND prim_resource_val = '0639243627' 
AND SUB_STATUS = 'A';

SELECT HBP_SUBSCRIBER_NO, SOC, SOC_SEQ_NO, EFFECTIVE_DATE, 
EXPIRATION_DATE, SOC_STS_RSN_CD,o.soc_name,soc_type,soc_description 
FROM TRUE9_SERVICE_AGREEMENT sa,csm_offer o
WHERE sa.soc = o.soc_cd AND HBP_SUBSCRIBER_NO = '63151995'
AND soc_type = 'P' ;

SELECT HBP_SUBSCRIBER_NO, SOC, SOC_SEQ_NO, EFFECTIVE_DATE, EXPIRATION_DATE, SOC_STS_RSN_CD 
FROM TRUE9_SERVICE_AGREEMENT
WHERE HBP_SUBSCRIBER_NO = '63152061';