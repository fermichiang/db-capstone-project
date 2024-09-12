CREATE DEFINER=`little_lemon_user`@`%` PROCEDURE `GetMaxQuantity`()
SELECT MAX(Quantity)
FROM Orders