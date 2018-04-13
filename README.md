# Docker
These are instructions to run multiple static websites on the same host using nginx as a reverse proxy with Docker containers

- Download content folders from the repo (site1.com, site2.com,....etc)
- Create bridged network 
- " docker network create --driver=bridge --subnet=192.168.0.0/16 br0 "
- Run the next command to run the first website inside a container
- " docker run --name site1 --network br0 -v /your-path/to/site1-directory/:/usr/share/nginx/html:ro -d nginx "

Repeat the above command for the next three websites.

- Now download the Dockerfile to build the proxy server.
- Time to build our image " docker build -t proxy . "
- To run the container in the same network to serve the websites, run the next command
- " docker run --name myproxy -p 80:80 --network br0 -d proxy "

Now make your domains point to your server ip in /etc/hosts to test your work.
