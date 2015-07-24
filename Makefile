SHELL = /bin/sh

all:

check:
	@. ./assert.sh ; \
	set -e ; \
	for t in t/* ; \
	do \
	    assert $t ; \
	done ; \
	assert_end

clean:
