resource "elasticstack_elasticsearch_ml_datafeed" "elasticsearch_ml_datafeeds" {
  for_each = var.elasticsearch_ml_datafeeds

  datafeed_id               = each.value.datafeed_id
  indices                   = each.value.indices
  job_id                    = each.value.job_id
  aggregations              = each.value.aggregations
  chunking_config           = each.value.chunking_config
  delayed_data_check_config = each.value.delayed_data_check_config
  frequency                 = each.value.frequency
  indices_options           = each.value.indices_options
  max_empty_searches        = each.value.max_empty_searches
  query                     = each.value.query
  query_delay               = each.value.query_delay
  runtime_mappings          = each.value.runtime_mappings
  script_fields             = each.value.script_fields
  scroll_size               = each.value.scroll_size
  timeouts                  = each.value.timeouts

  dynamic "elasticsearch_connection" {
    for_each = each.value.elasticsearch_connection != null ? each.value.elasticsearch_connection : []
    content {
      api_key                  = elasticsearch_connection.value.api_key
      bearer_token             = elasticsearch_connection.value.bearer_token
      ca_data                  = elasticsearch_connection.value.ca_data
      ca_file                  = elasticsearch_connection.value.ca_file
      ca_fingerprint           = elasticsearch_connection.value.ca_fingerprint
      cert_data                = elasticsearch_connection.value.cert_data
      cert_file                = elasticsearch_connection.value.cert_file
      endpoints                = elasticsearch_connection.value.endpoints
      es_client_authentication = elasticsearch_connection.value.es_client_authentication
      headers                  = elasticsearch_connection.value.headers
      insecure                 = elasticsearch_connection.value.insecure
      key_data                 = elasticsearch_connection.value.key_data
      key_file                 = elasticsearch_connection.value.key_file
      password                 = elasticsearch_connection.value.password
      username                 = elasticsearch_connection.value.username
    }
  }
}

