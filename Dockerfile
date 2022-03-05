FROM alpine:latest

#apk is the package manager for alpine
RUN apk upgrade --no-cache \
  && apk add --no-cache \
    musl \
    build-base \
    python3 \
    python3-dev \
    postgresql-dev \
    bash \
    git \
    py3-pip\
  && pip3 install --no-cache-dir --upgrade pip \
  && rm -rf /var/cache/* \
  && rm -rf /root/.cache/*

#this is similar to the cd command
WORKDIR /app

#copy everything in current directory to the app directory
COPY . /app

#now install all dependencies/modules listed in the requirements.txt
RUN pip3 --no-cache-dir install -r requirements.txt

#This is the port inside the docker container that we need to expose, that is what port our app is running on
EXPOSE 5000

#this makes the container executable, so we will be running python 3 when this container is created/started
ENTRYPOINT [ "python3" ]
#and we pass app.py as an argument to the above since that's what we want to run
CMD [ "app.py" ]


