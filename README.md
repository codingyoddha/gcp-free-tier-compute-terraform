# ReadMe

Creates a free-tier GCP compute engine (valid on Jul/2021) with e2-micro instance with 30GB boot disk.

Download the credentials key file from the GCP service account that has permission to create Compute Engine instances. 
Create a config.tfvars file. See sample.


## Run
```
terraform init #if the first time
terraform plan -var-file="config.tfvars" #check
terraform apply -var-file="config.tfvars" #(destroys the current instance and recreates a new one)
```


## Sample config.tfvars

```
project_id = "prsm-319108"
credentials_file = "CREDENTIALS_FILE.json"
region_id="us-east1"
zone_id="us-east1-c"
image_family = "ubuntu-2004-lts" 
image_project = "ubuntu-os-cloud"
```



## GCP Free Tier Compute Engine

See https://cloud.google.com/free/docs/gcp-free-tier/#free-trial

```
1 non-preemptible e2-micro VM instance per month in one of the following US regions:
Oregon: us-west1
Iowa: us-central1
South Carolina: us-east1

30 GB-months standard persistent disk

5 GB-month snapshot storage in the following regions:
Oregon: us-west1
Iowa: us-central1
South Carolina: us-east1
Taiwan: asia-east1
Belgium: europe-west1

1 GB network egress from North America to all region destinations (excluding China and Australia) per month

Your Free Tier e2-micro instance limit is by time, not by instance. Each month, eligible use of all of your e2-micro instance is free until you have used a number of hours equal to the total hours in the current month. Usage calculations are combined across the supported regions.

GPUs and TPUs are not included in the Free Tier offer. You are always charged for GPUs and TPUs that you add to VM instances.

Google Cloud Free Tier does not include external IP addresses.
```