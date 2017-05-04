FROM scala

# Install docker client
RUN apt-get install -y --force-yes docker.io

COPY build/distributions/invoker.tar ./
RUN tar xf invoker.tar && \
rm -f invoker.tar

EXPOSE 8080
