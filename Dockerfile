FROM ruby:2.4-alpine

RUN \
      apk update && \
      apk add build-base; \
      apk add \
      bash \
      ca-certificates \
      git \
      libcurl \
      libxml2-dev \
      libxslt-dev \
      openssh \
      python2 \
      python2-dev \
      py-setuptools; \
      easy_install-2.7 pip; \
      pip install \
      mkdocs \
      pygments \
      mkdocs-alabaster \
      mkdocs-bootstrap \
      mkdocs-cinder \
      mkdocs-material \
      mkdocs-nature \
      mkdocs-rtd-dropdown \
      mkdocs-safe-text-plugin; \
      echo 'gem: --no-document' >> /etc/gemrc; \
      gem install html-proofer; \
      apk del build-base && \
      rm -rf /tmp/* /var/tmp/* /var/cache/apk/* /var/cache/distfiles/*

WORKDIR /workdir
