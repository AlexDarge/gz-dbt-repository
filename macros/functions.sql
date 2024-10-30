{% macro margin_percentage (revenue , purchase_cost) %}
    ROUND((({{revenue}}-{{purchase_cost}})/{{purchase_cost}})*100, 2)
{% endmacro %}



{% macro margin_percent(margin, revenue, decimals=2) %}
  ROUND(SAFE_DIVIDE({{margin}},{{revenue}})*100,{{decimals}})
{% endmacro %}
