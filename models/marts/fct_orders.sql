with orders as (
    select * from {{ref('stg_orders')}}
),
    payments as (
        select * from {{ref('stg_payments')}}
    )

select order_id,customer_id,amount from orders left join payments where payments.status = 'success'