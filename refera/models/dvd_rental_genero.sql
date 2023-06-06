
with category as(
    select 
    name as genero, 
    category_id 
    from {{ source('category') }}
),

film_category as(
    select 
    film_id, 
    category_id 
    from {{ source('film_category') }}
),

film as(
    select 
    film_id 
    from {{ source('film') }}
),

inventory as(
    select 
    inventory_id, 
    film_id 
    from {{ source('inventory') }}
),

rental as(
    select 
    rental_id, 
    inventory_id 
    from {{ source('rental') }}
),

payment as(
    select 
    amount,
    payment_id,
    rental_id,
    customer_id 
    from {{ source('payment') }}
),

customer as(
    select 
    customer_id 
    from {{ source('customer') }} 
),

top_rented as(
    select 
    genero,
    count(genero) as times_rented,
    sum(amount) as total_sales 
    from category 
    join film_category using(category_id)
    join film using(film_id)
    join inventory using(film_id)
    join rental using(inventory_id)
    join payment using(rental_id)
    join customer using(customer_id)
    group by 1),

final as( 
select genero, total_sales from top_rented
order by 2 desc
)

select * from final




