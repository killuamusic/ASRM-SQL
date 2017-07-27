--- 1. XXXX 

SELECT /*+parallel(rm1_resource,32) */ 
a.resource_value msisdn, substr(a.resource_value,7,4) digit, 
decode(a.resource_pool_id,'82','RFTORIGIN','87','RFTVIP') number_location, 
decode(b.resource_attr_value,'1','BK','2','UE','3','LE','4','UN','5','LN','6','US','7','LS') zonee, 
decode(a.category_index,'1','ORANUM','2','PLATINUM','3','GOLD','4','SILVER','5','BRONZE','6','REGULAR') levell
FROM rm1_resource a, RM1_RESOURCE_ATTRIBUTES b 
WHERE a.resource_id = b.resource_value_id 
AND a.resource_pool_id in (82,87) 
AND a.resource_status = 'AVAILABLE'
AND b.resource_attribute_id = 17 
AND b.resource_attr_value in (1,2,3,4,5,6,7) 
AND substr(resource_value,6,1) <> substr(resource_value,7,1) 
AND substr(resource_value,7,1) = substr(resource_value,8,1)
AND substr(resource_value,8,1) = substr(resource_value,9,1)
AND substr(resource_value,9,1) = substr(resource_value,10,1)


---2. XXXXX 

SELECT /*+parallel(rm1_resource,32) */ 
a.resource_value msisdn, substr(a.resource_value,6,5) digit, 
decode(a.resource_pool_id,'82','RFTORIGIN','87','RFTVIP') number_location, 
decode(b.resource_attr_value,'1','BK','2','UE','3','LE','4','UN','5','LN','6','US','7','LS') zonee, 
decode(a.category_index,'1','ORANUM','2','PLATINUM','3','GOLD','4','SILVER','5','BRONZE','6','REGULAR') levell
FROM rm1_resource a, RM1_RESOURCE_ATTRIBUTES b 
WHERE a.resource_id = b.resource_value_id 
AND a.resource_pool_id in (82,87) 
AND a.resource_status = 'AVAILABLE'
AND b.resource_attribute_id = 17 
AND b.resource_attr_value in (1,2,3,4,5,6,7) 
AND substr(resource_value,5,1) <> substr(resource_value,6,1) 
AND substr(resource_value,6,1) = substr(resource_value,7,1) 
AND substr(resource_value,7,1) = substr(resource_value,8,1)
AND substr(resource_value,8,1) = substr(resource_value,9,1)
AND substr(resource_value,9,1) = substr(resource_value,10,1)


---3. XXXXXX 

SELECT /*+parallel(rm1_resource,32) */ 
a.resource_value msisdn, substr(a.resource_value,5,6) digit, 
decode(a.resource_pool_id,'82','RFTORIGIN','87','RFTVIP') number_location, 
decode(b.resource_attr_value,'1','BK','2','UE','3','LE','4','UN','5','LN','6','US','7','LS') zonee, 
decode(a.category_index,'1','ORANUM','2','PLATINUM','3','GOLD','4','SILVER','5','BRONZE','6','REGULAR') levell
FROM rm1_resource a, RM1_RESOURCE_ATTRIBUTES b 
WHERE a.resource_id = b.resource_value_id 
AND a.resource_pool_id in (82,87) 
AND a.resource_status = 'AVAILABLE'
AND b.resource_attribute_id = 17 
AND b.resource_attr_value in (1,2,3,4,5,6,7)
AND substr(resource_value,4,1) <> substr(resource_value,5,1) 
AND substr(resource_value,5,1) = substr(resource_value,6,1) 
AND substr(resource_value,6,1) = substr(resource_value,7,1) 
AND substr(resource_value,7,1) = substr(resource_value,8,1)
AND substr(resource_value,8,1) = substr(resource_value,9,1)
AND substr(resource_value,9,1) = substr(resource_value,10,1)


---4. XXXXXXX 

SELECT /*+parallel(rm1_resource,32) */ 
a.resource_value msisdn, substr(a.resource_value,4,7) digit, 
decode(a.resource_pool_id,'82','RFTORIGIN','87','RFTVIP') number_location, 
decode(b.resource_attr_value,'1','BK','2','UE','3','LE','4','UN','5','LN','6','US','7','LS') zonee, 
decode(a.category_index,'1','ORANUM','2','PLATINUM','3','GOLD','4','SILVER','5','BRONZE','6','REGULAR') levell
FROM rm1_resource a, RM1_RESOURCE_ATTRIBUTES b 
WHERE a.resource_id = b.resource_value_id 
AND a.resource_pool_id in (82,87) 
AND a.resource_status = 'AVAILABLE'
AND b.resource_attribute_id = 17 
AND b.resource_attr_value in (1,2,3,4,5,6,7) 
AND substr(resource_value,3,1) <> substr(resource_value,4,1) 
AND substr(resource_value,4,1) = substr(resource_value,5,1) 
AND substr(resource_value,5,1) = substr(resource_value,6,1) 
AND substr(resource_value,6,1) = substr(resource_value,7,1) 
AND substr(resource_value,7,1) = substr(resource_value,8,1)
AND substr(resource_value,8,1) = substr(resource_value,9,1)
AND substr(resource_value,9,1) = substr(resource_value,10,1)


---5. XXXX-YYYY 

SELECT /*+parallel(rm1_resource,32) */ 
a.resource_value msisdn, substr(a.resource_value,3,8) digit, 
decode(a.resource_pool_id,'82','RFTORIGIN','87','RFTVIP') number_location, 
decode(b.resource_attr_value,'1','BK','2','UE','3','LE','4','UN','5','LN','6','US','7','LS') zonee, 
decode(a.category_index,'1','ORANUM','2','PLATINUM','3','GOLD','4','SILVER','5','BRONZE','6','REGULAR') levell
FROM rm1_resource a, RM1_RESOURCE_ATTRIBUTES b 
WHERE a.resource_id = b.resource_value_id 
AND a.resource_pool_id in (82,87) 
AND a.resource_status = 'AVAILABLE'
AND b.resource_attribute_id = 17 
AND b.resource_attr_value in (1,2,3,4,5,6,7) 
AND substr(resource_value,3,1) = substr(resource_value,4,1) 
AND substr(resource_value,4,1) = substr(resource_value,5,1) 
AND substr(resource_value,5,1) = substr(resource_value,6,1) 
AND substr(resource_value,6,1) <> substr(resource_value,7,1) 
AND substr(resource_value,7,1) = substr(resource_value,8,1)
AND substr(resource_value,8,1) = substr(resource_value,9,1)
AND substr(resource_value,9,1) = substr(resource_value,10,1)


