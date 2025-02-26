
FROM python:3.8

WORKDIR /code

COPY requirements.txt /code/

RUN pip install --no-cache-dir -r requirements.txt

COPY . /code/

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]

