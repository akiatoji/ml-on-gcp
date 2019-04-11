PROJECT=$(gcloud config get-value project)
ZONE=us-west1-b
SERVICE_ACCOUNT=$(gcloud iam service-accounts list | grep -i "compute engine default" | awk '{print $(NF-1)}')
INSTANCE=ml-box
