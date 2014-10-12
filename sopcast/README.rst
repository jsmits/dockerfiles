Dockerfile for SopCast command-line tool
----------------------------------------


Stream SopCast broadcasts to your favorite media player using a Docker 
container.


To build a Docker image, just do::

    $ sudo docker build <name of the image> .


To stream SopCast channel 123456 to localhost:8908, do::

    $ sudo docker run --env SC_CHANNEL=123456 -p 127.0.0.1:8908:8908 -it 
    <name of the image>


Then, point your media player to http://localhost:8908 and enjoy the broadcast!


Overridable environment variables with their defaults::

    SC_URL: sop://broker.sopcast.com:3912
    SC_CHANNEL: 123456

