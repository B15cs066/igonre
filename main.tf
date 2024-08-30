
variable "ami_id" {
  description = "The ID of the AMI to use for the instance"
  type        = string
}

variable "instance_type" {
  description = "The type of instance to start"
  type        = string
}

variable "volume_size" {
  description = "The size of the volume in GB"
  type        = number
}

resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type

  root_block_device {
    volume_size = var.volume_size
  }
}


