FROM golang:1.19

WORKDIR /usr/src/app

COPY . .
RUN go env -w GO111MODULE=auto
RUN go build -o /usr/local/bin/server .

CMD ["/usr/local/bin/server"]
