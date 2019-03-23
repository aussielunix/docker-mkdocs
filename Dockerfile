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
      pygments \
      mkdocs \
      mkdocs-alabaster \
      mkdocs-basic-theme \
      mkdocs-biojulia \
      mkdocs-boost \
      mkdocs-bootstrap \
      mkdocs-bootstrap4 \
      mkdocs-bootstrap386 \
      mkdocs-bootswatch \
      mkdocs-cinder \
      mkdocs-cluster \
      mkdocs-inspired \
      mkdocs-jinks \
      mkdocs-juice \
      mkdocs-jwplayer \
      mkdocs-material \
      mkdocs-material-components \
      mkdocs-moonstone \
      mkdocs-nature \
      mkdocs-pitch-dark \
      mkdocs-ponylang \
      mkdocs-psinder \
      mkdocs-rtd-dropdown \
      mkdocs-safe-text-plugin \
      mkdocs-snippet-plugin \
      mkdocs-tamerdocs \
      mkdocs-unidata \
      mkdocs-windmill \
      mkdocs-windmill-dark \
      mkdocs-windmillex ; \
      echo 'gem: --no-document' >> /etc/gemrc; \
      gem install html-proofer; \
      apk del build-base && \
      rm -rf /tmp/* /var/tmp/* /var/cache/apk/* /var/cache/distfiles/*

WORKDIR /workdir
