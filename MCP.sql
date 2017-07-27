SELECT * FROM tab
WHERE tname LIKE 'CCBS%';

SELECT * FROM tvs_ccbs_customer  WHERE tvs_customerno =

SELECT identification FROM true9_prepaid_subscriber 
WHERE prim_resource_val = '0995727422';

SELECT s.prim_resource_val FROM customer c,subscriber s
WHERE l9_identification = '3930300359752' 
AND c.customer_id = s.customer_id 

SELECT * FROM ccbsappc.subscriber 
WHERE prim_resource_val = '0918389611';

SELECT c.customer_id,s.prim_resource_val,s.sub_status, s.sys_creation_date,s.effective_date,a.ban,b.ben_status,s.identification 
FROM CUSTOMER c, csm_account a,true9_prepaid_subscriber  s, CSM_BEN b
WHERE a.customer_id = c.customer_id 
AND s.hbp_subscriber_no = a.customer_id
AND a.ban = b.ban
AND a.ban= '20345358'
AND c.l9_identification = '3501000432505'
AND s.prim_resource_val = '0639053260';

SELECT identification,LENGTH(identification) FROM true9_prepaid_subscriber
WHERE prim_resource_val = '00639053260'

SELECT * FROM ccbsappc.subscriber
WHERE prim_resource_val = '00639053260';  --21825539

-- ***
SELECT c.customer_id,s.prim_resource_val,s.sub_status, s.sys_creation_date,s.effective_date,a.ban,b.ben_status,c.l9_identification,ar.ar_balance
FROM CUSTOMER c, csm_account a, SUBSCRIBER s,CSM_BEN b, AR1_ACCOUNT ar
WHERE a.customer_id = c.customer_id 
AND s.customer_id = a.customer_id
AND a.ban = b.ban
AND a.ban = ar.account_id
AND a.ban IN ('24501491')
--AND c.l9_identification = '3100902444739'
--AND s.prim_resource_val IN ('0865679296');

SELECT * FROM agreement_detail agd   
,commercial_product cp    
WHERE agd.customer_id  IN ('84313112')
AND agd.status IN (1,2,3,4,5)      
AND agd.finance_option_id = 1   
AND agd.comm_product_id = cp.ID   
AND cp.category_id IN (2,13);


SELECT * FROM csm_ben WHERE ben = '24501491'

SELECT * FROM CCBSAPPO.subscriber_type ;

SELECT l9_company_code FROM CUSTOMER c
WHERE c.l9_identification = '3501000432505';

SELECT * FROM CUSTOMER c
WHERE c.l9_identification = '3409900403984';

SELECT account_id,invoice_id,invoice_status,invoice_amount,billing_invoice_number,cycle_code,cycle_month,cycle_year
FROM AR1_INVOICE WHERE account_id = '24501491';

SELECT  ca.ban    
   FROM CSM_ACCOUNT ca, CUSTOMER cust, CSM_PAY_CHANNEL cpc   
   WHERE l9_identification = '3409900403984'   
   AND ca.customer_id = cust.customer_id   
   AND ca.ban = cpc.ban   
   AND ROWNUM <= 50 


SELECT * FROM AR1_ACCOUNT
WHERE account_id = '24501491';

SELECT COUNT(*)
       FROM ar1_charges ac1   
     WHERE ac1.billing_arrangement_id  = '23677807'  ;


SELECT * FROM charge_distribute cd
            WHERE cd.target_pcn = '20345358'
             AND (chg_split_type = 'DR' OR (chg_split_type = 'RS' AND soc = '493178')) ;
			 
			  
SELECT SUBSCRIBER_NO,PRIM_RESOURCE_VAL,PRIM_RESOURCE_TP,SUB_STATUS,SUB_STS_LAST_ACT,SUB_STS_RSN_CD
FROM ccbsappo.subscriber
WHERE subscriber_no = '10293558';

SELECT     
                cpc.ban    
                 ,cpc.customer_id    
                 ,sub.prim_resource_val    
                 ,sub.sub_status    
                ,chg_split_type   
           FROM     
                   charge_distribute cd     
                  ,subscriber sub     
                  ,csm_pay_channel cpc    
            WHERE     
                     cpc.ban = '24501491'  
                     AND cd.agreement_no = sub.subscriber_no     
                    AND cpc.pym_channel_no = cd.target_pcn     
                   AND sub.sub_status NOT IN ('A','S','U','D')    
                    AND cpc.customer_id = sub.customer_id                                            
                        AND (chg_split_type = 'DR' OR (chg_split_type = 'RS' AND soc = '493178')) ; 
						
						
						
	---- Billingcache check pcn_status in O,C	only				
SELECT  /*+  PUSH_SUBQ */ cpc.ban ban , cpc.pcn_status
,cpc.status_date 
FROM ccbsappc.csm_pay_channel cpc   
WHERE --cpc.pcn_status IN ('O','C')   AND 
cpc.pym_channel_no IN (SELECT /*+  INDEX(SUB SUBSCRIBER_4IX) */ cd.target_pcn 
FROM ccbsappc.charge_distribute cd , ccbsappc.subscriber sub 
 WHERE cd.agreement_no = sub.subscriber_no   
 AND sub.prim_resource_val = '0917160073' 
 AND prim_res_param_cd = 'MSISDN'     
);


SELECT * FROM name_data
WHERE name_id = 24501491;

SELECT * FROM name_data
WHERE name_id IN (SELECT name_id FROM address_name_link WHERE entity_id = '25513179' 
AND expiration_date IS NULL AND ENTITY_TYPE = 'SUBSCRIBER') 


