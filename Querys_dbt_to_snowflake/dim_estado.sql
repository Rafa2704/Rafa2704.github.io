{{ config(materialized='table') }}
SELECT
    id_estados AS estado_id,
    estado AS nome_estado,
    sigla,
    data_inclusao,
    data_atualizacao
FROM {{ ref('stg_estados') }}
