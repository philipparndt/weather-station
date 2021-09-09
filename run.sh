#!/bin/bash
docker run --rm -v "${PWD}":/config -it esphome/esphome run app.yaml