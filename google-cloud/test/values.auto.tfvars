# gcp_project_id  = "[PROJECT_ID]"
gcp_project_id  = "test-devops-408617"

# gcp_region      = "[REGION]"
gcp_region      = "us-central1"

# gke_username    = "[USERNAME_FOR_GKE]"
gke_username    = "daniel"

# gke_password    = "[PASSWORD_FOR_GKE_USER]"
gke_password    = "daniel123"

# gke_num_nodes   = [NUMBER_OF_NODES]
gke_num_nodes   = 1

# node_disk_size   = [NUMBER_OF_GB]
node_disk_size   = 50

# database_version = "[For example, `MYSQL_5_6` or `POSTGRES_9_6`.]"
# master_instance_name = "[MASTER_INSTANCE_NAME_DB]"
# tier = "[TIER_FOR_DB_INSTANCE]"

# db_name = "[NAME_FOR_DB]"
db_name = "test-devops-daniel"

# db_charset = "[DB_CHARSET]"
db_charset = "utf8"

# user_name = "[DB_USERNAME]"
# user_password = "[DB_USER_PASSWORD]"
user_name = "danieldb"
user_password = "danieldb123."

# activation_policy = [Can be either `ALWAYS`, `NEVER` or `ON_DEMAND`.]
activation_policy = "ON_DEMAND"

#disk_autoresize = [DISK_AUTORESIZE_DB]
disk_autoresize = false