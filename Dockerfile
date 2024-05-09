ARG LLAMA_VERSION

FROM alpine:latest

RUN apk update
RUN apk add curl
RUN curl -fsSL https://ollama.com/install.sh | sh

COPY startup.sh /startup.sh
RUN chmod +x /startup.sh

EXPOSE   11434

CMD ["/startup.sh"]