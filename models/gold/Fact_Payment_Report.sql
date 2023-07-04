select
   pay.payment_id as "Payment Id",
   pay.customer_id as Customer_Id,
   cust.first_name as "CUSTOMER_Name",
   pay.staff_id as Staff_Id,
   staff.first_name as Staff_Name,
   pay.rental_id as Rental_Id,
   pay.amount as Amount,
   pay.payment_date as Payment_Date

    from {{ ref('TRANS_PAYMENT') }} as pay

        left join {{ ref('SCD2_CUSTOMER')}}  as cust
        on pay.customer_id = cust.customer_id

        left join {{ ref('SCD2_STAFF')}}  as staff
        on pay.staff_id = staff.staff_id







