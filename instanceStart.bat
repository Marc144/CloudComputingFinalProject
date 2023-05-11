@echo off
set INSTANCE_NAME="instance-2"
set ZONE="us-central1-a"

cmd /c gcloud compute instances create %INSTANCE_NAME% --zone=%ZONE% --image=ubuntu-1804-bionic-v20230324 --image-project=ubuntu-os-cloud --tags=http-server --metadata-from-file=startup-script=./API_startup.sh
cmd /c gcloud compute firewall-rules create rule-allow-tcp-5000 --project=cisc5550 --source-ranges=0.0.0.0/0 --target-tags=http-server --allow=tcp:5000
cmd /c gcloud compute instances start %INSTANCE_NAME% --zone=%ZONE%

