project_name: "looker_ai_print"

constant: GCP_PROJECT_ID {
  value: "genaimarketingdemo"
  export: override_required # Changed to required
}

constant: GCP_LOCATION {
  value: "us-central1"
  export: override_required # Changed to required
}

constant: GCS_BUCKET_NAME {
  value: "report_html_templates_genaimarketingdemo"
  export: override_required # Changed to required
}

application: lookereiprint {
  label: "lookereiprint"
  url: "https://localhost:8080/bundle.js"
  entitlements: {
    local_storage: yes # Assuming 'yes' is validated by your Looker instance
    navigation: yes
    new_window: yes
    new_window_external_urls: [
      "https://885d-2001-569-5925-3000-216-3eff-fe9a-a055.ngrok-free.app/*",
      "data:*"
    ]
    use_form_submit: yes
    use_embeds: yes
    core_api_methods: ["all_lookml_models", "lookml_model_explore","all_user_attributes","all_connections","search_folders", "run_inline_query", "me", "current_user", "all_looks", "run_look"]
    external_api_urls: ["https://885d-2001-569-5925-3000-216-3eff-fe9a-a055.ngrok-free.app"] # Ensure this is your current ngrok URL if it's dynamic
    global_user_attributes: ["client_id"]
  }
}
