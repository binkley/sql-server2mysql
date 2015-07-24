SHELL = /bin/sh

all:

check:
	@let passed=0 failed=0 ; \
	for t in t/* ; \
	do \
	    out=$$($$t) && { \
	        let ++passed; \
		[[ -n "$$out" ]] && echo "PASS: $$t: $$out" || echo "PASS: $$t" ; \
	    } || { \
	        let ++failed ; \
		[[ -n "$$out" ]] && echo "FAIL: $$t: $$out" || echo "FAIL: $$t" ; \
	    } \
	done ; \
	echo "$$passed passed, $$failed failed" ; \
	exit $$failed

clean:
