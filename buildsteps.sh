# set environment for interacting with the docker host:
export DOCKER_HOST=tcp://192.168.59.104:2375
# note that the docker host runs in a virtual machine. In order to allow
# the virtual machine's host to communicate with the docker container,
# a port forwarding rule is required. Set that rule up in, say, 
# virtual box. Or use vagrant to manage your virtual box docker host vm.
#
# build a container to build the stddata packages:
docker build -t musicbeat/stddata-build github.com/musicbeat/stddata-build

# run the container just built so it builds the stddata packages:
docker run -v /var/run/docker.sock:/var/run/docker.sock -v /usr/local/bin/docker:/usr/local/bin/docker -ti --name stddata-build musicbeat/stddata-build

# don't need the builder container:
docker rm -f stddata-builder
docker rmi musicbeat/stddata-builder

# run the container that has the stddata packages:
docker run -d -p 6060:6060 --name stddata-cli musicbeat/stddata-cli

# demonstrate that it works:
curl localhost:6060/bank?number=121105
