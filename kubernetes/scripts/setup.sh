# First time create config, secrets, postgres, redis.
# ./kubernetes/scripts/set-config-map.sh
# ./kubernetes/scripts/set-secrets.sh
# kubectl apply -f kubernetes/storage/postgres-storage.yaml
# kubectl apply -f kubernetes/workloads/postgres.yaml \
# -f kubernetes/workloads/redis.yaml \
# -f kubernetes/services/redis.yaml \
# -f kubernetes/services/postgres.yaml

kubectl apply \
  -f kubernetes/workloads/rails-nginx.yaml \
  -f kubernetes/workloads/rails-worker.yaml \
  -f kubernetes/services/rails-nginx.yaml \
  -f kubernetes/ingress/ingress-http.yaml
