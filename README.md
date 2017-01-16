# tj3

[TaskJuggler](http://www.taskjuggler.org) locked up in [Docker](https://www.docker.com/).

Based on [Alpine Linux](https://alpinelinux.org/), so the image is quite small.

## Usage:

```
$ ./tj3.sh tj3 yourproject.tjp
```

This image is not meant to run as a server, but locally on your machine or
inside a CI-environment, to compile your project-plan on every commit.

### tj3.sh

[tj3.sh](https://raw.githubusercontent.com/treibholz/docker-taskjuggler/master/tj3.sh) looks like this:

```sh
#!/bin/sh

docker run \
    --rm=true --interactive --tty \
    --net="none" \
    -v `pwd`:/tj3 \
    -u `id -u` \
    treibholz/tj3:latest "$@"
```

