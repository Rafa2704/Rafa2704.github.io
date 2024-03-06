{{ config(materialized='table') }}
SELECT
    DATE_TRUNC('month', v.data_venda) AS mes_venda,
    COUNT(v.venda_id) AS numero_vendas,
    SUM(v.valor_venda) AS total_vendas,
    AVG(v.valor_venda) AS valor_medio_venda
FROM {{ ref('fct_vendas') }} v
GROUP BY DATE_TRUNC('month', v.data_venda)
ORDER BY mes_venda
