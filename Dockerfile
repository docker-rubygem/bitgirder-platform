FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.1.7

RUN gem install bitgirder-platform --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["ensure-test-db"]
CMD ["--help"]
