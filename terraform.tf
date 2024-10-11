resource "google_storage_bucket" "my_bucket" {
  name          = "new-jenkins-pipeline-bucket"                           # Update with your desired bucket name
  location      = "US"                                          # Set the desired location (e.g., "US", "eu", etc.)
  storage_class = "STANDARD"                                    # Set the storage class (e.g., "STANDARD", "NEARLINE", etc.)

  versioning {
    enabled = true                                             # Enable versioning if needed
  }

  lifecycle {
    prevent_destroy = true                                     # Prevent accidental deletion
  }
}

output "bucket_name" {
  value = google_storage_bucket.my_bucket.name
}
