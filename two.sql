CREATE VIEW `transaction_history`  AS 
SELECT 1 AS `sector`, `product_wise_incomes`.`vendor_profit` 
AS `earnamnt`, `product_wise_incomes`.`vendor_id` AS `uid`, `product_wise_incomes`.`order_number` AS `ordrnumber`,
 `product_wise_incomes`.`generated_date` AS `earn_date` FROM `product_wise_incomes`
 union 
 select 2 AS `sector`,
 `sales_commissions`.`amount` AS `earnamnt`,`sales_commissions`.`stockiest_id` AS `uid`,'' AS `ordrnumber`,
 `sales_commissions`.`generated_date` AS `earn_date` from `sales_commissions` 
 union 
 select 3 AS `sector`,
 `product_commission_distributions`.`amount` AS `earnamnt`,`product_commission_distributions`.`vendor_id` AS `uid`,'' 
 AS `ordrnumber`,`product_commission_distributions`.`generated_date` AS `earn_date` from `product_commission_distributions` 
 where `product_commission_distributions`.`level` = 1 
 union
  select 8 AS `sector`,`product_commission_distributions`.`amount` AS `earnamnt`,
  `product_commission_distributions`.`vendor_id` AS `uid`,'' AS `ordrnumber`,
  `product_commission_distributions`.`generated_date` AS `earn_date` 
  from `product_commission_distributions` 
  where `product_commission_distributions`.`level` = 2 
  union 
  select 9 AS `sector`,`product_commission_distributions`.`amount` AS `earnamnt`,
  `product_commission_distributions`.`vendor_id` AS `uid`,'' AS `ordrnumber`,
  `product_commission_distributions`.`generated_date` AS `earn_date`
   from `product_commission_distributions`
    where `product_commission_distributions`.`level` = 3 
    union 
    select 4 AS `sector`,`withdraws`.`amount` AS `earnamnt`,`withdraws`.`user_id` AS `uid`,'' AS `ordrnumber`,
    `withdraws`.`withdraw_date` AS `earn_date` from `withdraws` 
    union 
    select 5 AS `sector`,`rank_wise_distributions`.`amount` AS `earnamnt`,`rank_wise_distributions`.`user_id` AS `uid`,
    '' AS `ordrnumber`,`rank_wise_distributions`.`generate_date` AS `earn_date` from `rank_wise_distributions` 
    union 
    select 7 AS `sector`,`product_wise_incomes`.`delivery_charge` AS `earnamnt`,`product_wise_incomes`.`vendor_id` AS `uid`,
    `product_wise_incomes`.`order_number` AS `ordrnumber`,`product_wise_incomes`.`generated_date` AS `earn_date` 
    from `product_wise_incomes` 
      union 
    select 9 AS `sector`,`return_product_wise_incomes`.`delivery_charge` AS `earnamnt`,`return_product_wise_incomes`.`vendor_id` AS `uid`,
    `return_product_wise_incomes`.`order_number` AS `ordrnumber`,`return_product_wise_incomes`.`generated_date` AS `earn_date` 
    from `return_product_wise_incomes` 
          union 
    select 10 AS `sector`,`product_wise_incomes`.`vendor_profit` AS `earnamnt`,`product_wise_incomes`.`vendor_id` AS `uid`,
    `product_wise_incomes`.`order_number` AS `ordrnumber`,`product_wise_incomes`.`generated_date` AS `earn_date` 
    from `product_wise_incomes` 
              union 
 
   SELECT 11 AS `sector`,`sales_commissions`.`amount` AS `earnamnt`,`sales_commissions`.`user_id` AS `uid`,
    `sales_commissions`.`user_id` AS `ordrnumber`,`sales_commissions`.`order_date` AS `earn_date` 
    from `sales_commissions` 
