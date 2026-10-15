.PHONY: help setup dev test build deploy clean

help:
	@echo "Available commands:"
	@echo "  make setup        - Install dependencies"
	@echo "  make dev          - Start development servers"
	@echo "  make test         - Run tests"
	@echo "  make build        - Build for production"
	@echo "  make deploy       - Deploy to AWS (requires approval)"
	@echo "  make clean        - Clean build artifacts"

setup:
	cd backend && npm install
	cd frontend && npm install

dev:
	@echo "Starting backend and frontend..."
	cd backend && npm run dev &
	cd frontend && npm run dev

test:
	cd backend && npm run test
	cd frontend && npm run test

build:
	cd backend && npm run build
	cd frontend && npm run build

deploy:
	@echo "Use GitHub Actions for deployments:"
	@echo "  1. Push to feature branch"
	@echo "  2. Create PR (CI runs automatically)"
	@echo "  3. Merge to main"
	@echo "  4. Go to GitHub Actions tab"
	@echo "  5. Click 'Deploy to Prod' workflow"
	@echo "  6. Click 'Run workflow'"

clean:
	rm -rf backend/dist backend/coverage frontend/dist frontend/coverage
	rm -rf terraform/.terraform terraform/*.tfstate*
