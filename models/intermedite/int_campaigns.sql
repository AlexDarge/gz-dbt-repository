/*WITH sub_adwords AS (
  SELECT * FROM {{ ref('stg_gz_raw_data__adwords') }}
),
sub_bing AS (
  SELECT * FROM {{ ref('stg_gz_raw_data__bing') }}
),
sub_criteo AS (
  SELECT * FROM {{ ref('stg_gz_raw_data__criteo') }}
),
sub_facebook AS (
  SELECT * FROM {{ ref('stg_gz_raw_data__facebook') }}
)

SELECT *
FROM sub_adwords
UNION ALL
SELECT *
FROM sub_bing
UNION ALL
SELECT *
FROM sub_criteo
UNION ALL
SELECT *
FROM sub_facebook*/

{{dbt_utils.union_relations(
    relations=[
        ref("stg_gz_raw_data__adwords"),
        ref("stg_gz_raw_data__bing"),
        ref("stg_gz_raw_data__criteo"),
        ref("stg_gz_raw_data__facebook")
    ]
)}}