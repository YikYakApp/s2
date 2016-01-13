package s2

// #cgo LDFLAGS:  -lgflags -L/usr/lib -lz -L/usr/local/opt/openssl/lib -L/Users/rm/src/github.com/YikYakApp/s2/src/geometry -ls2 -lgoogle-base -lgoogle-util-math -lgoogle-util-coding -lgoogle-strings -ls2cellid
// #cgo CFLAGS:   -fPIC -O -DNDEBUG -I. -DARCH_K8  -I/usr/include -I/usr/local/opt/openssl/include -Wno-deprecated -DS2_USE_EXACTFLOAT
// #cgo CXXFLAGS: -I/usr/local/opt/openssl/include -I/Users/rm/src/github.com/YikYakApp/s2/src/geometry
import "C"
