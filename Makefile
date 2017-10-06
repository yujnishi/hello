all: hello.so

%.so: %.c
	gcc -shared -o $@ $<
