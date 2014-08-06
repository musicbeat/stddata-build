FROM google/golang
RUN CGO_ENABLED=0 go get -a -ldflags '-s' github.com/musicbeat/stddata
RUN CGO_ENABLED=0 go get -a -ldflags '-s' github.com/musicbeat/stddata-cli
RUN cp /gopath/src/github.com/musicbeat/stddata-build/Dockerfile /gopath
CMD /usr/local/bin/docker build -t musicbeat/stddata-cli gopath
