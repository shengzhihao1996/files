FROM alpine:latest
RUN apk add wget ;wget https://github.com/git-for-windows/git/releases/download/v2.28.0.windows.1/Git-2.28.0-64-bit.exe
