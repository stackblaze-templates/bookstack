FROM lscr.io/linuxserver/bookstack:25.05

EXPOSE 6875

HEALTHCHECK --interval=30s --timeout=10s --start-period=90s --retries=3 \
  CMD curl -fsSL http://localhost:6875/status || exit 1
