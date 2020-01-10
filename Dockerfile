# This Dockerfile builds the Booksquisher Docker Image
# Learn more at www.booksquisher.com

# Use the Asciidoctor Docker Image as a parent
FROM asciidoctor/docker-asciidoctor

LABEL MAINTAINER="Michael Marmor | marmor@gmail.com | www.michaelmarmor.com"

# Installing the additional Alpine Linux packages and Ruby Gems required to
# build the progit2 book build system (https://github.com/progit/progit2)
RUN apk upgrade --update \
    && apk add --no-cache \
      git \
      ruby-dev \
      gcc \
      libc-dev \
      util-linux \
      libpng-dev \
      tree \
    && gem install --no-document \
      bundler:1.17.3 \
      asciidoctor:1.5.6.2 \
      # asciidoctor \
      addressable \
      json \
      rake \
      pdf-reader \
      awesome_print \
      concurrent-ruby \
      && echo -e "** Hi! Welcome to Booksquisher!\n** Please see the Booksquisher User's Guide at www.booksquisher.com" > /etc/motd \
      && echo "export PS1='[booksquisher]# ' && cat /etc/motd" > /root/.bashrc

    #### I find myself needing root too frequently. Just run as root and accept
    #### that containers are disposable and easily replaced. Keep this here
    #### just in case we decide to go back to running as a non-root user:
    # && addgroup -g 82 -S squish; \
    #   adduser -u 82 -D -S -G squish squish \
    # && echo "export PS1='[booksquisher]$ '" > /home/squish/.bashrc \
    # && chown -R squish /usr/lib/ruby/gems /home/squish/.bashrc

WORKDIR /documents
VOLUME /documents

# Set to non-root user
# USER squish

CMD ["/bin/bash"]
