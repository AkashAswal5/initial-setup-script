# install arduino-cli
sudo pacman -S arduino arduino-cli

# install lsusb
sudo pacman -S usbutils

# test USB devices
lsusb

# give serial permission
sudo usermod -aG uucp $USER
reboot

# after reboot:
groups
# must include:
uucp


# arduino CLI one time setup
arduino-cli config init
arduino-cli core update-index
arduino-cli core install arduino:avr

# confirm arduino via cli
# verify Arduino detection
arduino-cli board list

  # excepted:
# Port         Protocol Type              Board Name FQBN Core
#  /dev/ttyUSB0 serial   Serial Port (USB) Unknown

# save aurdino code/scripts here
cd ~/blink

# folder Structure
# ~/blink/
# └── blink.ino



# run, compile, upload -->  aurdino  + rdm6300 --> 125khz card read + 9600 baudrate 
cd ~/blink
arduino-cli compile --fqbn arduino:avr:uno
arduino-cli upload -p /dev/ttyUSB0 --fqbn arduino:avr:uno

# serial monitor
arduino-cli monitor -p /dev/ttyUSB0 --config baudrate=9600


#  wiring
# RDM6300 TX  → Arduino D2
# RDM6300 VCC → 5V
# RDM6300 GND → GND


