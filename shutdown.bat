@echo off
set INSTANCE_NAME="instance-2"
set ZONE="us-central1-a"

cmd /c gcloud compute instances delete %INSTANCE_NAME%
cmd /c gcloud container clusters delete todolist