# Infra

## Terraform

Terraform state is stored on a Scaleway bucket.

The terraform config manages:

- [scw] a Container Registry
- [do] a Redis cluster
- [do] a Postgres cluster

```sh
cd terraform/
source .env
terraform init
terraform plan
terraform apply
```

## Porter

`api` and `front` are deployed to Porter on each release. Docker images are build and push to a regsitry and then a webhook triggers a deploy with the new image.

Resources deploy trough porter and not managed by Terraform:

- K8S cluster
- K8S node pool
- Load balancer

On Digital Ocean.
