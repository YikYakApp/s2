package s2

// #cgo LDFLAGS:  -lgflags -L/usr/lib -lz -L/usr/local/opt/openssl/lib -L${SRCDIR}/src/geometry -lgoogle-base -lgoogle-strings -ls2cellid -ls2 -lgoogle-util-math  -lgoogle-util-coding
// #cgo CFLAGS:   -fPIC -O -DNDEBUG -I. -DARCH_K8  -I/usr/include -I/usr/local/opt/openssl/include -Wno-deprecated -DS2_USE_EXACTFLOAT
// #cgo CXXFLAGS: -I/usr/local/opt/openssl/include -I${SRCDIR}/src/geometry
import "C"
