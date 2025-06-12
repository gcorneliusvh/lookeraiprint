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
  url: "https://kb-bean-caroline-barn.trycloudflare.com/bundle.js"
  entitlements: {
    local_storage: yes # Assuming 'yes' is validated by your Looker instance
    navigation: yes
    new_window: yes
    new_window_external_urls: [
      "https://looker-ext-code-17837811141.us-central1.run.app/*",
      "data:*"
    ]
    use_form_submit: yes
    use_embeds: yes
    core_api_methods: ["all_lookml_models", "lookml_model_explore","all_user_attributes","all_connections","search_folders", "run_inline_query", "me", "current_user", "all_looks", "run_look"]
    external_api_urls: ["https://cdn.tiny.cloud","https://83d14716-08b3-4def-bdca-54f4b2af9f19-extensions.cloud.looker.com","https://looker-ext-code-17837811141.us-central1.run.app","http://localhost:8080","https://localhost:8080","http://localhost:8001","https://localhost:8001"] # Ensure this is your current ngrok URL if it's dynamic
    global_user_attributes: ["client_id"]
  }
}
