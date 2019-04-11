. settings.sh
gcloud compute --project=$PROJECT --quiet instances start $INSTANCE  --zone=$ZONE && gcloud compute --project=$PROJECT ssh $INSTANCE  --zone=$ZONE
