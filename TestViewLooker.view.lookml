- view: testviewlooker

# # Specify the table name if it's different from the view name:
#   sql_table_name: my_schema_name.testviewlooker
#
# # Or, you could make this view a derived table, like this:
#   derived_table:
#     sql: |
#       SELECT
#         users.id as user_id
#         , COUNT(*) as lifetime_orders
#         , MAX(orders.date) as most_recent_purchase_date
#       FROM orders
#       GROUP BY user.id

  fields:
     - dimension: profit
       type: number
       sql: ${TABLE}.profit
#
     - measure: total_profit
       type: sum
       sql: ${profit}
       
     - measure: total_profit2
       type: sum2
       sql: ${profit212}
