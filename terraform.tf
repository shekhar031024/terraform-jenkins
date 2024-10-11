resource "google_compute_instance" "default" {
  name         = "my-jenkins-vm"
  machine_type = "e2-micro"  # Choose an appropriate machine type
  zone         = "us-central1-b"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"  # Choose the OS image
    }
  }

  network_interface {
    network = "default"
    access_config {
      // Include this block to give the VM a public IP
    }
  }

  metadata_startup_script = <<-EOF
    #!/bin/bash
    echo "Hello, World!" > /var/log/startup-script.log
  EOF
}
