aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin 332310016319.dkr.ecr.us-west-2.amazonaws.com
docker build -t docker-airflow-prod .
docker tag docker-airflow-prod:latest 332310016319.dkr.ecr.us-west-2.amazonaws.com/docker-airflow-prod:latest
docker push 332310016319.dkr.ecr.us-west-2.amazonaws.com/docker-airflow-prod:latest
