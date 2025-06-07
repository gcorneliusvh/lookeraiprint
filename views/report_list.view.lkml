view: report_list {
  sql_table_name: `genaimarketingdemo.report_printing.report_list` ;;

  dimension: base_query_gcspath {
    type: string
    description: "GCS path to the base_query.sql file for the template."
    sql: ${TABLE}.BaseQueryGCSPath ;;
  }
  dimension: base_query_schema_json {
    type: string
    description: "JSON string representation of the base SQL query's result schema."
    sql: ${TABLE}.BaseQuerySchemaJSON ;;
  }
  dimension: calculation_row_configs_json {
    type: string
    sql: ${TABLE}.CalculationRowConfigsJSON ;;
  }
  dimension_group: created_timestamp {
    type: time
    description: "Timestamp of when this report definition was first created."
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.CreatedTimestamp ;;
  }
  dimension: description {
    type: string
    description: "Optional: A brief description of the report."
    sql: ${TABLE}.Description ;;
  }
  dimension: field_display_configs_json {
    type: string
    sql: ${TABLE}.FieldDisplayConfigsJSON ;;
  }
  dimension: footer {
    type: string
    description: "Custom footer text or configuration for the report."
    sql: ${TABLE}.Footer ;;
  }
  dimension: generated_instance_params_gcspath {
    type: string
    description: "GCS path to the specific params.json file used with the query.sql for the latest generated instance."
    sql: ${TABLE}.GeneratedInstanceParamsGCSPath ;;
  }
  dimension: generated_instance_query_gcspath {
    type: string
    description: "GCS path to the specific parameterized query.sql file used for the latest generated instance."
    sql: ${TABLE}.GeneratedInstanceQueryGCSPath ;;
  }
  dimension: header {
    type: string
    description: "Custom header text or configuration for the report."
    sql: ${TABLE}.Header ;;
  }
  dimension_group: last_generated_timestamp {
    type: time
    description: "Timestamp of when an instance of this report definition was last successfully generated."
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.LastGeneratedTimestamp ;;
  }
  dimension: latest_template_version {
    type: number
    sql: ${TABLE}.LatestTemplateVersion ;;
  }
  dimension: look_configs_json {
    type: string
    sql: ${TABLE}.LookConfigsJSON ;;
  }
  dimension: looker_explore_url {
    type: string
    description: "Optional: URL to the Looker Explore this report definition is based on or related to."
    sql: ${TABLE}.LookerExploreURL ;;
  }
  dimension: optimized_prompt {
    type: string
    description: "An optimized or refined version of the prompt, if applicable."
    sql: ${TABLE}.OptimizedPrompt ;;
  }
  dimension: prompt {
    type: string
    description: "The base prompt text used for generating this report type with Gemini."
    sql: ${TABLE}.Prompt ;;
  }
  dimension: report_name {
    type: string
    description: "The unique name or identifier for the report definition. Acts as a primary key."
    sql: ${TABLE}.ReportName ;;
  }
  dimension: schema_gcspath {
    type: string
    description: "GCS path to the schema.json file for the template's base query."
    sql: ${TABLE}.SchemaGCSPath ;;
  }
  dimension: screenshot_url {
    type: string
    description: "URL to an example screenshot of the report, used as input for Gemini."
    sql: ${TABLE}.ScreenshotURL ;;
  }
  dimension: sql {
    type: string
    description: "The base SQL query template for this report. May contain placeholders if filters are applied dynamically by Looker/API before saving instance SQL."
    sql: ${TABLE}.SQL ;;
  }
  dimension: status {
    type: string
    description: "Optional: Status of the report definition (e.g., Active, Deprecated, Draft)."
    sql: ${TABLE}.Status ;;
  }
  dimension: subtotal_configs_json {
    type: string
    sql: ${TABLE}.SubtotalConfigsJSON ;;
  }
  dimension: template_url {
    type: string
    description: "GCS path to the latest generated HTML file (index.html) for this report definition instance."
    sql: ${TABLE}.TemplateURL ;;
  }
  dimension: user_attribute_mappings_json {
    type: string
    sql: ${TABLE}.UserAttributeMappingsJSON ;;
  }
  dimension: user_placeholder_mappings_json {
    type: string
    sql: ${TABLE}.UserPlaceholderMappingsJSON ;;
  }
  dimension: version {
    type: string
    description: "Optional: Version number or tag for this report definition."
    sql: ${TABLE}.Version ;;
  }
  measure: count {
    type: count
    drill_fields: [report_name]
  }
}
