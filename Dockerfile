FROM bitnami/elasticsearch:2.3

# Install plugins.
RUN /elasticsearch/bin/plugin -install elasticsearch/elasticsearch-analysis-phonetic/2.1.0
