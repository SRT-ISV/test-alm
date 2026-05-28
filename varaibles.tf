variable "project_id" {
  type = string
  default = "saas-demo-496915"
}

/*
variable "subnets" {
  type = list(object({
    subnet_name                      = string
    subnet_ip                        = string
    subnet_region                    = optional(string)
    subnet_private_access            = optional(string)
    subnet_private_ipv6_access       = optional(string)
    subnet_flow_logs                 = optional(string)
    subnet_flow_logs_interval        = optional(string)
    subnet_flow_logs_sampling        = optional(string)
    subnet_flow_logs_metadata        = optional(string)
    subnet_flow_logs_filter          = optional(string)
    subnet_flow_logs_metadata_fields = optional(list(string))
    description                      = optional(string)
    purpose                          = optional(string)
    role                             = optional(string)
    stack_type                       = optional(string)
    ipv6_access_type                 = optional(string)
    ip_collection                    = optional(string)
    external_ipv6_prefix             = optional(string)
  }))
  default = [
        {
            subnet_name           = "subnet-01"
            subnet_ip             = "10.10.10.0/24"
            subnet_region         = "us-central1"
        }
    ]
}
*/

variable "subnet_json" {
  type        = string
  description = "A JSON string representing a complex map or object"
  default     = "[{\"subnet_name\":\"subnet-01\",\"subnet_ip\":\"10.10.10.0\\/24\",\"subnet_region\":\"us-central1\"}]"
}

# variable "private_service_access" {
#   type = object({
#     enable_private_services_connection = bool
#     address_name                       = string
#     prefix_length                      = number
#   })
#   default = {
#             "address_name": "private-ip-address",
#             "enable_private_services_connection": false,
#             "prefix_length": 16
#              }
# }

variable "private_service_access_json" {
  type        = string
  description = "A JSON string representing the private service access configuration"
  default     = "{\"address_name\":\"private-ip-address\",\"enable_private_services_connection\":false,\"prefix_length\":16}"
}


# variable "routes" {
#   type = list(object({
#     name                   = string
#     description            = optional(string)
#     tags                   = optional(list(string), [])
#     destination_range      = string
#     next_hop_gateway       = optional(string)
#     next_hop_internet      = optional(bool, false)
#     next_hop_ip            = optional(string)
#     next_hop_instance      = optional(string)
#     next_hop_instance_zone = optional(string)
#     next_hop_vpn_tunnel    = optional(string)
#     next_hop_ilb           = optional(string)
#     priority               = optional(number, 1000)
#   }))
#   default =  [
#         {
#             name                   = "egress-internet"
#             description            = "route through IGW to access internet"
#             destination_range      = "0.0.0.0/0"
#             tags                   = ["egress-inet"]
#             next_hop_internet      = true
#         },
#     ]
# }



variable "routes_json" {
  type        = string
  description = "A JSON string representing a list of route configurations"
  default     = "[{\"name\":\"egress-internet\",\"description\":\"route through IGW to access internet\",\"destination_range\":\"0.0.0.0\\/0\",\"tags\":[\"egress-inet\"],\"next_hop_internet\":true}]"
}