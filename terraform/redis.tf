resource "digitalocean_database_cluster" "redis-cluster" {
  name       = "codebench-redis"
  engine     = "redis"
  version    = "6"
  size       = "db-s-1vcpu-1gb"
  region     = "ams3"
  node_count = 1
}
