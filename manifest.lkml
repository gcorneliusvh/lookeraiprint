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
  entitlements: {
    core_api_methods: [
      "me", "current_user"
    ]
    local_storage: yes
    external_api_urls: [
      "https://6371-2001-569-5925-3000-216-3eff-fe9a-a055.ngrok-free.app"
    ]
    global_user_attributes: ["client_id"]
  }
}
