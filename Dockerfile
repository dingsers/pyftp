FROM python:2.7.18-alpine3.11

COPY . /app/
WORKDIR /app/
RUN pip install -r requirements.txt
RUN mkdir /ftp_root

EXPOSE 21

ENTRYPOINT python -u entrypoint.py
