{{
    config(
        materialized='table', source = 'reporting'
    )
}}

Select *
from {{source('raw', 'staff')}} 