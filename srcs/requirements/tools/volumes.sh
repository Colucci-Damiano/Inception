#!/bin/bash
if [ ! -d "${HOME}/data" ]; then
        mkdir ${HOME}/data
        mkdir ${HOME}/data/mariadb
        mkdir ${HOME}/data/wordpress
fi

if [ ! -d "${HOME}/data/wordpress" ]; then
	mkdir ${HOME}/data/wordpress
fi

if [ ! -d "${HOME}/data/mariadb" ]; then
	mkdir ${HOME}/data/mariadb
fi
