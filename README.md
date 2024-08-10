# Vault Setup

1. **Start the Container:**
    ```bash
    docker-compose up -d
    ```

1. **Access the Container:**
    ```bash
    docker exec -it vault sh
    ```

1. **Set the Vault URL:**
    ```bash
    export VAULT_ADDR=https://edge-vault.lan.homelab
    ```

1. **Self signed certificate:**
    ```bash
    # Add '-tls-skip-verify' if using self-signed certificate
    vault status -tls-skip-verify

    # or set "true" on this environment variable
    export VAULT_SKIP_VERIFY=true
    vault status
    ```

1. **Initialize and Unseal Vault:**
    ```bash
    vault status
    vault operator init
    vault operator unseal
    ```

1. **View Container Logs:**
    ```bash
    docker-compose logs -f vault
    ```

1. **Stop the Container:**
    ```bash
    docker-compose down
    ```

1. **Access the Vault UI:**
    - [https://edge-vault.lan.homelab](https://edge-vault.lan.homelab)

[MIT License](LICENSE "MIT License")

### Created by:

1. Luciano Sampaio.