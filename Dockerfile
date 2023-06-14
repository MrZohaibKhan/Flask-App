FROM ubuntu
RUN apt update && apt install -y python3 python3-pip curl
RUN mkdir /app
COPY . /app
WORKDIR /app
RUN pip3 install -r requirements.txt
CMD ["python3", "app.py"]