#!/bin/sh
eval $(gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK=/run/user/1000/keyring/ssh

