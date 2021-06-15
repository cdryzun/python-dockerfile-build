FROM python:2.7
ENV PORT 8080
COPY . /app
WORKDIR /app
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE $PORT
CMD gunicorn -b :$PORT -c gunicorn.conf.py main:app
