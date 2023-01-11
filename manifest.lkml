project_name: "ga4-looker-block-test2"

# # Use local_dependency: To enable referencing of another project
# # on this instance with include: statements
#
# local_dependency: {
#   project: "name_of_other_project"
# }
remote_dependency: ga4_block {
  url: "https://github.com/looker-open-source/ga_four_block"
  ref: "master"
  override_constant: GA4_CONNECTION {
    value: "looker-demos"
  }
}
