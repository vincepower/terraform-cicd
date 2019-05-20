resource "google_compute_network" "vpc_network" {
  name                    = "${var.network_name}"
  auto_create_subnetworks = "false"
}

resource "google_compute_subnetwork" "vpc_subnet" {
  name                     = "${var.network_name}"
  ip_cidr_range            = "10.222.0.0/20"
  network                  = "${google_compute_network.vpc_network.self_link}"
  region                   = "${var.region}"
  private_ip_google_access = true
}

