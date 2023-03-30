provider "google-beta" {
  user_project_override = true
}

resource "google_firebase_storage_bucket" "default" {
  provider  = google-beta
  project   = "my-project-name"
  bucket_id = google_storage_bucket.default.id
}
