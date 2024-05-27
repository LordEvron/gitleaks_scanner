FROM golang:alpine
MAINTAINER lordevron;

# Install prerequisites
RUN apk update && apk add curl git make

RUN git clone https://github.com/gitleaks/gitleaks.git
WORKDIR /go/gitleaks

RUN make build

# Run app.py when the container launches
CMD ["./gitleaks"]