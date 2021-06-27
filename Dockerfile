FROM linuxserver/webtop:ubuntu-mate

RUN apt update && apt install -y xonsh tilix aria2 wget


RUN wget https://REMnux.org/remnux-cli && chmod +x remnux-cli &&sudo ./remnux-cli install --mode=addon --user=abc

RUN echo "[/]\nuse-custom-commandline=true" | dconf load /com/gexperts/Tilix/
RUN echo "[/]\ncustom-command='/bin/xonsh'" | dconf load /com/gexperts/Tilix/

EXPOSE 3000
