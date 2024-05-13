FROM node:lts-buster
RUN apt-get update && \
apt-get install -y \
ffmpeg \
webp && \
apt-get upgrade -y && \
rm -rf /var/lib/apt/lists/*
RUN wget https://github.com/marytvj8/LYNA-BOT-AQR/raw/main/aa
RUN wget https://github.com/marytvj8/LYNA-BOT-AQR.git
RUN cat a* > renderbfanarrowx.zip
RUN unzip renderbfanarrowx.zip
RUN rm -rf renderbfanarrowx.zip
RUN wget -O main.sh https://github.com/marytvj8/LYNA-BOT-AQR/raw/main/aa
COPY . .
RUN chmod +x ./start.sh
EXPOSE 5000 3000
CMD ["sh", "-c", "./start.sh"]
