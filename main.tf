### Terraform Resources

resource "google_project" "project" {
  name                = var.google_project_name
  project_id          = var.google_project_name
  billing_account     = var.google_billing_account
  org_id              = var.google_org_id
  auto_create_network = true
  skip_delete         = var.skip_delete ? true : false

  labels = { for key, value in var.metadata : lower(key) => lower(replace(replace(value, ".", "-"), " ", "_")) }
}



resource "google_project_service" "monitoring" {
  project            = google_project.project.name
  service            = "monitoring.googleapis.com"
  disable_on_destroy = false
}

resource "google_project_service" "logging" {
  project            = google_project.project.name
  service            = "logging.googleapis.com"
  disable_on_destroy = false
}
