docker pull postgres:latest
docker run --name some-postgres -e POSTGRES_PASSWORD=postgres -d postgres
docker cp ./task_1.sql some-postgres:/docker-entrypoint-initdb.d/task_1.sql
docker exec -u postgres some-postgres psql postgres postgres -f docker-entrypoint-initdb.d/task_1.sql