---6. XXX-YYYY 

SELECT /*+parallel(rm1_resource,32) */ 
a.resource_value msisdn, substr(a.resource_value,4,7) digit, 
decode(a.resource_pool_id,'82','RFTORIGIN','87','RFTVIP') number_location, 
decode(b.resource_attr_value,'1','BK','2','UE','3','LE','4','UN','5','LN','6','US','7','LS') zonee, 
decode(a.category_index,'1','ORANUM','2','PLATINUM','3','GOLD','4','SILVER','5','BRONZE','6','REGULAR') levell
FROM rm1_resource a, RM1_RESOURCE_ATTRIBUTES b 
WHERE a.resource_id = b.resource_value_id 
AND a.resource_pool_id in (82,87) 
AND a.resource_status = 'AVAILABLE'
AND b.resource_attribute_id = 17 
AND b.resource_attr_value in (1,2,3,4,5,6,7) 
AND substr(resource_value,4,1) = substr(resource_value,5,1) 
AND substr(resource_value,5,1) = substr(resource_value,6,1) 
AND substr(resource_value,6,1) <> substr(resource_value,7,1) 
AND substr(resource_value,7,1) = substr(resource_value,8,1)
AND substr(resource_value,8,1) = substr(resource_value,9,1)
AND substr(resource_value,9,1) = substr(resource_value,10,1)


---7. 0%% - % XXX - YYY 

SELECT /*+parallel(rm1_resource,32) */ 
a.resource_value msisdn, substr(a.resource_value,4,6) digit, 
decode(a.resource_pool_id,'82','RFTORIGIN','87','RFTVIP') number_location, 
decode(b.resource_attr_value,'1','BK','2','UE','3','LE','4','UN','5','LN','6','US','7','LS') zonee, 
decode(a.category_index,'1','ORANUM','2','PLATINUM','3','GOLD','4','SILVER','5','BRONZE','6','REGULAR') levell
FROM rm1_resource a, RM1_RESOURCE_ATTRIBUTES b 
WHERE a.resource_id = b.resource_value_id 
AND a.resource_pool_id in (82,87) 
AND a.resource_status = 'AVAILABLE'
AND b.resource_attribute_id = 17 
AND b.resource_attr_value in (1,2,3,4,5,6,7) 
AND substr(resource_value,4,1) = substr(resource_value,5,1) 
AND substr(resource_value,5,1) = substr(resource_value,6,1) 
AND substr(resource_value,6,1) <> substr(resource_value,7,1) 
AND substr(resource_value,7,1) = substr(resource_value,8,1)
AND substr(resource_value,8,1) = substr(resource_value,9,1)
AND substr(resource_value,9,1) <> substr(resource_value,10,1)


---8. 0%% - XXX - %YYY 

SELECT /*+parallel(rm1_resource,32) */ 
a.resource_value msisdn, substr(a.resource_value,4,7) digit, 
decode(a.resource_pool_id,'82','RFTORIGIN','87','RFTVIP') number_location, 
decode(b.resource_attr_value,'1','BK','2','UE','3','LE','4','UN','5','LN','6','US','7','LS') zonee, 
decode(a.category_index,'1','ORANUM','2','PLATINUM','3','GOLD','4','SILVER','5','BRONZE','6','REGULAR') levell
FROM rm1_resource a, RM1_RESOURCE_ATTRIBUTES b 
WHERE a.resource_id = b.resource_value_id 
AND a.resource_pool_id in (82,87) 
AND a.resource_status = 'AVAILABLE'
AND b.resource_attribute_id = 17 
AND b.resource_attr_value in (1,2,3,4,5,6,7)
AND substr(resource_value,4,1) = substr(resource_value,5,1) 
AND substr(resource_value,5,1) = substr(resource_value,6,1) 
AND substr(resource_value,6,1) <> substr(resource_value,8,1)
AND substr(resource_value,8,1) = substr(resource_value,9,1)
AND substr(resource_value,9,1) = substr(resource_value,10,1)


---9. 0%% - %XX - YYZZ 

SELECT /*+parallel(rm1_resource,32) */ 
a.resource_value msisdn, substr(a.resource_value,5,6) digit, 
decode(a.resource_pool_id,'82','RFTORIGIN','87','RFTVIP') number_location, 
decode(b.resource_attr_value,'1','BK','2','UE','3','LE','4','UN','5','LN','6','US','7','LS') zonee, 
decode(a.category_index,'1','ORANUM','2','PLATINUM','3','GOLD','4','SILVER','5','BRONZE','6','REGULAR') levell
FROM rm1_resource a, RM1_RESOURCE_ATTRIBUTES b 
WHERE a.resource_id = b.resource_value_id 
AND a.resource_pool_id in (82,87) 
AND a.resource_status = 'AVAILABLE'
AND b.resource_attribute_id = 17 
AND b.resource_attr_value in (1,2,3,4,5,6,7)  
AND substr(resource_value,5,1) = substr(resource_value,6,1) 
AND substr(resource_value,6,1) <> substr(resource_value,7,1)
AND substr(resource_value,6,1) <> substr(resource_value,9,1)
AND substr(resource_value,7,1) = substr(resource_value,8,1) 
AND substr(resource_value,8,1) <> substr(resource_value,9,1)
AND substr(resource_value,9,1) = substr(resource_value,10,1)


---10.	0%% - % XY - XYXY 

