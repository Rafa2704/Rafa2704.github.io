{{ config(materialized='table') }}
SELECT
    id_vendedores AS vendedor_id,
    nome_vendedor,
    id_concessionarias AS concessionaria_id,
    data_inclusao,
    data_atualizacao
FROM {{ ref('stg_vendedores') }}
