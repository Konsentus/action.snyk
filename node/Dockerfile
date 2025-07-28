FROM snyk/snyk:node-22

ADD entrypoint.sh /entrypoint.sh

RUN apt-get update && \
    apt-get install -y jq

RUN npm install snyk-to-html -g

ENTRYPOINT ["/entrypoint.sh"]
