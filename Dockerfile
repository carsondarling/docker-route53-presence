FROM stackbrew/ubuntu:14.04
MAINTAINER Carson Darling "carsondarling@gmail.com"

RUN apt-get update -qq
RUN apt-get install -y python-boto python-requests

ADD bin/route53-presence /bin/route53-presence

ENTRYPOINT ["/bin/route53-presence"]
CMD ["-h"]
