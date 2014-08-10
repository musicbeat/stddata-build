# [stddata-build](https://github.com/musicbeat/stddata-build)

The [stddata-build](https://github.com/musicbeat/stddata-build) is used to build a [docker](https://www.docker.com) container with the [stddata](https://github.com/musicbeat/stddata) and [stddata-cli](https://github.com/musicbeat/stddata-cli) packages. Constructed from ideas in [this blog post by Adriaan de Jonge](http://blog.xebia.com/2014/07/04/create-the-smallest-possible-docker-container/), it uses docker to

 1. construct a linux server with  [golang](https://golang.org) installed, retrieve the stddata sources from [github](https://github.com), compile them statically linked; and then
 2. construct a linux server from [scratch](https://docs.docker.com/articles/baseimages/) with only the binary for stddata-cli on it.

Small is beautiful.