SELECT /*+parallel(rm1_resource,32) */ 
a.resource_value msisdn, substr(a.resource_value,5,6) digit, 
decode(a.resource_pool_id,'82','RFTORIGIN','87','RFTVIP') number_location, 
decode(b.resource_attr_value,'1','BK','2','UE','3','LE','4','UN','5','LN','6','US','7','LS') zonee, 
decode(a.category_index,'1','ORANUM','2','PLATINUM','3','GOLD','4','SILVER','5','BRONZE','6','REGULAR') levell
FROM rm1_resource a, RM1_RESOURCE_ATTRIBUTES b 
WHERE a.resource_id = b.resource_value_id 
AND a.resource_pool_id in (82,87) 
AND a.resource_status = 'AVAILABLE'
AND b.resource_attribute_id = 17 
AND b.resource_attr_value in (1,2,3,4,5,6,7)  
AND substr(resource_value,5,1) = substr(resource_value,7,1) 
AND substr(resource_value,5,1) = substr(resource_value,9,1) 
AND substr(resource_value,5,1) <> substr(resource_value,6,1)
AND substr(resource_value,6,1) = substr(resource_value,8,1)
AND substr(resource_value,6,1) = substr(resource_value,10,1)


---11.	0XY-XYX-YXYX 

SELECT /*+parallel(rm1_resource,32) */ 
a.resource_value msisdn, substr(a.resource_value,2,9) digit, 
decode(a.resource_pool_id,'82','RFTORIGIN','87','RFTVIP') number_location, 
decode(b.resource_attr_value,'1','BK','2','UE','3','LE','4','UN','5','LN','6','US','7','LS') zonee, 
decode(a.category_index,'1','ORANUM','2','PLATINUM','3','GOLD','4','SILVER','5','BRONZE','6','REGULAR') levell
FROM rm1_resource a, RM1_RESOURCE_ATTRIBUTES b 
WHERE a.resource_id = b.resource_value_id 
AND a.resource_pool_id in (82,87) 
AND a.resource_status = 'AVAILABLE'
AND b.resource_attribute_id = 17 
AND b.resource_attr_value in (1,2,3,4,5,6,7)
AND substr(resource_value,2,1) = substr(resource_value,4,1) 
AND substr(resource_value,2,1) = substr(resource_value,6,1) 
AND substr(resource_value,2,1) = substr(resource_value,8,1) 
AND substr(resource_value,2,1) = substr(resource_value,10,1) 
AND substr(resource_value,2,1) <> substr(resource_value,3,1)
AND substr(resource_value,3,1) = substr(resource_value,5,1) 
AND substr(resource_value,3,1) = substr(resource_value,7,1) 
AND substr(resource_value,3,1) = substr(resource_value,8,1) 


---12.	0AB-ABX-XXXX 

SELECT /*+parallel(rm1_resource,32) */ 
a.resource_value msisdn, substr(a.resource_value,2,9) digit, 
decode(a.resource_pool_id,'82','RFTORIGIN','87','RFTVIP') number_location, 
decode(b.resource_attr_value,'1','BK','2','UE','3','LE','4','UN','5','LN','6','US','7','LS') zonee, 
decode(a.category_index,'1','ORANUM','2','PLATINUM','3','GOLD','4','SILVER','5','BRONZE','6','REGULAR') levell
FROM rm1_resource a, RM1_RESOURCE_ATTRIBUTES b 
WHERE a.resource_id = b.resource_value_id 
AND a.resource_pool_id in (82,87) 
AND a.resource_status = 'AVAILABLE'
AND b.resource_attribute_id = 17 
AND b.resource_attr_value in (1,2,3,4,5,6,7)
AND substr(resource_value,2,1) <> substr(resource_value,6,1) 
AND substr(resource_value,2,1) <> substr(resource_value,3,1) 
AND substr(resource_value,3,1) <> substr(resource_value,6,1) 
AND substr(resource_value,2,1) = substr(resource_value,4,1) 
AND substr(resource_value,3,1) = substr(resource_value,5,1) 
AND substr(resource_value,6,1) = substr(resource_value,7,1) 
AND substr(resource_value,7,1) = substr(resource_value,8,1)
AND substr(resource_value,8,1) = substr(resource_value,9,1)
AND substr(resource_value,9,1) = substr(resource_value,10,1)


---13.	0%% - ABA - XXXX 

SELECT /*+parallel(rm1_resource,32) */ 
a.resource_value msisdn, substr(a.resource_value,4,7) digit, 
decode(a.resource_pool_id,'82','RFTORIGIN','87','RFTVIP') number_location, 
decode(b.resource_attr_value,'1','BK','2','UE','3','LE','4','UN','5','LN','6','US','7','LS') zonee, 
decode(a.category_index,'1','ORANUM','2','PLATINUM','3','GOLD','4','SILVER','5','BRONZE','6','REGULAR') levell
FROM rm1_resource a, RM1_RESOURCE_ATTRIBUTES b 
WHERE a.resource_id = b.resource_value_id 
AND a.resource_pool_id in (82,87) 
AND a.resource_status = 'AVAILABLE'
AND b.resource_attribute_id = 17 
AND b.resource_attr_value in (1,2,3,4,5,6,7) 
AND substr(resource_value,4,1) = substr(resource_value,6,1) 
AND substr(resource_value,4,1) <> substr(resource_value,5,1) 
AND substr(resource_value,4,1) <> substr(resource_value,7,1) 
AND substr(resource_value,5,1) <> substr(resource_value,7,1) 
AND substr(resource_value,7,1) = substr(resource_value,8,1)
AND substr(resource_value,8,1) = substr(resource_value,9,1)
AND substr(resource_value,9,1) = substr(resource_value,10,1)


---14.	0%% - AAB - XXXX 

