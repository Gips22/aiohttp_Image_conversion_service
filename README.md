# Сервис конвертации изображений из формата PNG в JPEG.
___

## Описание
- Пользователь загружает изображение и получает сообщение ***"Image uploaded"***.
- Когда изображение конвертируется, происходит искусственная задержка нескольких секунд.
- После конвертации пользователю передается ссылка на изображение через веб-сокет и пользователь получает сообщение ***"Converted image available at: url"***.
___

> ***Файл, который человек загрузил и сконвертированный файл удаляется в 2х случаях:***

> 1. Когда пользователь его скачал - удаляется сразу.
> 2. Через сутки, если пользователь его не скачивал.

## Техническая реализация
- Фреймворк: Aiohttp
- Хранение данных: Redis
- Брокер сообщений: Redis
- Очередь задач: Celery
- Веб-сокеты: Websocket
- Мониторинг: Flower
- Docker


## Инструкция по запуску проекта с использованием docker-compose:

- Установите Docker и docker-compose на свой компьютер.
- Скачайте или склонируйте репозиторий с проектом: 
> git clone https://github.com/Gips22/Image_conversion_service.git
- Откройте терминал в директории с проектом.
- Чтобы создать и запустить контейнеры введите команду:
> docker-compose up
- Приложение будет доступно по адресу http://localhost:8080 в вашем браузере.
- Мониторинг Celery Flower доступен по адресу http://localhost:5555 в вашем браузере.
- Для остановки и удаления контейнеров запустите команду:
> docker-compose down.


