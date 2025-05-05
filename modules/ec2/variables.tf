variable "ami_id" {}
variable "instance_type" {}
variable "key_name" {}
variable "public_subnet_ids" {
  type = list(string)
}
variable "private_subnet_ids" {
  type = list(string)
}
variable "public_sg_id" {}
variable "private_sg_id" {}
