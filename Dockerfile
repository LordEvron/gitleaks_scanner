FROM golang:alpine
MAINTAINER lordevron;

# Install prerequisites
RUN apk update && apk add curl git make

RUN git clone https://github.com/gitleaks/gitleaks.git
WORKDIR /go/gitleaks

RUN make build

RUN ln -s /go/gitleaks/gitleaks /bin/gitleaks

# Run app.py when the container launches
CMD ["gitleaks"]