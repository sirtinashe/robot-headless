FROM nevmerzhitsky/headless-metatrader4:latest

RUN curl --unix-socket /var/run/docker.sock http://localhost/version



