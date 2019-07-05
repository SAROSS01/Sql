SELECT * FROM Product;
SELECT * FROM Invoice; 
SELECT * FROM LineItem;

SELECT Invoice.ID, 
		Invoice.OrderNumber, 
        Invoice.CustomerName,
        Invoice.OrderDate,
        Invoice.Total,
        Product.ID,
		Product.Description,
        Product.Code,
        Product.Price,
        LineItem.Quantity
FROM Invoice
JOIN LineItem ON Invoice.ID = LineItem.InvoiceID
JOIN Product ON LineItem.ProductID = Product.ID;

SELECT  i.OrderNumber, i.CustomerName, i.OrderDate,
		p.Code, p.Description, p.Price, li.Quantity
	FROM Product p
		inner join
			LineItem li
				on p.ID = li.ProductID
		inner join
			Invoice i
				on i.ID = li.InvoiceID;
		

    
    
		
        
		
		