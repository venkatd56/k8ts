# Kubectl Commands
ssh-keygen -t rsa -f ~/.ssh/gcpkey -C davenkataz1 -b 2048  # Generating Keys
ssh -i ~/.ssh/gcpkey davenkataz1@34.125.57.44 # Connecting to the VM

curl http://localhost # check the application in the local host

kubectl --help

kubectl api-resources
kubectl api-versions 

kubectl get nodes
kubectl get nodes -w
kubectl get nodes -o wide

kubectl apply -f test.yml

kubectl get pods
kubectl get pods -o wide
kubectl get pods activity2-sql -o yaml
kubectl get pods activity3 -w  # Watch specific pod

kubectl exec -it activity2-sql -- /bin/bash

kubectl describe pods activity1-nginx 

#labels
kubectl get pods -o wide --show-labels
kubectl get pods --selector="app=web" -wide
kubectl get pods --selector="app=web" --show-labels -o wide
kubectl get pods --selector="env in (prod,test,dev)" --show-labels -o wide