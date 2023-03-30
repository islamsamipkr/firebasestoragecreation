resource "google_storage_bucket" "default" {
  provider                    = google-beta
  name                        = "test_bucket"
  location                    = "northamerica-northeast1"
  project   = "avian-amulet-378416"
  uniform_bucket_level_access = true
}

resource "google_firebase_storage_bucket" "default" {
  provider  = google-beta
  project   = "avian-amulet-378416"
  bucket_id = google_storage_bucket.default.id
}
