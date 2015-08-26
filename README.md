# docker-howie

Docker image for [howie].

This image is also on [Docker Hub].

## Getting the image

You have two options to get the image:

1. Build it yourself with `make build`.
2. Download it via `docker pull ypid/howie` ([automated build][Docker Hub])

## Testing

To test it just run `make howie-bash` and enter `./runme.py -v`.

## Usage

* Download the configuration from: https://raw.githubusercontent.com/linzhp/Howie/d3619895b3a23f26d6c78014498946e22a0f9ccb/howie.ini and save it to /etc/howie/howie.ini

* Change the configuration file.

* `make run`

# Alternatives

* [Program-O](https://github.com/ypid/docker-program-o)

# Bugs
I could not get the Jabber Frontend to work.

[howie]: https://github.com/ypid/Howie
[Docker Hub]: https://registry.hub.docker.com/u/ypid/howie/
