Steps:
1. Create a Git repository w/ local copy and github
2. Init a new python application using uv
3. Create a "hello world" fastapi w 2 routes
    1. "Hello world"
    2. "health check
4. Verify it running locally w UV
5. Create a docker file
    - package and build so it runs in docker
6. Verify it running locally in docker
7. Write a kubernetes manifests
    1. deployment
    2. service that exposes port
8. Verify it running locally in minikube
    * Can't do step 8 yet

Command to run app through uv:
```
uv run uvicorn k8s_app_demo.main:app --reload
```

Command to run app through docker:
```
docker run --name k8s-app-demo -p 8000:8000 k8s-app-demo:0.1.0
```

