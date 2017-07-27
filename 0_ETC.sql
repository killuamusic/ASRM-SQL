-- number  896600301691300489 assign
SELECT * FROM RM1_RESOURCE WHERE resource_value LIKE '896604231710000000%' ;

SELECT RRP_ID,RRP_POOL_DESC,RRP_POOL_TYPE FROM PRDREFSSC.rm_resource_pool WHERE RRP_POOL_DESC LIKE '%RMVSRMP50%';

SELECT n.SYS_UPDATE_DATE,RESOURCE_VALUE,RESOURCE_STATUS,RRP_POOL_DESC,rma.RCAS_CATEGORY_VALUE,LAST_ACTIVITY_NAME,RRP_ID,LAST_ACTIVITY_DATE,n.RESOURCE_PARENT_VALUE
FROM rm1_resource n,PRDREFSSC.rm_resource_pool p ,RM1_CATEGORY_ASSIGNMENTS rma
WHERE n.resource_value IN (
'0902641946'
) AND RESOURCE_POOL_ID = rrp_id(+)
AND n.CATEGORY_INDEX = rma.RCAS_INDEX
--AND RESOURCE_STATUS <> 'ACTIVE'
--AND RESOURCE_STATUS = 'AVAILABLE'
--AND RESOURCE_STATUS = 'ACTIVE'
;

SELECT n.SYS_UPDATE_DATE,RESOURCE_VALUE,RESOURCE_STATUS,LAST_ACTIVITY_NAME,LAST_ACTIVITY_DATE,RRP_ID,RRP_POOL_DESC,
rma.RCAS_CATEGORY_VALUE ,rrta.rtat_attr_name,rra.resource_attr_value,n.LAST_ACTIVITY_ISSUE_DATE
--DECODE(rra.resource_attr_value,'1','BK', '2','UE','3','LE','4','UN','5','LN','6','US','7','LS') ngp
FROM rm1_resource n,rm_resource_pool p ,RM1_CATEGORY_ASSIGNMENTS rma ,RM1_RESOURCE_ATTRIBUTES rra,RM_RESOURCE_TP_ATTR rrta
WHERE n.resource_value = '0999574964'
AND RESOURCE_POOL_ID = rrp_id(+)
AND rra.resource_attribute_id = rrta.rtat_id(+)
AND n.CATEGORY_INDEX = rma.RCAS_INDEX
AND n.RESOURCE_ID = rra.RESOURCE_VALUE_ID;

SELECT RESOURCE_VALUE, RESOURCE_POOL_ID, RRP_POOL_DESC, RESOURCE_STATUS, LAST_ACTIVITY_NAME, LAST_ACTIVITY_DATE, RESOURCE_PARENT_VALUE 
FROM rm1_resource_history,rm_resource_pool
WHERE resource_value = '0909798798' 
AND RESOURCE_POOL_ID = rrp_id(+)
ORDER BY LAST_ACTIVITY_DATE DESC;

SELECT * FROM rm_category_values; --WHERE rcv_id = 2

-- sim
SELECT * FROM rm1_package 
WHERE PACKAGE_VALUE = '896600071691861947';
--WHERE PACKAGE_STATUS = 'ON ORDER'

SELECT s.SYS_UPDATE_DATE,PACKAGE_VALUE,PACKAGE_STATUS,LAST_ACTIVITY_NAME,RRP_ID,RRP_POOL_DESC,LAST_ACTIVITY_DATE,LAST_ACTIVITY_ISSUE_DATE ,package_id
FROM rm1_package s,rm_resource_pool p
WHERE PACKAGE_VALUE IN (
'896600151780279134'
) AND PACKAGE_POOL_ID = rrp_id;
--AND PACKAGE_STATUS <> 'AGING'
--AND PACKAGE_STATUS <> 'AVAILABLE'
--AND PACKAGE_STATUS = 'ACTIVE'
--AND PACKAGE_STATUS = 'RESERVED'
--AND PACKAGE_STATUS = 'ASSIGNED'

-- sim and ctn
SELECT * FROM rm1_package_content WHERE package_value_id IN(SELECT package_id FROM rm1_package WHERE PACKAGE_VALUE = '896600161790022005');

