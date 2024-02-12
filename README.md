# Inception

![Docker Logo](https://www.docker.com/sites/default/files/d8/2019-07/horizontal-logo-monochromatic-white.png)

---

## Overview

This project focuses on setting up a small-scale infrastructure using Docker containers and Docker Compose. The infrastructure includes essential services like NGINX, WordPress with php-fpm, and MariaDB. The goal is to adhere to specific guidelines and requirements outlined in the project subject while ensuring the robustness and security of the setup.

---

## Features

- Set up essential services using Docker containers.
- Write Dockerfiles for each service.
- Ensure containers restart in case of failure.
- Configure NGINX as the entry point using TLSv1.2 or TLSv1.3.
- Configure WordPress database with specific user requirements.
- Access volumes in the host machine's `/home/login/data` folder.
- Adhere to best practices and guidelines outlined in the project subject.

---

## Installation Instructions

To install and set up the project on your local machine, follow these steps:

1. Clone the repository to your local machine.
2. Navigate to the project directory.
3. Customize environment variables in the `.env` file.
4. Run `make` to build Docker images and set up the infrastructure.
5. Access services through NGINX via port 443.

---

## Usage

Once the project is set up, you can perform the following actions:

- Access NGINX via port 443 to interact with the infrastructure.
- Manage WordPress website through php-fpm and MariaDB containers.
- Customize configurations and settings as per your requirements.

---

Feel free to contribute, suggest improvements, or report issues by creating a pull request or opening an issue. Your feedback is highly appreciated!

--- 