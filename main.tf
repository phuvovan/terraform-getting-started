provider "google" {
project = "phuvo-accenture"
region = "asia-southeast1"
}

resource "google_compute_instance" "myvm" {
name = "myvm-dev"
zone = "asia-southeast1-b"
boot_disk {
initialize_params {
  image = "debian-cloud/debian-9"
  size = "10"
}
}
machine_type = "f1-micro" 
network_interface {
network = "default"
}
}
