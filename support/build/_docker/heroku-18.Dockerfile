FROM heroku/heroku:18-build

WORKDIR /app
ENV WORKSPACE_DIR=/app/support/build
ENV PATH=/app/support/build/_util:$PATH

RUN apt-get update && apt-get install -y python-pip php-dev

COPY requirements.txt /app/requirements.txt

RUN pip install -r /app/requirements.txt

COPY . /app
