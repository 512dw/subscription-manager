# Subscription Manager

## Overview

The Subscription Manager is a web application built with Symfony 7.1 and PHP 8.3 for managing and tracking your subscriptions. It provides features to add, edit, and delete subscriptions, including details such as cost and payment due dates. This application uses Docker for containerization and includes services for MySQL and Redis.

## Features

- **📅 Subscription Management**: Add, edit, view, and delete subscriptions.
- **💰 Cost Tracking**: Record and view the cost of each subscription.
- **📆 Payment Due Date**: Track when each subscription payment is due.
- **🐳 Dockerized Environment**: Run the application in isolated containers using Docker.

## Requirements

- PHP 8.3
- Symfony 6
- Docker
- Docker Compose

## Installation

### 1. Clone the Repository

```bash
git clone https://github.com/yourusername/symfony-subscription-manager.git
cd symfony-subscription-manager
```

### 2. Setup Environment Variables

Create a .env file in the root directory of the project with the following content:

```
MYSQL_ROOT_PASSWORD=
MYSQL_DATABASE=
MYSQL_USER=
MYSQL_PASSWORD=
```

### 3. Build and Start Docker Containers

```bash
docker compose up -d
```


### 4. Create Database Tables

```bash
docker compose exec app php bin/console doctrine:migrations:migrate
```

## TODO

- **Implement User Authentication**
  - [ ] Add user authentication and authorization for managing subscriptions.

- **Add Subscription Notifications**
  - [ ] Implement notifications for upcoming subscription payments.

- **Create a Dashboard**
  - [ ] Develop a dashboard to provide an overview of subscriptions and upcoming payments.

- **Improve UI/UX**
  - [ ] Enhance the user interface and user experience for better usability.

- **Add Tests**
  - [ ] Write automated tests for critical functionality.

- **Documentation**
  - [ ] Improve project documentation, including setup instructions and API details.

- **Handle Edge Cases**
  - [ ] Implement better error handling and validation for edge cases.

- **Deployment Scripts**
  - [ ] Create deployment scripts for staging and production environments.

- **Performance Optimization**
  - [ ] Optimize the application for better performance and scalability.

- **Subscription Management**
  - **Add Subscription**
    - [ ] Create a form to add subscriptions with fields such as subscription name, amount, start date, payment cycle (monthly, yearly, etc.), and category.
    - [ ] Implement form validation (e.g., ensure amount is a positive number, start date is a future date).
    - [ ] Develop backend logic to save subscriptions to the database.
    - [ ] Add unit tests to validate the subscription addition functionality.

  - **Edit Subscription**
    - [ ] Create an edit form with pre-filled data.
    - [ ] Ensure changes are saved correctly to the database.
    - [ ] Update the user interface to reflect updated data.
    - [ ] Add unit tests to validate the subscription editing functionality.

  - **View Subscription**
    - [ ] Create a page or view that shows subscription details (e.g., name, amount, start date, payment cycle).
    - [ ] Allow users to view subscriptions in a list or detailed view.
    - [ ] Implement backend logic to fetch subscription data from the database.
    - [ ] Add unit tests to validate the subscription viewing functionality.

  - **Delete Subscription**
    - [ ] Implement functionality to delete a subscription.
    - [ ] Ensure that deleting a subscription removes it from the database.
    - [ ] Update the user interface to reflect the removal of the subscription.
    - [ ] Add unit tests to validate the subscription deletion functionality.

- [ ] **Cost Tracking**
  - **Record Cost**
    - [ ] Implement functionality to record the cost of each subscription.
    - [ ] Ensure cost data is saved accurately in the database.

  - **View Cost**
    - [ ] Create a view to display the cost of each subscription.
    - [ ] Implement backend logic to retrieve cost data from the database.

- [ ] **Payment Due Date**
  - **Track Due Date**
    - [ ] Implement functionality to track when each subscription payment is due.
    - [ ] Ensure due dates are accurately stored and updated in the database.

  - **Notify on Due Date**
    - [ ] Implement a notification system to alert users of upcoming payments.
    - [ ] Develop logic to check due dates and trigger notifications accordingly.

- [ ] **Dockerized Environment**
  - **Set Up Docker**
    - [ ] Create Dockerfiles for application services.
    - [ ] Develop `docker-compose.yml` to define and run multi-container Docker applications.
    - [ ] Test Docker setup to ensure the application runs correctly in containers.


## Contributing

1. Fork the repository.
2. Create a new branch (git checkout -b feature-branch).
3. Make your changes.
4. Commit your changes (git commit -am 'Add new feature').
5. Push to the branch (git push origin feature-branch).
6. Create a new Pull Request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Contact

For any issues or questions, please open an issue on the GitHub repository.