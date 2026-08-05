include config.mk

.PHONY: all camera app clean clean-camera clean-app

all: camera app

camera:
	$(MAKE) -C kernel/drivers/camera

app:
	$(MAKE) -C app

clean: clean-camera clean-app 

clean-camera:
	$(MAKE) -C kernel/drivers/camera clean

clean-app:
	$(MAKE) -C app clean