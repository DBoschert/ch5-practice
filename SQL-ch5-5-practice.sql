--Ch 5.5

select g.AccountDescription, count(*) LineItemCount,
        sum(InvoiceLineItemAmount) LineItemSum
from InvoiceLineItems il
join GLAccounts g
on il.AccountNo = g.AccountNo
join Invoices i 
on i.InvoiceID = il.InvoiceID
WHERE InvoiceDate BETWEEN '2022-10-01' AND '2022-12-31'
group by g.AccountDescription
Having  Count(*) > 1
order by LineItemCount DESC
