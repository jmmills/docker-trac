FROM ubuntu:latest
MAINTAINER = Jason M. Mills <jmmills@cpan.org>
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install -y pwgen
RUN apt-get install -y git-core
RUN apt-get install -y trac
RUN apt-get install -y trac-git
RUN apt-get install -y trac-accountmanager
RUN apt-get install -y trac-customerfieldadmin

ADD setup_trac_config.sh /.setup_trac_config.sh
ADD setup_trac.sh /.setup_trac.sh

CMD ["/bin/bash", "-l"]
