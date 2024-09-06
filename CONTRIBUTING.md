# CONTRIBUTING

## How to run the Dockerfile locally (windows)

```
docker run -dp 5000:5000 -w /app -v "/c/PATH_TO_THE_APP_FOLDER:/app" IMAGE_NAME sh -c "flask run --host 0.0.0.0"
```
