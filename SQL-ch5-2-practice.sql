--Ch 5.2

select VendorName, sum(PaymentTotal) PaymentSum
from Invoices i
join Vendors v
on v.VendorID = i.InvoiceID
group by VendorName
order by VendorName desc

select *
from Invoices