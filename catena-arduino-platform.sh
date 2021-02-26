#!/bin/bash

# download arduino-cli from the following link:
# https://downloads.arduino.cc/arduino-cli/arduino-cli_latest_Windows_64bit.zip

# Once downloaded, extract the binary arduino-cli into a directory that is in your PATH.

# exit if any errors encountered
set -e

export OUTPUT=C:\\tmp\\build-catena-platform

# make sure everything is clean
if [[ "$1" = "--clean" ]]; then
    rm -rf "$OUTPUT"
fi

# do a build
arduino-cli compile \
    -b mcci:samd:mcci_catena_4410:\
lorawan_region=us915,\
    --build-path "$OUTPUT" \
    --libraries ../../libraries \
    examples/catena_hello/catena_hello.ino
    
arduino-cli compile \    
    -b mcci:samd:mcci_catena_4420:\
lorawan_region=us915,\
    --build-path "$OUTPUT" \
    --libraries ../../libraries \
    examples/catena_hello/catena_hello.ino
    
arduino-cli compile \      
    -b mcci:samd:mcci_catena_4450:\
lorawan_region = us915,\
    --build-path "$OUTPUT" \
    --libraries ../../libraries \
    examples/catena_hello/catena_hello.ino
  
arduino-cli compile \
    -b mcci:samd:mcci_catena_4460:\
lorawan_region = us915,\
    --build-path "$OUTPUT" \
    --libraries ../../libraries \
    examples/catena_hello/catena_hello.ino
    
arduino-cli compile \
    -b mcci:samd:mcci_catena_4470:\
lorawan_region = us915,\
    --build-path "$OUTPUT" \
    --libraries ../../libraries \
    examples/catena_hello/catena_hello.ino
    
    
    
arduino-cli compile \
    -b mcci:samd:mcci_catena_4470:\
lorawan_region = us915,\
    --build-path "$OUTPUT" \
    --libraries ../../libraries \
    examples/catena_usercommand/catena_usercommand.ino
    
arduino-cli compile \
    -b mcci:samd:mcci_catena_4470:\
lorawan_region = us915,\
    --build-path "$OUTPUT" \
    --libraries ../../libraries \
    examples/catena_fsm/catena_fsm.ino
     
     
     
arduino-cli compile \
    -b mcci:samd:mcci_catena_4450:\
lorawan_region = us915,\
    --build-path "$OUTPUT" \
    --libraries ../../libraries \
    examples/catena_hello_lora/catena_hello_lora.ino
    
arduino-cli compile \
    -b mcci:samd:mcci_catena_4450:\
lorawan_region = eu868,\
    --build-path "$OUTPUT" \
    --libraries ../../libraries \
    examples/catena_hello_lora/catena_hello_lora.ino
    
arduino-cli compile \
    -b mcci:samd:mcci_catena_4450:\
lorawan_region =  au915,\
    --build-path "$OUTPUT" \
    --libraries ../../libraries \
    examples/catena_hello_lora/catena_hello_lora.ino
    
arduino-cli compile \
    -b mcci:samd:mcci_catena_4450:\
lorawan_region =  as923,\
    --build-path "$OUTPUT" \
    --libraries ../../libraries \
    examples/catena_hello_lora/catena_hello_lora.ino
    
arduino-cli compile \
    -b mcci:samd:mcci_catena_4450:\
lorawan_region =  as923jp,\
    --build-path "$OUTPUT" \
    --libraries ../../libraries \
    examples/catena_hello_lora/catena_hello_lora.ino
    
arduino-cli compile \
    -b mcci:samd:mcci_catena_4450:\
lorawan_region =  in866,\
    --build-path "$OUTPUT" \
    --libraries ../../libraries \
    examples/catena_hello_lora/catena_hello_lora.ino
    
    
              
        
        
arduino-cli compile \
    -b mcci:stm32:mcci_catena_4451:\
lorawan_region =  us915,\
    --build-path "$OUTPUT" \
    --libraries ../../libraries \
    examples/catena_hello/catena_hello.ino
    
arduino-cli compile \
    -b mcci:stm32:mcci_catena_4451:\
lorawan_region =  us915,\
    --build-path "$OUTPUT" \
    --libraries ../../libraries \
    examples/catena_hello_lora/catena_hello_lora.ino
    
arduino-cli compile \
    -b mcci:stm32:mcci_catena_4610:\
lorawan_region =  us915,\
    --build-path "$OUTPUT" \
    --libraries ../../libraries \
    examples/catena_hello/catena_hello.ino
    
arduino-cli compile \
    -b mcci:stm32:mcci_catena_4610:\
lorawan_region =  us915,\
    --build-path "$OUTPUT" \
    --libraries ../../libraries \
    examples/catena_hello_lora/catena_hello_lora.ino
    
arduino-cli compile \
    -b mcci:stm32:mcci_catena_4611:\
lorawan_region =  us915,\
    --build-path "$OUTPUT" \
    --libraries ../../libraries \
    examples/catena_hello/catena_hello.ino
    
arduino-cli compile \
    -b mcci:stm32:mcci_catena_4611:\
