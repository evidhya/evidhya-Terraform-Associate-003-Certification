# The Vault provider allows terraform to read from, writeto and configure HashiCorp Vault.  
# vault have multiple engines like AWS, secret etc..check
# we need to specify the address where vault is running.
# Interacting with Vault from Terraform cause any secret that you read and write to be peristed in both Terraform's state file.  



provider "vault" {
  address = "http://127.0.0.1:8200"
}

data "vault_generic_secret" "demo" {
  path = "secret/db_creds" # db_creds is what we created. that we need to give in path
}

output "vault_secrets" {
  value = data.vault_generic_secret.demo.data_json
  sensitive = "true"
}