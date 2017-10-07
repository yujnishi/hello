all: hello.so
	apt-cache search CUnit

%.so: %.c
	gcc -shared -fPIC -o $@ $<
