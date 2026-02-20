# Настройки
set dotenv-load          # Автоматически грузит .env, если есть
#set shell := ["bash", "-c"] # Для Windows: ставит bash, если нужен. Для чистого PowerShell убери эту строку

# Пути
DOCKER_DIR := "infrastructure/docker"
PROJECT_DIR := "."
ENV_FILE := ".env"

# Базовая команда compose
COMPOSE := "docker compose --project-directory {{PROJECT_DIR}} --env-file {{ENV_FILE}}"

# Конфигурации
CORE_CFG := "-f {{DOCKER_DIR}}/docker-compose.core.yml"

# Запуск основных сервисов (Core)
up-core:
    {{COMPOSE}} {{CORE_CFG}} up -d
