#!/bin/bash
#挂载到容器中的/mnt目录下
docker run -d -P --name vim-python -v /home/python_projects:/root/python_projects penn201500/spf13-vim /usr/bin/vim

#run docker as a vim editor
#docker run -it --entrypoint /usr/bin/vim penn201500/spf13-vim