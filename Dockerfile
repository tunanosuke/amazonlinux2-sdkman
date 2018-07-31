FROM amazonlinux:2

MAINTAINER tunanosuke

RUN yum install -y zip unzip which

ENV SDKMAN_DIR /root/.sdkman

RUN curl -s "https://get.sdkman.io" | bash
RUN set -x \
    && echo "sdkman_auto_answer=true" >> $SDKMAN_DIR/etc/config \
    && echo "sdkman_auto_selfupdate=false" >> $SDKMAN_DIR/etc/config \
    && echo "sdkman_insecure_ssl=true" >> $SDKMAN_DIR/etc/config

RUN [[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"

COPY sdkman.sh /etc/profile.d/
