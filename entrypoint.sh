#!/bin/bash

# Ожидаем, пока база данных станет доступной
until mysql -h db -u root -pexample -e 'show databases;'; do
  echo "Waiting for database connection..."
  sleep 2
done

# Запуск сервера Django
exec "$@"
