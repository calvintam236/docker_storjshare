FROM ubuntu:16.04

MAINTAINER calvintam236 <calvintam236@users.noreply.github.com>
LABEL description="StorjShare in Docker. Supports HDD mining."

FROM node:6
RUN npm install --global storjshare-daemon

ENTRYPOINT ["storjshare"]