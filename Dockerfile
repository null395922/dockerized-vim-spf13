#FROM docker.io/ubuntu:latest
FROM docker.io/ubuntu:16.04
MAINTAINER penn <penn201500@gmail.com>

# Ensure UTF-8 locale
#COPY locale /etc/default/locale
RUN locale-gen zh_CN.UTF-8 &&\
  DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales
RUN locale-gen zh_CN.UTF-8  
ENV LANG zh_CN.UTF-8  
ENV LANGUAGE zh_CN:zh  
ENV LC_ALL zh_CN.UTF-8 

# Install vim and add configuration file
ADD ./ubuntu_install_vim.sh /usr/local
ADD ./vimrc /root/.vimrc.local

# Make sure execute shell script with /bin/bash instead of /bin/sh
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
RUN /usr/local/ubuntu_install_vim.sh

# Add some plugins
# ADD ./.vimrc.bundles.local /root/.vimrc.bundles.local
# RUN vim +BundleInstall! +BundleClean +qall
# ENTRYPOINT ["vim"]
