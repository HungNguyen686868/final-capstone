apiVersion: apps/v1
kind: Deployment
metadata:
  name: project5-deployment
  labels:
    app: project5-service
spec:
  replicas: 2
  selector:
    matchLabels:
      app: project5-service
  template:
    metadata:
      labels:
        app: project5-service
    spec:
      containers:
      - name: web
        image: 
        ports:
          - name: web
            containerPort: 80
---
apiVersion: v1
kind: Service
metadata:
  name: service loadbalance
spec:
  selector:
    app: project5-service
  type: LoadBalancer
  ports:
    - protocol: TCP
      port: 80
      targetPort: 80