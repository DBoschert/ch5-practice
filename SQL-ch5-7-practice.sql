--Ch 5.7

select v.VendorName, AccountDescription, count(*) LineItemCount, sum(li.InvoiceLineItemAmount) LineItemSum
FROM Vendors v 
  JOIN Invoices i
   ON v.VendorID = i.VendorID
 JOIN InvoiceLineItems li
   ON i.InvoiceID = li.InvoiceID
 JOIN GLAccounts gl
   ON li.AccountNo = gl.AccountNo
group by VendorName, AccountDescription
order by VendorName, AccountDescription

