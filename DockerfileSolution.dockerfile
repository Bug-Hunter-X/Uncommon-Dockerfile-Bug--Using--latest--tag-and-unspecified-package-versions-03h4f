FROM ubuntu:22.04
RUN apt-get update && apt-get install -y python3.10 python3.10-pip
COPY requirements.txt .
RUN pip3.10 install -r requirements.txt
COPY . .
CMD ["python3.10", "/app/main.py"]