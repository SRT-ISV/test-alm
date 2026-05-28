locals {

 subs = jsondecode(var.subnet_json)
 private_service_access = jsondecode(var.private_service_access_json)
 routes = jsondecode(var.routes_json)
}


module "vpc" {
    source  = "terraform-google-modules/network/google"
    version = "~> 18.1"

    project_id           = var.project_id
    network_name         = "example-vpc"
    routing_mode         = "GLOBAL"

     subnets =  local.subs   #var.subnets
     #[
    #     {
    #         subnet_name           = "subnet-01"
    #         subnet_ip             = "10.10.10.0/24"
    #         subnet_region         = "us-central1"
    #     }
    # ]

     private_service_access_config = local.private_service_access  #var.private_service_access
     #{
    #                                 "address_name": "private-ip-address",
    #                                 "enable_private_services_connection": false,
    #                                 "prefix_length": 16
    #                                 }

    routes = local.routes
    
     
   
}



# output "json_sub" {
#   value = local.subs
# }

# output "json_routes" {
#   value = local.routes
# }

# output "json_private_service_access" {
#   value = local.private_service_access
# }