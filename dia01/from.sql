-- Databricks notebook source
SELECT * FROM silver_olist.pedido

-- leia-se: selecione tudo da tabela silver_olist.pedido

-- COMMAND ----------

SELECT idPedido
FROM silver_olist.pedido

-- selecione a coluna idPedido da tabela silver_olist.pedido

-- COMMAND ----------

SELECT
  idPedido,
  descSituacao
FROM
  silver_olist.pedido
  -- selecione a coluna idPedido e descSituacao da tabela silver_olist.pedido

-- COMMAND ----------

SELECT
  *,
  datediff(dtEstimativaEntrega, dtEntregue) AS qtDiasPromessaEntrega
from
  silver_olist.pedido

-- COMMAND ----------


