FROM python:3-alpine3.15
WORKDIR /app
COPY . /app
RUN apk update && apk add --no-cache build-base libffi-dev gfortran
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
EXPOSE 5000
CMD python ./app.py
