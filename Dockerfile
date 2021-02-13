FROM silex/emacs:27.1-ci-cask

RUN apt-get update && apt-get install sqlite3

ADD emacs.d/init.el /root/.emacs.d/
ADD emacs.d/Cask /root/.emacs.d/

WORKDIR /root/.emacs.d
RUN cask install
