PROJECT=$(gcloud config get-value project)
ZONE=us-west1-b
SERVICE_ACCOUNT=$(gcloud iam service-accounts list | grep -i "compute engine default" | awk '{print$NF}')


gcloud compute --project=$PROJECT --quiet instances delete ml-box  --zone=$ZONE
gcloud compute --project=$PROJECT --quiet disks delete ml-box  --zone=$ZONE


gcloud compute --project=$PROJECT instances list
gcloud compute --project=$PROJECT disks list
