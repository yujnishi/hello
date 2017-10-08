all: hello.so test
	# apt-cache search CUnit

%.so: %.c
	gcc -shared -fPIC -o $@ $<

test: test.c
	ls /usr/lib/libcu*
	gcc -L/usr/lib test.c -lcunit hello.so -Wl,-rpath=.
	./a.out

