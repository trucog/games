resource "aws_dynamodb_table_item" "app" {
  table_name = "${aws_dynamodb_table.app.users}"
  hash_key   = "${aws_dynamodb_table.app.hash_key}"

  item = <<ITEM
{
  "appHashKey": {"S": "test"},
  "one": {"N": "email4ramana@gmail.com"}
}
ITEM
}

resource "aws_dynamodb_table" "app" {
  name           = "app_users"
  read_capacity  = 10
  write_capacity = 10
  hash_key       = "appHashKey"

  attribute {
    name = "appHashKey"
    type = "S"
  }
}
