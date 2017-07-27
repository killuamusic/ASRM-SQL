10001320 
258060150 258060151
520002000005616 - 520002000005626
896600471640000000 - 896600471640000010

SELECT * FROM urm9_res_max_val WHERE sim_order = '10001320'

SELECT * FROM prdappo.RM1_REQUEST WHERE parent_request_id = '258060151'

SELECT * FROM rm1_resource WHERE resource_value BETWEEN '896600471640000000' AND '896600471640000010'

-- IMSI
SELECT resource_parent_value,resource_value,RESOURCE_STATUS 
FROM rm1_resource 
WHERE resource_value BETWEEN '520002000005616' AND '520002000005626'

------------------------------------

DELETE FROM rm1_resource 
WHERE resource_value BETWEEN '520002000005616' AND '520002000005626' 
AND TRUNC(last_activity_date) = TRUNC(SYSDATE)

DELETE FROM rm1_resource_history
WHERE resource_value BETWEEN '520002000005616' AND '520002000005626' 
AND TRUNC(last_activity_date) = TRUNC(SYSDATE)

DELETE FROM rm1_resource 
WHERE resource_value BETWEEN '896600471640000000' AND '896600471640000010' 
AND TRUNC(last_activity_date) = TRUNC(SYSDATE)

DELETE FROM rm1_resource_history
WHERE resource_value BETWEEN '896600471640000000' AND '896600471640000010' 
AND TRUNC(last_activity_date) = TRUNC(SYSDATE)

DELETE FROM urm9_res_max_val WHERE sim_order = '10001319'

DELETE FROM rm1_resource_attributes 
WHERE resource_value_id IN(SELECT resource_id FROM rm1_resource WHERE resource_value = '10001319')

DELETE FROM rm1_resource WHERE resource_value = '10001319'