with aggregate_payment as (

    select
        payment_id as Payment_Id,
        customer_id as Customer_Id,
        sum(amount) as AmountCTE

    from {{ ref('TRANS_PAYMENT') }}
    group by payment_id, customer_id
  
)

    select 
        cust.customer_id as customer_id,
        cust.first_name as first_name,
        pay.AmountCTE as amount

    from  {{ ref('SCD2_CUSTOMER')}} as cust

            left join aggregate_payment  as pay
            on cust.customer_id = pay.customer_id 