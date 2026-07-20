terraform {

  source = "../../../../../../../modules/s3"

}

inputs = {

  bucket_name = "dara-atlantis-lab-001"

  region = "us-east-1"

}