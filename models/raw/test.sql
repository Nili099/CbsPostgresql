select 
    md5(last_update || category_id) as unique_id,
    *
from {{source('raw', 'category')}} 

Select 
  concat(last_update, '_' ,category_id) as _surrogate_key,
  * 
from {{source('raw', 'category')}} 

select *,
  concat(
    coalesce(cast(last_update as string), '_this_used_to_be_null_'),
    coalesce(cast(category_id as string), '_this_used_to_be_null_')
    ) as _surrogate_key
from {{source('raw', 'category')}} 


Select
{{ dbt_utils.generate_surrogate_key(['last_update', 'category_id']) }} AS primary
from {{source('raw', 'category')}} 

md5 ( concat (column1, column2) )

from {{ ref('SCD2_CATEGORY') }}