. settings.sh

gcloud compute --project=$PROJECT --quiet instances delete $INSTANCE  --zone=$ZONE
gcloud compute --project=$PROJECT --quiet disks delete $INSTANCE  --zone=$ZONE
#gcloud compute --project=$PROJECT --quiet disks delete $INSTANCE-vol  --zone=$ZONE


gcloud compute --project=$PROJECT instances list
gcloud compute --project=$PROJECT disks list
