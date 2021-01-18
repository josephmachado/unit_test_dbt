with source as (
  {% if target.name == 'dev' %}
  select * from {{ ref('input_base_greeting_events') }}
  {% else %}
  select * from {{ ref('base_greeting_events') }}
  {% endif %}
),
renamed AS (
    SELECT 
    id AS greeting_id,
    input_text as greeting_text,
    datetime_created
    FROM source
)
SELECT *
FROM renamed