lorawan_region =  us915,\
    --build-path "$OUTPUT" \
    --libraries ../../libraries \
    examples/catena_hello_lora/catena_hello_lora.ino
    
arduino-cli compile \
    -b mcci:stm32:mcci_catena_4612:\
lorawan_region =  us915,\
    --build-path "$OUTPUT" \
    --libraries ../../libraries \
    examples/catena_hello/catena_hello.ino
    
arduino-cli compile \
    -b mcci:stm32:mcci_catena_4612:\
lorawan_region =  us915,\
    --build-path "$OUTPUT" \
    --libraries ../../libraries \
    examples/catena_hello_lora/catena_hello_lora.ino
    
arduino-cli compile \
    -b mcci:stm32:mcci_catena_4617:\
lorawan_region =  us915,\
    --build-path "$OUTPUT" \
    --libraries ../../libraries \
    examples/catena_hello/catena_hello.ino
    
arduino-cli compile \
    -b mcci:stm32:mcci_catena_4617:\
lorawan_region =  us915,\
    --build-path "$OUTPUT" \
    --libraries ../../libraries \
    examples/catena_hello_lora/catena_hello_lora.ino
    
arduino-cli compile \
    -b mcci:stm32:mcci_catena_4618:\
lorawan_region =  us915,\
    --build-path "$OUTPUT" \
    --libraries ../../libraries \
    examples/catena_hello/catena_hello.in
    
arduino-cli compile \
    -b mcci:stm32:mcci_catena_4618:\
lorawan_region =  us915,\
    --build-path "$OUTPUT" \
    --libraries ../../libraries \
    examples/catena_hello_lora/catena_hello_lora.ino
    
arduino-cli compile \
    -b mcci:stm32:mcci_catena_4630:\
lorawan_region =  us915,\
    --build-path "$OUTPUT" \
    --libraries ../../libraries \
    examples/catena_hello/catena_hello.in
    
arduino-cli compile \
    -b mcci:stm32:mcci_catena_4630:\
lorawan_region =  us915,\
    --build-path "$OUTPUT" \
    --libraries ../../libraries \
    examples/catena_hello_lora/catena_hello_lora.in
    
arduino-cli compile \
    -b mcci:stm32:mcci_catena_46801:\
lorawan_region =  us915,\
    --build-path "$OUTPUT" \
    --libraries ../../libraries \
    examples/catena_hello/catena_hello.in
    
arduino-cli compile \
    -b mcci:stm32:mcci_catena_4801:\
lorawan_region =  us915,\
    --build-path "$OUTPUT" \
    --libraries ../../libraries \
    examples/catena_hello_lora/catena_hello_lora.in
    
arduino-cli compile \
    -b mcci:stm32:mcci_catena_46802:\
lorawan_region =  us915,\
    --build-path "$OUTPUT" \
    --libraries ../../libraries \
    examples/catena_hello/catena_hello.in
    
arduino-cli compile \
    -b mcci:stm32:mcci_catena_4802:\
lorawan_region =  us915,\
    --build-path "$OUTPUT" \
    --libraries ../../libraries \
    examples/catena_hello_lora/catena_hello_lora.in
    
    
    
    
arduino-cli compile \
    -b mcci:stm32:mcci_catena_4610:\
lorawan_region =  us915,\
    --build-path "$OUTPUT" \
    --libraries ../../libraries \
    examples/catena_usercommand/catena_usercommand.in
    
arduino-cli compile \
    -b mcci:stm32:mcci_catena_4610:\
lorawan_region =  us915,\
    --build-path "$OUTPUT" \
    --libraries ../../libraries \
    examples/catena_fsm/catena_fsm.in
    
    
    
    
arduino-cli compile \
    -b mcci:stm32:mcci_catena_4610:\
lorawan_region =  eu868,\
    --build-path "$OUTPUT" \
    --libraries ../../libraries \
    examples/catena_hello_lora/catena_hello_lora.ino
    
arduino-cli compile \
    -b mcci:stm32:mcci_catena_4610:\
lorawan_region =  au915,\
    --build-path "$OUTPUT" \
    --libraries ../../libraries \
    examples/catena_hello_lora/catena_hello_lora.ino
    
arduino-cli compile \
    -b mcci:stm32:mcci_catena_4610:\
lorawan_region =  as923,\
    --build-path "$OUTPUT" \
    --libraries ../../libraries \
    examples/catena_hello_lora/catena_hello_lora.ino
     
arduino-cli compile \
    -b mcci:stm32:mcci_catena_4610:\
lorawan_region =  as923jp,\
    --build-path "$OUTPUT" \
    --libraries ../../libraries \
    examples/catena_hello_lora/catena_hello_lora.ino
      
arduino-cli compile \
    -b mcci:stm32:mcci_catena_4610:\
lorawan_region =  in866,\
    --build-path "$OUTPUT" \
    --libraries ../../libraries \
    examples/catena_hello_lora/catena_hello_lora.ino
                       
               
        
                 
         
        
            
    
        
    
    
    
    
    
        
        
    
    
    
    
           
    
    
               
            
            
            
            
        
        
        
                
            
        
        
    
            
        
    
        
    
    
    
	              
	        
          
          
        
    
      
    
    
        
    




            
    
        

        

    
