#!/bin/bash
set -e
VERSION="2024.8.1"
PLATFORM="linux/aarch64"

sops -d secrets.enc.yaml > secrets.yaml

docker run --platform "$PLATFORM" --rm -v "${PWD}":/config -it "esphome/esphome:$VERSION" compile app.yaml
cp .esphome/build/weather-station-esp32/.pioenvs/weather-station-esp32/firmware.bin ./weather_firmware.bin
