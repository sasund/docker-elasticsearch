FROM elasticsearch:1.7.1

RUN plugin -i mobz/elasticsearch-head

EXPOSE 9200 9300