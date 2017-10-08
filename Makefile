all: hello.so test
	# apt-cache search CUnit

%.so: %.c
	gcc -shared -fPIC -o $@ $<

test: test.c
	gcc test.c hello.so
	./a.out

