MODULENAME=calcProc

obj-m += $(MODULENAME).o

module:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean

install:
	sudo insmod $(MODULENAME).ko

uninstall:
	sudo rmmod $(MODULENAME)



MODULENAME=calcSys

obj-m += $(MODULENAME).o

module_sys:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean_sys:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean

install_sys:
	sudo insmod $(MODULENAME).ko

uninstall_sys:
	sudo rmmod $(MODULENAME)