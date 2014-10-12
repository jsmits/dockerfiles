Dockerfile for sopcast command-line tool
----------------------------------------


Stream sopcast broadcasts and show them with your favorite media player.


To build, just do::

    $ sudo docker build <name of the image> .


To stream sopcast channel 123456 to localhost:8908, do::

    $ sudo docker run --env SC_CHANNEL=123456 -p 127.0.0.1:8908:8908 -it 
    <name of the image>

Then point your media player to http://localhost:8908 and watch the stream!


Overridable environment variables with their defaults::

    SC_URL - sop://broker.sopcast.com:3912
    SC_CHANNEL - 123456

