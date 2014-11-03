# try-dat

Try dat using docker

## Installation

```
docker pull pkfafei/try-samtools
```

## Usage

Simply run the image

```
docker run -it pkafei/try-samtools
```

## Use with docker-browser-server

You can also use this image with [adventure-time-samtools](https://github.com/pkafei/samtools-adventure-time)

```
npm install -g docker-browser-server
docker-browser-server pkafei/try-samtools # and then set adventure-time to point to localhost:8080
```

## License

MIT
