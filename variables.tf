variable "elasticsearch_ml_datafeeds" {
  description = <<EOT
Map of elasticsearch_ml_datafeeds, attributes below
Required:
    - datafeed_id
    - indices
    - job_id
Optional:
    - aggregations
    - chunking_config
    - delayed_data_check_config
    - frequency
    - indices_options
    - max_empty_searches
    - query
    - query_delay
    - runtime_mappings
    - script_fields
    - scroll_size
    - timeouts
    - elasticsearch_connection (block):
        - api_key (optional)
        - bearer_token (optional)
        - ca_data (optional)
        - ca_file (optional)
        - ca_fingerprint (optional)
        - cert_data (optional)
        - cert_file (optional)
        - endpoints (optional)
        - es_client_authentication (optional)
        - headers (optional)
        - insecure (optional)
        - key_data (optional)
        - key_file (optional)
        - password (optional)
        - username (optional)
EOT

  type = map(object({
    datafeed_id  = string
    indices      = list(string)
    job_id       = string
    aggregations = optional(string)
    chunking_config = optional(object({
      mode      = string
      time_span = optional(string)
    }))
    delayed_data_check_config = optional(object({
      check_window = optional(string)
      enabled      = bool
    }))
    frequency = optional(string)
    indices_options = optional(object({
      allow_no_indices   = optional(bool)
      expand_wildcards   = optional(set(string))
      ignore_throttled   = optional(bool)
      ignore_unavailable = optional(bool)
    }))
    max_empty_searches = optional(number)
    query              = optional(string)
    query_delay        = optional(string)
    runtime_mappings   = optional(string)
    script_fields      = optional(string)
    scroll_size        = optional(number)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
    elasticsearch_connection = optional(list(object({
      api_key                  = optional(string)
      bearer_token             = optional(string)
      ca_data                  = optional(string)
      ca_file                  = optional(string)
      ca_fingerprint           = optional(string)
      cert_data                = optional(string)
      cert_file                = optional(string)
      endpoints                = optional(list(string))
      es_client_authentication = optional(string)
      headers                  = optional(map(string))
      insecure                 = optional(bool)
      key_data                 = optional(string)
      key_file                 = optional(string)
      password                 = optional(string)
      username                 = optional(string)
    })))
  }))
}

