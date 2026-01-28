module "blog" {
  source = "./modules/blog"
}

module "s3_bucket" {
  source      = "./modules/s3_bucket"
  bucket_name = "my-company-app-data"
  environment = "dev"
}
