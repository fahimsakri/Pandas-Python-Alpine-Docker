ARG PYTHON_VERSION=3.7.2-alpine3.8

FROM python:${PYTHON_VERSION}

# install basic python utils and bash utils

RUN apk update && apk upgrade && apk add --no-cache gcc g++ libc-dev musl-dev unixodbc-dev make linux-headers

RUN pip3 install pandas==0.23.1
