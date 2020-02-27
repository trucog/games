

resource "aws_api_gateway_rest_api" "UserManagementAPI" {
  name        = "UserManagementAPI"
  description = "This is my API for demonstrating the User Management"
}

resource "aws_api_gateway_resource" "UserManagementResource" {
  rest_api_id = "${aws_api_gateway_rest_api.UserManagementAPI.id}"
  parent_id   = "${aws_api_gateway_rest_api.UserManagementAPI.root_resource_id}"
  path_part   = "usermanagementresource"
}

resource "aws_api_gateway_method" "UserManagementMethod" {
  rest_api_id   = "${aws_api_gateway_rest_api.UserManagementAPI.id}"
  resource_id   = "${aws_api_gateway_resource.usermanagementresource.id}"
  http_method   = "GET"
  authorization = "NONE"
}
