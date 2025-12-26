# # ARGO_URL=$(kubectl get svc -n argocd|grep argocd-server |grep LoadBalancer | awk  '{print $4}')
# echo "Authenticaing to EKS ${1}"
# aws eks update-kubeconfig --name ${1}-eks
# kubectl get nodes 

# ARGO_URL="argocd.cloudapps.today"
# ARGO_PWD=$(kubectl get secret argocd-initial-admin-secret -n argocd-initial-admin-secret -o json -n argocd | jq '.data.password'| xargs | base64 -d)
# argocd login $ARGO_URL  --username admin --password $ARGO_PWD

# echo "creating ${1} backend app"
# argocd app create backend --repo https://github.com/Shripad13/expense-helm.git --path . --dest-namespace default --dest-server https://kubernetes.default.svc --values ${1}/backend.yaml --sync-policy auto  --grpc-web

# # echo "creating dev frontend app"
# # argocd app create frontend --repo https://github.com/Shripad13/expense-helm.git --path . --dest-namespace default --dest-server https://kubernetes.default.svc --values dev/frontend.yaml --sync-policy auto --grpc-web