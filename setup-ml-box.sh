PROJECT=$(gcloud config get-value project)
ZONE=us-west1-b
SERVICE_ACCOUNT=$(gcloud iam service-accounts list | grep -i "compute engine default" | awk '{print$NF}')
INSTANCE=ml-box

declare -a cmd_array=("sudo apt-get -q update && sudo apt-get -q -y upgrade && sudo apt -q -y autoremove" \
	              "sudo apt-get install -y git" \
		      "rm -rf ml-on-gcp" \
		      "git clone https://github.com/akiatoji/ml-on-gcp.git" \
		      "exec ml-on-gcp/run-remote/setup-on-ml-box.sh"

	)

for cmd in "${cmd_array[@]}"
do
	gcloud compute ssh $INSTANCE \
		--zone=$ZONE \
       		--command="bash -l -c \"$cmd\"" \
		-- -l
done

