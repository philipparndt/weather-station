#!/bin/bash
docker run --rm -v "${PWD}":/config -it esphome/esphome compile app.yaml
cp .esphome/build/weather/.pioenvs/weather/firmware.bin ./firmware.bin