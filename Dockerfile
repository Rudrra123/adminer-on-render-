FROM dpage/pgadmin4:latest

ENV PGADMIN_DEFAULT_EMAIL=admin@rudrra.com
ENV PGADMIN_DEFAULT_PASSWORD=admin123

EXPOSE 80

CMD ["/entrypoint.sh"]
