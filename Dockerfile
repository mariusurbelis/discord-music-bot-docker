FROM ubuntu
RUN apt-get update
RUN apt-get upgrade -y
    
RUN apt-get install build-essential unzip -y \
    software-properties-common \
    git ffmpeg libopus-dev libffi-dev libsodium-dev python3-pip

RUN git clone https://github.com/Just-Some-Bots/MusicBot.git /bot -b master

RUN python3 -m pip install -U pip
RUN python3 -m pip install -U -r /bot/requirements.txt

ENTRYPOINT ["/bot/run.sh"]