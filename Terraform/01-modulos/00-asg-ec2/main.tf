module "webserver_cluster" {
  source = "./modules/webserver-cluster"

  cluster_name = "webservers-stage" //variable de entrada
  instance_type = "t2.micro"
  min_size      = 2
  max_size      = 10
  enable_autoscaling = true
}
