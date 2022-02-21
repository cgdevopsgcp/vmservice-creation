resource "google_compute_instance" "autodefault" {
  name         = "servicevmghgfhgfhg"
  machine_type = "e2-medium"
  zone         = "asia-south1-c"

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
