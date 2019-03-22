eval $(minikube docker-env)
docker build -t pagerduty:1.0 .
kubectl apply -f pagerduty_service.yaml
kubectl apply -f pagerduty.yaml
echo 
echo
echo http://192.168.99.100:31318