resource "aws_sqs_queue" "main" {
  name                      = "casino-queue-${var.env}"
  redrive_policy = jsonencode({
    deadLetterTargetArn = aws_sqs_queue.dlq.arn
    maxReceiveCount     = 3
  })
  tags = { Environment = var.env }
}

resource "aws_sqs_queue" "dlq" {
  name = "casino-dlq-${var.env}"
}