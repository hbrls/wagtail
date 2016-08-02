# http://github.com/hbrls/docker-django-app
FROM python:3.5.2-slim

ENV DEBIAN_FRONTEND=noninteractive

COPY requirements.txt /
COPY uwsgi.yaml /

RUN \
  apt-get update && \
  apt-get install -y build-essential python-dev curl locales && \
  apt-get install -y libmysqlclient-dev && \
  echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen  && \
  echo "zh_CN.UTF-8 UTF-8" >> /etc/locale.gen  && \
  locale-gen && \
  dpkg-reconfigure locales && \
  /usr/sbin/update-locale LANG=en_US.UTF-8 && \
  apt-get install -y supervisor && \
  sed -i 's/^\(\[supervisord\]\)$/\1\nnodaemon=true/' /etc/supervisor/supervisord.conf && \
  pip install uwsgi && \
  pip install -r requirements.txt && \
  rm -rf /var/lib/apt/lists/* && \
  mkdir -p /var/app && chown -R www-data:www-data /var/app

ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

WORKDIR /var/app

COPY app.conf /etc/supervisor/conf.d/app.conf

VOLUME ["/var/app", "/var/log/supervisor"]

EXPOSE 3031

CMD ["supervisord", "-c", "/etc/supervisor/supervisord.conf"]
