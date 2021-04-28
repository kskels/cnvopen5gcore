#!/usr/bin/env bash
#Author: fenar
echo -e "Configuring privileged access - Sorry it is what is....\n"
echo
oc adm policy add-scc-to-user anyuid -z default 
oc adm policy add-scc-to-user hostaccess -z default 
oc adm policy add-scc-to-user hostmount-anyuid -z default 
oc adm policy add-scc-to-user privileged -z default 
cd 5gcore-helm
echo "Deploying Open5Gs"
helm install -f values.yaml 5gcore ./
echo "Enjoy The Open 5G Core!"
