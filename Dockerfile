FROM ghcr.io/aquasecurity/trivy:0.45.8
COPY entrypoint.sh /
RUN apk --no-cache add bash curl npm
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
