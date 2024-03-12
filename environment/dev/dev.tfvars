project_id  = "sela-india-sandbox"
environment = "dev"
region      = "us-central1"
region_or_zone_name = "us-central1-c"

#VPC
vpc_name = "dev-vpc"

#SUBNET
subnet_name = "app-subnet"
subnet_cidr = "10.0.1.0/24"
subnet_region = "us-central1"

###################
##VM
flask_app_vm_name = "flask-app-vm"
flask_app_vm_machine_type = "f1-micro"
flask_app_vm_disk_name = "flask-app-vm-boot-disk"
flask_app_vm_disk_image = "debian-cloud/debian-11"
flask_app_vm_disk_size = "10"
flask_app_vm_disk_type = "pd-balanced"
flask_app_vm_mode = "READ_WRITE"
flask_app_vm_network_ip = ""
flask_app_region = "us-central1"
flask_app_region_or_zone_name = "us-central1-c"
flask_app_vm_network_tags = ["flask-vm"]
flask_app_vm_labels = { env = "dev" }
flask_app_vm_startup_script = "sudo apt-get update; sudo apt-get install -yq build-essential python3-pip rsync; pip install flask"

##FIREWALL
flask_app_firewall_name = "flask-app-allow"
flask_app_firewall_direction = "INGRESS"
flask_app_firewall_ports = ["5000","22"]
flask_app_firewall_protocol = "tcp"
flask_app_firewall_tags = ["flask-vm"]
flask_app_firewall_source_range = ["182.72.58.210/32"]