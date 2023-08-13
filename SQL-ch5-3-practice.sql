--Ch 5.3

select VendorName, count(i.InvoiceTotal) InvoiceCount, sum(InvoiceTotal) InvoiceSum
from Invoices i
join Vendors v
on i.InvoiceID = v.VendorID
group by VendorName
order by InvoiceCount desc
