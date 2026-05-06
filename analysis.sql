# Equipment with highest downtime
SELECT equipment_id, COUNT(*) AS downtime_events
FROM mining_operations
WHERE status = 'down'
GROUP BY equipment_id
ORDER BY downtime_events DESC;

#Site with highest downtime
SELECT site, COUNT(*) AS downtime_events
FROM mining_operations
WHERE status = 'down'
GROUP BY site
ORDER BY downtime_events DESC;

#Overall operational status
SELECT status, COUNT(*) AS total_events
FROM mining_operations
GROUP BY status;
