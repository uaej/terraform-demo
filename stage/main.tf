provider "aws" {
 region = "ap-northeast-2"
}
resource "aws_db_instance" "example" {
 identifier_prefix = "terraform-mysql"
 engine = "mysql"
 allocated_storage = 10
 instance_class = "db.t2.micro"
 skip_final_snapshot = true
 db_name = "example_database"
 # How should we set the username and password?
 username = var.db_username
 password = var.db_password
}

variable "db_username" {
 description = "The username for the database"
 type = string
 sensitive = true
}

variable "db_password" {
 description = "The password for the database"
 type = string
 sensitive = true
}

