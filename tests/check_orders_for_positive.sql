  with orders_det as (
select * from {{ ref('raw_jaffle_shop__orders') }}
)

select customer_id, count(*) as number_of_orders from orders_det
group by customer_id
having count(*) <0


