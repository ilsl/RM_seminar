#Build an image starting with the latest ubuntu image
FROM ubuntu:latest

#Set the environmental variables
#ENV http_proxy "http://10.107.32.9:8080"
#ENV https_proxy "http://10.107.32.9:8080"

# Update the repository sources list
RUN apt-get update -y

# Install pip, python development tools
RUN apt-get install -y python-pip python-dev build-essential

#Copy the current folder . into the pat /app in the image
COPY . /app

#Set the working directory to /app
WORKDIR /app

#Install the python dependencies in requirements.txt
RUN pip install -r requirements.txt

#Expose port 5005
EXPOSE 5005

#Configures a container to run as an executable
#ENTRYPOINT ["python"]

#Set the default command for the container to python app.py
CMD ["python","app.py"]
