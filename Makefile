all: hello.so
	apt-cache search CUnit

%.so: %.c
	gcc -shared -fPIC -o $@ $<

test: test.c
	gcc test.c hello.so
	./a.out

