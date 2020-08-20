-- 3. Build for "junior" card, the average amount of transactions
SELECT [card].[type], AVG(trans.amount)
FROM [card]
JOIN disp
ON [card].[disp_id] = disp.disp_id
JOIN trans
ON disp.account_id = trans.account_id
GROUP BY [card].[type]