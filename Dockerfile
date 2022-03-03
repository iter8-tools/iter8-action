FROM iter8/iter8:0.9.2

RUN apt-get update && apt-get install -y wget

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
