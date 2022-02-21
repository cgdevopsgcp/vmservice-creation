resource "google_compute_instance" "alpha" {
  name         = "beta"
  machine_type = "e2-medium"
  zone         = "us-west1-b"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Include this section to give the VM an external ip address
    }
  }
}
