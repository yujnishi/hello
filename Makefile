all: hello.so

%.so: %.c
	gcc -shared -fPIC -o $@ $<
