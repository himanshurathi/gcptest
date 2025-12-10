terraform {
  backend "gcs" {
    bucket = "cb-terracloudlabs91samplestoragebucket"
    prefix = "terraform/state"    
  }
}
provider "google" {
    project = "terracloudlabs91"
    region  = "us-central1"
  
}
resource "google_compute_network" "vpc_network" {
  name                    = "tf-vpc-network8"
  auto_create_subnetworks = "true"
}