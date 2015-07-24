SHELL = /bin/sh

all:

check:
	@let passed=0 failed=0 ; \
	for t in t/* ; \
	do \
	    $$t && { \
	        let ++passed; \
	        echo "PASS: $$t" ; \
	    } || { \
	        let ++failed ; \
	        echo "FAIL: $$t" ; \
	    } \
	done ; \
	echo "$$passed passed, $$failed failed" ; \
	exit $$failed

clean:
