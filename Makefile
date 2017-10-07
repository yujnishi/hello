all: hello.so
	which yum

%.so: %.c
	gcc -shared -fPIC -o $@ $<
