FROM golang:latest

CMD mkdir -p /go/src/github.com/jonnyfiveiq/demo2
COPY . /go/src/github.com/jonnyfiveiq/demo2
WORKDIR /go/src/github.com/jonnyfiveiq/demo2
RUN go get github.com/LK4D4/vndr
RUN vndr
RUN go build -v -i -o demo2 ./cmd
CMD chmod 777 /go/src/github.com/jonnyfiveiq/demo2
CMD /go/src/github.com/jonnyfiveiq/demo2/demo2
#CMD /go/src/github.com/jonnyfiveiq/monitor_namespace
