variable "region" {
  default = "us-east-1"
}

variable "cluster_name" {
  default = "datadog-cluster"
}

variable "project_name" {
  type        = string
  description = "Projeto usado para nome dos recursos (Name tag)"
  default     = "datadog"
}
