-- Databricks notebook source
SELECT count(*)
FROM silver_olist.cliente

-- COMMAND ----------

SELECT COUNT(*) AS linhasnaonulas,
      COUNT(idCliente) AS clientenaonulos,
      COUNT(distinct idCliente) AS clientedistintos,
      COUNT(distinct idClienteUnico) AS clienteunicodistintos
FROM silver_olist.cliente 

-- COMMAND ----------

SELECT
  count(*) AS qtlinhas,
  count(distinct idCliente) AS qtCliente,
  count(distinct idClienteUnico) AS qtClienteUnico
FROM
  silver_olist.cliente
WHERE
  descCidade in ('presidente prudente', 'curitiba')

-- COMMAND ----------

SELECT 
      avg(vlPreco) AS avgPreco,
      
      ROUND(PERCENTILE(vlPreco, 0.5),2) AS medianPreco,
      
      max(vlPreco) AS maxPreco,
      avg(vlFrete) AS avgFrete,
      max(vlFrete) AS maxFrete,
      min(vlFrete) AS minFrete
FROM silver_olist.item_pedido

-- COMMAND ----------

SELECT descUF,
      count(*) AS qtcliente
      
FROM silver_olist.cliente
GROUP BY descUF


-- COMMAND ----------