SELECT /*+parallel(rm1_resource,32) */ 
a.resource_value msisdn, substr(a.resource_value,4,7) digit, 
decode(a.resource_pool_id,'82','RFTORIGIN','87','RFTVIP') number_location, 
decode(b.resource_attr_value,'1','BK','2','UE','3','LE','4','UN','5','LN','6','US','7','LS') zonee, 
decode(a.category_index,'1','ORANUM','2','PLATINUM','3','GOLD','4','SILVER','5','BRONZE','6','REGULAR') levell
FROM rm1_resource a, RM1_RESOURCE_ATTRIBUTES b 
WHERE a.resource_id = b.resource_value_id 
AND a.resource_pool_id in (82,87) 
AND a.resource_status = 'AVAILABLE'
AND b.resource_attribute_id = 17 
AND b.resource_attr_value in (1,2,3,4,5,6,7) 
AND substr(resource_value,4,1) = substr(resource_value,5,1) 
AND substr(resource_value,4,1) <> substr(resource_value,6,1) 
AND substr(resource_value,4,1) <> substr(resource_value,7,1) 
AND substr(resource_value,6,1) <> substr(resource_value,7,1) 
AND substr(resource_value,7,1) = substr(resource_value,8,1)
AND substr(resource_value,8,1) = substr(resource_value,9,1)
AND substr(resource_value,9,1) = substr(resource_value,10,1)


---15.	0%% - ABB - XXXX 

SELECT /*+parallel(rm1_resource,32) */ 
a.resource_value msisdn, substr(a.resource_value,4,7) digit, 
decode(a.resource_pool_id,'82','RFTORIGIN','87','RFTVIP') number_location, 
decode(b.resource_attr_value,'1','BK','2','UE','3','LE','4','UN','5','LN','6','US','7','LS') zonee, 
decode(a.category_index,'1','ORANUM','2','PLATINUM','3','GOLD','4','SILVER','5','BRONZE','6','REGULAR') levell
FROM rm1_resource a, RM1_RESOURCE_ATTRIBUTES b 
WHERE a.resource_id = b.resource_value_id 
AND a.resource_pool_id in (82,87) 
AND a.resource_status = 'AVAILABLE'
AND b.resource_attribute_id = 17 
AND b.resource_attr_value in (1,2,3,4,5,6,7)
AND substr(resource_value,4,1) <> substr(resource_value,5,1) 
AND substr(resource_value,5,1) <> substr(resource_value,7,1) 
AND substr(resource_value,5,1) = substr(resource_value,6,1)  
AND substr(resource_value,7,1) = substr(resource_value,8,1)
AND substr(resource_value,8,1) = substr(resource_value,9,1)
AND substr(resource_value,9,1) = substr(resource_value,10,1)


---16.	0% - AABB  - XXXX 

SELECT /*+parallel(rm1_resource,32) */ 
a.resource_value msisdn, substr(a.resource_value,3,8) digit, 
decode(a.resource_pool_id,'82','RFTORIGIN','87','RFTVIP') number_location, 
decode(b.resource_attr_value,'1','BK','2','UE','3','LE','4','UN','5','LN','6','US','7','LS') zonee, 
decode(a.category_index,'1','ORANUM','2','PLATINUM','3','GOLD','4','SILVER','5','BRONZE','6','REGULAR') levell
FROM rm1_resource a, RM1_RESOURCE_ATTRIBUTES b 
WHERE a.resource_id = b.resource_value_id 
AND a.resource_pool_id in (82,87) 
AND a.resource_status = 'AVAILABLE'
AND b.resource_attribute_id = 17 
AND b.resource_attr_value in (1,2,3,4,5,6,7) 
AND substr(resource_value,3,1) = substr(resource_value,4,1) 
AND substr(resource_value,3,1) <> substr(resource_value,5,1) 
AND substr(resource_value,3,1) <> substr(resource_value,7,1) 
AND substr(resource_value,5,1) <> substr(resource_value,7,1) 
AND substr(resource_value,5,1) = substr(resource_value,6,1)  
AND substr(resource_value,7,1) = substr(resource_value,8,1)
AND substr(resource_value,8,1) = substr(resource_value,9,1)
AND substr(resource_value,9,1) = substr(resource_value,10,1)


---17.	0% - ABBA - XXXX 

SELECT /*+parallel(rm1_resource,32) */ 
a.resource_value msisdn, substr(a.resource_value,3,8) digit, 
decode(a.resource_pool_id,'82','RFTORIGIN','87','RFTVIP') number_location, 
decode(b.resource_attr_value,'1','BK','2','UE','3','LE','4','UN','5','LN','6','US','7','LS') zonee, 
decode(a.category_index,'1','ORANUM','2','PLATINUM','3','GOLD','4','SILVER','5','BRONZE','6','REGULAR') levell
FROM rm1_resource a, RM1_RESOURCE_ATTRIBUTES b 
WHERE a.resource_id = b.resource_value_id 
AND a.resource_pool_id in (82,87) 
AND a.resource_status = 'AVAILABLE'
AND b.resource_attribute_id = 17 
AND b.resource_attr_value in (1,2,3,4,5,6,7) 
AND substr(resource_value,3,1) <> substr(resource_value,4,1) 
AND substr(resource_value,3,1) = substr(resource_value,6,1) 
AND substr(resource_value,4,1) = substr(resource_value,5,1) 
AND substr(resource_value,3,1) <> substr(resource_value,7,1) 
AND substr(resource_value,4,1) <> substr(resource_value,7,1) 
AND substr(resource_value,7,1) = substr(resource_value,8,1)
AND substr(resource_value,8,1) = substr(resource_value,9,1)
AND substr(resource_value,9,1) = substr(resource_value,10,1)


---18.	0% - ABAB - XXXX 

