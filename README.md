# python-flask-app
A very simple python flask app with Dockerfile to boot

# to build it
sudo docker build -t flaskapp:latest .  

# to run it
docker run -t -d -p 8080:5000 flaskapp
