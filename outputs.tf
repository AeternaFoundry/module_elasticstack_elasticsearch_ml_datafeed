output "elasticsearch_ml_datafeeds_id" {
  description = "Map of id values across all elasticsearch_ml_datafeeds, keyed the same as var.elasticsearch_ml_datafeeds except keys with no id are omitted"
  value       = { for k, v in elasticstack_elasticsearch_ml_datafeed.elasticsearch_ml_datafeeds : k => v.id if v.id != null && length(v.id) > 0 }
}
output "elasticsearch_ml_datafeeds_aggregations" {
  description = "Map of aggregations values across all elasticsearch_ml_datafeeds, keyed the same as var.elasticsearch_ml_datafeeds except keys with no aggregations are omitted"
  value       = { for k, v in elasticstack_elasticsearch_ml_datafeed.elasticsearch_ml_datafeeds : k => v.aggregations if v.aggregations != null && length(v.aggregations) > 0 }
}
output "elasticsearch_ml_datafeeds_chunking_config" {
  description = "Map of chunking_config values across all elasticsearch_ml_datafeeds, keyed the same as var.elasticsearch_ml_datafeeds except keys with no chunking_config are omitted"
  value       = { for k, v in elasticstack_elasticsearch_ml_datafeed.elasticsearch_ml_datafeeds : k => v.chunking_config if v.chunking_config != null && length(v.chunking_config) > 0 }
}
output "elasticsearch_ml_datafeeds_datafeed_id" {
  description = "Map of datafeed_id values across all elasticsearch_ml_datafeeds, keyed the same as var.elasticsearch_ml_datafeeds except keys with no datafeed_id are omitted"
  value       = { for k, v in elasticstack_elasticsearch_ml_datafeed.elasticsearch_ml_datafeeds : k => v.datafeed_id if v.datafeed_id != null && length(v.datafeed_id) > 0 }
}
output "elasticsearch_ml_datafeeds_delayed_data_check_config" {
  description = "Map of delayed_data_check_config values across all elasticsearch_ml_datafeeds, keyed the same as var.elasticsearch_ml_datafeeds except keys with no delayed_data_check_config are omitted"
  value       = { for k, v in elasticstack_elasticsearch_ml_datafeed.elasticsearch_ml_datafeeds : k => v.delayed_data_check_config if v.delayed_data_check_config != null && length(v.delayed_data_check_config) > 0 }
}
output "elasticsearch_ml_datafeeds_elasticsearch_connection" {
  description = "Map of elasticsearch_connection values across all elasticsearch_ml_datafeeds, keyed the same as var.elasticsearch_ml_datafeeds except keys with no elasticsearch_connection are omitted"
  value       = { for k, v in elasticstack_elasticsearch_ml_datafeed.elasticsearch_ml_datafeeds : k => v.elasticsearch_connection if v.elasticsearch_connection != null && length(v.elasticsearch_connection) > 0 }
  sensitive   = true
}
output "elasticsearch_ml_datafeeds_frequency" {
  description = "Map of frequency values across all elasticsearch_ml_datafeeds, keyed the same as var.elasticsearch_ml_datafeeds except keys with no frequency are omitted"
  value       = { for k, v in elasticstack_elasticsearch_ml_datafeed.elasticsearch_ml_datafeeds : k => v.frequency if v.frequency != null && length(v.frequency) > 0 }
}
output "elasticsearch_ml_datafeeds_indices" {
  description = "Map of indices values across all elasticsearch_ml_datafeeds, keyed the same as var.elasticsearch_ml_datafeeds except keys with no indices are omitted"
  value       = { for k, v in elasticstack_elasticsearch_ml_datafeed.elasticsearch_ml_datafeeds : k => v.indices if v.indices != null && length(v.indices) > 0 }
}
output "elasticsearch_ml_datafeeds_indices_options" {
  description = "Map of indices_options values across all elasticsearch_ml_datafeeds, keyed the same as var.elasticsearch_ml_datafeeds except keys with no indices_options are omitted"
  value       = { for k, v in elasticstack_elasticsearch_ml_datafeed.elasticsearch_ml_datafeeds : k => v.indices_options if v.indices_options != null && length(v.indices_options) > 0 }
}
output "elasticsearch_ml_datafeeds_job_id" {
  description = "Map of job_id values across all elasticsearch_ml_datafeeds, keyed the same as var.elasticsearch_ml_datafeeds except keys with no job_id are omitted"
  value       = { for k, v in elasticstack_elasticsearch_ml_datafeed.elasticsearch_ml_datafeeds : k => v.job_id if v.job_id != null && length(v.job_id) > 0 }
}
output "elasticsearch_ml_datafeeds_max_empty_searches" {
  description = "Map of max_empty_searches values across all elasticsearch_ml_datafeeds, keyed the same as var.elasticsearch_ml_datafeeds except keys with no max_empty_searches are omitted"
  value       = { for k, v in elasticstack_elasticsearch_ml_datafeed.elasticsearch_ml_datafeeds : k => v.max_empty_searches if v.max_empty_searches != null }
}
output "elasticsearch_ml_datafeeds_query" {
  description = "Map of query values across all elasticsearch_ml_datafeeds, keyed the same as var.elasticsearch_ml_datafeeds except keys with no query are omitted"
  value       = { for k, v in elasticstack_elasticsearch_ml_datafeed.elasticsearch_ml_datafeeds : k => v.query if v.query != null && length(v.query) > 0 }
}
output "elasticsearch_ml_datafeeds_query_delay" {
  description = "Map of query_delay values across all elasticsearch_ml_datafeeds, keyed the same as var.elasticsearch_ml_datafeeds except keys with no query_delay are omitted"
  value       = { for k, v in elasticstack_elasticsearch_ml_datafeed.elasticsearch_ml_datafeeds : k => v.query_delay if v.query_delay != null && length(v.query_delay) > 0 }
}
output "elasticsearch_ml_datafeeds_runtime_mappings" {
  description = "Map of runtime_mappings values across all elasticsearch_ml_datafeeds, keyed the same as var.elasticsearch_ml_datafeeds except keys with no runtime_mappings are omitted"
  value       = { for k, v in elasticstack_elasticsearch_ml_datafeed.elasticsearch_ml_datafeeds : k => v.runtime_mappings if v.runtime_mappings != null && length(v.runtime_mappings) > 0 }
}
output "elasticsearch_ml_datafeeds_script_fields" {
  description = "Map of script_fields values across all elasticsearch_ml_datafeeds, keyed the same as var.elasticsearch_ml_datafeeds except keys with no script_fields are omitted"
  value       = { for k, v in elasticstack_elasticsearch_ml_datafeed.elasticsearch_ml_datafeeds : k => v.script_fields if v.script_fields != null && length(v.script_fields) > 0 }
}
output "elasticsearch_ml_datafeeds_scroll_size" {
  description = "Map of scroll_size values across all elasticsearch_ml_datafeeds, keyed the same as var.elasticsearch_ml_datafeeds except keys with no scroll_size are omitted"
  value       = { for k, v in elasticstack_elasticsearch_ml_datafeed.elasticsearch_ml_datafeeds : k => v.scroll_size if v.scroll_size != null }
}

