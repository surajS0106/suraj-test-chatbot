
variable "instance_type" {
  description = "The type of EC2 instance to deploy."
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "The AMI ID for the EC2 instance."
  type        = string
  default     = "ami-053b0d53c279acc90" # Example: Amazon Linux 2 AMI (HVM) - us-east-1
}

variable "key_pair_name" {
  description = "The name of the key pair to associate with the EC2 instance."
  type        = string
  default     = "my-ec2-key" # You should create this key pair in AWS beforehand
}

variable "tags" {
  description = "A map of tags to assign to the EC2 instance."
  type        = map(string)
  default = {
    Name        = "chatbot-ec2-instance"
    Environment = "test"
    Project     = "chatbot-demo"
  }
}
