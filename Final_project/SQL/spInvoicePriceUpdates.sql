drop procedure invoicing_fp.sp_invoice_item_price;

create procedure invoicing_fp.sp_invoice_item_price
as
begin  	
	update Invoicing_FP.invoice_items
    set Invoicing_FP.invoice_items.invoice_item_price = (Invoicing_FP.invoice_items.quantity *src.product_unit_price)
    from Invoicing_FP.products src
    where Invoicing_FP.invoice_items.product_id = src.product_id;
       
    update Invoicing_FP.invoice
    set Invoicing_FP.invoice.invoice_total = src.total,
        Invoicing_FP.invoice.invoice_price = src.total-Invoicing_FP.invoice.discount 
    from (select sum(ii.invoice_item_price) as total,ii.invoice_id
	    	from Invoicing_FP.invoice_items ii
	  	group by ii.invoice_id) src
    where Invoicing_FP.invoice.invoice_id = src .invoice_id 
end;


