# define
FROM alpine
LABEL maintainer "bolt@dhampir.no"


# required runtime
RUN set -eux                                                            &&  \
    apk add --no-cache bash ncurses coreutils


# user
RUN set -eux                                                            &&  \
    adduser -D -u 57005 user


# sync
COPY --chown=0:0 shellshock /usr/local/bin/


# run!
ENTRYPOINT ["/usr/local/bin/shellshock"]



# vim: tabstop=4:softtabstop=4:shiftwidth=4:expandtab
