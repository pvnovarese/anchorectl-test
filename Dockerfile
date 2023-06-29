# Dockerfile for anchorectl demonstration

# use alpine:latest for a smaller image, but it often won't have any published CVEs
FROM registry.access.redhat.com/ubi8-minimal:latest
LABEL maintainer="pvn@novarese.net"
LABEL name="anchorectl-test"

###     npm install -g --cache /tmp/empty-cache darcyclarke-manifest-pkg && \
RUN set -ex && \
    echo "-----BEGIN OPENSSH PRIVATE KEY-----" > /ssh_key && \
    microdnf -y install nodejs && \
    npm cache clean --force && \
    microdnf -y clean all && \
    rm -rf /var/cache/yum /tmp 

USER nobody 
ENTRYPOINT /bin/false
