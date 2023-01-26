# connection: "ld-snowplow"

# # include all the views
# include: "//ga4_block/views/*.view"
# include: "/views/*.view"

# datagroup: ga4-looker-block-test2_default_datagroup {
#   # sql_trigger: SELECT MAX(id) FROM etl_log;;
#   max_cache_age: "1 hour"
# }

# persist_with: ga4-looker-block-test2_default_datagroup


connection: "ld-snowplow"

label: "Google Analytics 4"

include: "//ga4_block/dashboards/*.dashboard"
include: "//ga4_block/explores/**/*.explore.lkml"

datagroup: ga4_default_datagroup {
  sql_trigger:  SELECT FLOOR(((TIMESTAMP_DIFF(CURRENT_TIMESTAMP(),'1970-01-01 00:00:00',SECOND)) - 60*60*6)/(60*60*24));;
  max_cache_age: "1 hour"
}

persist_with: ga4_default_datagroup
