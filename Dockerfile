# Используем официальный Python образ
FROM python:3.13-slim

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем файлы проекта
COPY ./src /app/

# Устанавливаем зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Порт, который будет открыт
EXPOSE 8000

# Точка входа
CMD ["bash", "entrypoint.sh"]
