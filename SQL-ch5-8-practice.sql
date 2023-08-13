--Ch 5.8

select VendorName,
        count(distinct il.AccountNo) '# of Accounts'
from Vendors v 
join Invoices i 
on i.InvoiceID = v.VendorID
join InvoiceLineItems il 
on i.InvoiceID = il.InvoiceID
group by VendorName
Having count(distinct il.AccountNo) > 1
order by VendorName

