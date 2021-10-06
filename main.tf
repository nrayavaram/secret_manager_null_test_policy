provider "google" {
  access_token = var.access_token
}

resource "google_secret_manager_secret" "secret-basic" {
  secret_id = "secret-wf-google-tf3"
  project      = "manifest-access-320809"


  labels = {
    label = "my-label2"
  }

  replication {
    user_managed {
      replicas {
        location = ""
      }
      replicas {
        location = ""
      }
    }
  }
}
