# Use phusion/baseimage as base image. To make your builds reproducible, make
# sure you lock down to a specific version, not to `latest`!
# See https://github.com/phusion/baseimage-docker/blob/master/Changelog.md for
# a list of version numbers.
FROM phusion/baseimage:0.9.19

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]

# ...put your own build instructions here...

RUN apt-get update && DEBIAN_FRONTEND=noninteractive && apt-get install -y \
	  wget
      libpython2.7 \
      python-setuptools \
      python-m2crypto \
      python-apsw \
      python-libxslt1
	  
RUN wget http://dl.acestream.org/linux/acestream_3.1.16_ubuntu_16.04_x86_64.tar.gz && \
    tar -zxvf acestream_3.1.16_ubuntu_16.04_x86_64.tar.gz && \
    mv acestream_3.1.16_ubuntu_16.04_x86_64 /opt/acestream

RUN mkdir -p /etc/my_init.d
ADD acestream.sh /etc/my_init.d/acestream.sh

EXPOSE 6878

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*