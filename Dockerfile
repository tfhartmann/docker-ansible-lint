FROM python:2.7
MAINTAINER Tim Hartmann <tfhartmann@gmail.com>

RUN pip install ansible==1.8.4
RUN pip install ansible-lint==2.3.2
RUN mkdir /src
WORKDIR /src
ENTRYPOINT ["/usr/local/bin/ansible-lint"]
CMD [ "-x", "resources", "ci.yml" ]
