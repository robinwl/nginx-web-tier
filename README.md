# web-tier

Lightweight httpd container that can be used when testing load balancing and failover scenarios.

This image is based on the [official build of nginx](https://registry.hub.docker.com/_/nginx/).

## Endpoints

* `/index.html` will return a simple page with the hostname of the container and an optional message.
* `/ping.html` will return "pong" in plain text.

# How to use

## run attached (follow logs)
	docker run -i -t --rm -p 80:80 sark/web-tier:latest
	docker run -i -t --rm -p 81:80 sark/web-tier:latest
	docker run -i -t --rm -p 82:80 sark/web-tier:latest
	
## run detached (in background)
	docker run -d -p 80:80 sark/web-tier:latest
	docker run -d -p 81:80 sark/web-tier:latest
	docker run -d -p 83:80 sark/web-tier:latest

## custom message (set the environment variable msg)
	docker run -i -t --rm -e "msg=This message will also be visible on index.html" -p 80:80 sark/web-tier:latest

License
----
MIT
