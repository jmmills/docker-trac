FROM ubuntu:quantal
MAINTAINER = Jason M. Mills <jmmills@cpan.org>
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install -y pwgen
RUN apt-get install -y git-core
RUN apt-get install -y trac
RUN apt-get install -y trac-git
RUN apt-get install -y trac-accountmanager
RUN apt-get install -y trac-customfieldadmin

ADD setup_trac_config.sh /.setup_trac_config.sh
ADD setup_trac.sh /.setup_trac.sh
ADD run.sh /run.sh
ADD trac_logo.png /var/www/trac_logo.png

Add set_trac_user_password.py /usr/local/bin/

EXPOSE 8000
CMD ["/run.sh"]
