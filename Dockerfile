FROM ubuntu:14.04

MAINTAINER Tim Habermaas

RUN (apt-get -qq update && apt-get -qqy install curl unzip)
RUN (mkdir /home/wca-data && cd /home/wca-data)
WORKDIR /home/wca-data
ADD download_csv_export.sh /home/wca-data/download_csv_export.sh
RUN ./download_csv_export.sh
VOLUME ["/home/wca-data"]