SELECT customer_no,status FROM bl1_cyc_payer_pop
WHERE customer_no =11641158
AND cycle_seq_no IN (SELECT cycle_seq_no FROM bl1_cycle_control WHERE cycle_code=10 AND cycle_instance=3 AND cycle_year=2015) ;
--fill old bill



--- count all ban

SELECT * FROM trueappc.billing_account
WHERE identity = '3100902444739' 


--check ban

SELECT s.prim_resource_val, PCN.BAN, S.SUBSCRIBER_NO,S.CUSTOMER_ID, A.L9_AGREEMENT_ID, S.L9_CONVERGENCE_CODE,S.SUB_STATUS, S.SUB_STATUS_DATE, PCN.PCN_STATUS,b.ben_status, B.L9_CONS_BILL_IND, B.l9_BC_BAN_ID
FROM CSM_PAY_CHANNEL PCN, CHARGE_DISTRIBUTE CD, SUBSCRIBER S, AGREEMENT_RESOURCE R, CSM_ACCOUNT A, CSM_BEN B
WHERE PCN.PYM_CHANNEL_NO=CD.TARGET_PCN
AND CD.AGREEMENT_NO = S.SUBSCRIBER_NO
AND PCN.BAN = A.BAN
AND A.BAN = B.BAN
AND S.SUBSCRIBER_NO = R.AGREEMENT_NO
--AND A.BAN ='12098297'
AND R.RESOURCE_TYPE = 'C'
AND R.RESOURCE_VALUE IN ('0639053260')--//Put
AND R.EXPIRATION_DATE IS NULL
AND CD.EXPIRATION_DATE IS NULL
AND CD.CHG_SPLIT_TYPE='DR' 

-----------------------
SELECT 
   cust.customer_id,  
   cust.customer_type,  
   cust.l9_identification identification,  
   cust.l9_identification_type identification_type,  
   TO_CHAR(cust.L9_BIRTH_DATE,'dd/mm/yyyy hh24:mi:ss') birth_date,  
   DECODE(nd.name_type,'I',nd.name_elem2,'') first_name,  
   DECODE(nd.name_type,'B',nd.name_elem1,nd.name_elem4) last_name,  
   DECODE(nd.name_type,'I',nd.name_elem1,'') name_title,  
   DECODE(nd.name_type,'I',nd.name_elem1,'') name_title_desc,  
   NVL(aa.ar_balance,0) ar_balance,  
   cpc.payment_method,  
   sub.sub_status prod_status,  
   DECODE(sub.sub_status,'A','Active','C','Cancelled','L','Coll/Crl Cancellation','T','Termenated','U','Coll/Crl Suspention','S','Suspend by request','D','Coll/Crl Suspention','P','Pre Activate','R','Reserved') prod_status_desc, 
   TO_CHAR(LEAST(LEAST(NVL(sub.l9_tmv_act_date,sub.init_act_date),sub.init_act_date),LEAST(NVL(sub.l9_rf_act_date,sub.init_act_date),sub.init_act_date)),'dd/mm/yyyy hh24:mi:ss') prod_start_date,  
   ca.L9_COMPANY_CODE company_code,  
   ca.ban ban,  
   sub.subscriber_type subscriber_type,   
   sub.prim_resource_val product_id,  
   TO_CHAR(sub.sub_status_date,'dd/mm/yyyy hh24:mi:ss') prod_status_date,    
   st.sub_type_desc subscriber_desc,  
   sub.sub_sts_last_act activity_code,  
   sub.sub_sts_rsn_cd act_rsn_code,  
   car.act_rsn_desc rsn_desc,  
   ca.l9_acc_sub_type,	  
   cpc.pcn_status pcn_status ,
   sub.prim_resource_tp
FROM  
customer cust   
,subscriber sub  
,address_name_link anl 
,name_data nd 
,subscriber_type st  
,csm_account ca  
,csm_pay_channel cpc  
,csm_act_rsn car  
,ar1_account aa 
,charge_distribute cd  
WHERE cpc.ban IN '17769741' 
AND cust.customer_id = sub.customer_id   
AND sub.customer_id = ca.customer_id  
AND ca.ban = anl.entity_id  
AND cpc.pym_channel_no = cd.target_pcn 
AND (cd.chg_split_type = 'DR' OR (cd.chg_split_type = 'RS' AND cd.soc = '493178')) 
AND sub.subscriber_no = cd.agreement_no 
AND cpc.ban = aa.account_id(+) 
AND ((cpc.pcn_status ='O' AND sub_status IN ('A','S','U','D')) OR (cpc.pcn_status = 'C' AND sub_status NOT IN ('A','S','U','D') AND NVL(aa.ar_balance,0)> 0)) 
AND cpc.ban = ca.ban 
AND anl.entity_type = 'ACCOUNT'     
AND anl.link_type = 'A'     
AND (anl.expiration_date IS NULL OR anl.expiration_date >= (SELECT logical_date FROM logical_date WHERE logical_date_type = 'O' AND expiration_date IS NULL))     
AND anl.name_id = nd.name_id       
AND ca.customer_id = aa.customer_no 
AND sub.sub_sts_rsn_cd = car.act_rsn_cd(+)  
AND sub.l9_last_activity_id = car.act_path_id(+)  
AND sub.subscriber_type = st.subscriber_type 
--AND sub.prim_resource_tp = 'UICC'
AND (ca.l9_initiation_reason IS NULL OR ca.l9_initiation_reason <> 'DUMMY')
AND ROWNUM <= 50


SELECT subscriber_no,sub_status,prim_resource_tp FROM subscriber WHERE subscriber_no = '8268173'

SELECT ban , pcn_status FROM csm_pay_channel WHERE ban = '17769741'
