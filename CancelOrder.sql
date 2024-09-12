CREATE DEFINER=`little_lemon_user`@`%` PROCEDURE `CancelOrder`(IN Order_id INT)
DELETE FROM Orders WHERE OrderID = order_id