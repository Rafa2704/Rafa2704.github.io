{{ config(materialized='view') }}
WITH source AS (
    SELECT
        id_clientes,
        INITCAP(cliente) AS cliente,
        TRIM(endereco) AS endereco,
        id_concessionarias,
        data_inclusao,
        COALESCE(data_atualizacao, data_inclusao) AS data_atualizacao
    FROM {{ source('sources', 'clientes') }}
)

SELECT
    id_clientes,
    cliente,
    endereco,
    id_concessionarias,
    data_inclusao,
    data_atualizacao
FROM source
