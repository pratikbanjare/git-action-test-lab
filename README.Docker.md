### Building and running your application

When you're ready, start your application by running:
`docker compose up --build`.

Your application will be available at http://localhost:8080.

### Deploying your application to the cloud

First, build your image, e.g.: `docker build -t myapp .`.
If your cloud uses a different CPU architecture than your development
machine (e.g., you are on a Mac M1 and your cloud provider is amd64),
you'll want to build the image for that platform, e.g.:
`docker build --platform=linux/amd64 -t myapp .`.

Then, push it to your registry, e.g. `docker push myregistry.com/myapp`.

Consult Docker's [getting started](https://docs.docker.com/go/get-started-sharing/)
docs for more detail on building and pushing.


### `rollback.yml` Workflow Documentation

This GitHub Actions workflow automates building, deploying, and rolling back a Java Spring Boot application using Docker images.

#### Workflow Steps

1. **Trigger**  
   Runs on every push to the `master` branch.

2. **Checkout Code**  
   Uses the latest code from the repository.

3. **Set Up Docker**  
   Prepares the environment for Docker builds.

4. **Build and Push Docker Image**
    - Builds a Docker image tagged with the current commit SHA.
    - Pushes both the versioned and `latest` tags to the Docker registry.

5. **Deploy Application**
    - Attempts to deploy the application using the new image.
    - Stores the image tag as the last successful deployment.
    - (Simulated failure for testing purposes.)

6. **Rollback on Failure**
    - If deployment fails, retrieves the previous successful image tag.
    - Initiates a rollback using the previous image.

#### Customization

- Replace `myrepo/myapp` with your Docker repository.
- Add your actual deployment and rollback commands in the respective steps (e.g., `kubectl apply`, `docker-compose up`).

#### Purpose

This workflow ensures that if a deployment fails, the application is automatically rolled back to the last known good Docker image, minimizing downtime and risk.