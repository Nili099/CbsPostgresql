{{
    config(
        materialized='table'
    )
}}

Select *
from {{source('raw', 'category')}} 





