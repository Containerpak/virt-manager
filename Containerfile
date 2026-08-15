FROM ghcr.io/containerpak/gtk3:main

LABEL org.opencontainers.image.source="https://github.com/Containerpak/virt-manager"

RUN apt-get update && \
    apt-get install -y --no-install-recommends virt-manager && \
    cpak-clean-junk

COPY virt-manager.desktop /usr/share/applications/virt-manager.desktop
COPY icon.png /usr/share/icons/hicolor/128x128/apps/virt-manager.png

