FROM docker.io/library/pypy:3.10-7.3.15

RUN apt-get update \
  && apt-get install -y libxml2-dev libxslt-dev python3-dev \
  && pip install --no-cache-dir parsedmarc \
  && rm -rf /root/.cache/ \
  && rm -rf /var/lib/{apt,dpkg}/

CMD ["parsedmarc"]