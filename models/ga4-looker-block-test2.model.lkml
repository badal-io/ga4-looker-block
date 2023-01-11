connection: "ld-snowplow"

# include all the views
include: "//ga4_block/views/*.view"
include: "/views/*.view"

datagroup: ga4-looker-block-test2_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: ga4-looker-block-test2_default_datagroup
