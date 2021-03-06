# Input Variables

variable "google_project_name" {
  description = "Google Project Name. Must be less than 30 alpha-numberic characters. (Example: tf-gcp-test-project)"
}

variable "google_billing_account" {
  description = "Google Billing Account ID. (Example: abc111-tuv222-xyz333)"
}

variable "google_org_id" {
  description = "Google Organization ID number. (Example: 123456123456)"
}

variable "skip_delete" {
  description = "When set to 'true' Terraform ONLY deletes the Google Cloud Project resource from the TF State and skips deletion of the GCP Project."
  type        = bool
}

variable "metadata" {
  description = "Labels to add to the Google Project. Provided as an object of Key/Value pairs."
}
