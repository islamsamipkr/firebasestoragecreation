resource "google_storage_bucket" "default" {
  provider                    = google-beta
  name                        = "cloud_storage_firebase_bucket_1_sami"
  location                    = "northamerica-northeast1"
  project   = "avian-amulet-378416"
  uniform_bucket_level_access = true
}

resource "google_firebase_storage_bucket" "default" {
  provider  = google-beta
  project   = "avian-amulet-378416"
  bucket_id = google_storage_bucket.default.id
}
resource "google_storage_bucket" "default1" {
  provider                    = google-beta
  name                        = "cloud_storage_firebase_bucket_2_sami"
  location                    = "northamerica-northeast1"
  project   = "avian-amulet-378416"
  uniform_bucket_level_access = true
}

resource "google_firebase_storage_bucket" "default1" {
  provider  = google-beta
  project   = "avian-amulet-378416"
  bucket_id = google_storage_bucket.default.id
}
