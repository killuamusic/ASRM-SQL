/* File preact */
SELECT * FROM OMX_FILE_SUMMARY 
WHERE file_name LIKE '%preact.%20170724%'
--AND file_timestamp > TO_DATE('1/9/2016','dd/mm/yyyy')
ORDER BY  file_timestamp DESC;

--FILE_ID,FILE_NAME,NUM_TOTAL,NUM_FAILED,NUM_SUCCESS

-- num fail
SELECT msisdn,omxtrackingid,SUBSTR(error_message,1,220)
FROM OMX_APP.V_FAILED_ORDERS
WHERE omxtrackingid IN (
SELECT omx_tracking_id
FROM omx_file_details
WHERE file_id IN (
'06-cd1595e7-06ea-412c-890d-5c31ad5a8ecb'
));

/* File CCP */
SELECT * FROM OMX_FILE_SUMMARY 
WHERE file_name LIKE '%CCP%_20170725%'
--AND file_timestamp > TO_DATE('1/9/2016','dd/mm/yyyy')
ORDER BY  file_timestamp DESC;

SELECT *--msisdn, omxtrackingid, SUBSTR(error_message,1,220) response,SUBMISSION_DATE
FROM OMX_APP.V_ORDERS
WHERE msisdn IN (
'0642414159'
);
--AND channel = 'RM'
--ORDER BY SUBMISSION_DATE DESC

-- OMX All
SELECT * FROM OMX_FILE_DETAILS
WHERE file_id IN (SELECT file_id FROM OMX_FILE_SUMMARY WHERE file_name LIKE '%preact%160203%')
AND details_status NOT LIKE 'SUCCESS%'
ORDER BY details_timestamp DESC; 

SELECT * FROM OMX_FILE_DETAILS 
WHERE file_id IN (
'06-89557a07-b863-4fe2-ace9-0aeb9113cd89'
)
--AND details_status = 'FAILED' 
AND details_status <> 'SUCCESS'
ORDER BY details_timestamp DESC; 


-- num fail
SELECT *--COUNT(*) 
FROM OMX_APP.V_FAILED_ORDERS
WHERE omxtrackingid IN (
SELECT omx_tracking_id
FROM omx_file_details
WHERE file_id IN (
'06-abdba751-6be6-45bf-8491-40015bc7c78a'
))


SELECT * FROM OMX_FILE_SUMMARY
WHERE file_name LIKE '%CCP%161116%'
ORDER BY file_name ASC ;

-- CCP MSISDN
SELECT * FROM OMX_APP.V_ORDERS 
WHERE msisdn IN (
'0610040296'
)
AND order_type = '56' 
AND channel IN ('CCP');

SELECT * FROM OMX_FILE_SUMMARY 
WHERE file_name LIKE '%CCP%20161029%'
ORDER BY  file_timestamp DESC;


FILE_ID ,FILE_NAME ,NUM_TOTAL ,NUM_FAILED ,NUM_SUCCESS 
