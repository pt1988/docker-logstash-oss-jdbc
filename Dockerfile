FROM docker.io/opensearchproject/logstash-oss-with-opensearch-output-plugin:8.9.0
RUN /usr/share/logstash/bin/logstash-plugin install logstash-output-jdbc
RUN mkdir -p /opt/logstash/vendor/jar/jdbc/
COPY vendor/jar/jdbc/jdbc.jar /opt/logstash/vendor/jar/jdbc/
