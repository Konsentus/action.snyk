FROM snyk/snyk:python-3.12

ADD entrypoint.sh /entrypoint.sh


RUN apt-get update && \
    apt-get install -y npm nodejs jq

RUN npm install snyk-to-html -g

ENTRYPOINT ["/entrypoint.sh"]
