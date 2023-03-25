# Versi API Kubernetes mana yang digunakan
apiVersion: v1
# Jenis objek apa yang dibuat "Pod"
kind: Pod
# data objek
metadata:
  name: karsajobs-ui-pods
  labels:
    name: karsajobs-ui-pods
    type: frontend
# spesifikasi container
spec:
  containers:
    # nama container
  - name: karsajobs-ui
    # image hasil build dockerfile frontend
    image: ghcr.io/taqwimonehub/karsajobs-ui:latest
    
    ports:
      - containerPort: 8000