-- dealer 3=sim type 12=dealer 11=item id 22=PRICE_PLAN 23=EXPIRE_SELF 27=SIM_NOTE
SELECT package_value,PACKAGE_STATUS, RPTA_ATTR_NAME ,package_attribute_value , package_attribute_id,package_id ,package_value_id
FROM rm1_package ,rm1_package_attributes ,rm_package_tp_attr
WHERE package_value = '896600401450083573'
AND package_value_id = package_id 
AND package_attribute_id IN ('3','12','22','23','11','27')
AND RPTA_ID = package_attribute_id;

SELECT * 
FROM rm1_package_history
WHERE  PACKAGE_VALUE = '896600401460112944'
ORDER BY LAST_ACTIVITY_DATE DESC;

SELECT * FROM rm_package_tp_attr;

-- Pool
SELECT RRP_ID,RRP_POOL_DESC,RRP_POOL_TYPE FROM PRDREFSSC.rm_resource_pool WHERE rrp_id = '59';

SELECT RRP_ID,RRP_POOL_DESC,RRP_POOL_TYPE FROM PRDREFSSC.rm_resource_pool WHERE RRP_POOL_DESC LIKE '%RFTSRMP50%';

SELECT * FROM rm_resource_pool WHERE rrp_pool_desc LIKE 'RMV%';

SELECT * FROM rm_resource_pool
WHERE rrp_pool_desc LIKE 'R%NAS%';

-- to NAS ?
SELECT * FROM TRUE9_MAP_NAS_POOL
WHERE asrm_pool LIKE 'R%NAS%';

-- number
SELECT * FROM rm1_resource WHERE resource_value IN (
--'0955170002'
'896600081791522884'
);

-- sim
SELECT * FROM rm1_package WHERE PACKAGE_VALUE IN (
'896600081791522884'
);

-- IMSI
SELECT resource_parent_value,resource_value,RESOURCE_STATUS 
FROM rm1_resource 
WHERE resource_value IN (
'520002009718756'
);

SELECT resource_parent_value,resource_value,RESOURCE_STATUS 
FROM rm1_resource WHERE resource_value = '520001918084239';

SELECT package_value_id,entity_value 
FROM rm1_package_content WHERE package_value_id IN (SELECT package_id 
FROM rm1_package WHERE package_value = '896600401460112944') 
AND entity_type_id = '2';

-- ITEM ID
SELECT item_id,item_desc FROM URM9_ITEM_DEFINITION WHERE item_id = 'POSPAIRJPMG';

SELECT * FROM AGREEMENT_RESOURCE WHERE resource_value = '896600351460003219';

SELECT * FROM AGREEMENT_RESOURCE WHERE agreement_no = '17658007';

SELECT AGREEMENT_NO, ar.SYS_CREATION_DATE, ar.SYS_UPDATE_DATE, RESOURCE_PRM_CD, RESOURCE_VALUE, RESOURCE_STATE, ar.EFFECTIVE_DATE, ar.EXPIRATION_DATE
FROM SUBSCRIBER s,AGREEMENT_RESOURCE ar
WHERE s.SUBSCRIBER_NO = ar.AGREEMENT_NO
AND PRIM_RESOURCE_VAL = '0812066463'
ORDER BY SYS_UPDATE_DATE DESC;

SELECT * FROM urm9_cst_gen_params WHERE param_cd IN ('ZONE','SIM_TYPE','COMPANY');


SELECT rs.resource_value, rs.resource_status, rrta.rtat_id, rrta.rtat_attr_name, rra.resource_attr_value,rra.resource_attribute_id
FROM RM1_RESOURCE rs, RM1_RESOURCE_ATTRIBUTES rra, RM_RESOURCE_TP_ATTR rrta
WHERE rs.resource_id = rra.resource_value_id
AND rra.resource_attribute_id = rrta.rtat_id(+)
AND rs.resource_value = '0909496136';

-- dealer
SELECT * FROM PRDREFSSC.csm_dealer 
WHERE dealer IN (
'10024842'
);

-- dealer to act
SELECT * FROM PRDREFSSC.cm_dlr_pool_link
WHERE dealer_code = '70000295'
AND pool_code IN ('RMVSRMP60')
;

--check PP
SELECT * FROM csm_offer 
WHERE soc_type = 'P' 
AND soc_name = 'R15NTC299' 
AND (sale_exp_date > TRUNC(SYSDATE) OR sale_exp_date IS NULL) 
AND sale_eff_date <= TRUNC(SYSDATE) ;

