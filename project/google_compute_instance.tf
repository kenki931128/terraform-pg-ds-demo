# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance

resource "google_compute_instance" "pg_ds_demo_gci" {
  name         = "pg-demo-gc-instance"
  machine_type = "e2-micro"
  zone         = "asia-northeast2-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }

  network_interface {
    network = "default"
  }
}
