FROM busybox:latest

LABEL "com.github.actions.name"="Wait"
LABEL "com.github.actions.description"=""
LABEL "com.github.actions.icon"=""
LABEL "com.github.actions.color"=""

LABEL version="0.1.0"
LABEL repository="https://github.com/jakejarvis/wait-action"
LABEL homepage="https://jarv.is/"
LABEL maintainer="Jake Jarvis <jake@jarv.is>"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
