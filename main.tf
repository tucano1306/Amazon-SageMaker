provider "aws" {
  region = var.region
}

resource "aws_sagemaker_model" "employee_retention_model" {
  name                 = var.model_name
  execution_role_arn   = aws_iam_role.sagemaker_execution_role.arn
  primary_container {
    image              = var.image_uri
    model_data_url     = var.model_data_url
  }
}

resource "aws_sagemaker_endpoint_configuration" "employee_retention_endpoint_config" {
  name = var.endpoint_config_name

  production_variants {
    variant_name           = "AllTraffic"
    model_name             = aws_sagemaker_model.employee_retention_model.name
    initial_instance_count = var.instance_count
    instance_type          = var.instance_type
  }
}

resource "aws_sagemaker_endpoint" "employee_retention_endpoint" {
  name = var.endpoint_name
  endpoint_config_name = aws_sagemaker_endpoint_configuration.employee_retention_endpoint_config.name
}

resource "aws_iam_role" "sagemaker_execution_role" {
  name = "sagemaker_execution_role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          Service = "sagemaker.amazonaws.com"
        }
        Action = "sts:AssumeRole"
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "sagemaker_execution_policy_attachment" {
  role       = aws_iam_role.sagemaker_execution_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonSageMakerFullAccess"
}