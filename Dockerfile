FROM python:3.6

#Выполнение команды, создание каталога для приложения
RUN mkdir -p /usr/src/app/

#Рабочий каталог приложения.
WORKDIR /usr/src/app/

#Копирвание файлов из папки разработки в папку контейнера
COPY . /usr/src/app/

#Устанавливаем зависимости из файла
RUN pip install --no-cache-dir -r requirements.txt

#Запуск команд при запуске контейнера
CMD ["python", "app.py"]

#ENTRYPOINT ["python", "app.py"]
