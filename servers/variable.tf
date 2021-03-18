variable "image_id" {
  default = "ami-12345678"
  type = string
  description = "if of the miachine image (AMI)"

  validation {
    condition = length(var.image_id) > 4 && substr(var.image_id, 0, 4) == "ami-"
    error_message = "The image_id must be a valid AMI starting with \"ami-\"."
  }
}

variable "servers" {
  
}