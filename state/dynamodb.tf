resource "aws_dynamodb_table" "dynamodb-terraform-state-lock" {
  name = "terraform_locks"
  hash_key = "LockID"
  read_capacity = 1
  write_capacity = 1

  attribute {
    name = "LockID"
    type = "S"
  }

  tags {
    Name = "DynamoDB Terraform State Lock Table"
  }
}
