-- Databricks notebook source
-- 01 selecione todos os clientes paulistanos

SELECT *
FROM silver_olist.cliente
WHERE descCidade = 'sao paulo'

-- COMMAND ----------

-- 02 selecione todos os clientes paulistas

SELECT *
FROM silver_olist.cliente
WHERE descUF = 'SP'

-- COMMAND ----------

-- 03 selecione todos os vendedores cariocas e paulistas

SELECT *
FROM silver_olist.vendedor
WHERE descCidade = 'rio de janeiro'
OR descUF = 'SP'

-- COMMAND ----------

-- 04 selecione produtos de perfumaria e bebes com altura maior que 5 cm

SELECT *
FROM silver_olist.produto
WHERE descCategoria in ('perfumaria', 'bebes')
AND vlAlturaCm > 5


-- COMMAND ----------

-- 05 lista de pedidos com mais de um item
SELECT count(idPedido)
FROM silver_olist.pedido



-- COMMAND ----------

-- 06 lista de pedidos que o frete é mais caro que o item

-- COMMAND ----------

-- 07 lista de pedidos que ainda não foram enviados

-- COMMAND ----------

-- 08 lista de pedidos que foram entregues com atraso

-- COMMAND ----------

-- 09 lista de pedidos que foram entregues com 2 dias de antecedência

-- COMMAND ----------

-- 10 lista de pedidos feitos em dezembro de 2017 e entregues com atraso

-- COMMAND ----------

-- 11 lista de pedidos com avaliação maior ou igual que 4

-- COMMAND ----------

-- 12 lista de pedidos com 2 ou mais parcelas menores que R$20

-- COMMAND ----------

-- 13 selecione todos os pedidos e marque se houve atraso ou não

-- COMMAND ----------

-- 14 Selecione os pedidos e defina os grupos em uma nova coluna
-- para frete inferior a 10%: '10%'
-- para frete entre 10% e 25%: '10% a 25%'
-- para frete entre 25% e 50%: '25% a 50%'
-- para frete maior que 50%: '+50%'
