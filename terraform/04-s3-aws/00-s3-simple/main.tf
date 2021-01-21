resource "aws_s3_bucket" "test" {
  bucket = "my-tf-test-bucket-00"
  acl    = "private"
  
  // para habilitar el versionado
  //versioning {
  //  enabled = true
  //}

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
