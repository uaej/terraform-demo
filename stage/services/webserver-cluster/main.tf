provider "aws" {
  region = "ap-northeast-2"
}

module "webserver_cluster" {
 source = "../../../modules/services/webserver-cluster"
 cluster_name= "webservers-stage"
 db_remote_state_bucket = "terraform-state-bja-wave"
 db_remote_state_key = "stage/data-stores/mysql/terraform.tfstate"
 instance_type = "t3.micro"
 min_size=2
 max_size=2
}

output "alb_dns_name" {
 value = module.webserver_cluster.alb_dns_name
 description = "The domain name of the load balancer"
}
