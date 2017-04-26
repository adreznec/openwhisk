FROM ppc64le/buildpack-deps:trusty-curl

ENV DEBIAN_FRONTEND noninteractive

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN apt-get update && apt-get install -y software-properties-common wget unzip
RUN add-apt-repository ppa:openjdk-r/ppa
RUN apt-get update && apt-get install -y openjdk-8-jre openjdk-8-jdk
RUN update-alternatives --config java
RUN update-alternatives --config javac

ADD proxy /javaAction

RUN rm -rf /javaAction/.classpath /javaAction/.gitignore /javaAction/.gradle /javaAction/.project /javaAction/.settings /javaAction/Dockerfile /javaAction/build

RUN cd /javaAction; ./gradlew oneJar

RUN rm -rf /javaAction/src

CMD ["java", "-jar", "/javaAction/build/libs/javaAction-all.jar"]
