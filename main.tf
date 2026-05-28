module "vpc" {
    source  = "terraform-google-modules/network/google"
    version = "~> 18.1"

    project_id           = var.project_id
    network_name         = "example-vpc"
    routing_mode         = "GLOBAL"

     subnets = var.subnets
     #[
    #     {
    #         subnet_name           = "subnet-01"
    #         subnet_ip             = "10.10.10.0/24"
    #         subnet_region         = "us-central1"
    #     }
    # ]

     private_service_access_config = var.private_service_access
     #{
    #                                 "address_name": "private-ip-address",
    #                                 "enable_private_services_connection": false,
    #                                 "prefix_length": 16
    #                                 }

    routes = var.routes
    
    
    
    
   
}