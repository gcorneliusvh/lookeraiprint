project_name: "looker_ai_print"

# # Use local_dependency: To enable referencing of another project
# # on this instance with include: statements
#
# local_dependency: {
#   project: "name_of_other_project"
# }
constant: GCP_PROJECT_ID {
  value: "genaimarketingdemo"
  export: override_optional
}

constant: GCP_LOCATION {
  value: "us-central1"
  export: override_optional
}

constant: GCS_BUCKET_NAME {
  value: "report_html_templates_genaimarketingdemo"
  export: override_optional
}

application: lookereiprint {
  label: "lookereiprint"
  url: "https://localhost:8080/bundle.js"
  entitlements: {
    local_storage: yes
    navigation: yes
    new_window: yes
    use_form_submit: yes
    use_embeds: yes
    core_api_methods: ["all_user_attributes","all_connections","search_folders", "run_inline_query", "me", "current_user", "all_looks", "run_look"]
    external_api_urls: ["https://6371-2001-569-5925-3000-216-3eff-fe9a-a055.ngrok-free.app"]
    # scoped_user_attributes: ["client_id"]
    global_user_attributes: ["client_id"]
  }
}
