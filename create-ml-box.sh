. settings.sh

gcloud compute --project=$PROJECT instances create $INSTANCE \
	--zone=$ZONE \
	--machine-type=n1-highmem-4 \
	--subnet=default \
	--network-tier=PREMIUM \
	--no-restart-on-failure \
	--maintenance-policy=TERMINATE \
	--preemptible \
	--service-account=$SERVICE_ACCOUNT \
	--scopes=https://www.googleapis.com/auth/devstorage.read_only,https://www.googleapis.com/auth/logging.write,https://www.googleapis.com/auth/monitoring.write,https://www.googleapis.com/auth/servicecontrol,https://www.googleapis.com/auth/service.management.readonly,https://www.googleapis.com/auth/trace.append \
        --accelerator=type=nvidia-tesla-k80,count=1 \
	--image=ubuntu-1804-bionic-v20190404 \
	--image-project=ubuntu-os-cloud \
       	--boot-disk-size=30GB \
	--no-boot-disk-auto-delete \
	--boot-disk-type=pd-ssd \
	--boot-disk-device-name=$INSTANCE 
