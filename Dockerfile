FROM linuxserver/webtop:ubuntu-mate

RUN apt update && apt install -y xonsh tilix aria2 wget


RUN wget https://REMnux.org/remnux-cli && chmod +x remnux-cli &&sudo ./remnux-cli install --mode=addon --user=abc


EXPOSE 3000
