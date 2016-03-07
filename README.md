# Icecast in Docker 
[![](http://dockeri.co/image/kirtan/icecast)](https://hub.docker.com/r/kirtan/icecast/)

This container is supposed to be compatible with Liquidsoap. A Liquidsoap container is currently in development.

## Run
    docker run -p 8000:8000 kirtan/icecast

## Credits
As we're new to docker we took inspiration from moul's Icecast Docker file https://github.com/moul/docker-icecast, but as he's building from the official sources.list, you will end up with Icecast 2.3 instead of the latest 2.4. 

## License
GNU GENERAL PUBLIC LICENSE https://github.com/24hourkirtan/docker-icecast/blob/master/LICENSE
