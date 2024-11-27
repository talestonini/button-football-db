# Button Football Database

## Dockerize

For ARM:

    docker build -t button-football-db .

For AMD (needed in GCE):

    docker buildx build --platform linux/amd64 -t button-football-db --output type=docker .

## Push image to repository

    gcloud auth login
    docker tag button-football-db us-central1-docker.pkg.dev/button-football-prj-aecdb/button-football-image-repo/button-football-db
    docker push us-central1-docker.pkg.dev/button-football-prj-aecdb/button-football-image-repo/button-football-db

## Run container

Locally:
    
    docker run -p 9092:9092 button-football-db

In GCE:

    docker run -p 9092 us-central1-docker.pkg.dev/button-football-prj-aecdb/button-football-image-repo/button-football-db:latest