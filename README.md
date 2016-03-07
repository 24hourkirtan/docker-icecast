# Icecast in Docker 
[![](http://dockeri.co/image/kirtan/icecast)](https://hub.docker.com/r/kirtan/icecast/)

This container is supposed to be compatible with Liquidsoap. A Liquidsoap container is currently in development.

## Run
    docker run -p 8000:8000 kirtan/icecast

You should then be able to access the Icecast2 Status page at `localhost:8000` if you're developing directly on Linux or at `docker.machine.ip:8000` (or whichever host name you specified in your hosts file) if you're developing on Windows or Mac. You can find out your docker machine IP address with

    docker-machine ip

It's currently not yet possible to pass custom credentials to `docker run`, but once the Liquidsoap container is ready and both components work together properly, we will work on that, too.

Icecast2 host: localhost
Icecast2 source password: kirtan
Icecast2 relay password: kirtan
Icecast2 administration password: kirtan

## Credits
As we're new to docker we took inspiration from moul's Icecast Docker file https://github.com/moul/docker-icecast, but as he's building from the official `sources.list`, you will end up with Icecast 2.3 instead of the latest 2.4. 

## License
GNU GENERAL PUBLIC LICENSE https://github.com/24hourkirtan/docker-icecast/blob/master/LICENSE
