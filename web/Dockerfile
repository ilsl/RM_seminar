FROM ubuntu:latest
ENV http_proxy "http://10.107.32.9:8080"
ENV https_proxy "http://10.107.32.9:8080"
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 5005
ENTRYPOINT ["python"]
CMD ["app.py"]
