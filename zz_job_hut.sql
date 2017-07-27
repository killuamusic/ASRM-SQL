SELECT resource_value
FROM rm1_resource  
WHERE resource_status = 'AVAILABLE'
AND resource_pool_id IN ('168','58','59','60','61','108','131','147','171')
AND resource_value LIKE '081239%'

SELECT rrp_pool_desc,RRP_ID FROM PRDREFSSC.rm_resource_pool WHERE rrp_pool_desc IN (
'RMVORIGIN',
'RMV900G1',
'RMV900G2',
'RMVSRM30',
'RMVSRM40',
'RMVSRM50',
'RMVSRM60',
'RMVSRMP50',
'RMVSRMP60'
)

