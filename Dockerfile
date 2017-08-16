FROM node:6

MAINTAINER calvintam236 <calvintam236@users.noreply.github.com>
LABEL description="StorjShare in Docker. Supports HDD mining."

RUN npm install --global storjshare-daemon \
    && npm cache clean

CMD ["storjshare", "daemon", "--foreground"]
ENTRYPOINT ["storjshare"]
