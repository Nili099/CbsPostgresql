
{{
    config(
        materialized='table'
    )
}}

select *
from public."payment"