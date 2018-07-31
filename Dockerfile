FROM amazonlinux:2

MAINTAINER tunanosuke

RUN yum install -y zip unzip which

# sdkman
RUN curl -s "https://get.sdkman.io" | bash
RUN [[ -s "/root/.sdkman/bin/sdkman-init.sh" ]] && source "/root/.sdkman/bin/sdkman-init.sh"

