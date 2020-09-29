# Params file for variables

#### GLANCE
variable "image" {
  type    = string
  default = "Ubuntu-18.04-64bit"
}

#### NEUTRON
variable "external_network" {
  type    = string
  default = "external_118"
}

# UUID of external gateway
variable "external_gateway" {
  type    = string
  default = "425c54bb-c4f2-41d6-a63c-a5c87257c929"
}

variable "dns_ip" {
  type    = list(string)
  default = ["8.8.8.8", "8.8.8.4"]
}

#### VM HTTP parameters ####
variable "flavor_http" {
  type    = string
  default = "m1.small"
}

variable "network_http" {
  type    = map(string)
  default = {
    subnet_name = "subnet-http"
    cidr        = "192.168.23.0/24"
  }
}

variable "http_instance_names" {
  type    = set(string)
  default = ["http-instance-1",
             "http-instance-2",
             "http-instance-3"]
}

#### VM DB parameters ####
variable "flavor_db" {
  type    = string
  default = "m1.small"
}

variable "network_db" {
  type    = map(string)
  default = {
    subnet_name = "subnet-db"
    cidr        = "192.168.24.0/24"
  }
}

variable "db_instance_names" {
  type    = set(string)
  default = ["db-instance-1",
             "db-instance-2",
             "db-instance-3"]
}

