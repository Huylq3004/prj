select * from Products
select * from Categories
select * from Categories where CateID = 1
select  * from Products p,Categories c
update Products
set  imgPath=N'images/xammi11pro.jpg' where PID =18


select p.PID,p.PName,p.price,p.imgPath,p.description,p.status,c.CateID,c.CateName from Products p  join Categories c on p.CateID = c.CateID where price between 100 and 1000


Set IDENTITY_INSERT Products ON
INSERT INTO Products(PID,PName,price,imgPath,description,status,CateID) 
VALUES (28,N'Xiaomi 11 Ultra',1209 , N'images/xam11u', N'128GB-White',2,5 ); 
Set IDENTITY_INSERT Products OFF

Set IDENTITY_INSERT Categories ON
INSERT INTO Categories(CateID,CateName) 
VALUES (9,N'sgd'); 
Set IDENTITY_INSERT Categories OFF

 
update Accounts set password = huy where accID = 1


INSERT INTO Products(PName,price,imgPath,description,status,CateID) 
VALUES (N'Oppo A93', 1209, N'images/opa93', N'512GB-Blu Sky',2,3 ); 

INSERT INTO Products(PName,price,imgPath,description,status,CateID) 
VALUES (N'Nokia C21 Plus', 200, N'images/nkac21', N'128GB-Grey',1,4 ); 
INSERT INTO Products(PName,price,imgPath,description,status,CateID) 
VALUES (N'Nokia C31', 150, N'images/nkac31', N'256GB-Blu',5,4 ); 

INSERT INTO Products(PName,price,imgPath,description,status,CateID) 
VALUES (N'Xiaomi RedMi Note 8', 1099, N'images/xamredmi8', N'64GB-Blu sky',3,5); 
INSERT INTO Products(PName,price,imgPath,description,status,CateID) 
VALUES (N'Xiaomi 11 Ultra',1409 , N'images/xam11u', N'512GB-White',1,5 ); 


select * from Products

SELECT PName,price,imgPath,description,status,CateID FROM Products where CateID = ?;
SELECT PName,price,imgPath,description,status,CateID FROM Products where CateID = 3;
SELECT PName,price,imgPath,description,status,CateID FROM Products where CateID = 1;

SELECT PName,price,imgPath,description,status,CateID FROM Products where CateID = 4;

SELECT PName,price,imgPath,description,status,CateID FROM Products where CateID = 5;


INSERT [dbo].[Products] ([PID], [PName], [price], [imgPath], [description], [status], [CateID]) VALUES (15, N'IPhone 12', 1899, N'images/ip12-blue.jpg', N'256GB-Blue', 5, 1);
on