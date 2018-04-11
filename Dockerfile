FROM python:2-onbuild

#copy requirements.txt file from root of rose into the docker /app directory
COPY . /app

WORKDIR /app

RUN pip install --no-cache-dir -r requirements.txt

#Expose port 5005
EXPOSE 5005

CMD ["python","app.py"]
