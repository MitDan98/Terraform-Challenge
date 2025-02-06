resource "aws_lambda_function" "main" {
  function_name = "casino-lambda-${var.env}"
  role          = aws_iam_role.lambda_exec.arn
  handler       = "index.handler"
  runtime       = "nodejs18.x"
  filename      = "${path.module}/lambda/lambda.zip"
  
  environment {
    variables = {
      DYNAMODB_TABLE = aws_dynamodb_table.main.name 
    }
  }

  tracing_config {
    mode = "Active"
  }
}

resource "aws_lambda_event_source_mapping" "sqs_trigger" {
  event_source_arn = aws_sqs_queue.main.arn
  function_name    = aws_lambda_function.main.arn
}