. settings.sh
gcloud compute --project=$PROJECT --quiet instances start $INSTANCE  --zone=$ZONE 
sleep 5 
gcloud compute --project=$PROJECT ssh $INSTANCE  --zone=$ZONE
