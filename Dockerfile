FROM python:3.10
# path of the app to use for the image
WORKDIR /app
# copy the file selected in the workdir specified
COPY ./requirements.txt requirements.txt
RUN pip install --no-cache-dir --upgrade -r requirements.txt
# copy everything from the current directory into workdir specified
COPY . .
# the command to do when created the app
CMD ["/bin/bash", "docker-entrypoint.sh"]
