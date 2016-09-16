# osixia/ipify-api

[![Docker Pulls](https://img.shields.io/docker/pulls/osixia/ipify-api.svg)][hub]
[![Docker Stars](https://img.shields.io/docker/stars/osixia/ipify-api.svg)][hub]

[hub]: https://hub.docker.com/r/osixia/ipify-api/

Latest release: 0.1.0 -  [Changelog](CHANGELOG.md) | [Docker Hub](https://hub.docker.com/r/osixia/ipify-api/) 

**A very light weight (3.75mo only) docker image to run ipify-api.**

> ipify-api website : [www.ipify.org/](https://www.ipify.org/)

- [Contributing](#contributing)
- [Quick Start](#quick-start)
- [Changelog](#changelog)

## Contributing

If you find this image useful here's how you can help:

- Send a pull request with your kickass new features and bug fixes
- Help new users with [issues](https://github.com/osixia/docker-ipify-api/issues) they may encounter
- Support the development of this image and star this repo !

## Quick Start
Run OpenLDAP docker image:

	docker run --detach osixia/ipify-api:0.1.0

Now configure a reverse proxy that set the X-Forwarded-For http header that point to this container on port 3000

## Changelog

Please refer to: [CHANGELOG.md](CHANGELOG.md)
