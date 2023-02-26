# Container image that runs your code
FROM alpine:3.10
USER 0
# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x entrypoint.sh
RUN mkdir build
RUN echo "From Docker Image" run.txt
# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]

