project_name: "looker_ai_print"

# # Use local_dependency: To enable referencing of another project
# # on this instance with include: statements
#
# local_dependency: {
#   project: "name_of_other_project"
# }
application: lookereiprint {
  label: "lookereiprint"
  url: "https://localhost:8080/bundle.js"
  # file: "bundle.js
  entitlements: {
    core_api_methods: ["me", "current_user", "all_user_attributes"]
    local_storage: yes
    # external_api_urls: ["YOUR_FASTAPI_URL_WHEN_YOU_CALL_IT"]
  }
}
