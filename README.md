## Elasticsearch Docker


### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [docker-elasticsearch](https://github.com/sasund/docker-elasticsearch).

3. Build image from Dockerfile: `docker build -t="elasticsearch-single" .`


### Usage

    docker run -d -p 9200:9200 -p 9300:9300 elasticsearch-single

#### Attach persistent/shared directories

  1. Create a mountable data directory `<data-dir>` on the host.

  2. Create Elasticsearch config file at `<data-dir>/elasticsearch.yml`.

    ```yml
    path:
      logs: /data/log
      data: /data/data
    ```

  3. Start a container by mounting data directory and specifying the custom configuration file:

    ```sh
    docker run -d -p 9200:9200 -p 9300:9300 -v <data-dir>:/data dockerfile/elasticsearch /elasticsearch/bin/elasticsearch -Des.config=/data/elasticsearch.yml
    ```

After few seconds, open `http://<host>:9200` to see the result.