SELECT *--HBP_SUBSCRIBER_NO 
FROM true9_prepaid_subscriber 
WHERE prim_resource_tp = 'C' 
AND prim_resource_val = '0941491743' 
AND SUB_STATUS = 'A';

SELECT HBP_SUBSCRIBER_NO, SOC, SOC_SEQ_NO, EFFECTIVE_DATE, 
EXPIRATION_DATE, SOC_STS_RSN_CD,o.soc_name,soc_type,soc_description 
FROM TRUE9_SERVICE_AGREEMENT sa,csm_offer o
WHERE sa.soc = o.soc_cd AND HBP_SUBSCRIBER_NO = '63151999'
AND soc_type = 'P' ;

--pp
SELECT * FROM csm_offer WHERE soc_name = 'R15NSBALL'

SELECT HBP_SUBSCRIBER_NO 
FROM true9_prepaid_subscriber 
WHERE prim_resource_tp = 'C' 
AND prim_resource_val IN (
'0954646922'
)
AND SUB_STATUS = 'A'


SELECT HBP_SUBSCRIBER_NO, SOC, SOC_SEQ_NO, EFFECTIVE_DATE, 
EXPIRATION_DATE, SOC_STS_RSN_CD,o.soc_name,soc_type,soc_description 
FROM TRUE9_SERVICE_AGREEMENT sa,csm_offer o
WHERE sa.soc = o.soc_cd AND HBP_SUBSCRIBER_NO IN (
'53697847'
)
AND soc_type = 'P' 
