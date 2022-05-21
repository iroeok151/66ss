FROM alpine

ADD kano.sh ./kano.sh

RUN apk update && \
    apk add -f --no-cache ca-certificates wget bash && \
    chmod +x ./kano.sh

CMD ./kano.sh