use SellPoint
go

--4. List all parts in the store with price > 100$.
select * from Parts
where Price >$100
go
--5List all parts of the category ‘CPU’.
SELECT c.CateName,p.PartName
FROM Categories c
JOIN Parts p ON p.CateID=c.CateID
WHERE c.CateName='CPU'
GO
--6Create a view v_Parts contains the following information (PartID, PartName, CateName,Price, Quantity) from table Parts and Categories.
CREATE VIEW V_Parts AS
SELECT P.PartID, P.PartName, C.CateName, P.Price, P.Quantity
FROM Parts P
JOIN Categories C ON C.CateID=P.CateID
GO
select * from V_Parts
go
--7. Create a view v_TopParts about 5 parts with the most expensive price.
