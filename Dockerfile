ARG PYTHON_VERSION=3.9.0-alpine3.12

FROM python:${PYTHON_VERSION}

# install basic python utils and bash utils

ARG PANDAS_VERSION=1.1.3

RUN apk add --no-cache libstdc++ && \
    apk add --no-cache --virtual .build-deps g++ && \
    ln -s /usr/include/locale.h /usr/include/xlocale.h && \
    pip3 install pandas==${PANDAS_VERSION} && \
    apk del .build-deps

