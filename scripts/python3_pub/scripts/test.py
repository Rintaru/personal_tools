#!/usr/bin/env python
# SPDX-FileCopyrightText: 2021 ladyada for Adafruit Industries
# SPDX-License-Identifier: MIT

import os
os.environ['BLINKA_FT232H']='1'
import time
import board
import digitalio
import adafruit_max31855

spi = board.SPI()
print(board.board_id)
cs_left = digitalio.DigitalInOut(board.D4)
cs_right = digitalio.DigitalInOut(board.D5)
thermleft = adafruit_max31855.MAX31855(spi, cs_left)
thermright = adafruit_max31855.MAX31855(spi, cs_right)
os.environ.pop('BLINKA_FT232H', None)
while True:
    templeft = thermleft.temperature
    tempright = thermright.temperature
    
    print("Temperature: "+format(templeft)+" C, "+ format(tempright)+ "C")
    time.sleep(0.5)