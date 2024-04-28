#!/bin/bash
docker run --rm -v "${PWD}":/config -it esphome/esphome compile app.yaml
cp .esphome/build/weather_station_esp32/.pioenvs/weather_station_esp32/firmware.bin ./weather_firmware.bin