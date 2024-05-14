FROM python:3.12.2
ENV PYTHONUNBUFFERED 1
WORKDIR /app
COPY requirements /app/requirements
RUN pip install -r requirements
RUN django-admin startproject app /app/
EXPOSE 8000
CMD python manage.py runserver 0.0.0.0:8000