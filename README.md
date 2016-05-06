#kierranm/ngircd
<i>A docker image for running an `ngircd` server in a container</i>

This image is set up to look in `/ngircd` for the `ngircd.conf` and `ngircd.motd`.
 You should mount this directory so that you can edit these files outside of the container.

When this container is first run it will create `ngircd.conf` and `ngircd.motd` file in the mounted directory.

##Installation

To install simply run:
``` bash
  docker run -d --name='ngircd' \
    -v /path/to/ngircd/conf:/ngircd \
    -p 6667:6667 \
    kierranm/ngircd
```
