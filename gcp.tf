provider "google" {
  credentials = "${file(var.cred_file)}"
  project     = "${var.project_name}"
  region      = "${var.region}"
}
