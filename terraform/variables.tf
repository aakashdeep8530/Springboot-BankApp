variable "region" {
  description = "AWS region"
  type        = string
}
variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}
variable "instance_name" {
  description = "EC2 instance name"
  type        = string
}
variable "instance_ami" {
  description = "EC2 instance AMI"
  type        = string
<<<<<<< HEAD
}
variable "instance_volume_size" {
  description = "EC2 instance root volume size in GB"
  type        = number
}
variable "instance_volume_type" {
  description = "EC2 instance root volume type"
  type        = string
}
variable "security_group_name" {
  description = "Security group name"
  type        = string
=======
>>>>>>> 5ce8c675cae77d637a67dccc78f7a6dcc2587df9
}