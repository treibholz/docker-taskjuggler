# docker-taskjuggler

[TaskJuggler](http://www.taskjuggler.org) in [Docker](https://www.docker.com/).

Based on [Alpine Linux](https://alpinelinux.org/), so the image is quite small.

## Usage:

```sh
$ ./tj3.sh tj3 yourproject.tjp
```

This image is not meant to run as a server, but locally on your machine or
inside a CI-environment, to compile your project-plan on every commit.
