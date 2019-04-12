. settings.sh
#gcloud compute ssh --zone=$ZONE $INSTANCE --command='bash --login -c "pgrep jupyter || nohup jupyter notebook --no-browser > /tmp/notebook.log 2>&1 &"' -- -t
gcloud compute ssh --zone=$ZONE $INSTANCE --command='bash --login -c "pgrep jupyter || (nohup jupyter notebook --no-browser >/tmp/notebook.log &)" ' 
gcloud compute ssh --zone=$ZONE $INSTANCE -- -L 8888:localhost:8888 -N
