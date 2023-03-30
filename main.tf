provider "google-beta" {
  user_project_override = true
}

resource "google_firebase_storage_bucket" "default" {
  provider  = google-beta
  project   = "avian-amulet-378416"
  bucket_id = "gs://firebasestoragebucket"
}
