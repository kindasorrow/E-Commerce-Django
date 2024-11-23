# Используем официальный Python образ
FROM python:3.13-slim

# Устанавливаем рабочую директорию
WORKDIR /usr/src/app

# Копируем файл requirements.txt внутрь контейнера
COPY requirements.txt ./
# Устанавливаем зависимости, описанные в файле requirements.txt
RUN pip install -r requirements.txt

EXPOSE 8000
CMD ["bash", "entrypoint.sh"]
