FROM dpage/pgadmin4:8.6

ENV PGADMIN_DEFAULT_EMAIL=admin@rudrra.com
ENV PGADMIN_DEFAULT_PASSWORD=admin123

# Render runs as non-root, so change ownership to avoid permission issues
RUN chown -R 1000:1000 /pgadmin4 /var/lib/pgadmin

EXPOSE 80

USER 1000

CMD ["/usr/local/bin/python3", "/pgadmin4/pgAdmin4.py"]
