ARG GOLANG_VERSION="1.21.5"

FROM golang:$GOLANG_VERSION-alpine as builder
RUN apk --no-cache add tzdata
WORKDIR /go/src/github.com/d3vilh/socks5-server
COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -ldflags '-s' -o ./socks5

FROM gcr.io/distroless/static:nonroot
COPY --from=builder /go/src/github.com/d3vilh/socks5-server/socks5 /
ENTRYPOINT ["/socks5"]
