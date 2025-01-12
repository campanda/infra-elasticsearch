FROM docker.elastic.co/elasticsearch/elasticsearch:7.15.0

RUN bin/elasticsearch-plugin install --batch analysis-icu

COPY ./dictionaries /usr/share/elasticsearch/config/dictionaries
COPY ./hunspell /usr/share/elasticsearch/config/hunspell
