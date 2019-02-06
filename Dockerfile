FROM sameersbn/gitlab:11.7.3

LABEL maintainer="jonathan.e.jarvis@accenture.com"

COPY assets/runtime/ ${GITLAB_RUNTIME_DIR}/
COPY wrapper.sh /sbin/wrapper.sh
RUN chmod 755 /sbin/wrapper.sh

ENTRYPOINT ["/sbin/wrapper.sh"]
CMD ["app:start"]