-- prefix
SELECT * FROM urm9_national_ndc WHERE ndc = '080300' ;

-- IMSI OTA
SELECT *
FROM URM9_SIM_OTA_IMSI_MAPPING
WHERE ota_imsi IN (
'520045032648724'
);

-- msisdn on deact
SELECT * FROM ASRM_MAIN_CREDIT WHERE MSISDN = '0972202059';

-- pool to nas
SELECT * FROM true9_map_nas_pool WHERE asrm_pool = 'RMVHUTCH';

-- zone msisdn
SELECT resource_value ,zone_cd
FROM rm1_resource a,urm9_national_ndc b 
WHERE resource_value = '0641197767'
AND SUBSTR(resource_value,0,6) = ndc;

--
SELECT * FROM tab
WHERE tname LIKE '%ASRM%';

SELECT * FROM RM1_END_STATUS;

--=============================================
SELECT *--PACKAGE_ID,PACKAGE_TYPE_ID
FROM RM1_PACKAGE
WHERE RM1_PACKAGE.PACKAGE_TYPE_ID = 1  
AND PACKAGE_VALUE = '896600111590768240' --60012

SELECT OPERATOR_ID ,package_value
FROM rm1_package
WHERE package_value = '896600111590768240'

SELECT s.SYS_UPDATE_DATE,PACKAGE_VALUE,PACKAGE_STATUS,LAST_ACTIVITY_NAME,RRP_ID,RRP_POOL_DESC,LAST_ACTIVITY_DATE,LAST_ACTIVITY_ISSUE_DATE 
FROM rm1_package s,rm_resource_pool p
WHERE  PACKAGE_POOL_ID = rrp_id
AND PACKAGE_STATUS = 'ACTIVE'

SELECT * FROM rm1_package WHERE PACKAGE_STATUS = 'AGING'

-- update port out
SELECT rr.resource_value,rr.resource_pool_id,
(SELECT rrp_pool_desc FROM rm_resource_pool WHERE rrp_id = rr.resource_pool_id) pool_desc,rrta.rtat_id,rrta.rtat_attr_name,
rra.resource_attr_value,rra.sys_creation_date,rra.sys_update_date,rra.ctcv_conv_id 
FROM rm1_resource_attributes rra,rm1_resource rr,rm_resource_tp_attr rrta
WHERE rra.resource_value_id = rr.resource_id
AND rra.resource_attribute_id = rrta.rtat_id
AND rr.resource_value = '0909496136'
ORDER BY sys_creation_date


SELECT * FROM service_agreement

WHERE 896600411550063068

SELECT* FROM TRUE9_PREPAID_RESOURCE WHERE hbp_subscriber_no = 35323783;

SELECT package_id,package_value,PACKAGE_STATUS 
FROM rm1_package
WHERE package_value = '896604061680000000';

SELECT * FROM rm1_package_attributes
WHERE package_value_id = '184105019'
AND package_attribute_id IN ('22','23');

DELETE FROM rm1_package_attributes
WHERE package_value_id = '184105019'
AND package_attribute_id IN ('22','23');


SELECT * FROM urm1_orders;

select * from ITD_TT;

--ดูว่ามีชื่อฟิลของ table
DESC rm_package_tp_attr;

-- swap sim // เบอร์ act sim cancel
SELECT 'PRE' ACT_CAT,c.prim_resource_val ctn,c.expiration_date ctn_exp_date,s.prim_resource_val sim,s.expiration_date sim_exp_date
FROM true9_prepaid_resource s,true9_prepaid_resource c
WHERE s.hbp_subscriber_no = c.hbp_subscriber_no
AND s.prim_resource_val = '896600401460112944'
AND s.prim_resource_tp = 'S'
AND c.prim_resource_tp = 'C'
UNION ALL   
SELECT 'POS' ACT_CAT, ar2.resource_value ctn ,ar2.expiration_date ctn_exp_date, ar1.resource_value,ar1.expiration_date sim_exp_date 
FROM agreement_resource ar1,agreement_resource ar2 WHERE ar1.agreement_no  = ar2.agreement_no 
AND ar1.resource_type = 'S'
AND ar1.resource_value = '896600401460112944'
AND ar2.resource_type = 'C' ;