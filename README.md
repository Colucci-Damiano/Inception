
Project Title: Docker Infrastructure Setup

Overview
This project focuses on setting up a small-scale infrastructure using Docker containers and Docker Compose. The infrastructure includes essential services like NGINX, WordPress with php-fpm, and MariaDB. The goal is to adhere to specific guidelines and requirements outlined in the project subject while ensuring the robustness and security of the setup.

Project Structure
The project follows a structured approach to organization and implementation:

srcs: Contains all configuration files and Docker-related resources.
docker-compose.yml: Defines the services and their configurations.
Makefile: Facilitates the setup and management of the application.
.env: Stores environment variables for easy configuration.
requirements: Directory containing Dockerfiles and configurations for each service.
nginx: NGINX service configurations.
wordpress: WordPress service configurations.
mariadb: MariaDB service configurations.
...: Additional services and configurations.
