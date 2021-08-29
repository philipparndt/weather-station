#!/bin/bash
#docker run --rm -v "${PWD}":/config --device=/dev/ttyUSB0 -it esphome/esphome run weather.yaml
docker run --rm -v "${PWD}":/config -it esphome/esphome run weather.yaml