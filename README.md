# Flask DevOps Project

A production-ready Flask REST API containerized with Docker and deployed to Kubernetes on AWS EKS via a fully automated CI/CD pipeline using GitHub Actions.

## Tech Stack

| Tool | Purpose |
|------|---------|
| Python / Flask | REST API |
| Docker | Containerization |
| Kubernetes | Container orchestration |
| GitHub Actions | CI/CD pipeline |
| AWS ECR | Docker image registry |
| AWS EKS | Managed Kubernetes cluster |

## Project Structure

```
flask-devops-project/
├── app/
│   └── app.py
├── k8s/
│   ├── deployment.yaml
│   └── service.yaml
├── tests/
│   └── test_app.py
├── .github/
│   └── workflows/
│       └── ci-cd.yml
├── Dockerfile
├── docker-compose.yml
├── requirements.txt
└── README.md
```

## API Endpoints

| Endpoint | Method | Response |
|----------|--------|----------|
| `/` | GET | `{"message": "DevOps project is live!", "status": "healthy"}` |
| `/health` | GET | `{"status": "ok"}` |

## Run Locally

### With Python
```bash
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
python app/app.py
```

### With Docker
```bash
docker build -t flask-devops-project:v1 .
docker run -p 5000:5000 flask-devops-project:v1
```

### With Docker Compose
```bash
docker compose up
```

## Run Tests
```bash
pytest tests/ -v
```

## CI/CD Pipeline

Every push to `main` triggers:
1. Run pytest
2. Build Docker image
3. Push to AWS ECR
4. Deploy to AWS EKS

## Author

Manishthakur2
