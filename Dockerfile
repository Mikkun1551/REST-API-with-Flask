FROM python:3.10
# the port choosen
EXPOSE 5000
# path of the app to use for the image
WORKDIR /app
# copy the file selected in the workdir specified
COPY ./requirements.txt requirements.txt
RUN pip install --no-cache-dir --upgrade -r requirements.txt
# copy everything from the current directory into workdir specified
COPY . .
# the command to do when created the app
CMD ["flask", "run", "--host", "0.0.0.0"]