SELECT /*+parallel(rm1_resource,32) */ 
a.resource_value msisdn, substr(a.resource_value,3,8) digit, 
decode(a.resource_pool_id,'82','RFTORIGIN','87','RFTVIP') number_location, 
decode(b.resource_attr_value,'1','BK','2','UE','3','LE','4','UN','5','LN','6','US','7','LS') zonee, 
decode(a.category_index,'1','ORANUM','2','PLATINUM','3','GOLD','4','SILVER','5','BRONZE','6','REGULAR') levell
FROM rm1_resource a, RM1_RESOURCE_ATTRIBUTES b 
WHERE a.resource_id = b.resource_value_id 
AND a.resource_pool_id in (82,87) 
AND a.resource_status = 'AVAILABLE'
AND b.resource_attribute_id = 17 
AND b.resource_attr_value in (1,2,3,4,5,6,7) 
AND substr(resource_value,3,1) <> substr(resource_value,4,1) 
AND substr(resource_value,3,1) = substr(resource_value,5,1) 
AND substr(resource_value,4,1) = substr(resource_value,6,1) 
AND substr(resource_value,3,1) <> substr(resource_value,7,1) 
AND substr(resource_value,4,1) <> substr(resource_value,7,1) 
AND substr(resource_value,7,1) = substr(resource_value,8,1)
AND substr(resource_value,8,1) = substr(resource_value,9,1)
AND substr(resource_value,9,1) = substr(resource_value,10,1)


---19.	0AB - 0AB  XXXX 

SELECT /*+parallel(rm1_resource,32) */ 
a.resource_value msisdn, substr(a.resource_value,2,9) digit, 
decode(a.resource_pool_id,'82','RFTORIGIN','87','RFTVIP') number_location, 
decode(b.resource_attr_value,'1','BK','2','UE','3','LE','4','UN','5','LN','6','US','7','LS') zonee, 
decode(a.category_index,'1','ORANUM','2','PLATINUM','3','GOLD','4','SILVER','5','BRONZE','6','REGULAR') levell
FROM rm1_resource a, RM1_RESOURCE_ATTRIBUTES b 
WHERE a.resource_id = b.resource_value_id 
AND a.resource_pool_id in (82,87) 
AND a.resource_status = 'AVAILABLE'
AND b.resource_attribute_id = 17 
AND b.resource_attr_value in (1,2,3,4,5,6,7)
AND substr(resource_value,2,1) <> substr(resource_value,3,1)
AND substr(resource_value,2,1) <> substr(resource_value,7,1)
AND substr(resource_value,2,1) = substr(resource_value,5,1)
AND substr(resource_value,3,1) = substr(resource_value,6,1) 
AND substr(resource_value,3,1) <> substr(resource_value,7,1) 
AND substr(resource_value,4,1) = '0'
AND substr(resource_value,7,1) = substr(resource_value,8,1)
AND substr(resource_value,8,1) = substr(resource_value,9,1)
AND substr(resource_value,9,1) = substr(resource_value,10,1)


---20.	0%[A] -[A+1][A+2][A+1]  - XXXX 

SELECT /*+parallel(rm1_resource,32) */ 
a.resource_value msisdn, substr(a.resource_value,3,8) digit, 
decode(a.resource_pool_id,'82','RFTORIGIN','87','RFTVIP') number_location, 
decode(b.resource_attr_value,'1','BK','2','UE','3','LE','4','UN','5','LN','6','US','7','LS') zonee, 
decode(a.category_index,'1','ORANUM','2','PLATINUM','3','GOLD','4','SILVER','5','BRONZE','6','REGULAR') levell
FROM rm1_resource a, RM1_RESOURCE_ATTRIBUTES b 
WHERE a.resource_id = b.resource_value_id 
AND a.resource_pool_id in (82,87) 
AND a.resource_status = 'AVAILABLE'
AND b.resource_attribute_id = 17 
AND b.resource_attr_value in (1,2,3,4,5,6,7) 
AND substr(resource_value,4,1) = substr(resource_value,3,1)+1
AND substr(resource_value,5,1) = substr(resource_value,3,1)+2
AND substr(resource_value,6,1) = substr(resource_value,3,1)+1
AND substr(resource_value,7,1) = substr(resource_value,8,1)
AND substr(resource_value,8,1) = substr(resource_value,9,1)
AND substr(resource_value,9,1) = substr(resource_value,10,1)


