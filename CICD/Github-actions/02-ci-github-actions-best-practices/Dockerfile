# golang alpine 1.13.5-alpine
FROM golang:1.16.0-alpine AS builder
# Create gustavo user.
RUN adduser -D -g '' gustavo
# Create workspace
WORKDIR /opt/app/
COPY source/go.mod .
# fetch dependancies
RUN go mod download
RUN go mod verify
# copy the source code as the last step
COPY . .
# build the binary
RUN CGO_ENABLED=0 GOOS=linux go build -ldflags="-w -s" -a -installsuffix cgo -o /go/bin/example source/main.go

# build a small image
FROM alpine:3.13.2
LABEL language="golang"
EXPOSE 8080
# import the user and group files from the builder.
COPY --from=builder /etc/passwd /etc/passwd
# copy the static executable
COPY --from=builder /go/bin/example /example
# use an unprivileged user.
USER gustavo
# run app
ENTRYPOINT ["./example"]

