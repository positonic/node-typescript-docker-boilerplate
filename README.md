# Node.js TypeScript Docker Boilerplate

A production-ready boilerplate for Node.js applications with TypeScript, Docker, PostgreSQL, and Redis.

## Features

- **Node.js 22 LTS** with TypeScript
- **Docker & Docker Compose** for containerization
- **PostgreSQL 15** database with health checks
- **Redis 7** for caching/queues
- **Express.js** web framework
- **Complete dev tooling** (ESLint, Prettier, Jest, Husky)
- **Hot reloading** in development
- **Production-ready** configuration

## Quick Start

### Prerequisites
- Docker Desktop
- Node.js 22+ (for local development)

### Development Setup

1. **Clone the repository**
   ```bash
   git clone <your-repo-url>
   cd node-typescript-docker-boilerplate
   ```

2. **Start with Docker** (recommended)
   ```bash
   docker-compose up -d
   ```

3. **Or run locally**
   ```bash
   npm install
   npm run dev
   ```

### Project Structure

```
├── src/                 # Source code
├── tests/              # Test files
├── Dockerfile          # Docker image definition
├── docker-compose.yml  # Multi-service orchestration
├── .dockerignore       # Docker ignore patterns
├── tsconfig.json       # TypeScript configuration
└── package.json        # Dependencies and scripts
```

## Available Scripts

### Development
- `npm run dev` - Start development server with hot reload
- `npm run build` - Build TypeScript to JavaScript
- `npm run start` - Start production server

### Testing
- `npm test` - Run test suite
- `npm run test:watch` - Run tests in watch mode
- `npm run test:coverage` - Run tests with coverage

### Code Quality
- `npm run lint` - Run ESLint
- `npm run lint:fix` - Fix linting issues
- `npm run typecheck` - Run TypeScript type checking
- `npm run format` - Format code with Prettier

### Database
- `npm run db:migrate` - Run database migrations
- `npm run db:rollback` - Rollback migrations
- `npm run db:seed` - Seed database
- `npm run db:reset` - Reset database

### Docker
- `npm run docker:build` - Build Docker image
- `npm run docker:run` - Start with docker-compose
- `npm run docker:down` - Stop docker-compose

## Docker Services

- **app**: Node.js application (port 3000)
- **db**: PostgreSQL database (port 5432)
- **redis**: Redis cache (port 6379)
- **pgadmin**: Database management UI (port 8080) - optional
- **redis-commander**: Redis management UI (port 8081) - optional

## Environment Variables

Create a `.env` file:

```env
NODE_ENV=development
PORT=3000
DATABASE_URL=postgresql://username:password@localhost:5432/database
REDIS_URL=redis://localhost:6379
JWT_SECRET=your-secret-key
```

## Docker Commands

### Basic Usage
```bash
# Start all services
docker-compose up -d

# View logs
docker-compose logs -f app

# Stop services
docker-compose down

# Rebuild and start
docker-compose up --build
```

### Management Tools
```bash
# Start with management UIs
docker-compose --profile tools up -d

# Access pgAdmin: http://localhost:8080
# Access Redis Commander: http://localhost:8081
```

## Production Deployment

1. **Build production image**
   ```bash
   docker build -t your-app:latest .
   ```

2. **Push to registry**
   ```bash
   docker push your-app:latest
   ```

3. **Deploy with production compose**
   ```bash
   docker-compose -f docker-compose.prod.yml up -d
   ```

## Customization

1. **Update package.json** - Change name, description, author
2. **Modify docker-compose.yml** - Adjust service configurations
3. **Configure database** - Update PostgreSQL settings
4. **Add your code** - Start building in `src/`

## License

MIT License - feel free to use this boilerplate for your projects.

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests if applicable
5. Submit a pull request

---

**Happy coding! 🚀**