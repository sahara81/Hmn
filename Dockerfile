FROM python:3.10.8-slim-buster

WORKDIR /DQTheFileDonor

# requirements install
COPY requirements.txt .
RUN pip3 install --upgrade pip \
    && pip3 install --no-cache-dir -r requirements.txt

# project files copy
COPY . .

# start bot
CMD ["bash", "start.sh"]
