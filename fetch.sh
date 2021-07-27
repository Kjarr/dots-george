#!/bin/bash

for os in /etc/os-release /usr/lib/os-release; do
    [ -f $os ] && . $os && break
done
os=$( echo ${PRETTY_NAME} | tr '[:upper:]' '[:lower:]')

read -r _ _ version _ < /proc/version
kr=${version%%-*}

pa=$(pacman -Q | wc -l)

sh=$(echo $SHELL | sed 's/\/bin\///')

wm=$(echo $XDG_SESSION_DESKTOP)

printf "
  os  -  ${os}
  kr  -  ${kr}
  pa  -  ${pa}
  sh  -  ${sh}
  wm  -  ${wm}

"