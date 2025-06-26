# Official PgAdmin image use karein
FROM dpage/pgadmin4

# PgAdmin runs on port 80 internally
EXPOSE 80

# Optional: Set default environment variables here or use Render Dashboard
ENV PGADMIN_DEFAULT_EMAIL=admin@example.com
ENV PGADMIN_DEFAULT_PASSWORD=admin123
