#!/bin/sh
set -e
unset LS_COLORS
export PATH="/bin:/usr/bin:/sbin:/usr/sbin:/usr/local/bin"

rm -rf BUILD
make \
	MAKEJOBS=-j4 \
	ARCH_CONFIGS="I386 X86_64" \
	KERNEL_CONFIGS="RELEASE" \
	VERBOSE=YES \
	RC_CFLAGS="-O3 -march=core2 -msse4.1 -w -pipe" \
	SDKROOT=/Developer/SDKs/MacOSX10.6.sdk \
	install
