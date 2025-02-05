terraform {
 backend "s3" {
 bucket = "terraform-state-tmddnr2-wave"
 key = "stage/data-stores/mysql/terraform.tfstate"
 region = "ap-northeast-2"
 dynamodb_table = "terraform-locks"
 encrypt = true
 }
}

