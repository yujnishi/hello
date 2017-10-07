all: hello.so
	sudo yum search CUnit

%.so: %.c
	gcc -shared -fPIC -o $@ $<
