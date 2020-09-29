# Params file for variables

#### GLANCE
variable "image" {
  type    = string
  default = "cirros_raw"
}

#### NEUTRON
variable "external_network" {
  type    = string
  default = "external_network"
}

# UUID of external gateway
variable "external_gateway" {
  type    = string
  default = "a7b51e90-73fd-4268-bd60-bab1ed2e0474"
}

variable "dns_ip" {
  type    = list(string)
  default = ["8.8.8.8", "8.8.8.4"]
}

#### VM HTTP parameters ####
variable "flavor_http" {
  type    = string
  default = "m1.tiny"
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
  default = "m1.tiny"
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
