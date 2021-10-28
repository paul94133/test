-- Databricks notebook source
Select count(*) From prod.workloads_sku_agg


-- COMMAND ----------

Select --date_trunc('month', date) as month,
       sum(dollars) / 1000000 as dollars
From prod.workloads_sku_agg
Where customerType in ('Customer', 'MicrosoftPaid') and canonicalCustomerName != 'Databricks'
--and date > '2020-01-01' and date < '2020-12-31'
and date > '2021-01-01' 

--Group By month

-- COMMAND ----------

-- MAGIC %sql
-- MAGIC 
-- MAGIC select count(*) from workday.users;
