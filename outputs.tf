# Output Variables

output "google_project_name" {
  description = "Google Project Name"
  value       = "${google_project.project.name}"
}

output "google_project_id" {
  description = "Google Project ID"
  value       = "${google_project.project.project_id}"
}

output "google_project_number" {
  description = "Google Project Number"
  value       = "${google_project.project.number}"
}

output "google_billing_account" {
  description = "Google Billing Account ID"
  value       = "${google_project.project.billing_account}"
}

output "google_org_id" {
  description = "Google Organization ID number"
  value       = "${google_project.project.org_id}"
}