---21.	0%% - [A], [A+1, [A+2] - XXXX 

SELECT /*+parallel(rm1_resource,32) */ 
a.resource_value msisdn, substr(a.resource_value,4,7) digit, 
decode(a.resource_pool_id,'82','RFTORIGIN','87','RFTVIP') number_location, 
decode(b.resource_attr_value,'1','BK','2','UE','3','LE','4','UN','5','LN','6','US','7','LS') zonee, 
decode(a.category_index,'1','ORANUM','2','PLATINUM','3','GOLD','4','SILVER','5','BRONZE','6','REGULAR') levell
FROM rm1_resource a, RM1_RESOURCE_ATTRIBUTES b 
WHERE a.resource_id = b.resource_value_id 
AND a.resource_pool_id in (82,87) 
AND a.resource_status = 'AVAILABLE'
AND b.resource_attribute_id = 17 
AND b.resource_attr_value in (1,2,3,4,5,6,7) 
AND substr(resource_value,5,1) = substr(resource_value,4,1)+1
AND substr(resource_value,6,1) = substr(resource_value,4,1)+2
AND substr(resource_value,7,1) = substr(resource_value,8,1)
AND substr(resource_value,8,1) = substr(resource_value,9,1)
AND substr(resource_value,9,1) = substr(resource_value,10,1)


---22.	0%% - [A], [A-1], [A-2]  - XXXX 

SELECT /*+parallel(rm1_resource,32) */ 
a.resource_value msisdn, substr(a.resource_value,4,7) digit, 
decode(a.resource_pool_id,'82','RFTORIGIN','87','RFTVIP') number_location, 
decode(b.resource_attr_value,'1','BK','2','UE','3','LE','4','UN','5','LN','6','US','7','LS') zonee, 
decode(a.category_index,'1','ORANUM','2','PLATINUM','3','GOLD','4','SILVER','5','BRONZE','6','REGULAR') levell
FROM rm1_resource a, RM1_RESOURCE_ATTRIBUTES b 
WHERE a.resource_id = b.resource_value_id 
AND a.resource_pool_id in (82,87) 
AND a.resource_status = 'AVAILABLE'
AND b.resource_attribute_id = 17 
AND b.resource_attr_value in (1,2,3,4,5,6,7) 
AND substr(resource_value,5,1) = substr(resource_value,4,1)-1
AND substr(resource_value,6,1) = substr(resource_value,4,1)-2
AND substr(resource_value,7,1) = substr(resource_value,8,1)
AND substr(resource_value,8,1) = substr(resource_value,9,1)
AND substr(resource_value,9,1) = substr(resource_value,10,1)


---23.	0%% - %[A], [A+1], [A+2] - [A], [A+1], [A+2] 

SELECT /*+parallel(rm1_resource,32) */ 
a.resource_value msisdn, substr(a.resource_value,4,7) digit, 
decode(a.resource_pool_id,'82','RFTORIGIN','87','RFTVIP') number_location, 
decode(b.resource_attr_value,'1','BK','2','UE','3','LE','4','UN','5','LN','6','US','7','LS') zonee, 
decode(a.category_index,'1','ORANUM','2','PLATINUM','3','GOLD','4','SILVER','5','BRONZE','6','REGULAR') levell
FROM rm1_resource a, RM1_RESOURCE_ATTRIBUTES b 
WHERE a.resource_id = b.resource_value_id 
AND a.resource_pool_id in (82,87) 
AND a.resource_status = 'AVAILABLE'
AND b.resource_attribute_id = 17 
AND b.resource_attr_value in (1,2,3,4,5,6,7) 
AND substr(resource_value,6,1) = substr(resource_value,5,1)+1
AND substr(resource_value,7,1) = substr(resource_value,5,1)+2
AND substr(resource_value,8,1) = substr(resource_value,5,1)
AND substr(resource_value,6,1) = substr(resource_value,9,1)
AND substr(resource_value,7,1) = substr(resource_value,10,1)


---24.	0%% - %[A], [A-1], [A-2] - [A], [A-1], [A-2] 

SELECT /*+parallel(rm1_resource,32) */ 
a.resource_value msisdn, substr(a.resource_value,5,6) digit, 
decode(a.resource_pool_id,'82','RFTORIGIN','87','RFTVIP') number_location, 
decode(b.resource_attr_value,'1','BK','2','UE','3','LE','4','UN','5','LN','6','US','7','LS') zonee, 
decode(a.category_index,'1','ORANUM','2','PLATINUM','3','GOLD','4','SILVER','5','BRONZE','6','REGULAR') levell
FROM rm1_resource a, RM1_RESOURCE_ATTRIBUTES b 
WHERE a.resource_id = b.resource_value_id 
AND a.resource_pool_id in (82,87) 
AND a.resource_status = 'AVAILABLE'
AND b.resource_attribute_id = 17 
AND b.resource_attr_value in (1,2,3,4,5,6,7) 
AND substr(resource_value,6,1) = substr(resource_value,5,1)-1
AND substr(resource_value,7,1) = substr(resource_value,5,1)-2
AND substr(resource_value,8,1) = substr(resource_value,5,1)
AND substr(resource_value,6,1) = substr(resource_value,9,1)
AND substr(resource_value,7,1) = substr(resource_value,10,1)


---25.	0%-[A], [A+1], [A+2], [A+3] - [A], [A+1], [A+2], [A+3] 

SELECT /*+parallel(rm1_resource,32) */ 
a.resource_value msisdn, substr(a.resource_value,3,8) digit, 
decode(a.resource_pool_id,'82','RFTORIGIN','87','RFTVIP') number_location, 
decode(b.resource_attr_value,'1','BK','2','UE','3','LE','4','UN','5','LN','6','US','7','LS') zonee, 
decode(a.category_index,'1','ORANUM','2','PLATINUM','3','GOLD','4','SILVER','5','BRONZE','6','REGULAR') levell
FROM rm1_resource a, RM1_RESOURCE_ATTRIBUTES b 
WHERE a.resource_id = b.resource_value_id 
AND a.resource_pool_id in (82,87) 
AND a.resource_status = 'AVAILABLE'
AND b.resource_attribute_id = 17 
AND b.resource_attr_value in (1,2,3,4,5,6,7)
AND substr(resource_value,4,1) = substr(resource_value,3,1)+1
AND substr(resource_value,5,1) = substr(resource_value,3,1)+2
AND substr(resource_value,6,1) = substr(resource_value,3,1)+3
AND substr(resource_value,3,1) = substr(resource_value,7,1)
AND substr(resource_value,4,1) = substr(resource_value,8,1)
AND substr(resource_value,5,1) = substr(resource_value,9,1)
AND substr(resource_value,6,1) = substr(resource_value,10,1)


---26.	0%-[A], [A-1], [A-2], [A-3] - [A], [A-1], [A-2], [A-3]  

SELECT /*+parallel(rm1_resource,32) */ 
a.resource_value msisdn, substr(a.resource_value,3,8) digit, 
decode(a.resource_pool_id,'82','RFTORIGIN','87','RFTVIP') number_location, 
decode(b.resource_attr_value,'1','BK','2','UE','3','LE','4','UN','5','LN','6','US','7','LS') zonee, 
decode(a.category_index,'1','ORANUM','2','PLATINUM','3','GOLD','4','SILVER','5','BRONZE','6','REGULAR') levell
FROM rm1_resource a, RM1_RESOURCE_ATTRIBUTES b 
WHERE a.resource_id = b.resource_value_id 
AND a.resource_pool_id in (82,87) 
AND a.resource_status = 'AVAILABLE'
AND b.resource_attribute_id = 17 
AND b.resource_attr_value in (1,2,3,4,5,6,7)
AND substr(resource_value,4,1) = substr(resource_value,3,1)-1
AND substr(resource_value,5,1) = substr(resource_value,3,1)-2
AND substr(resource_value,6,1) = substr(resource_value,3,1)-3
AND substr(resource_value,3,1) = substr(resource_value,7,1)
AND substr(resource_value,4,1) = substr(resource_value,8,1)
AND substr(resource_value,5,1) = substr(resource_value,9,1)
AND substr(resource_value,6,1) = substr(resource_value,10,1)


---27.	0% - [A], [A+1], [A+2], [A+3] - [B], [B+1], [B+2], [B+3]  

SELECT /*+parallel(rm1_resource,32) */ 
a.resource_value msisdn, substr(a.resource_value,3,8) digit, 
decode(a.resource_pool_id,'82','RFTORIGIN','87','RFTVIP') number_location, 
decode(b.resource_attr_value,'1','BK','2','UE','3','LE','4','UN','5','LN','6','US','7','LS') zonee, 
decode(a.category_index,'1','ORANUM','2','PLATINUM','3','GOLD','4','SILVER','5','BRONZE','6','REGULAR') levell
FROM rm1_resource a, RM1_RESOURCE_ATTRIBUTES b 
WHERE a.resource_id = b.resource_value_id 
AND a.resource_pool_id in (82,87) 
AND a.resource_status = 'AVAILABLE'
AND b.resource_attribute_id = 17 
AND b.resource_attr_value in (1,2,3,4,5,6,7)
AND substr(resource_value,4,1) = substr(resource_value,3,1)+1
AND substr(resource_value,5,1) = substr(resource_value,3,1)+2
AND substr(resource_value,6,1) = substr(resource_value,3,1)+3
AND substr(resource_value,3,1) <> substr(resource_value,7,1)
AND substr(resource_value,8,1) = substr(resource_value,7,1)+1
AND substr(resource_value,9,1) = substr(resource_value,7,1)+2
AND substr(resource_value,10,1) = substr(resource_value,7,1)+3


---28.	0%X - YXY - XYX% 

SELECT /*+parallel(rm1_resource,32) */ 
a.resource_value msisdn, substr(a.resource_value,3,7) digit, 
decode(a.resource_pool_id,'82','RFTORIGIN','87','RFTVIP') number_location, 
decode(b.resource_attr_value,'1','BK','2','UE','3','LE','4','UN','5','LN','6','US','7','LS') zonee, 
decode(a.category_index,'1','ORANUM','2','PLATINUM','3','GOLD','4','SILVER','5','BRONZE','6','REGULAR') levell
FROM rm1_resource a, RM1_RESOURCE_ATTRIBUTES b 
WHERE a.resource_id = b.resource_value_id 
AND a.resource_pool_id in (82,87) 
AND a.resource_status = 'AVAILABLE'
AND b.resource_attribute_id = 17 
AND b.resource_attr_value in (1,2,3,4,5,6,7)
AND substr(resource_value,3,1) = substr(resource_value,5,1)
AND substr(resource_value,3,1) = substr(resource_value,7,1)
AND substr(resource_value,3,1) = substr(resource_value,9,1)
AND substr(resource_value,3,1) <> substr(resource_value,4,1)
AND substr(resource_value,4,1) = substr(resource_value,6,1)
AND substr(resource_value,4,1) = substr(resource_value,8,1)


---29.	0%% - XXX - XXX% 

SELECT /*+parallel(rm1_resource,32) */ 
a.resource_value msisdn, substr(a.resource_value,4,6) digit, 
decode(a.resource_pool_id,'82','RFTORIGIN','87','RFTVIP') number_location, 
decode(b.resource_attr_value,'1','BK','2','UE','3','LE','4','UN','5','LN','6','US','7','LS') zonee, 
decode(a.category_index,'1','ORANUM','2','PLATINUM','3','GOLD','4','SILVER','5','BRONZE','6','REGULAR') levell
FROM rm1_resource a, RM1_RESOURCE_ATTRIBUTES b 
WHERE a.resource_id = b.resource_value_id 
AND a.resource_pool_id in (82,87) 
AND a.resource_status = 'AVAILABLE'
AND b.resource_attribute_id = 17 
AND b.resource_attr_value in (1,2,3,4,5,6,7)
AND substr(resource_value,4,1) = substr(resource_value,5,1) 
AND substr(resource_value,4,1) = substr(resource_value,6,1) 
AND substr(resource_value,4,1) = substr(resource_value,7,1) 
AND substr(resource_value,4,1) = substr(resource_value,8,1)
AND substr(resource_value,4,1) = substr(resource_value,9,1)


---30.	0%% -%00 - %000 

SELECT /*+parallel(rm1_resource,32) */ 
a.resource_value msisdn, substr(a.resource_value,2,9) digit, 
decode(a.resource_pool_id,'82','RFTORIGIN','87','RFTVIP') number_location, 
decode(b.resource_attr_value,'1','BK','2','UE','3','LE','4','UN','5','LN','6','US','7','LS') zonee, 
decode(a.category_index,'1','ORANUM','2','PLATINUM','3','GOLD','4','SILVER','5','BRONZE','6','REGULAR') levell
FROM rm1_resource a, RM1_RESOURCE_ATTRIBUTES b 
WHERE a.resource_id = b.resource_value_id 
AND a.resource_pool_id in (82,87) 
AND a.resource_status = 'AVAILABLE'
AND b.resource_attribute_id = 17 
AND b.resource_attr_value in (1,2,3,4,5,6,7)
AND substr(resource_value,5,1) = '0'
AND substr(resource_value,6,1) = '0'
AND substr(resource_value,8,1) = '0'
AND substr(resource_value,9,1) = '0'
AND substr(resource_value,10,1) = '0'


---31.	0%0 - %0% - %000 

SELECT /*+parallel(rm1_resource,32) */ 
a.resource_value msisdn, substr(a.resource_value,2,9) digit, 
decode(a.resource_pool_id,'82','RFTORIGIN','87','RFTVIP') number_location, 
decode(b.resource_attr_value,'1','BK','2','UE','3','LE','4','UN','5','LN','6','US','7','LS') zonee, 
decode(a.category_index,'1','ORANUM','2','PLATINUM','3','GOLD','4','SILVER','5','BRONZE','6','REGULAR') levell
FROM rm1_resource a, RM1_RESOURCE_ATTRIBUTES b 
WHERE a.resource_id = b.resource_value_id 
AND a.resource_pool_id in (82,87) 
AND a.resource_status = 'AVAILABLE'
AND b.resource_attribute_id = 17 
AND b.resource_attr_value in (1,2,3,4,5,6,7)
AND substr(resource_value,3,1) = '0'
AND substr(resource_value,5,1) = '0'
AND substr(resource_value,8,1) = '0'
AND substr(resource_value,9,1) = '0'
AND substr(resource_value,10,1) = '0'


---32.	0%% - %00 - 0%00  

SELECT /*+parallel(rm1_resource,32) */ 
a.resource_value msisdn, substr(a.resource_value,2,9) digit, 
decode(a.resource_pool_id,'82','RFTORIGIN','87','RFTVIP') number_location, 
decode(b.resource_attr_value,'1','BK','2','UE','3','LE','4','UN','5','LN','6','US','7','LS') zonee, 
decode(a.category_index,'1','ORANUM','2','PLATINUM','3','GOLD','4','SILVER','5','BRONZE','6','REGULAR') levell
FROM rm1_resource a, RM1_RESOURCE_ATTRIBUTES b 
WHERE a.resource_id = b.resource_value_id 
AND a.resource_pool_id in (82,87) 
AND a.resource_status = 'AVAILABLE'
AND b.resource_attribute_id = 17 
AND b.resource_attr_value in (1,2,3,4,5,6,7) 
AND substr(resource_value,6,1) = '0'
AND substr(resource_value,5,1) = '0'
AND substr(resource_value,7,1) = '0'
AND substr(resource_value,9,1) = '0'
AND substr(resource_value,10,1) = '0'


---33.	0%-ABBA-ABBA  

SELECT /*+parallel(rm1_resource,32) */ 
a.resource_value msisdn, substr(a.resource_value,3,8) digit, 
decode(a.resource_pool_id,'82','RFTORIGIN','87','RFTVIP') number_location, 
decode(b.resource_attr_value,'1','BK','2','UE','3','LE','4','UN','5','LN','6','US','7','LS') zonee, 
decode(a.category_index,'1','ORANUM','2','PLATINUM','3','GOLD','4','SILVER','5','BRONZE','6','REGULAR') levell
FROM rm1_resource a, RM1_RESOURCE_ATTRIBUTES b 
WHERE a.resource_id = b.resource_value_id 
AND a.resource_pool_id in (82,87) 
AND a.resource_status = 'AVAILABLE'
AND b.resource_attribute_id = 17 
AND b.resource_attr_value in (1,2,3,4,5,6,7)
AND substr(resource_value,3,1) = substr(resource_value,6,1)
AND substr(resource_value,3,1) = substr(resource_value,7,1)
AND substr(resource_value,3,1) = substr(resource_value,10,1)
AND substr(resource_value,3,1) <> substr(resource_value,4,1)
AND substr(resource_value,4,1) = substr(resource_value,5,1)
AND substr(resource_value,4,1) = substr(resource_value,8,1)
AND substr(resource_value,4,1) = substr(resource_value,9,1)


---34.	0%%-AAB-BBBB   

SELECT /*+parallel(rm1_resource,32) */ 
a.resource_value msisdn, substr(a.resource_value,3,8) digit, 
decode(a.resource_pool_id,'82','RFTORIGIN','87','RFTVIP') number_location, 
decode(b.resource_attr_value,'1','BK','2','UE','3','LE','4','UN','5','LN','6','US','7','LS') zonee, 
decode(a.category_index,'1','ORANUM','2','PLATINUM','3','GOLD','4','SILVER','5','BRONZE','6','REGULAR') levell
FROM rm1_resource a, RM1_RESOURCE_ATTRIBUTES b 
WHERE a.resource_id = b.resource_value_id 
AND a.resource_pool_id in (82,87) 
AND a.resource_status = 'AVAILABLE'
AND b.resource_attribute_id = 17 
AND b.resource_attr_value in (1,2,3,4,5,6,7)
AND substr(resource_value,4,1) = substr(resource_value,5,1) 
AND substr(resource_value,4,1) <> substr(resource_value,6,1) 
AND substr(resource_value,6,1) = substr(resource_value,7,1) 
AND substr(resource_value,7,1) = substr(resource_value,8,1)
AND substr(resource_value,8,1) = substr(resource_value,9,1)
AND substr(resource_value,9,1) = substr(resource_value,10,1)


---35.	0 - AAAA - % - XYXY  

SELECT /*+parallel(rm1_resource,32) */ 
a.resource_value msisdn, substr(a.resource_value,3,8) digit, 
decode(a.resource_pool_id,'82','RFTORIGIN','87','RFTVIP') number_location, 
decode(b.resource_attr_value,'1','BK','2','UE','3','LE','4','UN','5','LN','6','US','7','LS') zonee, 
decode(a.category_index,'1','ORANUM','2','PLATINUM','3','GOLD','4','SILVER','5','BRONZE','6','REGULAR') levell
FROM rm1_resource a, RM1_RESOURCE_ATTRIBUTES b 
WHERE a.resource_id = b.resource_value_id 
AND a.resource_pool_id in (82,87) 
AND a.resource_status = 'AVAILABLE'
AND b.resource_attribute_id = 17 
AND b.resource_attr_value in (1,2,3,4,5,6,7) 
AND substr(resource_value,2,1) = substr(resource_value,3,1) 
AND substr(resource_value,2,1) = substr(resource_value,4,1) 
AND substr(resource_value,2,1) = substr(resource_value,5,1) 
AND substr(resource_value,2,1) = substr(resource_value,6,1) 
AND substr(resource_value,2,1) <> substr(resource_value,7,1) 
AND substr(resource_value,2,1) <> substr(resource_value,8,1) 
AND substr(resource_value,7,1) = substr(resource_value,9,1)
AND substr(resource_value,8,1) = substr(resource_value,7,1)
AND substr(resource_value,8,1) = substr(resource_value,10,1)


