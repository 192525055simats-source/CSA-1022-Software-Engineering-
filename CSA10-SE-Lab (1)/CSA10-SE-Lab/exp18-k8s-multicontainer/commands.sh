#!/usr/bin/env bash
docker build -t <username>/k8s-backend:1.0 backend && docker push <username>/k8s-backend:1.0
docker build -t <username>/k8s-frontend:1.0 frontend && docker push <username>/k8s-frontend:1.0
kubectl apply -f k8s/app.yaml                  # deploy
kubectl get pods,svc                           # monitor
kubectl rollout status deployment/frontend
kubectl scale deployment/frontend --replicas=5 # scale frontend
kubectl get pods -l app=frontend
minikube dashboard                             # dashboard screenshot (minikube)
