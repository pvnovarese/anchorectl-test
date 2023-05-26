# Dockerfile for anchorectl demonstration

# use alpine:latest for a smaller image, but it often won't have any published CVEs
FROM registry.access.redhat.com/ubi9-minimal:latest
LABEL maintainer="pvn@novarese.net"
LABEL name="anchorectl-test"

USER root 
ENTRYPOINT /bin/false
