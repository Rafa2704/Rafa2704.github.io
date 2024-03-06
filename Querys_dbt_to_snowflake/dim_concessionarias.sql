{{ config(materialized='table') }}
SELECT
    id_concessionarias AS concessionaria_id,
    nome_concessionaria,
    id_cidades AS cidade_id,
    data_inclusao,
    data_atualizacao
FROM {{ ref('stg_concessionarias') }}
