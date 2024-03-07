
variable "awsAccount" {
  type        = string
  default     = "value"
  description = "value"
}

variable "awsProfile" {
  type        = string
  default     = "value"
  description = "value"
}

variable "awsRegion" {
  type        = string
  default     = "us-wast-2"
  description = "value"
}

variable "vpcId" {
  type        = string
  default     = "value"
  description = "value"
}

variable "subnetIds" {
  type        = list(string)
  default     = ["value"]
  description = "value"
}

variable "rdsName" {
  type        = string
  default     = "BiteByteGo"
  description = "value"
}

variable "tags" {
  type = map(string)
  default = {
    "name" = "value"
  }
}
