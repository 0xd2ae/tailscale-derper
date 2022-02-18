FROM golang:bullseye
RUN go install tailscale.com/cmd/derper@main
CMD /go/bin/derper --hostname=$HOSTNAME --certmode=letsencrypt --a=:443 --stun
