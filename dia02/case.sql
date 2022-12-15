-- Databricks notebook source
SELECT *
FROM silver_olist.cliente

-- COMMAND ----------

SELECT 
      *,
      -- aqui é uma nova coluna
      CASE WHEN descUF = 'SP' THEN 'paulista'
      WHEN descUF = 'RJ' THEN 'fluminense'
      WHEN descUF = 'PR' THEN 'paranaense'
      ELSE 'outros'
      END AS nacionalidade,
      
      -- aqui é outra coluna
      CASE WHEN descCidade LIKE '%sao%' THEN 'Tem sao no nome'
      ELSE 'Não tem sao no nome'
      END AS descCidadeSao
FROM silver_olist.cliente

-- COMMAND ----------

SELECT
  *,
  CASE
    WHEN descUF IN ('SP', 'RJ', 'MG', 'ES') THEN 'Sudeste'
  END AS descRegiao
FROM
  silver_olist.vendedor

-- COMMAND ----------


