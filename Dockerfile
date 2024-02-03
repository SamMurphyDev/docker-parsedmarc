FROM python:3.11-alpine3.16

RUN apk add --update --no-cache libxml2-dev libxslt-dev
RUN apk add --update --no-cache --virtual .build_deps build-base libffi-dev \
  && pip install parsedmarc \
  && apk del .build_deps

CMD ["parsedmarc", "-c", "/parsedmarc.ini", "/input/*", "--debug"]