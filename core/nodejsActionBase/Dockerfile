FROM ppc64le/buildpack-deps:trusty-curl

ENV DEBIAN_FRONTEND noninteractive

# Initial update and some basics.
RUN apt-get update && apt-get install -y imagemagick && apt-get install -y unzip

ADD . /nodejsAction
