# E-commerce Project

🚀 This is a Django-based e-commerce project, ready to be deployed using Docker. Below you'll find instructions on how to get it up and running on your local machine.

## 🛠️ Prerequisites

Make sure you have the following tools installed:

- [Docker](https://www.docker.com/get-started) (for containerization)
- [Docker Compose](https://docs.docker.com/compose/install/) (to manage multi-container applications)

## 📥 Clone the repository

First, clone the repository to your local machine:

```
git clone https://github.com/yourusername/ecommerce_project.git
cd ecommerce_project
```

## ⚙️ Setup .env file

Create a `.env` file in the root directory using the provided `.env.example` as a template:

```
cp .env.example .env
```

Edit the `.env` file to match your database settings.

## 🐳 Build and Run with Docker Compose

To build and run the project, simply use Docker Compose. This will set up the necessary services (Django and MySQL):

```
docker-compose up --build
```

This will:

- Build the Docker images
- Start the web server and MySQL database
- Run the Django app on `http://localhost:8000`

## 🛠️ Apply Migrations

Once the containers are up, you'll need to apply the migrations for the database:

```
docker-compose exec web python manage.py migrate
```

## 🔧 Access Django Admin

After running the migrations, you can access the Django admin panel at:

http://localhost:8000/admin

Use the superuser credentials you set up during Django project creation.

## 🚀 Running the Application

To start the application locally, run the following:

```
docker-compose up -d
```

The application will be available at `http://localhost:8000`.

## 🔑 Stopping the Containers

To stop the containers, run:

```
docker-compose down
```

This will stop the running services but will not remove the volumes, so you won't lose your data.

## 📜 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.