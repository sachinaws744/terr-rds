############### Main Variables ##################

variable "main_allocated_storage"{
type = number
default = 200
}
variable "main_db_engine"{
type = string
default = "MySQL"
}
variable "main_db_instance_class"{
type = string
default = "db.m5.large"
}
variable "main_db_username" {
type = string  
default = "admin"
}
variable "parameter_group_name" {
    type = string
    default = "" 
}
variable "password" {
type = string  
default = "admin"
}
variable "main_db_version" {
    type = string
default = "MySQL 8.0.35"
  
}
#################replica##############
variable "replica_instance_class" {
    type = string
  default = ""
}

variable "replica_count" {
  type = number
  default = 2
}

variable "rds_replica_azs" {
  type = list(string)
  default = ["ap-south-1b"]
}
variable "sg_vpc_id" {
    type = string
   default = "vpc-a4777dcc"
  
}
variable "sg_ingress_from_port" {
    type = number
    default = 3306
  
}
variable "sg_ingress_to_port" {
    type = number
    default = 3306
  
}
variable "cidr"{
type = list(string)
default = ["172.31.0.0/16"]
}
variable "sg_protocol" {
    type = string
    default = "MySQL"
}
variable "sg_name" {
  type = string
default = ""
}