{% macro test_equality(model) %}

{% set compare_model = kwargs.get('compare_model') %}
{% set env = kwargs.get('env') %}

{%- if target.name == env -%}

select count(*) from ((select * from {{ model }} except select * from {{ compare_model }} )  union (select * from {{ compare_model }} except select * from {{ model }} )) tmp

{%- else -%}

select 0

{%- endif -%}

{% endmacro %}
