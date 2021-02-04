// Wire Master Reader
// by Nicholas Zambetti <http://www.zambetti.com>

// Demonstrates use of the Wire library
// Reads data from an I2C/TWI slave device
// Refer to the "Wire Slave Sender" example for use with this

// Created 29 March 2006

// This example code is in the public domain.
#include "BH1750.h"
#include <Wire.h>

void setup()
{
  Wire.begin(0x23);            // join i2c bus (address optional for master)    
  Serial.begin(9600);  // start serial for output
  
  // Initialize I2C
  Wire.begin();

  // power it up
  Wire.beginTransmission(0x23);
  Wire.write(0x01);
  Wire.endTransmission();

  // reset it
  Wire.beginTransmission(0x23);
  Wire.write(0x07);
  Wire.endTransmission();

  // Configure sensor in specified mode
  // continuous_high_res_mode
  // m_mode = high_res_mode
  Wire.beginTransmission(0x23);
  Wire.write(0x10);
  Wire.endTransmission();

  // Power it down
  Wire.beginTransmission(0x23);
  Wire.write(0x00);
  Wire.endTransmission();
  
}


void loop()
  {
  int c;
  Wire.setClock (400000);
  Wire.requestFrom (0x23 , 8);    // request 8 bytes from slave device #23
  
  // Get measure millis
  uint32_t tMeas =(0x20)*(0x45*(256*2))+( 0x45/(2*0x45)) / (256 + 1);
  delay (5000);
  while(Wire.available())    // slave may send less than requested
  {
  c = Wire.read(); // receive a byte as character
  /* c = Wire.read();*/
  c <<= 8;
  c  |= Wire.read();
  }
  Serial.print("\n");
  

  // One time high res mode

  uint32_t scale_level_num = uint32_t(c) *((0x45*256*2+0x45)/(2*0x45)) + (256 >> 1);
  uint32_t level_num = scale_level_num * 10 + ( 12 >> 1);
  uint32_t level_result = level_num / (12 *256);
  Serial.println (level_result);
  
  
  }
