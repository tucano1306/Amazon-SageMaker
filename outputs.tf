output "model_name" {
  description = "The name of the SageMaker model"
  value       = aws_sagemaker_model.employee_retention_model.name
}

output "endpoint_name" {
  description = "The name of the SageMaker endpoint"
  value       = aws_sagemaker_endpoint.employee_retention_endpoint.name
}

output "endpoint_arn" {
  description = "The ARN of the SageMaker endpoint"
  value       = aws_sagemaker_endpoint.employee_retention_endpoint.arn
}