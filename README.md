# ReadMe

Creates a free-tier GCP compute engine (valid on Jul/2021) with f1-micro instance with 30GB boot disk.

Download the crendetials key file from the GCP service account that has permission to create vm instances. 
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
image_id = "debian-cloud/debian-10"
region_id="us-east1"
zone_id="us-east1-c"
```



## GCP Free Tier Compute Engine

See https://cloud.google.com/free/docs/gcp-free-tier/#free-trial

```
1 non-preemptible f1-micro VM instance per month in one of the following US regions:
Oregon: us-west1
Iowa: us-central1
South Carolina: us-east1
30 GB-months HDD
5 GB-month snapshot storage in the following regions:
Oregon: us-west1
Iowa: us-central1
South Carolina: us-east1
Taiwan: asia-east1
Belgium: europe-west1
1 GB network egress from North America to all region destinations (excluding China and Australia) per month

Your Free Tier f1-micro instance limit is by time, not by instance. Each month, eligible use of all of your f1-micro instances is free until you have used a number of hours equal to the total hours in the current month. Usage calculations are combined across the supported regions.

Google Cloud Free Tier does not include external IP addresses.
```