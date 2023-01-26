project_name: "ga4-looker-block-test2"

# # Use local_dependency: To enable referencing of another project
# # on this instance with include: statements
#
# local_dependency: {
#   project: "name_of_other_project"
# }
remote_dependency: ga4_block {
  url: "https://github.com/looker-open-source/ga_four_block.git"
  ref: "master"
  override_constant: GA4_CONNECTION {
    value: "ld-snowplow"
  }
  override_constant: GA4_SCHEMA {
    value: "ld-snowplow.ga4_sample"
  }
  override_constant: GA4_TABLE_VARIABLE {
    value: "events_20210131"
  }
}
