import os
import digitalio
import adafruit_max31855

class Temperature_sensor:
    def __init__(self,use_breakout):
        if use_breakout:
            os.environ['BLINKA_FT232H']='1'
        
        import board
        
        spi = board.SPI()

        if use_breakout:
            os.environ.pop('BLINKA_FT232H', None)

        cs_left = digitalio.DigitalInOut(board.D4)
        cs_right = digitalio.DigitalInOut(board.D5)
        self.thermleft = adafruit_max31855.MAX31855(spi, cs_left)
        self.thermright = adafruit_max31855.MAX31855(spi, cs_right)

    def grab_temperature(self):
        return [self.thermleft.temperature, self.thermright.temperature]