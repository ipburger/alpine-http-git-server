A lightweight Nginx HTTP Git Server Docker image built on Alpine Linux.

Mount git repos on:
  - /git

Pass env var SERVER_NAME to specify which internal network name the git server will be accesible.

Inspired on:

https://github.com/ynohat/git-http-backend/blob/master/nginx.conf
https://gist.github.com/massar/9399764
