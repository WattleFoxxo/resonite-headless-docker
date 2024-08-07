ARG arch arm64

FROM debian

WORKDIR /app

RUN apt update
RUN apt install -y curl wget p7zip unzip libicu-dev rsync

RUN mkdir depotdl

RUN wget "https://github.com/SteamRE/DepotDownloader/releases/download/DepotDownloader_2.6.0/DepotDownloader-linux-arm64.zip" --output-document depotdl.zip
RUN unzip depotdl.zip -d depotdl
RUN chmod a+rwx depotdl -R

COPY update.sh .
RUN chmod a+rx ./update.sh

CMD ["/app/update.sh"]
