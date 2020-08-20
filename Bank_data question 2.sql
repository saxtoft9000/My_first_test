-- 2. build, for each client, the number of transactions 
SELECT client.client_id, count(trans.amount) as number_of_trans
FROM client
JOIN disp
On client.client_id = disp.client_id
JOIN trans
ON disp.account_id = trans.account_id
GROUP BY client.client_id
ORDER BY client.client_id