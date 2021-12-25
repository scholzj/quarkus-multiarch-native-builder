FROM ghcr.io/graalvm/graalvm-ce:21

LABEL org.opencontainers.image.source="https://github.com/scholzj/quarkus-multiarch-native-builder" \
      org.opencontainers.image.summary="Multi-arch image for Quarkus native build" \
      org.opencontainers.image.description="Multi-arch image for Quarkus native build"

RUN gu install native-image

WORKDIR /project

VOLUME ["/project"]

ENTRYPOINT ["native-image"] 