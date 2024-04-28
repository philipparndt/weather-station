#!/bin/bash
DEVICE=192.168.18.80
docker run --rm -v "${PWD}":/config -it esphome/esphome run app.yaml --device ${DEVICE}
cp .esphome/build/weather/.pioenvs/weather/firmware.bin ./firmware.bin
