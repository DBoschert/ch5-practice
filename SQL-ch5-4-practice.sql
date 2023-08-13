--Ch 5.4

select g.AccountDescription, count(*) LineItemCount, 
        sum(InvoiceLineItemAmount) LineItemSum
from InvoiceLineItems i
join GLAccounts g
on i.AccountNo = g.AccountNo
group by g.AccountDescription
Having  Count(*) > 1
order by LineItemCount DESC

/*
SELECT gl.AccountDescription, COUNT(*) AS LineItemCount,
       SUM(InvoiceLineItemAmount) AS LineItemSum
FROM GLAccounts gl
  JOIN InvoiceLineItems li
    ON gl.AccountNo = li.AccountNo
GROUP BY gl.AccountDescription
HAVING COUNT(*) > 1
ORDER BY LineItemCount DESC;
*/