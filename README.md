# CastMaster

A web platform for collecting and trading actor/actress cards based on TMDB data.

## Stack

- **Frontend**: React 18 + TypeScript + Vite
- **Backend**: Node.js 18 + Express.js
- **Database**: PostgreSQL 14+
- **Infrastructure**: AWS Lambda + API Gateway + RDS
- **IaC**: Terraform

## Getting Started

### Prerequisites
- Node.js 18+
- PostgreSQL 14+ (local development)
- AWS CLI configured
- Terraform 1.5+

### Local Development

1. Clone repository

```bash
git clone https://github.com/username/castmaster.git
cd castmaster
```

2. Install dependencies

```bash
make setup
```

3. Setup environment

```bash
cp .env.example .env
# Edit .env with your settings
```

4. Start development servers

```bash
make dev
```

5. Open browser

```
http://localhost:5173 (React)
```

## Testing

```bash
make test
```

## Deployment

See [DEPLOYMENT.md](docs/DEPLOYMENT.md)

## API Documentation

See [API.md](docs/API.md)

## Architecture

See [ARCHITECTURE.md](docs/ARCHITECTURE.md)

## License

MIT
