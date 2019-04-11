PROJECT=$(gcloud config get-value project)
ZONE=us-west1-b

gcloud compute --project=$PROJECT --quiet instances stop ml-box  --zone=$ZONE
