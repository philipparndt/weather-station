#!/bin/bash
#DEVICE=192.168.3.239
#DEVICE=192.168.3.218
DEVICE=192.168.3.213
docker run --rm -v "${PWD}":/config -it esphome/esphome run app.yaml --device ${DEVICE}
cp .esphome/build/weather/.pioenvs/weather/firmware.bin ./firmware.bin
