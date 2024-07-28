FROM python:3.10-alpine3.19

COPY requirements.txt /temp/requirements.txt
COPY soc_site /soc_site
WORKDIR /soc_site
EXPOSE 8000

RUN apk add postgresql-client build-base postgresql-dev
RUN pip3 install -r /temp/requirements.txt
RUN adduser --disabled-password soc-user

USER soc-user

