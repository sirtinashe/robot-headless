FROM nevmerzhitsky/headless-metatrader4:latest

ADD mt4.tar.bz2 $MT4DIR

EXPOSE 8080



