FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt-get update && apt-get install -y \
    curl \
    gnupg \
    lsb-release \
    python3 \
    python3-pip \
    nginx \
    build-essential \
    libpq-dev \
    wget \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Install pgAdmin
RUN curl https://www.pgadmin.org/static/packages_pgadmin_org.pub | apt-key add - \
  && echo "deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/focal pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list \
  && apt-get update \
  && apt-get install -y pgadmin4-web \
  && rm -rf /var/lib/apt/lists/*

# Configure pgAdmin
ENV PGADMIN_DEFAULT_EMAIL=admin@rudrra.com
ENV PGADMIN_DEFAULT_PASSWORD=admin123

RUN /usr/pgadmin4/bin/setup-web.sh --yes

EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]
