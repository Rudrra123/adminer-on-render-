# Official pgAdmin image use karein
FROM dpage/pgadmin4

# Environment variables ko set karna zaroori hai
ENV PGADMIN_DEFAULT_EMAIL=admin@example.com \
    PGADMIN_DEFAULT_PASSWORD=admin

# pgAdmin port (default 80 or 5050 depending on config)
EXPOSE 80
