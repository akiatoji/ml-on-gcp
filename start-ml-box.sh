PROJECT=$(gcloud config get-value project)
ZONE=us-west1-b

gcloud compute --project=$PROJECT --quiet instances start ml-box  --zone=$ZONE && gcloud compute --project=$PROJECT ssh ml-box  --zone=$ZONE
