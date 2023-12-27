# Define the name of the load balancer
lb_name="[LOAD_BALANCER_NAME]}"

# Define value of the project id, comes from google cloud: 
project_id = "[GOOGLE_CLOUD_PROJECT_ID]"

# ssl would be true if you have domain to assign to the load balancer
# values: true or false
ssl = "true"

# Define the domain to be used for the load balancer
domain = "test.danm.cloud"

# Define the name of the neg to be used with the load balancer
neg_name = "[NEG_NAME]"

# Define the type of neg
# values: SERVERLESS or PRIVATE_SERVICE_CONNECT
# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_region_network_endpoint_group#network_endpoint_type
neg_type = "SERVERLESS"

# Define value of the region to use:
# All Regions: https://cloud.google.com/about/locations
region = "us-central1"
