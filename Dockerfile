FROM python:3.6
ENV PYTHONUNBUFFERED 1
RUN mkdir -p /src/
WORKDIR /src

COPY requirements.txt /src/

RUN pip install -U pip
RUN pip install -r requirements.txt

COPY . /src/

RUN pip install -e /src/
