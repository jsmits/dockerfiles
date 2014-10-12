FROM base/arch 

MAINTAINER Sander Smits

# overridable environment variables
ENV SC_URL sop://broker.sopcast.com:3912
ENV SC_CHANNEL 123456

# make sure multilib repository can be used
COPY pacman.conf /etc/pacman.conf

# update package list
RUN pacman -Syu --noconfirm

# install sopcast from multilib repository
RUN pacman -S --noconfirm sopcast

# export port 8908
EXPOSE 8908

# create the entrypoint
COPY ./docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]

