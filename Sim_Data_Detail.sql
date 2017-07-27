
SELECT package_attribute_id, package_attribute_value
FROM rm1_package_attributes 
WHERE package_value_id IN (SELECT package_id FROM rm1_package WHERE package_value = '896600101590613649')
AND package_attribute_id IN ('5','6','7','8') -- 5_PIN1 6_PIN2 7_PUK1 8_PUK2

-- IMSI
SELECT resource_value FROM rm1_resource WHERE resource_parent_value = '896600101590613649'
AND resource_type_id = '2'
