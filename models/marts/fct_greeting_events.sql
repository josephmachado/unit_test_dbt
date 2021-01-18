with greeting_events as (
    SELECT greeting_id,
        greeting_text,
        datetime_created
    FROM {{ ref('stg_greeting_events') }}
),
final as (
    select greeting_id,
        concat(greeting_text, ' world') as processed_greeting_text,
        datetime_created
    FROM greeting_events
)
select *
from final