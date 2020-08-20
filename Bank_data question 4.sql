-- 4. build, for each client, the average amount of transaction that have been made after 1 - january - 1995
SELECT client.client_id, AVG(trans.amount) as AVG_amount_transaction
FROM client
JOIN disp
On client.client_id = disp.client_id
JOIN trans
ON disp.account_id = trans.account_id
GROUP BY client.client_id