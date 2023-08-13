--Ch 5.1

select VendorID, sum(PaymentTotal) 'PaymentSum'
from Invoices
group by VendorID