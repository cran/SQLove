## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(SQLove)

## ---- eval = F----------------------------------------------------------------
#  CREATE TEMP TABLE lead_count AS
#    SELECT
#      lead_id
#      ,COUNT(DISTINCT lead_id) as num_leads
#      FROM leads
#      WHERE lead_id NOT LIKE 'SPAM'
#      GROUP BY 1;
#  
#  CREATE TEMP TABLE lead_sales AS
#      SELECT
#        lead_id
#        ,SUM(sale_amount) as tot_sales
#        FROM sales
#        WHERE lead_id NOT LIKE 'SPAM'
#        GROUP BY 1;
#  
#  SELECT a.*
#        FROM lead_count a
#        LEFT JOIN lead_sales b
#          ON a.lead_id = b.lead_id
#  

## ---- eval = F----------------------------------------------------------------
#  sales_volume <- dbGetMultiQuery(connection = conn,
#                                  sql_file_path = "~/path/to/file.sql")

## ---- eval = F----------------------------------------------------------------
#  spam_volume <- dbGetMultiQuery(connection = conn,
#                                 sql_file_path = "~/path/to/file.sql",
#                                 pattern = "NOT LIKE SPAM",
#                                 replacement = "LIKE SPAM")

## ---- eval = F----------------------------------------------------------------
#  CREATE TEMP TABLE lead_count AS
#    SELECT
#      lead_id
#      ,COUNT(DISTINCT lead_id) as num_leads
#      FROM leads
#      WHERE lead_id NOT LIKE 'SPAM'
#      GROUP BY 1;
#  
#  CREATE TEMP TABLE lead_sales AS
#      SELECT
#        lead_id
#        ,SUM(sale_amount) as tot_sales
#        FROM sales
#        WHERE lead_id NOT LIKE 'SPAM'
#        GROUP BY 1;
#  
#  CREATE TABLE schema.lead_info as
#        SELECT *
#        FROM lead_count a
#        LEFT JOIN lead_sales b
#          ON a.lead_id = b.lead_id

