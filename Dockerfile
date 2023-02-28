FROM python:3.9-slim-buster

LABEL Name="Python Flask Demo App" Version=1.4.2

ARG srcDir=src
WORKDIR /app
COPY $srcDir/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY $srcDir/run.py .
COPY $srcDir/app ./app

EXPOSE 3000

CMD ["gunicorn", "-b", "0.0.0.0:3000", "run:app"]