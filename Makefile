all: hello.so test
	# apt-cache search CUnit

%.so: %.c
	gcc -shared -fPIC -o $@ $<

test: test.c
	gcc -L/usr/local/lib -lcunit test.c hello.so
	./a.out

