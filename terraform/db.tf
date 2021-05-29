resource "digitalocean_database_db" "database-codebench" {
  cluster_id = digitalocean_database_cluster.postgres-cluster.id
  name       = "codebench"
}

resource "digitalocean_database_user" "user-codebench" {
  cluster_id = digitalocean_database_cluster.postgres-cluster.id
  name       = "codebench"
}

resource "digitalocean_database_cluster" "postgres-cluster" {
  name       = "codebench-psql"
  engine     = "pg"
  version    = "13"
  size       = "db-s-1vcpu-1gb"
  region     = "ams3"
  node_count = 1
}
