# Suite Spot Finder

[![NPM](https://img.shields.io/npm/l/react)](https://github.com/JoelMaciel/Product-Catalog/blob/readm/LICENCE)


## About the Project

**Suite Spot Finder** is a comprehensive system designed to manage reservations for hotels and inns. This platform provides an intuitive interface for guests to search and book rooms, as well as a powerful management tool for hotel administrators.

> **Note:** The project is under ongoing development. Currently implemented as a monolithic system, there are plans for a potential transition to microservices in the future.

## Technology Stack

- **Core:** Java with Spring Framework
- **Authentication:** Spring Security JWT
- **Data Persistence:** Spring Data JPA with MySQL
- **Database Versioning:** Flyway
- **Documentation & Standards:** OpenAPI, Swagger
- **DevOps:** Docker, CI/CD,
- **Cloud:** AWS (EC2, RDS, ECR)

## Getting Started

### Prerequisites

- Java Development Kit (JDK 21 or higher)
- MySQL Database Server

### Clone the Repository
git clone https://github.com/JoelMaciel/SUITE_SPOT_FINDER.git

### Navigate to the Project Directory
cd  SUITE_SPOT_FINDER


### Build the Project using Maven
./mvnw clean install


### Run the Application
./mvnw spring-boot:run

