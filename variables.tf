variable "region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "us-west-2"
}

variable "model_name" {
  description = "The name of the SageMaker model"
  type        = string
  default     = "employee-retention-model"
}

variable "image_uri" {
  description = "The URI of the Docker image containing the model"
  type        = string
}

variable "model_data_url" {
  description = "The S3 URL where the model artifacts are stored"
  type        = string
}

variable "endpoint_config_name" {
  description = "The name of the SageMaker endpoint configuration"
  type        = string
  default     = "employee-retention-endpoint-config"
}

variable "endpoint_name" {
  description = "The name of the SageMaker endpoint"
  type        = string
  default     = "employee-retention-endpoint"
}

variable "instance_type" {
  description = "The type of instance to use for the endpoint"
  type        = string
  default     = "ml.m4.xlarge"
}

variable "instance_count" {
  description = "The number of instances to use for the endpoint"
  type        = number
  default     = 1
}