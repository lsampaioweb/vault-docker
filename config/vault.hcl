# Enable the Vault UI
ui = true

# Configuration for the Vault API and cluster addresses

# HTTP (Uncomment these lines for HTTP)
# api_addr = "https://127.0.0.1:8200"
# cluster_addr = "https://127.0.0.1:8201"

# HTTPS (Use these lines for HTTPS)
# API address for Vault
api_addr = "https://vault:8200"
# Cluster address for Vault
cluster_addr = "https://vault:8201"

# Disable memory locking (useful for some environments but reduces security)
disable_mlock = true

# Maximum lease TTL (Time To Live) for secrets
max_lease_ttl = "24h"

# Default lease TTL for secrets
default_lease_ttl = "6h"

# Log level for Vault (other options: debug, warn, error)
log_level = "info"

# Log level for HTTP request logs
log_requests_level = "info"

# Storage backend configuration using Raft
storage "raft" {
  # Directory for Raft storage data
  path = "/vault/data"
}

# Listener configuration for Vault
listener "tcp" {
  # Bind address and port for Vault listener
  address = "0.0.0.0:8200"

  # HTTP (Uncomment these lines for HTTP)
  # tls_disable = true

  # HTTPS (Use these lines for HTTPS)
  # Enable TLS for secure communication
  tls_disable = false
  # Path to TLS certificate file
  tls_cert_file = "/vault/certificates/edge-vault.lan.homelab.crt"
  # Path to TLS key file
  tls_key_file = "/vault/certificates/edge-vault.lan.homelab.key"
}
