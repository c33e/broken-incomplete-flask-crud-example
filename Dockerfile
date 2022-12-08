FROM python:3.8-alpine
COPY ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN apt update && apt -y install libmysqlclient-dev
RUN apt -y install python-pip
RUN pip3 install -r requirements.txt
COPY . /app
ENTRYPOINT [ "python" ]
CMD ["main.py"]
