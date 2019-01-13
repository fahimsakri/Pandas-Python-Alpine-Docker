ARG PYTHON_VERSION=3.7.2-alpine3.8

FROM python:${PYTHON_VERSION}

# install basic python utils and bash utils

ARG PANDAS_VERSION=0.23.4

RUN apk add --no-cache libstdc++ && \
    apk add --no-cache --virtual .build-deps g++ && \
    ln -s /usr/include/locale.h /usr/include/xlocale.h && \
    pip3 install numpy==1.15.4 && \
    pip3 install pandas==${PANDAS_VERSION} && \
    apk del .build-deps

