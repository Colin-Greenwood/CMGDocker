# Assignment #4: Application Containerization

This is a simple Node.js web application designed for learning Docker containerization concepts.

## Application Overview

This application is a basic Express.js web server that:
- Serves a static HTML page at the root (`/`)
- Provides an API status endpoint at `/api/status`
- Includes a health check endpoint at `/health`
- Runs on port 3000 by default (configurable via PORT environment variable)

## What's Included

- **app.js**: Main application server file
- **package.json**: Node.js dependencies and project configuration
- **public/index.html**: Static HTML page that confirms successful containerization
- **public/style.css**: Styling for the web page

## Running Without Docker (for reference only)

If you wanted to run this application directly (not required for assignment):
```bash
npm install
npm start
```

## Your Docker Assignment

**DO NOT MODIFY THE APPLICATION CODE**

Your task is to containerize this existing application using Docker. You need to:

1. Create a `Dockerfile` that properly containerizes this Node.js application
2. Build a Docker image from your Dockerfile
3. Run a container from your image
4. Verify the application works by accessing it in your browser

## Starting the Application

- To build the docker image run the command:

```bash

```

- To run your docker container in port 3000 run the command:

```bash

```

## Reflection Question
**Answer the following question in the space below**: How does containerization with Docker differ from using virtual machines, and why might a development team choose Docker containers over VMs for deploying applications like the one you just containerized?
Faster Startup and Deployment

Containers start almost instantly.

Ideal for development, testing, and scaling microservices.

Lightweight & Efficient

You can run many containers on a single machine.

Uses fewer system resources than spinning up multiple VMs.

Consistency Across Environments

“It works on my machine” problem disappears.

Containers package the app with all its dependencies (Node.js version, libraries, etc.).

Ensures that dev, staging, and production environments are identical.

Microservices & Scalability

Each microservice can run in its own container, isolated but sharing host OS resources.

Easy to scale horizontally by running multiple container instances.

Simplified CI/CD

Docker images integrate well with pipelines like GitHub Actions, Jenkins, or GitLab.

Teams can test, build, and deploy apps consistently in automated workflows.

Smaller Footprint & Faster Updates

Updating a container is simpler: rebuild the image and redeploy.

Rolling updates and rollback are easier than with full VM OS upgrades.


If your team used a VM:

You’d need a full Linux VM (with Node.js installed).

The image would be GBs in size.

Startup could take minutes.

Sharing the exact environment between developers could be tricky.

With Docker:

Your Node.js app runs in a lightweight container.

The image might be ~100–200 MB.

Developers, testers, and production can all run exactly the same container.

You can scale multiple instances of the app on the same host machine quickly.

In short:

VMs are like bringing a full separate computer each time.
Docker containers are like having a lightweight “mini-computer” that only has what your app needs, starts instantly, and works anywhere.


## Application Requirements for Docker

Your Dockerfile should ensure:
- The application has Node.js runtime available
- All application files are copied into the container
- Dependencies are installed (`npm install`)
- Port 3000 is exposed
- The application starts with `npm start`
- The container can be accessed from your host machine

## Verification

When your Docker container is running correctly:
- Navigate to `http://localhost:3000` (or whatever port you mapped)
- You should see a success page confirming containerization worked
- The `/api/status` endpoint should return JSON status information

## Troubleshooting Tips

- Make sure your port mapping is correct in the `docker run` command
- Check that all files are copied into the container
- Verify Node.js dependencies are installed in the container
- Use `docker logs <container-name>` to see application output

## File Structure Expected
```
docker-assignment/
├── Dockerfile          # You create this
├── app.js              # Provided
├── package.json        # Provided
├── public/             # Provided
│   ├── index.html      # Provided
│   └── style.css       # Provided
└── README.md           # This file
```

Good luck with your Docker containerization!
